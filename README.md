# main_configuration_directory
In this directory you will find the DISNET configuration, which allows you to create all the Web services that make up the platform. 

The directory is ready to be executed thanks to the use of docker containers.

If you want to know more about docker-compose you can look at their documentation: https://docs.docker.com/compose/

The directory is composed of the following essential elements:

# 1) docker-compose.yml file
  This file is the main one, it organises the execution of each one of the Web services, it links them to each other and it is where their dependencies are specified.  

# 2) .env file
  This file contains the global system configuration variables. These are used by each of the docker containers and by the docker-compose.yml file itself.

# 3) dockerfile directory
  This directory contains the .jar of each of the Web applications that make up each Web service. It is necessary to have previously compiled and generated the .jar of each one of the Web applications that compose DISNET.

  The list of Web services is as follows and can be accessed in the following GitHub repositories of this account.
