#!/bin/bash
wait
FILE="screenlog.0"
STRING="!"
rm -f "$FILE"

cat /dev/ttyUSB1 | tee "${FILE}" &
CAT_PID=$!

echo "Discoverying if FTD Image upgrade has begun..."
sleep 1
while : ;do
    [[ -f "$FILE" ]] && grep -q "$STRING" "$FILE" && echo "FOUND" && break
    echo -ne "/\r"
    sleep .1
    echo -ne "-\r"
    sleep .1
    echo -ne "\ \r"
    sleep .1
    echo -ne "|\r"
    sleep 5
done
kill $CAT_PID

