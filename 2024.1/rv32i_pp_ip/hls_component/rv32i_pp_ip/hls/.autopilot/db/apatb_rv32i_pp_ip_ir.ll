; ModuleID = '/home/goossens/goossens-book-ip-projects/2024.1/rv32i_pp_ip/workspace/hls_component/rv32i_pp_ip/hls/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

; Function Attrs: noinline
define void @apatb_rv32i_pp_ip_ir(i32 %start_pc, i32* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="32768" %code_ram, i32* noalias nonnull "fpga.decayed.dim.hint"="32768" %data_ram, i32* noalias nocapture nonnull %nb_instruction, i32* noalias nocapture nonnull %nb_cycle) local_unnamed_addr #0 {
entry:
  %malloccall = tail call i8* @malloc(i64 131072)
  %code_ram_copy = bitcast i8* %malloccall to [32768 x i32]*
  %malloccall1 = tail call i8* @malloc(i64 131072)
  %data_ram_copy = bitcast i8* %malloccall1 to [32768 x i32]*
  %nb_instruction_copy = alloca i32, align 512
  %nb_cycle_copy = alloca i32, align 512
  %0 = bitcast i32* %code_ram to [32768 x i32]*
  %1 = bitcast i32* %data_ram to [32768 x i32]*
  call fastcc void @copy_in([32768 x i32]* nonnull %0, [32768 x i32]* %code_ram_copy, [32768 x i32]* nonnull %1, [32768 x i32]* %data_ram_copy, i32* nonnull %nb_instruction, i32* nonnull align 512 %nb_instruction_copy, i32* nonnull %nb_cycle, i32* nonnull align 512 %nb_cycle_copy)
  call void @apatb_rv32i_pp_ip_hw(i32 %start_pc, [32768 x i32]* %code_ram_copy, [32768 x i32]* %data_ram_copy, i32* %nb_instruction_copy, i32* %nb_cycle_copy)
  call void @copy_back([32768 x i32]* %0, [32768 x i32]* %code_ram_copy, [32768 x i32]* %1, [32768 x i32]* %data_ram_copy, i32* %nb_instruction, i32* %nb_instruction_copy, i32* %nb_cycle, i32* %nb_cycle_copy)
  tail call void @free(i8* %malloccall)
  tail call void @free(i8* %malloccall1)
  ret void
}

declare noalias i8* @malloc(i64) local_unnamed_addr

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @copy_in([32768 x i32]* noalias readonly, [32768 x i32]* noalias, [32768 x i32]* noalias readonly, [32768 x i32]* noalias, i32* noalias readonly, i32* noalias align 512, i32* noalias readonly, i32* noalias align 512) unnamed_addr #1 {
entry:
  call fastcc void @onebyonecpy_hls.p0a32768i32([32768 x i32]* %1, [32768 x i32]* %0)
  call fastcc void @onebyonecpy_hls.p0a32768i32([32768 x i32]* %3, [32768 x i32]* %2)
  call fastcc void @onebyonecpy_hls.p0i32(i32* align 512 %5, i32* %4)
  call fastcc void @onebyonecpy_hls.p0i32(i32* align 512 %7, i32* %6)
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @onebyonecpy_hls.p0a32768i32([32768 x i32]* noalias %dst, [32768 x i32]* noalias readonly %src) unnamed_addr #2 {
entry:
  %0 = icmp eq [32768 x i32]* %dst, null
  %1 = icmp eq [32768 x i32]* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @arraycpy_hls.p0a32768i32([32768 x i32]* nonnull %dst, [32768 x i32]* nonnull %src, i64 32768)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @arraycpy_hls.p0a32768i32([32768 x i32]* %dst, [32768 x i32]* readonly %src, i64 %num) local_unnamed_addr #3 {
entry:
  %0 = icmp eq [32768 x i32]* %src, null
  %1 = icmp eq [32768 x i32]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [32768 x i32], [32768 x i32]* %dst, i64 0, i64 %for.loop.idx2
  %src.addr = getelementptr [32768 x i32], [32768 x i32]* %src, i64 0, i64 %for.loop.idx2
  %3 = load i32, i32* %src.addr, align 4
  store i32 %3, i32* %dst.addr, align 4
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @onebyonecpy_hls.p0i32(i32* noalias align 512 %dst, i32* noalias readonly %src) unnamed_addr #2 {
entry:
  %0 = icmp eq i32* %dst, null
  %1 = icmp eq i32* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %3 = load i32, i32* %src, align 4
  store i32 %3, i32* %dst, align 512
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @copy_out([32768 x i32]* noalias, [32768 x i32]* noalias readonly, [32768 x i32]* noalias, [32768 x i32]* noalias readonly, i32* noalias, i32* noalias readonly align 512, i32* noalias, i32* noalias readonly align 512) unnamed_addr #4 {
entry:
  call fastcc void @onebyonecpy_hls.p0a32768i32([32768 x i32]* %0, [32768 x i32]* %1)
  call fastcc void @onebyonecpy_hls.p0a32768i32([32768 x i32]* %2, [32768 x i32]* %3)
  call fastcc void @onebyonecpy_hls.p0i32(i32* %4, i32* align 512 %5)
  call fastcc void @onebyonecpy_hls.p0i32(i32* %6, i32* align 512 %7)
  ret void
}

declare void @free(i8*) local_unnamed_addr

declare void @apatb_rv32i_pp_ip_hw(i32, [32768 x i32]*, [32768 x i32]*, i32*, i32*)

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @copy_back([32768 x i32]* noalias, [32768 x i32]* noalias readonly, [32768 x i32]* noalias, [32768 x i32]* noalias readonly, i32* noalias, i32* noalias readonly align 512, i32* noalias, i32* noalias readonly align 512) unnamed_addr #4 {
entry:
  call fastcc void @onebyonecpy_hls.p0a32768i32([32768 x i32]* %2, [32768 x i32]* %3)
  call fastcc void @onebyonecpy_hls.p0i32(i32* %4, i32* align 512 %5)
  call fastcc void @onebyonecpy_hls.p0i32(i32* %6, i32* align 512 %7)
  ret void
}

define void @rv32i_pp_ip_hw_stub_wrapper(i32, [32768 x i32]*, [32768 x i32]*, i32*, i32*) #5 {
entry:
  call void @copy_out([32768 x i32]* null, [32768 x i32]* %1, [32768 x i32]* null, [32768 x i32]* %2, i32* null, i32* %3, i32* null, i32* %4)
  %5 = bitcast [32768 x i32]* %1 to i32*
  %6 = bitcast [32768 x i32]* %2 to i32*
  call void @rv32i_pp_ip_hw_stub(i32 %0, i32* %5, i32* %6, i32* %3, i32* %4)
  call void @copy_in([32768 x i32]* null, [32768 x i32]* %1, [32768 x i32]* null, [32768 x i32]* %2, i32* null, i32* %3, i32* null, i32* %4)
  ret void
}

declare void @rv32i_pp_ip_hw_stub(i32, i32* noalias nocapture nonnull readonly, i32* noalias nonnull, i32* noalias nocapture nonnull, i32* noalias nocapture nonnull)

attributes #0 = { noinline "fpga.wrapper.func"="wrapper" }
attributes #1 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="copyin" }
attributes #2 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #3 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="arraycpy_hls" }
attributes #4 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="copyout" }
attributes #5 = { "fpga.wrapper.func"="stub" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}
