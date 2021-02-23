function k --wraps kubectl --description 'default k get events to sort by timestamp'
  if string match -r -q -- "get events" "$argv"
    kubectl $argv --sort-by=.metadata.creationTimestamp
  else
    kubectl $argv
  end
end

