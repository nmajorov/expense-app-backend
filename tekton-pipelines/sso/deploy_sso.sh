#!/usr/bin/env zsh

DIRNAME=`dirname "$0"`
CURRENT_NAMESPACE="$(kubectl config view --minify | grep namespace:)"

deploy_kubeconfig_configmap(){

  echo "step kubeconfig configmap"
  echo "current local dir $DIRNAME"
  echo "current kubernetes $CURRENT_NAMESPACE"
  echo
  if  kubectl get configmaps | grep -q kubeconfig > 0
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
  echo "current kubernetes $(kubectl config view --minify | grep namespace:)"
  echo

  if kubectl get pvc  | grep -q ansible-playbooks > 0
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


}


deploy_kubeconfig_configmap
deploy_pvc
