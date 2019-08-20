#!/bin/bash 

cd build/
make clean
rm *.mod
cp Makefile.config Makefile
make depend

module purge --force
module load StdEnv
module load intel/2018a
module load netCDF-Fortran/4.4.4-intel-2018a-HDF5-1.8.19
module load PnetCDF/1.8.1-intel-2018a

make all
