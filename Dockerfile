
FROM ubuntu:latest
COPY . /usr/src/myapp
#COPY 'Soil Source' /usr/src/myapp

WORKDIR /usr/src/myapp
#RUN apt-get -y install 
#RUN apt-get -y install build-essential
#RUN apt-get -y install gfortran 
#RUN apt-get -y install g++-multilib
#RUN apt-get -y install emacs
#RUN agp-get -y install nano
#RUN make
#RUN rm -f *.o
#CMD ./maizsim ./run_01/runrun_01.dat

#CMD ["./myapp"]