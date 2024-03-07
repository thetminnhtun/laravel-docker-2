# International Download System <!-- omit from toc -->

- [Installation](#installation)
- [Usage](#usage)
- [Deployment](#deployment)

## Installation

Before getting started, ensure that you have the following installed on your system:

- Docker
- Docker Compose

Clone the repository:

```
git clone [repository_url]
```

Go to the cloned project directory:

```
cd project-name
```

Setup formatter to format before commit (only local):

windows
```sh
# windows
copy pre-commit .git/hooks/pre-commit
# Unix like OS (eg. Mac, Linux)
cp pre-commit .git/hooks/pre-commit
```

Build the Docker images:

```
docker-compose build
```

Start the Docker containers:

```
docker-compose up -d
```

Create a copy of the .env file:

```
cp .env.example .env
```

Install PHP dependencies:

```
docker-compose run --rm composer install
```

Install Node dependencies:

```
docker-compose run --rm npm install
```

Build the frontend assets:

```
docker-compose run --rm npm run build
```

Generate an application key:

```
docker-compose run --rm artisan key:generate
```

Run database migrations:

```
docker-compose run --rm artisan migrate
```

Run database seeder:

```
docker-compose run --rm artisan db:seed
```

The project should now be running at http://localhost.

## Usage

To use the project, you can interact with it via the command line or a web browser. For example:

To run a artisan command:

```
docker-compose run --rm artisan your:command
```

To run a composer command:

```
docker-compose run --rm composer your:command
```

To run a npm command:

```
docker-compose run --rm npm your:command
```

To run the [Vite](https://laravel.com/docs/10.x/vite) development server:

```
docker-compose run --rm --service-ports npm run dev
```

## Deployment

If your app is newly created, begin by cloning the repository using the following command:
```
git clone [repository_url]
```

Run the following commands during deployment.

Update the codebase to the latest version:
```
git pull
```

Install PHP dependencies:
```
docker-compose run --rm composer install
```

Install Node dependencies:
```
docker-compose run --rm npm install
```

Build the frontend assets:
```
docker-compose run --rm npm run build
```

Run database migrations:
```
docker-compose run --rm artisan migrate
```

Run database seeder:
```
docker-compose run --rm artisan db:seed
```

Clear compiled views, routes and config:
```
docker-compose run --rm artisan view:clear
docker-compose run --rm artisan route:clear
docker-compose run --rm artisan config:clear
```

Cache compiled views, routes and config:
```
docker-compose run --rm artisan view:cache
docker-compose run --rm artisan route:cache
docker-compose run --rm artisan config:cache
```
