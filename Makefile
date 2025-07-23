CXX=g++
FC=gfortran

CXXFLAGSREL= -D_INTERFACE
CXXFLAGS = -g

FFLAGS=-std=legacy -fno-align-commons -fno-underscoring -finit-local-zero -g  -fforce-addr -finit-local-zero  \
             -fstrength-reduce -funroll-loops -fexpensive-optimizations   -Wall -Wextra -Wuninitialized

FFLAGSREL=-std=legacy -fno-align-commons -fno-underscoring -finit-local-zero -O  -fforce-addr -finit-local-zero  \
             -fstrength-reduce -funroll-loops -fexpensive-optimizations 
LDFLAGS=
LDLIBS=-lstdc++
OBJDIR=obj

CROPS=Crop\ Source
SOILS=Soil\ Source

all: maizsim

crop:
	$(CXX) -c  $(CXXFLAGSREL) $(CROPS)/*.cpp

soil:
	$(FC)  -c $(FFLAGSREL)  $(SOILS)/*.for $(SOILS)/*.FOR 

maizsim: crop soil
	$(FC) $(LDFLAGS) *.o -o maizsim $(LDLIBS)

clean:
	rm -f *.o

build_and_clean:
	$(MAKE) all
	$(MAKE) clean
