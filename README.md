# BuildMaizsim
## Docker image to compile a Maizsim executable for linux.
Building the image installs compilers and  compiles the model:

**docker build --tag maizsimbuild:1.0 . **

running the image will launch the model and run a simulation:

**docker run maizsimbuild:1.0**

to run the container using a shared volume on your pc use the -v option
For example, if you have a folder called d:\maizsim\agmipet2\run_02 on your (windows) pc that you want to make available to the 
container, then you would use
**docker run -v  'd:\maizsim\agmipet2\run_02:/run_02' -it maizsimbuild:1.0**

to run in interactive mode, use -it

this would open the container in Bash and you can run commands. the model will already be compiled

to run the model use:

 ./maizsim ./run_02/runrun_02.dat

the output would go to  the run_02 folder in the local drive.

The simulation is a run from the second Agmip  ET study. See the maizsim github site

