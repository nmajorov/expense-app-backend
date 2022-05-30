#!/usr/bin/env zsh

DIRNAME=`dirname "$0"`
CURRENT_NAMESPACE="$(kubectl config view --minify --output jsonpath={..namespace})"
BRANCH="$1"

deploy_kubeconfig_configmap(){

  echo "step kubeconfig configmap"
  echo "current local dir $DIRNAME"
  echo "current kubernetes $CURRENT_NAMESPACE"
  echo
  if  kubectl get configmaps | grep -q kubeconfig
  then
    echo "found configmaps kubeconfig"
    echo "... skip steps"
    echo
  else
    kubectl create configmap kubeconfig --from-file="$HOME/.kube/config"
  fi

  echo
}


deploy_pvc(){

  echo "step deploy pvc"
  echo "current local dir $DIRNAME"
  echo "current kubernetes  $(kubectl config view --minify | grep namespace:)"
  echo

  if kubectl get pvc  | grep -q ansible-playbooks
  then
      echo "found pvc ansible-playbooks"
      echo "... skip steps"
  else
      echo "start to create pvc"
      kubectl apply -f $DIRNAME/playbooks-pvc.yaml
      echo
  fi
  echo
}


deploy_ansible_runner_task(){


    echo "step deploy ansible runner tasks"
    echo "current local dir $DIRNAME"
    echo "current kubernetes $(kubectl config view --minify | grep namespace:)"
    echo
    if tkn tasks list | grep -q ansible-runner
    then
      echo "found tekton task ansible-runner"
      echo ".... skip step"
    else
      kubectl apply -f $DIRNAME/ansible-runner.yaml
    fi
    echo
}

clone_directory(){

  echo "step checkout git "
  if [ -z "$BRANCH" ]
  then
     BRANCH="main"
  fi
  echo
  echo "using BRANCH: $BRANCH"
  echo

  tkn clustertask start git-clone \
  --workspace=name=output,claimName=ansible-playbooks\
  --param=url=https://github.com/nmajorov/expense-app-backend-quarkus.git \
  --param=refspec="" \
  --param=revision=$BRANCH \
  --param=submodules=true \
  --param=depth=1 \
  --param=sslVerify=true \
  --param=verbose=true \
  --param=deleteExisting=true \
  --showlog \
  --use-param-defaults

}


run_operator_install(){

  echo "step run sso operator install"
  if [ -z "$SSO_NAMESPACE" ]
  then
     SSO_NAMESPACE="$CURRENT_NAMESPACE"
  fi
  echo
  echo "usin SSO_NAMESPACE: $SSO_NAMESPACE"
  echo

  #--serviceaccount ansible-deployer-account \

  tkn task start ansible-runner \
  --param=project-dir="tekton-pipelines/sso/ansible" \
  --param=args="-p,sso_operator_install.yaml,--cmdline,-e sso_operator_namespace=$SSO_NAMESPACE "\
  --workspace=name=runner-dir,claimName=ansible-playbooks \
  --showlog \
  --use-param-defaults

}


deploy_kubeconfig_configmap
deploy_pvc
deploy_ansible_runner_task
clone_directory
run_operator_install
