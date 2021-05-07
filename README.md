# CS665 Project

This repository houses the files for the CS665 final project.

## Background

This database is for a music and podcast library, similar to Spotify or Apple Music.

## Makefile Commands

Requirements:
* make
* docker
* mysqldump

Build:  
```shell
make build
```

Run:  
```shell
make run
```

Seed:
```shell
make seed
```

## Common Queries

See the `queries` folder for commonly used queries. Just change the variable at the top of
each file for the user ID you are interested in.

## ER Diagram

![ER Diagram](diagram.png)
