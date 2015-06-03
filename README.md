# Docker Foolery

#### The Setup


These are the steps that I took in order to get Docker working as desired on my macbook:

  1. [Install VirtualBox](https://www.virtualbox.org/wiki/Downloads)
  2. [Install boot2docker](http://boot2docker.io/)
  3. [Install docker](https://docs.docker.com/)
  4. Execute `boot2docker init`
    - For some reason locally, this would not set the environment variables. I was able to resolve this by running `boot2docker shellinit` and copying the 3 `export` statements into a new `~/.b2d` file that is automatically sourced by my `.bashrc`.
  5. Execute `boot2docker start`
  6. Open the VirtualBox GUI (in Applications directory)
  7. Right click on 'boot2docker-vm', select "Settings"
  8. Select the Network tab, click on "Port Forwarding"
  9. Enter desired port forwarding. Guest IP can be left blank, 127.0.0.1 for host ip.
    - Forward port 3000 in order to see the example in this repo.
  10. [Install docker-compse](https://docs.docker.com/compose/install/)
  11. `docker-compose up` from the `docker-foolery` directory.

  Useful Stuff (does not seem to worked when aliased):

```ruby
    # List all image ids:
    docker images | awk '{if(NR==1){}else{print $3}}'
    # List all containers ids:
    docker ps -a | awk '{ if(NR==1){}else{print $1}}'

    # Stop all containers:
    docker stop $(docker ps -a | awk '{ if(NR==1){}else{print $1}}')

    # Remove all containers:
    docker rm $(docker ps -a | awk '{ if(NR==1){}else{print $1}}')

    # Force remove of all containers:
    docker rm -f $(docker ps -a | awk '{ if(NR==1){}else{print $1}}')

    # Force removal of all images:
    docker rmi -f $(docker images | awk '{if(NR==1){}else{print $3}}')
```
