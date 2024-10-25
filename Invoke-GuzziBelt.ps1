function Invoke-GuzziBelt {
    [CmdletBinding()]
    Param (
        [String]
        $args = " "
    )

    # GuzziBelt.exe -> Gzip -> Base64
    $gzipB64 = ""
    
    # Base64 decode
    $gzipBytes = [Convert]::FromBase64String($gzipB64);
    
    # Gzip decompress
    $gzipMemoryStream = New-Object IO.MemoryStream(, $gzipBytes);
    $gzipStream = New-Object System.IO.Compression.GzipStream($gzipMemoryStream, [IO.Compression.CompressionMode]::Decompress);
    $guzzibeltMemoryStream = New-Object System.IO.MemoryStream;
    $gzipStream.CopyTo($guzzibeltMemoryStream);

    # Load assembly reflectively
    $guzzibeltArray = $guzzibeltMemoryStream.ToArray();
    $guzzibelt = [System.Reflection.Assembly]::Load($guzzibeltArray);
    
    # Redirect assembly STDOUT to console
    $OldConsoleOut = [Console]::Out;
    $StringWriter = New-Object IO.StringWriter;
    [Console]::SetOut($StringWriter);
    
    # Call main method
    [GuzziBelt.Program]::Main($args.Split(" "));
    
    # Reset STDOUT
    [Console]::SetOut($OldConsoleOut);
    $Results = $StringWriter.ToString();
    $Results;

}
