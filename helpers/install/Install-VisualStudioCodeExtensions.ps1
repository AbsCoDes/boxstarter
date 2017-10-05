function Install-VisualStudioCodeExtensions
{
    param(
        [Parameter(Mandatory=$True)]
        [string[]]$extensions
    )
    
    # need to launch vscode so user folders are created as we can install extensions
    Start-Process code
    Start-Sleep -s 10

    # install visual studio code extensions
    foreach ($extension in $extensions) {
        code --install-extension $extension
    }

    # Close vscode
    Start-Sleep -s 10
    Stop-Process code
}