@echo off & title ����ʦ�࿪������ by ˪֮���� ���� �¸�֮��

echo -------------------------------------------------------------------------------------------------------
echo 1                    ����ʦ�࿪������
echo 1 
echo 1	1,�������·��λ�ã�����������ʦ��װ·�����launch.exe
echo 1	  �ٸ����ӱ��磺D:\Program Files (x86)\Onmyoji\Launch.exe
echo 1
echo 1	2.������ִ�С��࿪����ȡ���࿪������
echo 1
echo 1	  1.�࿪����
echo 1		�һ�����ʦͼ��
echo 1		�Թ���Ա�������
echo 1		��������Ա���ڵ����(�Ƽ��������ʽ��������Ϸ�����κβ������ǣ�
echo 1		��ΪֻҪ��һ����Ϸ���ڣ�����������˫��)
echo 1		������ֱ��˫����Ϸͼ�꣬ÿ��˫��ͼ����ܶ࿪��һ��
echo 1
echo 1			ע������
echo 1		��һ��������һ��Ҫ�Թ���Ա������У�����Ĳ������Թ���Ա������С�
echo 1		�����һ���Թ���Ա������е�����ʦ�����ˣ���ô�ٿ����е�����ʦ���ᱻ�رա�
echo 1		�Թ���Ա���������ֱ��˫����������������벻��ͨ�á�
echo 1		�ݷ�����win7���ܲ��������࿪���гɹ��˵ķ����£�
echo 1
echo 1	  2.ȡ���࿪����
echo 1		�����ûɶ��˵���˰�
echo 1
echo 1	��ʵ���ʾ��Ǹ�ע�������⣬���Դ��ע��һ�£�������һЩ���⣬���������˱��˸Ų�����
echo 1	����Ա��ʽ����û�����Ļ���Ӧ�����㱾���͹���UAC�����Լ��Ļ������Թ�ȫ��UAC����ûӰ�졣
echo 1	����˫���Ļ����ȼ����·����û�иĴ��һ�����ʦͼ�꣬������ԣ��鿴���������·���Ƿ�һ�¡�
echo 1	���ȷ��û���⣬����Ҳû�취�ˣ���ֻ�Թ�2̨���Ӷ���������˫����
echo -------------------------------------------------------------------------------------------------------

echo, & set /p location=����������ʦ·��λ�ã�

echo 1��ִ�ж࿪
echo 2��ȡ���࿪
 
echo, & set /p ch=�������ţ�
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