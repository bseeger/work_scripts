total=1000
url="http://localhost:8080/fcrepo-webapp-5.1.0/rest"
suffix=$RANDOM

# launch a script to check HEAD 
./runHead.sh $total $suffix $url &

x=1
while [ $x -le $total ]
do
  id=`echo "$x.$suffix"`
  SECONDS=0
  echo "$SECONDS: PUT $url/$id"
  resp=$(curl -i -X PUT -H "Content-Type:image/png" "$url/$id" --data-binary "@image1.png" -ufedoraAdmin:secret3)
  echo "$SECONDS: Created $url/$id"
  x=$(( $x + 1 ))
done
