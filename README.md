# exampleServer

A description of this package.



# Run locally
1. Run `swift run`
2. Navigate to 127.0.0.1:8080 on your browser (or run `curl http://127.0.0.1:8080/` )

# Run using docker locally
1. Clone this repostory `git clone https://github.com/swiftyserver/exampleServer` and cd to it `cd exampleServer`
2. Run `docker-compose up -d` to build and start your server. This should take like *10* minutes
3. To test your server run ``open http://127.0.0.1/`` or ``curl http://127.0.0.1/``


# Run using docker on server

You can use digitalocen for creating quick server. you can register and create your server with these commands: 
1. First register to DigitalOcean [Here](https://m.do.co/c/b6830daefb4d)  (*( ͡° ͜ʖ ͡°) referral link*) and get 100$ worth of credits for 2 monts. 
2. Get your api token and add your token to enviroment by running `TOKEN="YOUR_DO_TOKEN"` 
3. Create your server: with `docker-machine create -d digitalocean --digitalocean-access-token $DOTOKEN exampleswiftserver`
4. Run `eval $(docker-machine env exampleswiftserver)` 
5. Clone this repostory `git clone https://github.com/swiftyserver/exampleServer` and cd to it `cd exampleServer`
6. Run `docker-compose up -d` to build and start your server. This should take like *5* minutes
7. To test your server run ``open http://`docker-machine ip exampleswiftserver`/`` or ``curl http://`docker-machine ip exampleswiftserver`/``
