# 任務達成評分系統：輸入前四題結果，達標給 20 分
import sys
tasks = [
    ("一、Fortran 程式編譯並正確輸出", "輸入 N=100 的輸出值"),
    ("二、三次隨機驗證", "三次驗證通過幾次 (0-3)"),
    ("三、Git 原版與註解版兩次 commit", "git log 的 commit 數"),
    ("四、推送到 GitHub", "GitHub repo 網址"),
]
def check(i, v):
    v = v.strip()
    if i == 0: return v == "5050"
    if i == 1: return v == "3"
    if i == 2: return v.isdigit() and int(v) >= 2
    if i == 3: return v.startswith("https://github.com/") and v.count("/") >= 4
total = 0
for i, (name, prompt) in enumerate(tasks):
    v = input(f"{name}｜{prompt}：")
    ok = check(i, v); total += 20 if ok else 0
    print(f"  -> {'達標 +20' if ok else '未達標 +0'}")
total += 20  # 第五題：本評分系統已完成並執行
print(f"五、任務達成評分系統 -> 達標 +20\n總分：{total}/100")
