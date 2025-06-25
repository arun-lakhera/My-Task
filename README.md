# Part 1 Solution - CSV Server

## Steps Followed

1. Pull the Docker image using docker pull command 

  Docker pull infracloudio/csvserver:latest

2. Create Docker container and find the reason why it is failed using this command 
   
   Docker losgs <container_name/ container_id>

3. Created inputdata file using script:
   ```bash
   ./gencsv.sh 2 8

4. Run the container:
   
   docker run -d --name csvserver \
-v "$PWD/inputdata":/csvserver/inputdata \
-p 9393:9300 \
-e CSVSERVER_BORDER=Orange \
infracloudio/csvserver:latest
 
5. Verified server at: http://localhost:9393

6. save output and logs 
   curl -o part-1-output http://localhost:9393/raw
                 or
   docker logs csvserver > part-1-logs





