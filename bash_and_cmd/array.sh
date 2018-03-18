
arr=(
abc
asdf
"qqer qewr"
tyu tu
zcv
)


for (( i=0; i < ${#arr[*]}; i++ )) do
    echo ${arr[i]}
done
