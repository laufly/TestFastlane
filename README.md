# TestFastlane

测试使用自动化工具fastlane
在ubuntu环境中使用fastlane

# 准备工作:
## 1.安装 Ruby

参考网址 http://blog.csdn.net/chszs/article/details/42462517
使用的方法一:
```
# sudo apt-get update
# sudo apt-get install ruby
或者
# sudo apt-get install ruby2.0
```
## 2.安装 fastlane
参考网址 https://docs.fastlane.tools/getting-started/android/setup/

在~/.bashrc, ~/.bash_profile 或者 ~/.zshrc  设置全局变量 
```
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
```

原因:fastlane requires some environment variables set up to run correctly. In particular, having your locale not set to a UTF-8 locale will cause issues with building and uploading your build

安装命令:
```
# sudo gem install fastlane -NV
```

#  fastlane 初始化
找到项目使用以下命令生成fastlane 目录结构
fastlane init

使用的ruby脚本
官网action https://docs.fastlane.tools/actions/
用户自定义的实例:
https://github.com/thierryxing/Fastfiles/tree/master/fastlane/actions
参考博客: Fastlane实战 系列 地址:https://www.jianshu.com/p/0520192c9bd7

ruby 基础语法参考
https://www.cnblogs.com/cnblogsfans/archive/2009/01/21/1379180.html


## 注意:
  ruby脚本中的request xx 表示类库
  需要通过 
  gem install --remote xx 来安装到本地,否则提示找不到
