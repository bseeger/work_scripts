# pass in number of iterations as first argument, like so: 
# ./runHead 5
sleep 5    # give first script a head start
total=$1
suffix=$2
url=$3

x=1
while [ $x -le $total ]
do
  id=`echo "$x.$suffix"`
  SECONDS=0
  echo "$SECONDS: start HEAD $url/$id"
  curl -I "$url/$id" -ufedoraAdmin:secret3
  echo "$SECONDS: done HEAD $url/$id"

  SECONDS=0
  echo "$SECONDS: start HEAD $url"
  curl -I "$url" -ufedoraAdmin:secret3
  echo "$SECONDS: done HEAD $url"
  sleep 1
  x=$(( $x + 1 ))
done
