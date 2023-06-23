#!/bin/bash
date +%Y-%m-%d

for ((i=1; i<=100; i++))
do
  filename="log${i}.txt"
  echo "Nazwa pliku: $filename" > "$filename"
  echo "Nazwa skryptu: $0" >> "$filename"
  echo "Data: $(date)" >> "$filename"
done


if [ "$#" -ne 1 ]; then
  echo "Podaj liczbę plikow."
  exit 1
fi

num_files=$1

for ((i=1; i<=num_files; i++))
do
  filename="log${i}.txt"
  echo "Nazwa pliku: $filename" > "$filename"
  echo "Nazwa skryptu: $0" >> "$filename"
  echo "Data: $(date)" >> "$filename"
done
