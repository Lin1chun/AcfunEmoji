#!/bin/bash

# 进入src目录，如果不存在则退出
cd src || exit

# 循环处理每一个.png文件
for file in *.png; do
    # 如果文件名不以ac_开头，则重命名
    if [[ ! "$file" =~ ^ac ]]; then
        mv "$file" "ac$file"
        echo "已重命名: $file -> ac$file"
    fi
done

echo "所有文件重命名完成！"