# SSO deployment as  operator

Using tekton and [ansible runner](https://ansible-runner.readthedocs.io/en/stable/)

see on tekton hub more info about task:

https://hub.tekton.dev/tekton/task/ansible-runner


TODO: add project role to the pipline sa so don't need to add  a cluter role to small service account

        oc adm policy add-cluster-role-to-user cluster-admin system:serviceaccount:nm-sso:pipeline
