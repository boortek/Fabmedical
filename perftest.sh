host="fabmedical-594686.mongo.cosmos.azure.com"
username="fabmedical-594686"
password="gXqn5WRDsAweKkdmy4rj3f2WWbbnjiqV9DiSj5H8XDxMHl1Oc5OihmiwNiWDcOizRixL3NkhT9jDpLAh7eJE9A=="
dbname="contentdb"
port="10255"

for i in {1..250}; do
    mongo $host:$port/$dbname \
        -u $username -p $password \
        --ssl --sslAllowInvalidCertificates \
        --eval 'db.sessions.insert({"title":"Perf Test"})' &
done
