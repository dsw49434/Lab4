#!/bin/bash
if [ "$1" == "--date" ] || [ "$1" == "-d"];
then
   date +%Y-%m-%d
fi

if [ "$1" == "--log"] || [ "$1" == "-l"];
then
for ((i=1; i<=100; i++))
do
  filename="log${i}.txt"
  echo "Nazwa pliku: $filename" > "$filename"
  echo "Nazwa skryptu: $0" >> "$filename"
  echo "Data: $(date)" >> "$filename"
done
fi

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

if [ "$1" == "--help" ] || [ "$1" == "-h"];
then
  echo "--date/-d - podaje date"
  echo "--logs/-l - utworzy 100 plikow logs"
  echo "--error/-e - utworzy 100 plikow error"
  echo "--error30/-e30 - utworzy 30 plikow error"
exit 0
fi

if [ "$1" == "--init"];
then
git clone https://github.com/dsw49434/Lab4.git .

dir=$(pwd)

echo "export PATH=\$PATH:$dir" >> ~/.bashrc
source ~/.bashrc
fi


if [ "$1" == "--error"] || [ "$1" == "-e"];
then
for ((i=1; i<=100; i++))
do
  filename="error${i}.txt"
  echo "Nazwa pliku: $filename" > "$filename"
  echo "Nazwa skryptu: $0" >> "$filename"
  echo "Data: $(date)" >> "$filename"
done
fi

if [ "$1" == "--error30"] || [ "$1" == "-e30"];
then
for ((i=1; i<=30; i++))
do
  filename="error${i}.txt"
  echo "Nazwa pliku: $filename" > "$filename"
  echo "Nazwa skryptu: $0" >> "$filename"
  echo "Data: $(date)" >> "$filename"
done
fi

