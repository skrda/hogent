@echo off
docker build -t demo-site .
docker run -d -p 81:80 --name demo-site-container demo-site
echo surf op localhost:81
