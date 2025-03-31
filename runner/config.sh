# Configuration file for the simulation script

# List of algorithm names
#algorithms=("BestFit" "MaxFit" "ClosestFit" "MultiOpt" "Random" "HHO")
#ConfigNames=("Static_Nodes_300_BestFit" "Static_Nodes_300_ClosestFit" "Static_Nodes_300_Random" "Static_Nodes_210_Mobile_90_Random" "Static_Nodes_210_Mobile_90_BestFit" "Static_Nodes_210_Mobile_90_ClosestFit" )

#ConfigNames=("Static_Nodes_210_Mobile_90_BestFit")

ConfigNames=(
"Static_Nodes_100_Random"
"Static_Nodes_100_BestFit"
"Static_Nodes_100_ClosestFit"
"Static_Nodes_300_Random"
"Static_Nodes_300_BestFit"
"Static_Nodes_300_ClosestFit"
"Static_Nodes_500_Random"
"Static_Nodes_500_BestFit"
"Static_Nodes_500_ClosestFit"
"Static_Nodes_70_Mobile_30_Random"
"Static_Nodes_70_Mobile_30_BestFit"
"Static_Nodes_70_Mobile_30_ClosestFit"
"Static_Nodes_210_Mobile_90_Random"
"Static_Nodes_210_Mobile_90_BestFit"
"Static_Nodes_210_Mobile_90_ClosestFit"
"Static_Nodes_350_Mobile_150_Random"
"Static_Nodes_350_Mobile_150_BestFit"
"Static_Nodes_350_Mobile_150_ClosestFit"
)

simulation_dir="../simulations/DublinNet_v3"

simulation_executable="../../src/simulationDublin"

# Path to the XML result file
xml_file="simulation_run_log.xml"

ned_paths="..:../../src:../../../simu5G/emulation:../../../simu5G/simulations:../../../simu5G/src:../../../inet/examples:../../../inet/showcases:../../../inet/src:../../../inet/tests/validation:../../../inet/tests/networks:../../../inet/tutorials:..:../../src:../../../veins_inet/src/veins_inet:../../../veins_inet/examples/veins_inet:../../../veins/examples/veins:../../../veins/src/veins"

library_paths="-l ../../../simu5G/src/simu5g -l ../../../inet/src/INET -l ../../../veins_inet/src/veins_inet -l ../../../veins/src/veins"

config_file="omnetpp.ini"
