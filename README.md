# Blog Doscom Docker
```
docker build -t "blog-doscom:Dockerfile" .
docker run -dit -p 5050:80 blog-doscom:Dockerfile
```

* Go to `/etc/apache2/httpd.conf`
* Find `<Directory "/var/www/localhost/htdocs">`
* Replace `AllowOverride None` to `AllowOverride All`
