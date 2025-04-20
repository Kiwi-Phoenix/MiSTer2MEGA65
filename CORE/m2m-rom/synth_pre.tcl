set cur_dir [exec pwd]
# ../../CORE/CORE-R3.runs/synth_1/

cd ../../../CORE/m2m-rom/
#cd D:/Retro/Mega65/FPGA_Projects/Amiga-Core-Test/CORE/m2m-rom/
exec bash ./make_rom.sh <@stdin >@stdout 2>@stderr
#exec D:/Retro/Mega65/FPGA_Projects/Amiga-Core-Test/CORE/m2m-rom/make_rom.sh <@stdin >@stdout 2>@stderr
cd $cur_dir

