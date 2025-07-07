#!/bin/bash
# Actualizar paquetes e instalar dependencias
yum update -y
yum install -y git nodejs npm

# Instalar pm2
npm install -g pm2

# Clonar el repositorio (ajusta la URL y el branch)
git clone https://github.com/DaniHinGo/SecretosParaContar.git /home/ec2-user/app
cd /home/ec2-user/app

# Instalar dependencias de la aplicación
npm install

# Construir la aplicación Remix (ajústalos según tu configuración)
npm run build

# Iniciar la aplicación con pm2
pm2 start npm --name "remix-app" -- start

# Guardar el proceso de pm2 para que se reinicie con la instancia
pm2 save
pm2 startup
