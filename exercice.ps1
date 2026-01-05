$colorsArray = @(
    "black", 
    "brown", 
    "red", 
    "orange", 
    "yellow", 
    "green", 
    "blue", 
    "violet", 
    "grey", 
    "white"
)

Function Get-ColorCode() {
    [CmdletBinding()]
    Param(
        [string]$Color
    )
    
    return $colorsArray.IndexOf($Color.ToLower())
}

Function Get-Colors() {
    return $colorsArray
}


Function Get-ColorCodeValue() {
    [CmdletBinding()]
    Param(
        [string[]]$Colors
    )

    $MAX_CHARS = 2
    $longeurCaractere = $MAX_CHARS
    if ($Colors.Count -lt $MAX_CHARS) {
        $longeurCaractere = $Colors.Count
    }

    $message = ""
    for ($i = 0; $i -lt $longeurCaractere; $i++) {
        $colorCode = Get-ColorCode -Color $Colors[$i]
        $message = $message + $colorCode
    }
    
    return $message
}

Function Get-ResistorLabel() {
    <#
    EXAMPLE
    Get-ResistorLabel -Colors @("red", "white", "blue")
    Return: "29 megaohms"
     #>
    [CmdletBinding()]
    Param(
        [string[]]$Colors
    )
    
    
    NONONO
}
