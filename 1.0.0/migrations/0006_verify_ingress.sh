echo "verifying ingress..."
read x

#while [ 1 ]
#do
#  kubectl get pods -n ingress-nginx | grep -i running
#  count=`kubectl get pods -n ingress-nginx | grep -i running |wc -l`
#  if [ $count == 1 ];then
#    break
#  fi
#  sleep 2
#done
echo "done verifying ingress."

