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
    
    
    $codeValue = Get-ColorCodeValue -Colors $Colors

    $nbZero = 0;
    if ($Colors.Count -gt 2) {
        $nbZero = Get-ColorCode -Color $Colors[2]
    }

    for ($i = 0; $i -lt $nbZero; $i++) {
        $codeValue = $codeValue + "0"
    }

    $resistorValue = [long]$codeValue

    if ($resistorValue -ge 1000000000) {
        $resistorValue = $resistorValue / 1000000000
        return "$resistorValue gigaohms"
    } 
    
    if ($resistorValue -ge 1000000) {
        $resistorValue = $resistorValue / 1000000
        return "$resistorValue megaohms"
    } 
    
    if ($resistorValue -ge 1000) {
        $resistorValue = $resistorValue / 1000
        return "$resistorValue kiloohms"
    }
    return "$resistorValue ohms"
}
