#/bin/bash -v

echo Hit enter to install and run weave, after sudo -s:
read
curl -L git.io/weave -o /usr/local/bin/weave && chmod a+x /usr/local/bin/weave
weave launch
eval $(weave env)

echo Hit enter to install and launch weavescope:
read
curl -L git.io/scope -o /usr/local/bin/scope && chmod a+x /usr/local/bin/scope && scope launch
