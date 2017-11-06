To call on startup for all users, place a shortcut here:
    [Environment]::GetFolderPath('CommonStartup')

On windows Server 2016, this folder is located at:
    C:\ProgramData\Microsoft\Windows\Start Menu\Programs\StartUp

Supply the following commandline arguments in the shortcut:
    /timer:0 E:\BGInfo\bginfo-server.bgi

