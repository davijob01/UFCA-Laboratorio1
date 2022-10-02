#!/bin/bash

echo "DIGITE AS PALAVRAS DO CONJUNTO:"
read conjunto

printf "%s\n" ${conjunto[@]} | sort
