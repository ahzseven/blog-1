#!/bin/sh
#先提交自己
git add .
git commit -am "auto publish"
git push origin v3
#然后编辑发布线上版本
cross-env NODE_ENV=production webpack --progress --hide-modules
mkdir publish
cp ./static ./publish/static -rf
cp ./index.html ./publish/index.html -rf
cp ./CNAME ./publish/CNAME -rf
#进入gh-pages发布逻辑
cd publish
mv index.html 404.html
echo "" > .gitignore
git init
git add .
git commit -am "publish"
git push --force --quiet https://github.com/Rozbo/blog.git master:gh-pages
cd ../
# 清理资源
rm -rf ./publish
rm -rf ./static
echo "everything ok!"
