# Apache-Practica
# Tutorial Apache Web

## Estructura de archivos

Creamos la siguiente estructura de archivos

- Creamos tres carpetas, dos carpetas para dos paginas normales y otra para el seguro.

![Captura de pantalla 2024-10-23 131722](https://github.com/user-attachments/assets/c4b36f87-f739-4be7-9bb3-64776360caf2)

- Cada uno tendra una composición de carpetas en la que cada una tendra una función.

![image](https://github.com/user-attachments/assets/a5cab501-40ab-4425-9047-2769f2735db6)

- La carpeta `websites` servira para dentro crear una carpeta para cada webhost.

![image](https://github.com/user-attachments/assets/847be4d8-1da9-4195-b4c1-b6d6dc470471)

- Creamos `html` de web por defecto dentro de `websites` y `html` de cada web dentro de su carpeta.

![image](https://github.com/user-attachments/assets/e71b0e22-c631-4401-b228-5144a1b02896)

- Creamos carpeta `errors` y dentro cada `html` de cada error que vayamos a controlar.

![image](https://github.com/user-attachments/assets/2da184e2-d46f-4720-9b2f-6553d9b65e6b)

![image](https://github.com/user-attachments/assets/33fd457c-f665-474c-afb1-e3a0efc5ccff)

- Creamos carpeta `privado` dentro del webhost que configuraremos con SSL. A esta solo se accederá al iniciar sesión con el usuario autenticado. Además, crearemos el archivo `.htaccess` dentro.

![image](https://github.com/user-attachments/assets/51fff8b4-c5e8-426a-83f9-e83801054cb6)

- Creamos `script`, que en mi caso tendre un script correspondiente a cada carpeta que he hecho. 

![image](https://github.com/user-attachments/assets/1e65b515-3907-4ee2-abca-f48a02a75758)

![image](https://github.com/user-attachments/assets/154ba005-0fac-488c-8ef0-10ea3a4c79a1)

![image](https://github.com/user-attachments/assets/6aeefb78-d259-4f0e-8aa9-f1eba7e6d17e)

- Creamos carpeta `htpasswd` en la carpeta donde tengo todo lo de raulseguro. Generaremos la contraseña en la pagina: https://bcrypt-generator.com/, pondremos nuestro nombre de usuario delante y la contraseña soltada por el bcrypt despues.

![image](https://github.com/user-attachments/assets/793d1eb7-8f64-4b18-b4a6-0128ab39ff13)


- Creamos carpeta `certs`, que se encargara de almacenar los certificados.

![image](https://github.com/user-attachments/assets/f1a6214a-7163-40bb-8281-0774b23d95ad)

- Creamos `docker-compose.yml` con la configuración de nuestros contenedores.

![image](https://github.com/user-attachments/assets/c0176f54-9736-4745-8b49-54ca5142d612)

![image](https://github.com/user-attachments/assets/15bcdb95-7b91-4986-846f-4f7ae24128ed)

## Generación de certificados

Instalamos el programa **OpenSSL** 

![image](https://github.com/user-attachments/assets/850e1bae-4b3a-497f-ac82-ab2b957699d6)

Abrimos la terminal de OpenSSL y ejecutamos el siguiente comando:

```bash
openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout seguro.key -out seguro.crt
```

![image](https://github.com/user-attachments/assets/2344ff75-3113-48bb-8239-15340cc39fb5)

![image](https://github.com/user-attachments/assets/14f99a93-3357-4bf1-b020-f8d996395392)

Copiamos estos archivos en la carpeta `certs`.

## Modificación del archivo hosts

Modificamos el archivo hosts de nuestro PC para generar los DNS de nuestros webhosts.

Vamos a la ruta systemclt32
![image](https://github.com/user-attachments/assets/f89ef2f4-4bc0-43de-b328-6352e420c03f)

Entramos en drivers
![image](https://github.com/user-attachments/assets/d370610c-7796-4a41-9aea-3a4222442f77)

Despues en etc
![image](https://github.com/user-attachments/assets/544640f0-2124-4a72-b448-6cfc3f6fc3b5)

Y ya por ultimo en host
![image](https://github.com/user-attachments/assets/9158b9fa-9fd9-4f50-a556-14ae62dc9459)

Donde deberemos añadir nuestras IPS
![image](https://github.com/user-attachments/assets/2fe63f68-323c-49a3-ac0a-c91be2411e01)


## Lanzamiento del contenedor

Una vez ya tengamos todo bien llamado en cada carpeta.

Ejecutamos el comando  `docker-compose up -d`
![image](https://github.com/user-attachments/assets/3d4652cc-5835-4f8e-896b-8d0d194a8f5c)

Iremos buscando cada pagina por el nombre que le hemos dado.
![image](https://github.com/user-attachments/assets/c62ed845-c388-417b-89ba-b46aa75cf523)

Esta seria mi segunda pagina.
![image](https://github.com/user-attachments/assets/0cff0875-03ef-47f0-bbcd-4f5087b26c1b)

Y por ultimo la de seguro.net.
![image](https://github.com/user-attachments/assets/442b5237-378f-4a2d-87b1-c3a9cb9cad4f)

Y si añadimos /privado.
![image](https://github.com/user-attachments/assets/f660207b-dd4e-4077-b995-357200eaa4d4)

Nos saldra un nombre de usuario y contraseña que habremos puesto antes en htpasswd.
![image](https://github.com/user-attachments/assets/2aee8e60-7f93-43b8-a711-3f81c1bd269e)

Y una vez puesto el usuario y la contraseña saldra esto:
![image](https://github.com/user-attachments/assets/ffd69f31-81fc-47d5-a41d-c2aaf75d6aed)





