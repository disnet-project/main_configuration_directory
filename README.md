# main_configuration_directory
In this directory you will find the DISNET configuration, which allows you to create all the Web services that make up the platform. 

The directory is ready to be executed thanks to the use of docker containers.

# Requirements

DISNET is implemented in a linux system (ubuntu 16.04 LTS) and is orchestrated by docker containers. It is recommended to run DISNET in a similar environment to ensure its proper functioning.

1. Basic knowledge of linux.

2. Basic knowledge of linux docker and docker-compose. Despite our linux recommendation, docker allows you to run your containers in any system where it is installed (portability). If you want to know more about docker-compose you can look at their documentation: https://docs.docker.com/compose/. It is necessary to have installed docker and docker-compose in the system where you want to run DISNET.

3. Basic knowledge about Metamap, NLP tool. Because DISNET uses this software to process your texts. The version of Metamap used in this first issue of DISNET, is 2016v2, on its website you will find all the documentation (https://metamap.nlm.nih.gov). It is used locally, therefore a lot of space is needed, and it is necessary to download its components for proper integration into DISNET. 

4. The necessary Metamap files are the following and must be downloaded from its official page and copied into the internal directory (dockerfile -> metamap2016v2 -> zip) with the extension .bz2 as shown below:
  
  ## a) public_mm_linux_main_2016v2.tar.bz2 (https://metamap.nlm.nih.gov/MainDownload.shtml)
  ## b) public_mm_wsd_2014.tar.bz2 (downloaded together with a)) 
  ## c) public_mm_linux_javaapi_2016v2.tar.bz2 (https://metamap.nlm.nih.gov/JavaApi.shtml)

5. Knowledge about Java and Spring Boot framework, since all Web services are developed with it.

The directory is composed of the following essential elements:

# 1) docker-compose.yml file
  This file is the main one, it organises the execution of each one of the Web services, it links them to each other and it is where their dependencies are specified.  

# 2) .env file
  This file contains the global system configuration variables. These are used by each of the docker containers and by the docker-compose.yml file itself.

# 3) dockerfile directory
  This directory contains the .jar of each of the Web applications that make up each Web service. It is necessary to have previously compiled and generated the .jar of each one of the Web applications that compose DISNET.

  The list of Web services is as follows and can be accessed in the following GitHub repositories of this account.
