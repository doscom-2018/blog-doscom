# Blog Doscom Docker
### Cloning
```
git clone https://github.com/doscom-2018/blog-doscom --recurse-submodules --remote-submodules
```

### Running and building
```
docker build -t "image-blog-doscom" .
docker run -dit --name blog-doscom -p 5020:80 --restart always image-blog-doscom
```

* Go to `/etc/apache2/httpd.conf`
* Find `<Directory "/var/www/localhost/htdocs">`
* Replace `AllowOverride None` to `AllowOverride All`
