# 上傳到 GitHub 的步驟

## 方法 1：使用 GitHub Desktop（最簡單）

1. **下載 GitHub Desktop**（如果還沒安裝）
   - 訪問：https://desktop.github.com/
   - 下載並安裝

2. **在 GitHub Desktop 中**
   - 點擊 "File" → "Add Local Repository"
   - 選擇這個資料夾：`/Users/ianhuang/Downloads/Hsinyuviolin`
   - 點擊 "Publish repository"
   - 輸入倉庫名稱（例如：`Hsinyuviolin`）
   - 選擇是否設為公開（Public）或私有（Private）
   - 點擊 "Publish Repository"

## 方法 2：使用命令行（快速）

### 步驟 1：在 GitHub 上創建新倉庫

1. 登入 GitHub：https://github.com
2. 點擊右上角的 "+" → "New repository"
3. 輸入倉庫名稱（例如：`Hsinyuviolin` 或 `hsinyu-violin-website`）
4. 選擇 Public 或 Private
5. **不要**勾選 "Initialize this repository with a README"（因為我們已經有文件了）
6. 點擊 "Create repository"

### 步驟 2：在終端機中執行以下命令

```bash
cd /Users/ianhuang/Downloads/Hsinyuviolin

# 添加遠程倉庫（將 YOUR_USERNAME 和 REPO_NAME 替換為您的實際值）
git remote add origin https://github.com/YOUR_USERNAME/REPO_NAME.git

# 推送代碼到 GitHub
git branch -M main
git push -u origin main
```

**例如，如果您的用戶名是 `ianhuang`，倉庫名是 `Hsinyuviolin`：**
```bash
git remote add origin https://github.com/ianhuang/Hsinyuviolin.git
git branch -M main
git push -u origin main
```

### 步驟 3：啟用 GitHub Pages（讓網站可以訪問）

1. 在 GitHub 倉庫頁面，點擊 "Settings"
2. 在左側選單中找到 "Pages"
3. 在 "Source" 下選擇 "Deploy from a branch"
4. 選擇分支 "main" 和資料夾 "/ (root)"
5. 點擊 "Save"
6. 等待幾分鐘，您的網站將在以下網址可用：
   `https://YOUR_USERNAME.github.io/REPO_NAME/`

## 方法 3：使用 GitHub CLI（如果已安裝）

```bash
cd /Users/ianhuang/Downloads/Hsinyuviolin
gh repo create Hsinyuviolin --public --source=. --remote=origin --push
```

## 注意事項

- **媒體文件大小**：如果 `media/` 目錄中的文件很大（超過 100MB），GitHub 可能會拒絕。如果遇到問題，可以考慮：
  - 使用 Git LFS（Large File Storage）
  - 或者將大文件上傳到其他地方（如 CDN），然後更新 HTML 中的鏈接

- **`.gitignore`**：已經配置好，會忽略系統文件和臨時文件

- **首次推送**：可能需要輸入 GitHub 用戶名和密碼（或使用 Personal Access Token）

## 完成後

上傳成功後，您可以：
- 在 GitHub 上查看所有文件
- 使用 GitHub Pages 功能讓網站可以公開訪問
- 繼續更新網站並推送到 GitHub

