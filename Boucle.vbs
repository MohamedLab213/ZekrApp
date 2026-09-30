Set WshShell = CreateObject("WScript.Shell")
Set fso = CreateObject("Scripting.FileSystemObject")

' تحديد مسار ملف الواجهة تلقائياً في نفس مجلد السكربت
scriptDir = fso.GetParentFolderName(WScript.ScriptFullName)
htaPath = fso.BuildPath(scriptDir, "Zekr.hta")

Do While True
    ' تشغيل النافذة في مسار مستقل
    WshShell.Run "mshta.exe """ & htaPath & """", 1, False
    
    ' التكرار كل 5 دقائق (300000 ميلي ثانية)
    ' إذا أردت دقيقة واحدة اجعلها: 60000
    WScript.Sleep 300000
Loop