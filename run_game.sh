#!/bin/bash
name="Luca_Alexandru"

echo "${name}s program"
newdir="${name}_labb"
mkdir $newdir

cp -a *.java $newdir 
cd $newdir
echo "Running game from $PWD"
echo compiling...
for javaf in *.java
do
a=$(basename $javaf)
if grep ".java" $a 
then
echo $a
javac $a
echo running...
java "${a%%.*}"
fi
done
echo Done!
echo Removing class files...
for c in *.class
do
rm -r $c
done

ls
