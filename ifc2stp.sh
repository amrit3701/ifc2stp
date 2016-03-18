#!/bin/sh

echo "Enter the file name which you want to convert from ifc to stp without extension: " 

#Declaring variables
$file
$file_ifc
$file_stp

#Getting input from the user
read file

#Saving files name with extension in variables
file_ifc=$file".ifc"
file_stp=$file".stp"

#Copy the ifc file to stp file 
cp ./$file_ifc ./$file_stp

#Removing ifc prefix from stp file
sed -i "s/IFC//g" $file_stp
sed -i "s/'*.ifc'/.stp'/g" $file_stp
sed -i "s/Ifc//g" $file_stp
