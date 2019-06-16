import UIKit

//2.Here are a few git and GitHub commands we usually use in software development,please explain the meanings and use cases of them.
// ●git status : 查看當前版本的狀況
// ●git add : 將變更新增至stage
// ●git commit : 提交目前stage之變更為一個新的版本
// ●git log : 查詢提交的紀錄
// ●git push [ Repo_name ] [ Branch_name ]  :將目前本地資源庫之分支同步至雲端資源庫
// ●git remote -v  : 顯示遠端數據更詳細的的資訊
// ●git branch  : 在當前的分支出開出另一個分支,進行bug修改或開發新功能
// ●fork  : 將一份相同的專案放入自己的帳號，且能夠公開對這專案做變更。
//
/* 3.Please describe how to establish a github repo and how to upload the local projectsto github. Try to explain it as detail as possible.
 假設今天要將一個本地的資源庫同步到GitHub的管理：
 先至GitHub上新增一個空的資源庫，新增後GitHub會提示如何將本地的資源庫如何連接到GitHub資料庫 EX:
 git remote add origin “GitHub在專案的路徑”
 git push -u origin master
 接著我們需將本地的資源庫使用git做版本管理，第一步先至該資料庫初始化git（git init)，因為GitHub只管理已commit過的變更，所以第二步我們需要在本地先進行第一次的commit，首先先將未追蹤的檔案使用(git add)新增至stage，再來commit stage內的內容，至此我們就完成了本地資源庫第一次的commit。
 最後我們要將本地資源庫同步至雲端（GitHub）的資源庫（git push）
*/



