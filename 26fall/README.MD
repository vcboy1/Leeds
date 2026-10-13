## 从github仓库拉取代码到 本地
```
git stash push
git pull
git stash pop
```

## 本地代码推送到github仓库
```
git stash push              把本地修改保存到临时文件
git pull                    本地同步github的最新版本，本地和github此时同步
git stash pop               从临时文件中提取本地修改，施加在本地的最新版本上

git add .                   提交所有本地修改到暂存区
git commit  -m ""           将暂存区的内容打包备注 
git push                    将打包好的内容推到github上，本地和github此时同步
```
##  目录结构
    1850             课程代码  
    +---- Lecture          老师讲义  
        +---- Week#            第几周讲义               
    +---- Reading list     推荐/扩展阅读  
    +---- Note             我写的笔记  
        w#s#.md                第几周笔记
        +---- video             我的讲解  
    +---- WorkSheet        我提交的作业
        +---- Week#            第几周作业 