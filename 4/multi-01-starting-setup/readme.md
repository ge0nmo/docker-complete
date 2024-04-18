### 같은 네트워크에서 실행

## network
docker network create goals-net

## db
# -v 후 path를 입력. 폴더가 도커 컨테이너 안에 없다면 생성
docker run --name mongodb -v data:/data/db --rm --network goals-net mongo


## backend
docker build -t goals-node backend/.

docker run --name goals-backend -p 8080:8080 -d --rm --network goals-net goals-node

## frontend
docker build -t goals-react frontend/.

docker run --name goals-front -p 3000:3000 --rm goals-react