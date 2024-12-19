#!/bin/bash

# 定義壓縮檔的前綴名稱
prefix="dark-side-train-data-part"
extension=".zip"

# 獲取所有相關壓縮檔案，並排序
files=$(ls ${prefix}*${extension} | sort -V)

# 建立存放解壓檔案的目錄
output_dir="extracted_data"
mkdir -p ${output_dir}

# 解壓每個檔案
for file in $files; do
    echo "解壓中: $file"
    unzip -o "$file" -d ${output_dir} # 使用 -o 參數強制覆蓋
    if [ $? -eq 0 ]; then
        echo "$file 解壓成功！"
    else
        echo "$file 解壓失敗！"
        exit 1 # 遇到錯誤時退出
    fi
done

echo "所有檔案解壓完成！解壓內容存放於目錄: ${output_dir}"
