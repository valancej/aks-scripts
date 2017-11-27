###
# Get images from kub manifest file
###

for i in `kubectl get pods --all-namespaces -o yaml | grep image | grep -v PullPolicy | grep -v imageID | cut -d':' -f 2 |grep -v "pulling image"` ; do
echo "docker pull $i ; docker save $i > ${i}.tar" ; done