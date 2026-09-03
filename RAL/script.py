#//////////////////////////////////////////////////////////////////////////////////////////////////////////////////#
#/////////////////////////Copyright © 2022 Vivartan Technologies., All rights reserved////////////////////////////#
#//////////////////////////////////////////////////////////////////////////////////////////////////////////////////#
#//                                                                                                              //#
#//All works published under Zilla_Gen_0 by Vivartan Technologies is copyrighted by the Association and ownership//# 
#//of all right, title and interest in and to the works remains with Vivartan Technologies. No works or documents//#
#//published under Zilla_Gen_0 by Vivartan Technologies may be reproduced,transmitted or copied without the expre//#
#//-ss written permission of Vivartan Technologies will be considered as a violations of Copyright Act and it may//#
#//lead to legal action.                                                                                         //#
#//////////////////////////////////////////////////////////////////////////////////////////////////////////////////#
#//////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#
#* File Name : script.py
#
#* Purpose :
#
#* Creation Date : 09-03-2026
#
#* Last Modified : Mon 09 Mar 2026 11:41:06 AM IST
#
#* Created By :  
#
#///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#.
import re

input_file = "urc_reg_pkg.sv"
output_file = "output.sv"

with open(input_file, "r") as f:
    lines = f.readlines()

new_lines = []

for line in lines:
    if "default_map.add_reg" in line:
        axi_line = line.replace("default_map", "axi_map")
        apb_line = line.replace("default_map", "apb_map")
        ahb_line = line.replace("default_map", "ahb_map")

        new_lines.append(axi_line)
        new_lines.append(apb_line)
        new_lines.append(ahb_line)
    else:
        new_lines.append(line)

with open(output_file, "w") as f:
    f.writelines(new_lines)

print("Conversion complete. Output written to", output_file)
