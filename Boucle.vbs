Set WshShell = CreateObject("WScript.Shell")

Do While True
    ' مسار ملف الواجهة
    htaPath = "C:\Users\HP\Desktop\Zekr.hta"
    
    ' تشغيل النافذة في مسار مستقل
    WshShell.Run "mshta.exe """ & htaPath & """", 1, False
    
    ' التكرار كل 5 دقائق (300000 ميلي ثانية)
    ' إذا أردت دقيقة واحدة اجعلها: 60000
    WScript.Sleep 300000
Loop