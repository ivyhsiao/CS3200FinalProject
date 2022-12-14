# MySQL + Flask Boilerplate Project

This repo contains a boilerplate setup for spinning up 2 docker containers: 
1. A MySQL 8 container for obvious reasons
1. A Python Flask container to implement a REST API

## How to setup and start the containers
**Important** - you need Docker Desktop installed

1. Clone this repository.  
1. Create a file named `db_root_password.txt` in the `secrets/` folder and put inside of it the root password for MySQL. 
1. Create a file named `db_password.txt` in the `secrets/` folder and put inside of it the password you want to use for the `webapp` user. 
1. In a terminal or command prompt, navigate to the folder with the `docker-compose.yml` file.  
1. Build the images with `docker compose build`
1. Start the containers with `docker compose up`.  To run in detached mode, run `docker compose up -d`. 

## For setting up a Conda Web-Dev environment:

1. `conda create -n webdev python=3.9`
1. `conda activate webdev`
1. `pip install flask flask-mysql flask-restful cryptography flask-login`

## Project Overview
This product aims to allow users to easily find movies they want to watch and where to watch them. This product are able to perform these actions:
* add users
* add movies to liked movies
* recommend 5 top movies from desired genre
* provide a list of user's liked movies
* add new movies (for production companies only)
* provide a list of top 4 movies from inputted studio
* provide a list of streaming domains who stream a certain company with links to the movie
* provide a list of actors and their contacts of a certain movie (for productioin companies only)
* add movie to list of movies they stream (for streaming companies only)
* provide a list of all movies streamed by inputted streaming company ranked by popularity

In order to complete these actions, a database with the following entities were established
* Movies
* Actors
* Production Companies
* Users
* Streaming Companies
* Producers
* Genre

## AppSmith UI
https://appsmith.cs3200.net/app/cs3200-final-application/add-movie-to-liked-639950e4bb1b8466b1c7a564

## Video Pitch

