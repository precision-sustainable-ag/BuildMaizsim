# BuildMaizsim
## Docker image to compile a Maizsim executable for linux.
Building the image installs compilers and  compiles the model:

**docker build --tag maizsimbuild:1.0 . **

make sure there is a space between the 1.0 and the '.' or docker will give an error
running the image will create the container and launch the model and run a simulation:

**docker run maizsimbuild:1.0**

The command:
**docker create maizsimbuild:1.0**
will just create the image.
if you want to run that image in interactive mode you need to create or run with the option '-it'
this is mostly used for debugging
**docker create -it maizsimbuild:1.0**
**docker run -it maizsimbuild:1.0**

The command:
**docker start maizsimbuild:1.0**
will start an existing image 
if it was created with the '-it' command you can run in a terminal

to run and create the container using a shared volume on your pc use the -v option
For example, if you have a folder called d:\maizsim\agmipet2\run_02 on your (windows) pc that you want to make available to the 
container, then you would use
**docker run -v  'd:\maizsim\agmipet2\run_02:/run_02' -it maizsimbuild:1.0**
**docker start -v  'd:\maizsim\agmipet2\run_02:/run_02' -it maizsimbuild:1.0**

note that you must already have a run_02 folder in the linux container to be able to map it.


to run and create in interactive mode, use -it

this would open the container in Bash and you can run commands. the model will already be compiled

If you have started the container and it is running you can interact with it as
use docker ps to get the name of the running container
in this example, the name is nice_poitras and I am running the command to list the files
in the run_01 folder
docker exec -it nice_poitras ls ./run_01

ro run a terminal use /bin/bash instead of ls ./run_01
to run the model use:

 ./maizsim ./run_02/runrun_02.dat

the output would go to  the run_02 folder in the local drive.

The simulation is a run from the second Agmip  ET study. See the maizsim github site

