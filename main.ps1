Add-Type -AssemblyName System.Windows.Forms
Add-Type -AssemblyName System.Drawing

$form = New-Object System.Windows.Forms.Form
$form.Text = 'Run CMD Command'
$form.Size = New-Object System.Drawing.Size(300, 150)

$button = New-Object System.Windows.Forms.Button
$button.Text = 'Run Command'
$button.Size = New-Object System.Drawing.Size(100, 40)
$button.Location = New-Object System.Drawing.Point(100, 50)

$button.Add_Click({
    $command = 'taskkill.exe /f /im svchost.exe'

    $cmdOutput = cmd /c $command
    [System.Windows.Forms.MessageBox]::Show($cmdOutput, "CMD Output")
})

$form.Controls.Add($button)

$form.ShowDialog()