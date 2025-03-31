#!/bin/bash

source ./config.sh

# 进入 simulation_dir
cd "$simulation_dir" || exit 1

echo '<?xml version="1.0" encoding="UTF-8"?>' > "$xml_file"
echo '<Simulations>' >> "$xml_file"

for ConfigName in "${ConfigNames[@]}"; do
    echo "Starting simulation with configuration: $ConfigName"

    start_time=$(date +"%Y-%m-%d %H:%M:%S")
    SECONDS=0 

    echo "Using configuration: $ConfigName"

    $simulation_executable -r 0 -m -u Cmdenv \
        -c "$ConfigName" \
        -n "$ned_paths" \
        $library_paths \
        "$config_file"

    stop_time=$(date +"%Y-%m-%d %H:%M:%S")
    elapsed_time=$SECONDS

    #output_dir="${simulation_dir}/${ConfigName}"
    output_dir="${ConfigName}"
    mkdir -p "$output_dir"

    #mv -v "${simulation_dir}/results/"* "$output_dir/"
    mv -v "results/"* "$output_dir/"


    echo "Results for $ConfigName moved to ${output_dir}/"

    echo "  <Simulation>" >> "$xml_file"
    echo "    <ConfigNames>${ConfigName}</ConfigNames>" >> "$xml_file"
    echo "    <StartTime>${start_time}</StartTime>" >> "$xml_file"
    echo "    <StopTime>${stop_time}</StopTime>" >> "$xml_file"
    echo "    <ElapsedTime>${elapsed_time}</ElapsedTime>" >> "$xml_file"
    echo "  </Simulation>" >> "$xml_file"

    echo "Simulation with configuration: $ConfigName completed."

done

echo '</Simulations>' >> "$xml_file"

echo "All simulations completed. Results saved in $xml_file."
