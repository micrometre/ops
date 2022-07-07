
#!/bin/sh -l

echo "Hello $1"
time=$(date)
pwd=$(pwd)
echo "::set-output name=time::$time"
echo "::set-output name=time::$pwd"
