make ansible-ping
status=$?
echo $status
if [[ $status == 0 ]];
 then
    echo "Verifying CPU requirements"
    make ansible-verify-cpu >> output.txt
    grep Supported output.txt
    status=$?
        if [[ $status == 0 ]];
          then
            make ansible-deps
          else
            echo "Bad"
        fi
    rm output.txt
 else
    echo "Can not proceed, host is not available"
fi