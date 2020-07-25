# README

## Set up


```
docker-compose build
docker-compose run --rm web bin/setup
docker-compose run --rm web yarn install
docker-compose up -d
```

Open http://localhost:3001/


Following strings are shown.

```
My journey with Vue
Blogging with Vue
Why Vue is so fun
```
