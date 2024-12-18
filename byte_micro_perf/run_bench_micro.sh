#!/bin/bash

# Traverse the workloads folder
for file in workloads/*.json; do
  # Get the filename without the path
  filename=$(basename -- "$file")
  # Strip the .json suffix
  wname="${filename%.json}"
  # Print the name
  echo "running task: $wname"
  python3 launch.py --task $wname --hardware_type GPU
done
