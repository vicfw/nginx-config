server {
 listen 80;
 listen [::]:80;
 server_name api.gettruckloan.com;

 location / {
   proxy_pass http://localhost:3000;
 }
}
