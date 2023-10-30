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
2. Go to the folder "files", go to the WeTransfer link in "link.txt" and download the zip.
3. Move the folders "moodle_data", "mariadb_data" and "moodledata_data" from the zip to the folder "files".
4. Go to the project directory
   ```sh
   cd Smart-Contract-Academy
   ```
5. Build the docker images (moodle and mariadb)
   ```sh
   sh build.sh
   ```

## Deployment

1. Run the docker-images
   ```sh
   sh run.sh
   ```
2. Access the website [http://localhost](http://localhost)