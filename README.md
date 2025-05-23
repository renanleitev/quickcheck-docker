# QuickCheck Full Stack Application

Full Stack application for QuickCheck, used for scheduling and registering appointments.

## Structure

1. Front End: React + Vite  
2. Back End: Spring Boot (Java)  
3. Database: MySQL  
4. Deployment: Docker Compose

## Getting the components

Clone this repository:

```bash
git clone https://github.com/renanleitev/quickcheck-docker.git
```

Then navigate to the code directory (or use the terminal):

```bash
cd quickcheck-docker
```

From inside the `quickcheck-docker` folder, clone the Front End and Back End repositories:

**Front End**

```bash
git clone https://github.com/renanleitev/quickcheck-front.git
```

**Back End**

```bash
git clone https://github.com/i1iadeilton/quickcheck.git
```

## Inserting mock data

Grant permission to run the script below:

```bash
sudo chmod +x mock.sh
```

Run the script to insert mock data:

```bash
./mock.sh
```

After that, you should see a message in the terminal indicating that the mock data was successfully inserted:

```
"Replacement complete. The original file was saved as QuickcheckApplication.java.bak."
```

If an error occurs, check if the `mock.sh` file has execution permission (`chmod +x`) or if you cloned the `quickcheck` repository correctly.

## Running on an external server (AWS, Cloud, Oracle)

Grant permission to run the script below (it will replace `localhost` with the server IP):

```bash
sudo chmod +x url.sh
```

Pass the server IP to the script so it updates the backend API URL in the `axios.js` file:

```bash
./url.sh <SERVER_IP:8080>
```

Note: It’s important that port `8080` is open on your server.

After that, you should see a message in the terminal indicating the URL was successfully replaced:

```
"Replacement complete. The original file was saved as axios.js.bak."
```

If an error occurs, check if the `url.sh` file has execution permission (`chmod +x`) or if you cloned the `quickcheck-front` repository correctly.

## Running the containers

```bash
docker compose up
```

Note: It may take a few seconds or even minutes for the application to start. If it doesn't work after two minutes, try again.

If everything goes well, open your browser and go to: `http://localhost:9090` or `http://<SERVER_IP>:9090`

## Deleting the containers

```bash
docker compose down
```

## Deleting all containers

```bash
docker container prune -f
```
