#!/bin/sh
/usr/local/bin/gfortran8 \
	./rtvadj.f ./coeffp.f ./postp.f ./coeffs.f  \
	./LAPACK_dgesv.f ./slvsm.f ./clcmrt.f \
	./extrc2.f \
	./oahuout.f ./weathout.f ./extrc0.f ./extrc1.f ./n.f \
	-std=legacy -Wl,-rpath=/usr/local/lib/gcc8
			 
#/usr/local/bin/gfortran8 ./rtvadj.f \
#	-c -std=legacy -Wl,-rpath=/usr/local/lib/gcc8
#/usr/local/bin/gfortran8 ./coeffp.f \
#	-c -std=legacy -Wl,-rpath=/usr/local/lib/gcc8
#/usr/local/bin/gfortran8 ./extrc2.f \
#	-c -std=legacy -Wl,-rpath=/usr/local/lib/gcc8
#/usr/local/bin/gfortran8 ./oahuout.f \
#	-c -std=legacy -Wl,-rpath=/usr/local/lib/gcc8
#/usr/local/bin/gfortran8 ./weathout.f \
#	-c -std=legacy -Wl,-rpath=/usr/local/lib/gcc8
#/usr/local/bin/gfortran8 ./extrc0.f \
#	-c -std=legacy -Wl,-rpath=/usr/local/lib/gcc8
#/usr/local/bin/gfortran8 ./extrc1.f \
#	-c -std=legacy -Wl,-rpath=/usr/local/lib/gcc8
#/usr/local/bin/gfortran8 -c ./n.f \
#	-std=legacy -Wl,-rpath=/usr/local/lib/gcc8
##	-std=f77 -Wl,-rpath=/usr/local/lib/gcc8
##	-std=f77 -ffixed-form -Wl,-rpath=/usr/local/lib/gcc8

./a.out < fname.txt
