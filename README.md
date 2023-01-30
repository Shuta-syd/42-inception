<div id="top"></div>

<!-- PROJECT LOGO -->
<br />
<div align="center">
  <h3 align="center">Inception</h3>

  <p align="center">
    <br />
    <div style="display: flex; justify-content: center; align-items: center;">
        <img src="https://jolicode.com/media/original/2013/10/homepage-docker-logo.png" style="width: 100px; margin: 13px;">
        <img src="./images/mariaDB.png" style="width: 140px; margin: 13px;">
                <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/c/c5/Nginx_logo.svg/2560px-Nginx_logo.svg.png" style="width: 100px; margin: 13px;">
    </div>
  </p>
</div>

<!-- ABOUT THE PROJECT -->
## The Project
This project aims to broaden your knowledge of system administration by using Docker.
You will virtualize several Docker images, creating them in your new personal virtual
machine.
### Docker containers

- MariaDB
- WordPress
- Nginx
## How to use

- Build the images and deploy the infrastructure:

  ```sh
   $ make
   ```

- Stop and remove containers, remove images, volumes and network:

	```sh
	$ make clean
	```
