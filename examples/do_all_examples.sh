#!/usr/bin/env bash
echo "gpaw-tools: "
echo "Calculating all examples BASH script..."
CORENUMBER=4
SCRIPT=`realpath $0`
SCRIPTPATH=`dirname $SCRIPT`
# Examples
# Bulk-Al-noCIF -------------------
echo "Calculating: Bulk-Al-noCIF"
cd ./Bulk-Al-noCIF
time mpirun -np $CORENUMBER gpawsolve.py -o -c bulk_aluminum.py

# Cr2O-spin -------------------
echo "Calculating: Cr2O-spin"
cd ../Cr2O-spin
time mpirun -np $CORENUMBER gpawsolve.py -o -c Cr2O.py -i Cr2O_mp-1206821_primitive.cif

# Graphene-LCAO -------------
echo "Calculating: Graphene-LCAO"
cd ../Graphene-LCAO
echo "Step 1: Pristine graphene"
time mpirun -np $CORENUMBER gpawsolve.py -o -c graphene.py -i graphene4x4.cif
echo "Step 2: Graphene with defect"
time mpirun -np $CORENUMBER gpawsolve.py -o -c graphene.py -i graphene4x4withdefect.cif

# MoS2-GW -------------------
# echo "Calculating: MoS2-GW"
# cd ../MoS2-GW
# time mpirun -np $CORENUMBER gpawsolve.py -o -c MoS2-GW.py -i MoS2-structure.cif

# Si-2atoms-optical ----------------
echo "Calculating: Si-2atoms-optical"
cd ../Si-2atoms-optical
echo "Step 1: Ground, DOS and Band"
time mpirun -np $CORENUMBER gpawsolve.py -o -c Si-Step1-ground_dos_band.py -i Si_mp-149_primitive_Example.cif
echo "Step 2: Optical"
time gpawsolve.py -o -c Si-Step2-optical.py -i Si_mp-149_primitive_Example.cif

# Wurtzite ZnO with DFT+U
echo "Calculating: ZnO with DFT+U"
cd ../ZnO-with-Hubbard
echo "Calculating: Ground, DOS and Band"
time mpirun -np $CORENUMBER gpawsolve.py -o -c ZnO_Hubbard.py

# Finish
echo "All calculations are finished."
