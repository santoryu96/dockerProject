# Docker image를 생성할 때 기본적으로 사용할 base image
# python 3.8을 실행할 수 있는 환경이 세팅되어 있는 docker 이미지를 만들겠다.
FROM python:3.8

WORKDIR /opt/app

# 호스트 머신에 있는 파일이나 폴더를, WORKDIR . 위치에 저장
ADD requirements.txt .

# 스크립트 실행
RUN pip install -r requirements.txt

#ADD templates templates
#
#ADD app.py .

# 생성된 docker image를 실행할 때 자동으로 실행되는 커맨드
CMD ["python", "app.py"]