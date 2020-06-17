pods=`kubectl get pod -o wide | grep worker | awk '{print $1}'`

for pod in $pods
do
echo $pod
kubectl get pod -o wide | grep worker | grep -v $pod | awk '{print $6, $1}' > host_ip.txt 

input="host_ip.txt"
while IFS= read -r host_ip
do
  echo "$host_ip"
  kubectl exec $pod -- sh -c "echo $host_ip >> /etc/hosts"
done < "$input"

done
