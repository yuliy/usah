
# for-in
for file in *.*; do
    echo $file
done

# for-loop
CPU_COUNT=8
for (( i=0 ; i<${CPU_COUNT} ; i++ )) ; do
    echo "%cpu $i"
done
