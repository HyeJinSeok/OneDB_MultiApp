#!/bin/bash

echo "📌 기존 app1, app2 컨테이너 정리 중..."
docker-compose stop app1 app2  # 기존 컨테이너 중지
docker-compose rm -f app1 app2  # 기존 컨테이너 삭제

echo "🚀 app1, app2 새 컨테이너 빌드 및 실행 중..."
docker-compose up -d --build app1 app2  # app1과 app2만 다시 실행

echo "✅ app1, app2 컨테이너가 실행되었습니다!"
docker ps | grep "springbootapp"  # app1, app2만 확인
