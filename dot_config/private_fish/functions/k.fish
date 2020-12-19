function k --wraps kubectl --description 'default k get events to sort by timestamp'
  if [ "$argv" = "get events" ];
    kubectl get events --sort-by=.metadata.creationTimestamp
  else
    kubectl $argv
  end
end

