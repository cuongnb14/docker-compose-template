# Setup without email server
- Create superuser to access django admin: exec in web container: 
```sh
 ./manage.py createsuperuser
```

- Add user via admin web
Admin > User > Add user

- Add user to organization
Admin > Organization user > Add organization user

# Note
ENABLE_USER_REGISTRATION: false # When False, user self-signup is disabled after the first user is registered
