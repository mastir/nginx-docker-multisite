#!/usr/bin/env sh
#set -e
export PATH=/sites
rm /etc/nginx/conf.d/mgs-* 2> /dev/null
for f in $PATH/*; do
  export DOMAIN=${f##*/};
  if [ ! -f /etc/nginx/conf.d/mgs-$DOMAIN.conf ]; then
    /usr/bin/envsubst '$DOMAIN:$PATH' < /etc/nginx/site.template > /etc/nginx/conf.d/mgs-$DOMAIN.conf
  fi
done;
