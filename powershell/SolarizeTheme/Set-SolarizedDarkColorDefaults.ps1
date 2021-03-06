# Check for PSReadline
if (Get-Module -ListAvailable -Name "PSReadline") {
    $options = Get-PSReadlineOption

    # Foreground
    $options.CommandColor = 'Yellow'
    $options.ContinuationPromptColor = 'DarkBlue'
    $options.DefaultTokenColor = 'Blue'
    $options.EmphasisColor = 'Cyan'
    $options.ErrorColor = 'Red'
    $options.KeywordColor = 'Green'
    $options.MemberColor = 'DarkCyan'
    $options.NumberColor = 'DarkCyan'
    $options.OperatorColor = 'DarkGreen'
    $options.ParameterColor = 'DarkGreen'
    $options.StringColor = 'Blue'
    $options.VariableColor = 'Green'
}
