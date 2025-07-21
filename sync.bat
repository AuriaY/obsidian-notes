@echo off
cd /d "C:\Users\Auria_Y\AppData\Local\Programs\obsidian"

:: 拉取远程更新（先更新后提交避免冲突）
git pull origin main

:: 添加所有变更
git add  .

:: 提交变更（含时间戳）
git commit -m "手动同步: %date% %time%"

:: 推送更新
git push origin main

echo ----------------------------------
echo [成功] Obsidian笔记已同步至GitHub！
echo ----------------------------------
timeout /t 3