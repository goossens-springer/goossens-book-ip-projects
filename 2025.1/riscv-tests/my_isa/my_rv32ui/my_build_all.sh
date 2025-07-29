riscv32-unknown-elf-gcc -c -DTEST_FUNC_NAME=addi -DTEST_FUNC_RET=addi_ret addi.S -o addi.o
riscv32-unknown-elf-gcc -c -DTEST_FUNC_NAME=add -DTEST_FUNC_RET=add_ret add.S -o add.o
riscv32-unknown-elf-gcc -c -DTEST_FUNC_NAME=andi -DTEST_FUNC_RET=andi_ret andi.S -o andi.o
riscv32-unknown-elf-gcc -c -DTEST_FUNC_NAME=and -DTEST_FUNC_RET=and_ret and.S -o and.o
riscv32-unknown-elf-gcc -c -DTEST_FUNC_NAME=auipc -DTEST_FUNC_RET=auipc_ret auipc.S -o auipc.o
riscv32-unknown-elf-gcc -c -DTEST_FUNC_NAME=beq -DTEST_FUNC_RET=beq_ret beq.S -o beq.o
riscv32-unknown-elf-gcc -c -DTEST_FUNC_NAME=bge -DTEST_FUNC_RET=bge_ret bge.S -o bge.o
riscv32-unknown-elf-gcc -c -DTEST_FUNC_NAME=bgeu -DTEST_FUNC_RET=bgeu_ret bgeu.S -o bgeu.o
riscv32-unknown-elf-gcc -c -DTEST_FUNC_NAME=blt -DTEST_FUNC_RET=blt_ret blt.S -o blt.o
riscv32-unknown-elf-gcc -c -DTEST_FUNC_NAME=bltu -DTEST_FUNC_RET=bltu_ret bltu.S -o bltu.o
riscv32-unknown-elf-gcc -c -DTEST_FUNC_NAME=bne -DTEST_FUNC_RET=bne_ret bne.S -o bne.o
riscv32-unknown-elf-gcc -c -DTEST_FUNC_NAME=jalr -DTEST_FUNC_RET=jalr_ret jalr.S -o jalr.o
riscv32-unknown-elf-gcc -c -DTEST_FUNC_NAME=jal -DTEST_FUNC_RET=jal_ret jal.S -o jal.o
riscv32-unknown-elf-gcc -c -DTEST_FUNC_NAME=lb -DTEST_FUNC_RET=lb_ret lb.S -o lb.o
riscv32-unknown-elf-gcc -c -DTEST_FUNC_NAME=lbu -DTEST_FUNC_RET=lbu_ret lbu.S -o lbu.o
riscv32-unknown-elf-gcc -c -DTEST_FUNC_NAME=lh -DTEST_FUNC_RET=lh_ret lh.S -o lh.o
riscv32-unknown-elf-gcc -c -DTEST_FUNC_NAME=lhu -DTEST_FUNC_RET=lhu_ret lhu.S -o lhu.o
riscv32-unknown-elf-gcc -c -DTEST_FUNC_NAME=lui -DTEST_FUNC_RET=lui_ret lui.S -o lui.o
riscv32-unknown-elf-gcc -c -DTEST_FUNC_NAME=lw -DTEST_FUNC_RET=lw_ret lw.S -o lw.o
riscv32-unknown-elf-gcc -c -DTEST_FUNC_NAME=ori -DTEST_FUNC_RET=ori_ret ori.S -o ori.o
riscv32-unknown-elf-gcc -c -DTEST_FUNC_NAME=or -DTEST_FUNC_RET=or_ret or.S -o or.o
riscv32-unknown-elf-gcc -c -DTEST_FUNC_NAME=sb -DTEST_FUNC_RET=sb_ret sb.S -o sb.o
riscv32-unknown-elf-gcc -c -DTEST_FUNC_NAME=sh -DTEST_FUNC_RET=sh_ret sh.S -o sh.o
riscv32-unknown-elf-gcc -c -DTEST_FUNC_NAME=simple -DTEST_FUNC_RET=simple_ret simple.S -o simple.o
riscv32-unknown-elf-gcc -c -DTEST_FUNC_NAME=slli -DTEST_FUNC_RET=slli_ret slli.S -o slli.o
riscv32-unknown-elf-gcc -c -DTEST_FUNC_NAME=sll -DTEST_FUNC_RET=sll_ret sll.S -o sll.o
riscv32-unknown-elf-gcc -c -DTEST_FUNC_NAME=slti -DTEST_FUNC_RET=slti_ret slti.S -o slti.o
riscv32-unknown-elf-gcc -c -DTEST_FUNC_NAME=sltiu -DTEST_FUNC_RET=sltiu_ret sltiu.S -o sltiu.o
riscv32-unknown-elf-gcc -c -DTEST_FUNC_NAME=sltu -DTEST_FUNC_RET=sltu_ret sltu.S -o sltu.o
riscv32-unknown-elf-gcc -c -DTEST_FUNC_NAME=slt -DTEST_FUNC_RET=slt_ret slt.S -o slt.o
riscv32-unknown-elf-gcc -c -DTEST_FUNC_NAME=sltu -DTEST_FUNC_RET=sltu_ret sltu.S -o sltu.o
riscv32-unknown-elf-gcc -c -DTEST_FUNC_NAME=srai -DTEST_FUNC_RET=srai_ret srai.S -o srai.o
riscv32-unknown-elf-gcc -c -DTEST_FUNC_NAME=sra -DTEST_FUNC_RET=sra_ret sra.S -o sra.o
riscv32-unknown-elf-gcc -c -DTEST_FUNC_NAME=srli -DTEST_FUNC_RET=srli_ret srli.S -o srli.o
riscv32-unknown-elf-gcc -c -DTEST_FUNC_NAME=srl -DTEST_FUNC_RET=srl_ret srl.S -o srl.o
riscv32-unknown-elf-gcc -c -DTEST_FUNC_NAME=sub -DTEST_FUNC_RET=sub_ret sub.S -o sub.o
riscv32-unknown-elf-gcc -c -DTEST_FUNC_NAME=sw -DTEST_FUNC_RET=sw_ret sw.S -o sw.o
riscv32-unknown-elf-gcc -c -DTEST_FUNC_NAME=xori -DTEST_FUNC_RET=xori_ret xori.S -o xori.o
riscv32-unknown-elf-gcc -c -DTEST_FUNC_NAME=xor -DTEST_FUNC_RET=xor_ret xor.S -o xor.o
riscv32-unknown-elf-gcc -c _start.S -o _start.o
riscv32-unknown-elf-gcc -O3 -static -nostartfiles -nostdlib -o test.elf -Ttext 0 -Tdata 0 -Wl,-no-check-sections _start.o [a-z]*.o
riscv32-unknown-elf-objcopy -O binary --only-section=.text test.elf test_0_text.bin
riscv32-unknown-elf-objcopy -O binary --only-section=.data test.elf test_0_data.bin
hexdump -v -e '"0x" /4 "%08x" ",\n"' test_0_text.bin > test_0_text.hex
hexdump -v -e '"0x" /4 "%08x" ",\n"' test_0_data.bin > test_0_data.hex
