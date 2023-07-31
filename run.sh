#!/bin/bash

main_dir="/home/axr/prog/go-practice/${1}"
cd ${main_dir}

for dir in */
do
    if [[ ${dir} != "utf8/" ]]; then
        echo "------------ ${dir} ------------"
        go test -v "./${dir}"
        golangci-lint -v run "./${dir}"
    fi
done

