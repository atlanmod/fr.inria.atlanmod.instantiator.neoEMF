#!/bin/bash

			JARS=libs/instantiator/plugins/*:libs/plugins/*:libs/ivy/default/*
			ARGS=""
			
			while [[ $# > 1 ]]
						do
						key="$1"
						shift

						case $key in
						    -c | --package)
						    ARGS=$ARGS' -c '$1
						    shift
						    ;;
						    -u | --suffixe)
						    ARGS=$ARGS' -u '$1
						    shift
						    ;;
						    -s | --size)
						    ARGS=$ARGS' -s '$1	
						    shift
						    ;;
						    -n | --number-models)
						    ARGS=$ARGS' -n '$1
						    shift
						    ;; 
						    -e | --seed)
						    ARGS=$ARGS' -e '$1
						    shift
						    ;; 
						    -p | --variations)
						    ARGS=$ARGS' -p '$1	
						    shift
						    ;;  
						    -v | --properties-variation)
						    ARGS=$ARGS' -v '$1	
						    shift
						    ;; 
						    -d | --reference-degree)
						    ARGS=$ARGS' -d '$1
						    shift
						    ;;
						    -z | --values-size)
						    ARGS=$ARGS' -z '$1
						    shift
						    ;;
						    -a | --additional-jars)
						    JARS="$JARS:$1"
						    shift
						    ;;		
						    *)
						    ;;
						esac
						done	
			
			echo 'jars are: '$JARS
			echo 'args are: '$ARGS

			java -cp fr.inria.atlanmod.instantiator.neoEMF.jar:$JARS fr.inria.atlanmod.instantiator.neoEMF.Launcher $ARGS
		