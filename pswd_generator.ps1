<#
    .SYNOPSIS
        password generator Powershell script 
    .DESCRIPTION
        Pswd_generator is a simple Powershell Function that creates a secure password. you can define the password length, the password length is 8 characters long by the default
    .USAGE 
        .\listvms <length>:[Optional]
    
    .PARAMETER length
        length : [optional]
        length of the password to generate : -length n 
    .EXAMPLE
        .\pswd_generator.ps1 
        .\pswd_generator -length 8 
    .NOTES
        Author: Arnaud Mutana
        Last Updated: DECEMBER 2018
        Version: 1  
    .Requires :
#> 

# commandline parameters
[CmdletBinding()]
Param(
    [Parameter(Mandatory = $false, Position = 1)]
    [string]$length=8
)Function New-SecurePassword {
$Password = "!?*&@0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ_abcdefghijklmnopqrstuvwxyz".tochararray()
($Password | Get-Random -Count $length) -Join ''
}

New-SecurePassword


