server {
    if ($host = api.gettruckloan.com) {
        return 301 https://$host$request_uri;
    } # managed by Certbot


 listen 80;
 listen [::]:80;
 server_name api.gettruckloan.com;

 location / {
   proxy_pass http://localhost:3000;
 }


}
