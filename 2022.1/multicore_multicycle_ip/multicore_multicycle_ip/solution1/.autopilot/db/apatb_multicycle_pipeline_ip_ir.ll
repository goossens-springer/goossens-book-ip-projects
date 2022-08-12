; ModuleID = '/home/goossens/book-2022.1/new_book_ip/multicore_multicycle_ip/multicore_multicycle_ip/solution1/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

; Function Attrs: noinline
define void @apatb_multicycle_pipeline_ip_ir(i32 %ip_num, i32 %start_pc, i32* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="32768" %ip_code_ram, i32* noalias nonnull "fpga.decayed.dim.hint"="32768" %ip_data_ram, [32768 x i32]* noalias nonnull "fpga.decayed.dim.hint"="2" %data_ram, i32* noalias nocapture nonnull %nb_instruction, i32* noalias nocapture nonnull %nb_cycle) local_unnamed_addr #0 {
entry:
  %malloccall = tail call i8* @malloc(i64 131072)
  %ip_code_ram_copy = bitcast i8* %malloccall to [32768 x i32]*
  %malloccall1 = tail call i8* @malloc(i64 131072)
  %ip_data_ram_copy = bitcast i8* %malloccall1 to [32768 x i32]*
  %malloccall2 = tail call i8* @malloc(i64 262144)
  %data_ram_copy = bitcast i8* %malloccall2 to [2 x [32768 x i32]]*
  %nb_instruction_copy = alloca i32, align 512
  %nb_cycle_copy = alloca i32, align 512
  %0 = bitcast i32* %ip_code_ram to [32768 x i32]*
  %1 = bitcast i32* %ip_data_ram to [32768 x i32]*
  %2 = bitcast [32768 x i32]* %data_ram to [2 x [32768 x i32]]*
  call fastcc void @copy_in([32768 x i32]* nonnull %0, [32768 x i32]* %ip_code_ram_copy, [32768 x i32]* nonnull %1, [32768 x i32]* %ip_data_ram_copy, [2 x [32768 x i32]]* nonnull %2, [2 x [32768 x i32]]* %data_ram_copy, i32* nonnull %nb_instruction, i32* nonnull align 512 %nb_instruction_copy, i32* nonnull %nb_cycle, i32* nonnull align 512 %nb_cycle_copy)
  %3 = getelementptr inbounds [32768 x i32], [32768 x i32]* %ip_code_ram_copy, i32 0, i32 0
  %4 = getelementptr inbounds [32768 x i32], [32768 x i32]* %ip_data_ram_copy, i32 0, i32 0
  %5 = getelementptr inbounds [2 x [32768 x i32]], [2 x [32768 x i32]]* %data_ram_copy, i32 0, i32 0
  call void @apatb_multicycle_pipeline_ip_hw(i32 %ip_num, i32 %start_pc, i32* %3, i32* %4, [32768 x i32]* %5, i32* %nb_instruction_copy, i32* %nb_cycle_copy)
  call void @copy_back([32768 x i32]* %0, [32768 x i32]* %ip_code_ram_copy, [32768 x i32]* %1, [32768 x i32]* %ip_data_ram_copy, [2 x [32768 x i32]]* %2, [2 x [32768 x i32]]* %data_ram_copy, i32* %nb_instruction, i32* %nb_instruction_copy, i32* %nb_cycle, i32* %nb_cycle_copy)
  tail call void @free(i8* %malloccall)
  tail call void @free(i8* %malloccall1)
  tail call void @free(i8* %malloccall2)
  ret void
}

