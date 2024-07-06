function push-api-projects( $project ){
    # 1 : navigate powershell to the project folder
    pushd "D:\WORKSPACES\SILVER\Azure-1030\WebApis\$project"

    # 2 : open windows explorer at the project folder
    invoke-item .;

    # 3 : open any solution found in the project folder
    invoke-item *.sln;
}

function push-app-projects( $project ){
    # 1 : navigate powershell to the project folder
    pushd "D:\WORKSPACES\SILVER\Azure-1030\WebApps\$project"

    # 2 : open windows explorer at the project folder
    invoke-item .;

    # 3 : open any solution found in the project folder
    code .;
}


New-Alias -Name oapi -value push-api-projects

New-Alias -Name oapp -value push-app-projects