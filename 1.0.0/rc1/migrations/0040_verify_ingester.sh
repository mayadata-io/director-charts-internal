echo "verifying ingester..."
read x

#while [ 1 ]
#do
#  echo "loop: ";
#  kubectl get pods | grep ingester | grep -i running
#  count = `kubectl get pods | grep ingester | grep -i running | wc -l`
#  if [ $count == 3 ];then
#    break
#  fi
#  sleep 2
#done

echo "done verifying ingester."

