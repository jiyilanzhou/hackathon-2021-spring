#!/usr/bin/env bash
ssh -T root@rongmeitech.com <<'ENDSSH'
      project_dir="/root/project/RongmeiPicMobile  #代码被部署的目录
      cd $project_dir #进入代码目录
      git checkout develop
      git reset --hard #清理git
      git pull #拉取仓管最新代码
      npm install #安装node依赖包
      npm run build #编译
ENDSSH
