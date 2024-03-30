#!/bin/bash

make

if [ $? -eq 0 ]; then
    ./bin/ProjectFlow
else
    echo "Erreur lors de la compilation du projet."
fi
