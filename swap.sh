#!/bin/bash

# 创建 1GB 的 swap 文件
fallocate -l 1G /swapfile

# 设置正确的权限
chmod 600 /swapfile

# 格式化 swap 文件
mkswap /swapfile

# 启用 swap 文件
swapon /swapfile

# 确保在启动时自动挂载 swap
echo '/swapfile none swap sw 0 0' | tee -a /etc/fstab

# 验证 swap 是否生效
swapon --show
