
FROM ubuntu:latest
COPY . /usr/src/myapp
#COPY 'Soil Source' /usr/src/myapp

WORKDIR /usr/src/myapp
RUN apt-get -y update && apt-get install -y
RUN apt-get -y install build-essential
RUN apt-get -y install gfortran 
RUN apt-get -y install g++-multilib
RUN g++ -v
#RUN apt-get -y install emacs
RUN apt-get -y install nano
RUN make
RUN rm -f *.o
RUN bash
#CMD ./maizsim ./run_01/runrun_01.dat

#CMD ["./myapp"]