
#!/bin/sh -l

echo "Hello $1"
time=$(date)
uname=$(uname)
echo "::set-output name=time::$time"
echo "::set-output name=time::$uname"
