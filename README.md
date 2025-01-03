# Solution Documentation

## Part I

1. First attempt to run the container:
```bash
docker pull infracloudio/csvserver:latest
docker run -d infracloudio/csvserver:latest
```
The container failed because it requires an input file.

2. Created gencsv.sh script to generate required input file:
```bash
chmod +x gencsv.sh
./gencsv.sh 2 8
```

3. Run container with input file and correct port mapping:
```bash
docker run -d -v $(pwd)/inputFile:/csvserver/inputdata -p 9393:9300 -e CSVSERVER_BORDER=Orange infracloudio/csvserver:latest
```

4. To check the application is running:
```bash
curl http://localhost:9393
```

5. To get the raw output:
```bash
curl -o ./part-1-output http://localhost:9393/raw
```

6. To get container logs:
```bash
docker logs [container_ID] part-1-logs 2>&1
```