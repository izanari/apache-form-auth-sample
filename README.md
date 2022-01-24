# Apache form authentication sample

## Usage

- Generate a password file on your local PC.

```
htpasswd -c httpd-config/.htpasswd username
```

- Launch the container from Docker

```
docker compose up -d --build
```

- Access the URL from your browser. And you will be redirected to the login form.

```
http://localhost/closed/
```

- Enter your user name and password.The screen after login will appear.
