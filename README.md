# Nginx simple multisite configuration
## Simple 3 step guide:
1. `git clone https://github.com/mastir/nginx-docker-multisite.git web`
2. `./web/start.sh`
3. open link in browser: http://test.localhost and work

## To add new site 
1. `mkdir ./sites/[my-site]`
2. `docker restart nginx-mastir`
3. [OPTIONAL] add [my-site] to /etc/hosts

Replace [my-site] with your domain name, e.g. example.com

## Update nginx configuration
You can modify nginx/site.template to change generated configs, all configuration recreated after restart