# Blog Doscom Docker
### Cloning
```
git clone https://github.com/doscom-2018/blog-doscom --recurse-submodules --remote-submodules
```

### Running and building
```
docker build -t "blog-doscom:Dockerfile" .
docker run -dit -p 5050:80 blog-doscom:Dockerfile
```

* Go to `/etc/apache2/httpd.conf`
* Find `<Directory "/var/www/localhost/htdocs">`
* Replace `AllowOverride None` to `AllowOverride All`