declare noalias i8* @malloc(i64) local_unnamed_addr

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_in([32768 x i32]* noalias readonly, [32768 x i32]* noalias, [32768 x i32]* noalias readonly, [32768 x i32]* noalias, [2 x [32768 x i32]]* noalias readonly, [2 x [32768 x i32]]* noalias, i32* noalias readonly, i32* noalias align 512, i32* noalias readonly, i32* noalias align 512) unnamed_addr #1 {
entry:
  call fastcc void @onebyonecpy_hls.p0a32768i32([32768 x i32]* %1, [32768 x i32]* %0)
  call fastcc void @onebyonecpy_hls.p0a32768i32([32768 x i32]* %3, [32768 x i32]* %2)
  call fastcc void @onebyonecpy_hls.p0a2a32768i32([2 x [32768 x i32]]* %5, [2 x [32768 x i32]]* %4)
  call fastcc void @onebyonecpy_hls.p0i32(i32* align 512 %7, i32* %6)
  call fastcc void @onebyonecpy_hls.p0i32(i32* align 512 %9, i32* %8)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @onebyonecpy_hls.p0a32768i32([32768 x i32]* noalias, [32768 x i32]* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq [32768 x i32]* %0, null
  %3 = icmp eq [32768 x i32]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [32768 x i32], [32768 x i32]* %0, i64 0, i64 %for.loop.idx1
  %src.addr = getelementptr [32768 x i32], [32768 x i32]* %1, i64 0, i64 %for.loop.idx1
  %5 = load i32, i32* %src.addr, align 4
  store i32 %5, i32* %dst.addr, align 4
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 32768
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @onebyonecpy_hls.p0a2a32768i32([2 x [32768 x i32]]* noalias, [2 x [32768 x i32]]* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq [2 x [32768 x i32]]* %0, null
  %3 = icmp eq [2 x [32768 x i32]]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop.split, %copy
  %for.loop.idx10 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop.split ]
  br label %for.loop2

for.loop2:                                        ; preds = %for.loop2, %for.loop
  %for.loop.idx39 = phi i64 [ 0, %for.loop ], [ %for.loop.idx3.next, %for.loop2 ]
  %dst.addr57 = getelementptr [2 x [32768 x i32]], [2 x [32768 x i32]]* %0, i64 0, i64 %for.loop.idx10, i64 %for.loop.idx39
  %src.addr68 = getelementptr [2 x [32768 x i32]], [2 x [32768 x i32]]* %1, i64 0, i64 %for.loop.idx10, i64 %for.loop.idx39
  %5 = load i32, i32* %src.addr68, align 4
  store i32 %5, i32* %dst.addr57, align 4
  %for.loop.idx3.next = add nuw nsw i64 %for.loop.idx39, 1
  %exitcond = icmp ne i64 %for.loop.idx3.next, 32768
  br i1 %exitcond, label %for.loop2, label %for.loop.split

for.loop.split:                                   ; preds = %for.loop2
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx10, 1
  %exitcond11 = icmp ne i64 %for.loop.idx.next, 2
  br i1 %exitcond11, label %for.loop, label %ret

ret:                                              ; preds = %for.loop.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @onebyonecpy_hls.p0i32(i32* noalias align 512, i32* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq i32* %0, null
  %3 = icmp eq i32* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  %5 = load i32, i32* %1, align 4
  store i32 %5, i32* %0, align 512
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_out([32768 x i32]* noalias, [32768 x i32]* noalias readonly, [32768 x i32]* noalias, [32768 x i32]* noalias readonly, [2 x [32768 x i32]]* noalias, [2 x [32768 x i32]]* noalias readonly, i32* noalias, i32* noalias readonly align 512, i32* noalias, i32* noalias readonly align 512) unnamed_addr #3 {
entry:
  call fastcc void @onebyonecpy_hls.p0a32768i32([32768 x i32]* %0, [32768 x i32]* %1)
  call fastcc void @onebyonecpy_hls.p0a32768i32([32768 x i32]* %2, [32768 x i32]* %3)
  call fastcc void @onebyonecpy_hls.p0a2a32768i32([2 x [32768 x i32]]* %4, [2 x [32768 x i32]]* %5)
  call fastcc void @onebyonecpy_hls.p0i32(i32* %6, i32* align 512 %7)
  call fastcc void @onebyonecpy_hls.p0i32(i32* %8, i32* align 512 %9)
  ret void
}

declare void @free(i8*) local_unnamed_addr

declare void @apatb_multicycle_pipeline_ip_hw(i32, i32, i32*, i32*, [32768 x i32]*, i32*, i32*)

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_back([32768 x i32]* noalias, [32768 x i32]* noalias readonly, [32768 x i32]* noalias, [32768 x i32]* noalias readonly, [2 x [32768 x i32]]* noalias, [2 x [32768 x i32]]* noalias readonly, i32* noalias, i32* noalias readonly align 512, i32* noalias, i32* noalias readonly align 512) unnamed_addr #3 {
entry:
  call fastcc void @onebyonecpy_hls.p0a32768i32([32768 x i32]* %2, [32768 x i32]* %3)
  call fastcc void @onebyonecpy_hls.p0a2a32768i32([2 x [32768 x i32]]* %4, [2 x [32768 x i32]]* %5)
  call fastcc void @onebyonecpy_hls.p0i32(i32* %6, i32* align 512 %7)
  call fastcc void @onebyonecpy_hls.p0i32(i32* %8, i32* align 512 %9)
  ret void
}

define void @multicycle_pipeline_ip_hw_stub_wrapper(i32, i32, i32*, i32*, [32768 x i32]*, i32*, i32*) #4 {
entry:
  %7 = bitcast i32* %2 to [32768 x i32]*
  %8 = bitcast i32* %3 to [32768 x i32]*
  %9 = bitcast [32768 x i32]* %4 to [2 x [32768 x i32]]*
  call void @copy_out([32768 x i32]* null, [32768 x i32]* %7, [32768 x i32]* null, [32768 x i32]* %8, [2 x [32768 x i32]]* null, [2 x [32768 x i32]]* %9, i32* null, i32* %5, i32* null, i32* %6)
  %10 = bitcast [32768 x i32]* %7 to i32*
  %11 = bitcast [32768 x i32]* %8 to i32*
  %12 = bitcast [2 x [32768 x i32]]* %9 to [32768 x i32]*
  call void @multicycle_pipeline_ip_hw_stub(i32 %0, i32 %1, i32* %10, i32* %11, [32768 x i32]* %12, i32* %5, i32* %6)
  call void @copy_in([32768 x i32]* null, [32768 x i32]* %7, [32768 x i32]* null, [32768 x i32]* %8, [2 x [32768 x i32]]* null, [2 x [32768 x i32]]* %9, i32* null, i32* %5, i32* null, i32* %6)
  ret void
}

declare void @multicycle_pipeline_ip_hw_stub(i32, i32, i32*, i32*, [32768 x i32]*, i32*, i32*)

attributes #0 = { noinline "fpga.wrapper.func"="wrapper" }
attributes #1 = { argmemonly noinline norecurse "fpga.wrapper.func"="copyin" }
attributes #2 = { argmemonly noinline norecurse "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #3 = { argmemonly noinline norecurse "fpga.wrapper.func"="copyout" }
attributes #4 = { "fpga.wrapper.func"="stub" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}
