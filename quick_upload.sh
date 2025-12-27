#!/bin/bash
# 快速上傳到 GitHub 的腳本

echo "=========================================="
echo "GitHub 上傳腳本"
echo "=========================================="
echo ""

# 檢查是否已設置遠程倉庫
if git remote | grep -q origin; then
    echo "✓ 已設置遠程倉庫"
    git remote -v
    echo ""
    echo "直接推送？(y/n)"
    read -r answer
    if [ "$answer" = "y" ]; then
        git push -u origin main
    fi
else
    echo "請先創建 GitHub 倉庫，然後執行以下命令："
    echo ""
    echo "git remote add origin https://github.com/YOUR_USERNAME/REPO_NAME.git"
    echo "git branch -M main"
    echo "git push -u origin main"
    echo ""
    echo "或者直接輸入您的 GitHub 用戶名和倉庫名："
    echo -n "GitHub 用戶名: "
    read -r username
    echo -n "倉庫名稱: "
    read -r reponame
    
    if [ -n "$username" ] && [ -n "$reponame" ]; then
        echo ""
        echo "設置遠程倉庫..."
        git remote add origin "https://github.com/$username/$reponame.git"
        git branch -M main
        echo ""
        echo "推送代碼到 GitHub..."
        git push -u origin main
    fi
fi

