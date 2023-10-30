# Smart Contract Security Academy

Smart Contract Security Academy is an interactive online platform designed to help developers create more secure smart contracts. The website includes both theoretical and practical components, with a focus on educating users about common vulnerabilities and attacks on smart contracts.

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes. See deployment for notes on how to deploy the project on a live system.

There is the rare event that some images may not load, and I still couldn't get why. 

### Prerequisites

You'll need Python and Docker installed. [https://www.docker.com/](https://www.docker.com/)

### Installing

1. Clone the repo
   ```sh
   git clone https://github.com/guieusebiogaspar/Smart-Contract-Academy.git
   ```
2. Go to the project directory
```sh
cd Smart-Contract-Academy
```
3. Go to the folder "files", go to the WeTransfer link in "link.txt" and download the zip.
4. Move the folders "moodle_data", "mariadb_data" and "moodledata_data" from the zip to the folder "files".
5. In the root folder, build the docker images (moodle and mariadb)
   ```sh
   sh build.sh
   ```

## Deployment

1. Create a ".env" file with these fields and fill them up (some are already fill, as a sugestion):
   ```sh
   MARIADB_ROOT_USER=
   MARIADB_ROOT_PASSWORD=
   MARIADB_USER=
   MARIADB_PASSWORD=
   MARIADB_DATABASE=
   MARIADB_CHARACTER_SET=utf8mb4
   MARIADB_COLLATE=utf8mb4_unicode_ci
   MARIADB_VOLUME=./files/mariadb_data


   MOODLE_DATABASE_HOST=
   MOODLE_DATABASE_PORT_NUMBER=3306
   MOODLE_VOLUME=./files/moodle_data
   MOODLEDATA_VOLUME=./files/moodledata_data

   NGINX_CONF_VOLUME=./files/nginx

   CERTIFICATE= # Only if you setup a certificate and port 443
   CERTIFICATE_KEY= # Only if you setup a private key and port 443
   ```

2. Run the docker-images
   ```sh
   sh run.sh
   ```
3. Access the website [http://localhost:80](http://localhost:80)

NOTE: The configuration porovided is for HTTP and local development. To include a certificate and enable port 443 you need to uncomment the comment configuration in "docker-compose.yml" and in "nginx/default.conf".