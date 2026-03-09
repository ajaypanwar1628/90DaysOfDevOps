# Day 33 – Docker Compose

## Task 1 – Install & Verify

Verified Docker Compose installation.

- Command:
`docker-compose --version`

![Docker Compose Installation Version Check](screenshots/day33_task1_docker_compose_installation_version_check.jpg)

---

## Task 2 – First Compose File

Created compose file running Nginx container.

`docker-compose.yml`

services:
  web:
    image: nginx
    ports:
      - "8080:80"

- Started with:
`docker-compose up`

Stopped with:
`docker-compose down`

![Docker Compose Nginx](screenshots/day33_task2_docker_compose_nginx1_yml.jpg)

---

## Task 3 – WordPress + MySQL

Used multi-container setup.

Services:
- MySQL database
- WordPress application

Volume used:
`db_data:/var/lib/mysql`

WordPress connected to database using service name "db".


![Docker Compose Up](screenshots/day33_task3_compose_up.jpg)

![Data Safe After Compose Down](screenshots/day33_task3_data_safe_after_compose_down.jpg)

![Web Access Data Created](screenshots/day33_task3_web_access_data_created.jpg)

![Wordpress DB YML](screenshots/day33_task3_wordpress_db_yml.jpg)


---

## Task 4 – Compose Commands

`docker compose up -d`
`docker compose ps`
`docker compose logs`
`docker compose logs wordpress`
`docker compose stop`
`docker compose down`
`docker compose up --build`

![Docker Compose Commands 1](screenshots/day33_task4_commands1.jpg)
![Docker Compose Commands 2](screenshots/day33_task4_commands2.jpg)
![Docker Compose Commands 3](screenshots/day33_task4_commands3.jpg)

---

## Task 5 – Environment Variables

Used .env file for database credentials.

Docker Compose automatically loads variables from .env.

![Env File](screenshots/day33_task5_env.jpg)

---

## What I Learned

- Docker Compose simplifies running multi-container applications.
- Services automatically communicate using service names.
- Volumes provide persistent storage for databases.
- Compose automatically creates networks for containers.
- Environment variables improve configuration management.
- One YAML file can define the entire application stack.