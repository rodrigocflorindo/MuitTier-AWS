#!/bin/bash
# Use this for your user data (script from top to bottom)
# install httpd (Linux 2 version)
yum update -y
yum install -y httpd
systemctl start httpd
systemctl enable httpd
#echo "<h1>Aplicação Multicamadas na AWS para Demonstração Servidor: $(hostname -f)</h1>" > /var/www/html/index.html

echo "<!DOCTYPE html>
<html>
<head>
  <title>HMulticamadas na AWS</title>
</head>
<body>
  <h1>Aplicação Multicamadas na AWS para Demonstração > Servidor: $(hostname -f)</h1>
  <p>Arquitetura Simples</p>
  <img src=\"https://rcfimages.s3.amazonaws.com/Diagrama-de-Arquitetura-AWS.png" alt=\"Example Image\">
</body>
</html>" | sudo tee /var/www/html/index.html
