# Smart Contract Security Academy

Smart Contract Security Academy is an interactive online platform designed to help developers create more secure smart contracts. The website includes both theoretical and practical components, with a focus on educating users about common vulnerabilities and attacks on smart contracts.

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes. See deployment for notes on how to deploy the project on a live system.

Some images may not load, because I still couldn't get how moodle stores those images, because even thought I transfered all the files, they sometimes don't show up on the website.

### Prerequisites

You'll need Docker installed. [https://www.docker.com/](https://www.docker.com/)

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
5. Build the docker images (moodle and mariadb)
   ```sh
   sh build.sh
   ```

## Deployment

1. Create a "".env" file with these fields and fill them up:
   ```sh
   MARIADB_ROOT_USER=
   MARIADB_ROOT_PASSWORD=
   MARIADB_USER=
   MARIADB_PASSWORD=
   MARIADB_DATABASE=
   MARIADB_CHARACTER_SET=
   MARIADB_COLLATE=
   MARIADB_VOLUME=


   MOODLE_DATABASE_HOST=
   MOODLE_DATABASE_PORT_NUMBER=
   MOODLE_VOLUME=
   MOODLEDATA_VOLUME=

   NGINX_CONF_VOLUME=

   CERTIFICATE=
   CERTIFICATE_KEY=
   ```

2. Run the docker-images
   ```sh
   sh run.sh
   ```
3. Access the website [http://localhost](http://localhost)

NOTE: The configuration porovided is for HTTP and local development. To include a certificate and enable port 443 you need to uncomment the comment configuration in "docker-compose.yml" and in "nginx/default.conf".