# GDEIDailyCheckinScript
Linux shell script for daily checkin tasks in GDEI



# System Requirement

Linux Platform

The following tools are **REQUIRED**

curl
cron

# Usage

Firstly,open the "checkin.sh" and fill your username and password in the following codes

username="xxxx"
password="xxxx"


Secondly,add task to crontab

I recommend that you should run this script after 6:00 AM CST due to ChenWujian


# Result

if the script return "11",it means that you have successfully finished daily checkin and ChenWuJian tasks.

if the script return "35",it means that daily tasks have already been finished.

# 中文说明

## 系统环境要求

1. 使用Bash的Linux系统

2. 安装curl及cron，crontab



个人推荐Debian


## 使用方法

1.打开checkin.sh，username和password填上你的校园网账号和密码
然后把checkin.sh保存到/home

赋予脚本权限，chmod +x /home/checkin.sh

2.crontab添加如下


0 7 * * * bash /home/checkin.sh



## 脚本功能
1.登录获取Session ID

2.完成打卡及晨午检任务



## 脚本返回结果

返回41，说明你的每日打卡要重新填表

返回11，说明已经完成打卡和晨午检

返回35，说明你今天已经完成过打卡和晨午检


## 安全问题

本脚本基于MIT协议下开源，自行检查代码

我对你们的校园网账号没兴趣
