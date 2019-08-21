#!/bin/bash
set -ex

EXPID=single_column
RUNDIR=/cluster/work/users/$USER/micom/run/$EXPID
CONFDIR=$HOME/fram_models/models/MNP2/Datain_single_column
#CONFDIR=/nird/home/$USER/MNP2/Datain_sigma_2_era
ATMDIR=/cluster/shared/noresm/micom/NCEP
#ATMDIR=/cluster/shared/noresm/micom/ERA40
CLIMDIR=$ATMDIR/clim
EXEDIR=$HOME/fram_models/models/micom/build
SUBDIR=$HOME/fram_models/models/micom/run
NTASKS=8
NTHREADS=1

#rm -rf $RUNDIR
mkdir -p $RUNDIR
cd $RUNDIR
cp $CONFDIR/* .
cp $ATMDIR/*.nc .
cp $CLIMDIR/* .
cp -u $SUBDIR/limits .
cp -u $EXEDIR/micom .

  cat <<EOF >batchscript.sh
#!/bin/bash 
#
#  This script will launch micom
#
#SBATCH --account=nn2345k
#SBATCH --job-name=micom.$EXPID
#SBATCH --qos=devel
#SBATCH --time=00:10:00
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=$NTASKS
#SBATCH --cpus-per-task=$NTHREADS

export OMP_NUM_THREADS=$NTHREADS

module purge --force
module load StdEnv
module load intel/2018a
module load netCDF-Fortran/4.4.4-intel-2018a-HDF5-1.8.19
module load PnetCDF/1.8.1-intel-2018a
module list

cd $RUNDIR
mpirun ./micom

EOF

chmod 755 batchscript.sh
sbatch batchscript.sh
