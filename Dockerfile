# 基于官方 Python 镜像创建一个新的镜像
FROM python:3.8.16

# 设置工作目录
WORKDIR /app

# 复制当前目录下的所有文件到容器中的 /app 目录
COPY . .

RUN pip3 install -r requirements.txt

# 运行 bot.py
CMD ["python3", "bot.py"]
