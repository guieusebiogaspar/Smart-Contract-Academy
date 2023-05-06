<!-- GETTING STARTED -->
## Getting Started

### Prerequisites

You'll need Docker installed. [https://www.docker.com/](https://www.docker.com/)

### Installation

1. Clone the repo
   ```sh
   git clone https://github.com/guieusebiogaspar/Smart-Contract-Academy.git
   ```
2. Go to the folder "files", go to the WeTransfer link in there and download the zip.
3. Move the folders "moodle_data" and "mariadb_data" from the zip to the folder "files".
4. Go to the project directory
   ```sh
   cd Smart-Contract-Academy
   ```
5. Build the docker images (moodle and mariadb)
   ```sh
   sh build.sh
   ```

<!-- USAGE EXAMPLES -->
## Usage

1. Run the docker-images
   ```sh
   sh run.sh
   ```
2. Access the website [https://localhost](https://localhost)

