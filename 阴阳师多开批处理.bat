@echo off & title 阴阳师多开批处理 by 霜之花火 —— 孤高之心

echo -------------------------------------------------------------------------------------------------------
echo 1                    阴阳师多开批处理
echo 1 
echo 1	1,输入你的路径位置，就是你阴阳师安装路径里的launch.exe
echo 1	  举个例子比如：D:\Program Files (x86)\Onmyoji\Launch.exe
echo 1
echo 1	2.输入编号执行“多开”或“取消多开操作”
echo 1
echo 1	  1.多开操作
echo 1		右击阴阳师图标
echo 1		以管理员身份运行
echo 1		弹出管理员窗口点击是(推荐让这个方式启动的游戏不做任何操作放那，
echo 1		因为只要第一个游戏还在，接下来都能双开)
echo 1		接下来直接双击游戏图标，每次双击图标就能多开出一个
echo 1
echo 1			注意事项
echo 1		第一个启动的一定要以管理员身份运行，后面的不能再以管理员身份运行。
echo 1		如果第一个以管理员身份运行的阴阳师崩掉了，那么再开所有的阴阳师都会被关闭。
echo 1		以管理员身份启动和直接双击启动，保存的密码不能通用。
echo 1		据反馈，win7可能不能这样多开，有成功了的反馈下？
echo 1
echo 1	  2.取消多开操作
echo 1		这个就没啥可说的了吧
echo 1
echo 1	其实本质就是改注册表的玩意，所以大家注意一下，可能有一些问题，发生问题了本人概不负责。
echo 1	管理员方式启动没弹窗的话，应该是你本来就关着UAC，我自己的机子上试过全局UAC关了没影响。
echo 1	不能双开的话，先检查下路径有没有改错，右击阴阳师图标，点击属性，查看和命令里的路径是否一致。
echo 1	如果确认没问题，那我也没办法了，我只试过2台机子都可以这样双开。
echo -------------------------------------------------------------------------------------------------------

echo, & set /p location=请输入阴阳师路径位置：

echo 1、执行多开
echo 2、取消多开
 
echo, & set /p ch=请输入编号：
if "%ch%"=="1" goto StartA
if "%ch%"=="2" goto StartB
exit
 
:StartA
 
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Layers" /v "%location%" /t REG_SZ /d RunAsInvoker
 
pause
exit
 
:StartB
 
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Layers" /v "%location%" /f
 
pause
exit