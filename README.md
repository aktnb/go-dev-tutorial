### MySQL

```bash
$ docker compose build
```
```bash
$ docker compose up -d
```
```bash
$ docker exec -it go-dev-tutorial-mysql bash -p
```
```bash
$ mysql -u root -p
Enter password: 

mysql>
```

### Set environmental variable
On Linux or Mac:
```bash
$ export DBUSER=username
$ export DBPASS=password
```
On Windows:
```bash
$ set DBUSER=username
$ set DBPASS=password
```

### Request to REST API
GET /albums
```bash
$ curl http://localhost:8080/albums
```

GET /albums/:id
```bash
$ curl http://localhost:8080/albums/2
```

POST /albums
```bash
$ curl http://localhost:8080/albums \
    --include \
    --header "Content-Type: application/json" \
    --request "POST" \
    --data '{"id": "4","title": "The Modern Sound of Betty Carter","artist": "Betty Carter","price": 49.99}'
```

### Fuzz
```bash
$ go test -fuzz=Fuzz -fuzztime 30s
```
