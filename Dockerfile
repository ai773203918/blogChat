# 先拉取最新到本地再构建
# git clone https://github.com/barretlee/blogChat.git

# 使用 Node.js 官方镜像作为基础镜像
FROM node:16-slim

# 设置工作目录
WORKDIR /usr/src/app

# 将项目文件复制到工作目录
COPY ./blogChat .

# 安装项目依赖
RUN npm install --production && npm cache clean --force

# 暴露应用运行的端口（根据项目实际情况修改）
EXPOSE 29231

# 启动应用
CMD ["node", "index.js"]
