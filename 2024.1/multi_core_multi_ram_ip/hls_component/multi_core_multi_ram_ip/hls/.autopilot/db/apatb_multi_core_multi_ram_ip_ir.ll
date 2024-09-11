; ModuleID = '/home/goossens/goossens-book-ip-projects/2024.1/multi_core_multi_ram_ip/workspace/hls_component/multi_core_multi_ram_ip/hls/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

; Function Attrs: noinline
define void @apatb_multi_core_multi_ram_ip_ir(i32 %ip_num, i32* noalias nocapture nonnull "fpga.decayed.dim.hint"="16384" %local_ram, i32* noalias nocapture nonnull "fpga.decayed.dim.hint"="32768" "maxi" %data_ram) local_unnamed_addr #0 {
entry:
  %malloccall = tail call i8* @malloc(i64 65536)
  %local_ram_copy = bitcast i8* %malloccall to [16384 x i32]*
  %malloccall1 = tail call i8* @malloc(i64 131072)
  %data_ram_copy = bitcast i8* %malloccall1 to [32768 x i32]*
  %0 = bitcast i32* %local_ram to [16384 x i32]*
  %1 = bitcast i32* %data_ram to [32768 x i32]*
  call fastcc void @copy_in([16384 x i32]* nonnull %0, [16384 x i32]* %local_ram_copy, [32768 x i32]* nonnull %1, [32768 x i32]* %data_ram_copy)
  call void @apatb_multi_core_multi_ram_ip_hw(i32 %ip_num, [16384 x i32]* %local_ram_copy, [32768 x i32]* %data_ram_copy)
  call void @copy_back([16384 x i32]* %0, [16384 x i32]* %local_ram_copy, [32768 x i32]* %1, [32768 x i32]* %data_ram_copy)
  tail call void @free(i8* %malloccall)
  tail call void @free(i8* %malloccall1)
  ret void
}

declare noalias i8* @malloc(i64) local_unnamed_addr

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @copy_in([16384 x i32]* noalias readonly, [16384 x i32]* noalias, [32768 x i32]* noalias readonly, [32768 x i32]* noalias) unnamed_addr #1 {
entry:
  call fastcc void @onebyonecpy_hls.p0a16384i32([16384 x i32]* %1, [16384 x i32]* %0)
  call fastcc void @onebyonecpy_hls.p0a32768i32([32768 x i32]* %3, [32768 x i32]* %2)
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @onebyonecpy_hls.p0a16384i32([16384 x i32]* noalias %dst, [16384 x i32]* noalias readonly %src) unnamed_addr #2 {
entry:
  %0 = icmp eq [16384 x i32]* %dst, null
  %1 = icmp eq [16384 x i32]* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @arraycpy_hls.p0a16384i32([16384 x i32]* nonnull %dst, [16384 x i32]* nonnull %src, i64 16384)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @arraycpy_hls.p0a16384i32([16384 x i32]* %dst, [16384 x i32]* readonly %src, i64 %num) local_unnamed_addr #3 {
entry:
  %0 = icmp eq [16384 x i32]* %src, null
  %1 = icmp eq [16384 x i32]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [16384 x i32], [16384 x i32]* %dst, i64 0, i64 %for.loop.idx2
  %src.addr = getelementptr [16384 x i32], [16384 x i32]* %src, i64 0, i64 %for.loop.idx2
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
define internal fastcc void @copy_out([16384 x i32]* noalias, [16384 x i32]* noalias readonly, [32768 x i32]* noalias, [32768 x i32]* noalias readonly) unnamed_addr #4 {
entry:
  call fastcc void @onebyonecpy_hls.p0a16384i32([16384 x i32]* %0, [16384 x i32]* %1)
  call fastcc void @onebyonecpy_hls.p0a32768i32([32768 x i32]* %2, [32768 x i32]* %3)
  ret void
}

declare void @free(i8*) local_unnamed_addr

declare void @apatb_multi_core_multi_ram_ip_hw(i32, [16384 x i32]*, [32768 x i32]*)

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @copy_back([16384 x i32]* noalias, [16384 x i32]* noalias readonly, [32768 x i32]* noalias, [32768 x i32]* noalias readonly) unnamed_addr #4 {
entry:
  call fastcc void @onebyonecpy_hls.p0a16384i32([16384 x i32]* %0, [16384 x i32]* %1)
  call fastcc void @onebyonecpy_hls.p0a32768i32([32768 x i32]* %2, [32768 x i32]* %3)
  ret void
}

define void @multi_core_multi_ram_ip_hw_stub_wrapper(i32, [16384 x i32]*, [32768 x i32]*) #5 {
entry:
  call void @copy_out([16384 x i32]* null, [16384 x i32]* %1, [32768 x i32]* null, [32768 x i32]* %2)
  %3 = bitcast [16384 x i32]* %1 to i32*
  %4 = bitcast [32768 x i32]* %2 to i32*
  call void @multi_core_multi_ram_ip_hw_stub(i32 %0, i32* %3, i32* %4)
  call void @copy_in([16384 x i32]* null, [16384 x i32]* %1, [32768 x i32]* null, [32768 x i32]* %2)
  ret void
}

declare void @multi_core_multi_ram_ip_hw_stub(i32, i32* noalias nocapture nonnull, i32* noalias nocapture nonnull)

attributes #0 = { noinline "fpga.wrapper.func"="wrapper" }
attributes #1 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="copyin" }
attributes #2 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #3 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="arraycpy_hls" }
attributes #4 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="copyout" }
attributes #5 = { "fpga.wrapper.func"="stub" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}
