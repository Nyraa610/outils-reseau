
'EOF'
#!/bin/bash
# Teste le ping sur chaque adresse donnee en parametre
for ip in "$@"; do
  if ping -n 1 "$ip" > /dev/null; then
    echo "$ip : repond"
  else
    echo "$ip : ne repond pas"
  fi
done
