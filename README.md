# osm-db

This cookbook facilitates osm database preparations. This includes postgres and postgis installation and also postgres
user with superuser rights. It's assumes that this user will create/delete databases on it's own.

# postgres user credentials

To generate md5 password for postgres, you can use the following command

```
python -c 'import hashlib; print("md5" + hashlib.md5("user" + "password").hexdigest())'
```
