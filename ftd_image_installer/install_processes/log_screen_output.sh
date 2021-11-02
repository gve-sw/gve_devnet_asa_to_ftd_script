#!/bin/bash
FILE="screenlog.0"
STRING="ciscoasa(config)#"
rm -f "$FILE"
echo "Logging Console Session...\r" > "${FILE}"

cat /dev/ttyUSB1 | tee "${FILE}" &

CAT_PID=$!

echo "Image Downloading..."

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
echo "Download Finished..."
parent_dir=$(pwd -P)
bash "${parent_dir}/install_processes/install_image.sh"
