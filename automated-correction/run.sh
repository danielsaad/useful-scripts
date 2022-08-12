cd input
../generator
cd ..

for f in `ls -v input`; do
    $(./validator < "input/${f}")
    rv=$?
    if [ ${rv} -ne 0 ]; then
        echo "Validate failed on ${f}"
        exit 0
    fi
done

for f in `ls -v input`; do
    ./ac < "./input/${f}" > "./output/${f}"
done
