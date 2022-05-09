; ModuleID = '/llk/IR_all_yes/fs/isofs/joliet.c_pt.bc'
source_filename = "../fs/isofs/joliet.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.69, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.70, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.71, ptr, %struct.address_space, %struct.list_head, %union.anon.72, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.69 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.hlist_node = type { ptr, ptr }
%union.anon.70 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%struct.atomic_t = type { i32 }
%union.anon.71 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.72 = type { ptr }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [24 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [24 x i8] }
%struct.hlist_bl_head = type { ptr }
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x ptr], [3 x %struct.mem_dqinfo], [3 x ptr] }
%struct.mem_dqinfo = type { ptr, i32, %struct.list_head, i32, i32, i32, i64, i64, ptr }
%struct.sb_writers = type { i32, %struct.wait_queue_head, [3 x %struct.percpu_rw_semaphore] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, ptr, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t, %struct.lockdep_map }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { ptr }
%struct.uuid_t = type { [16 x i8] }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.hlist_head = type { ptr }
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.isofs_sb_info = type { i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i16, i16, i16, %struct.kgid_t, %struct.kuid_t, ptr }
%struct.iso_directory_record = type { [1 x i8], [1 x i8], [8 x i8], [8 x i8], [7 x i8], [1 x i8], [1 x i8], [1 x i8], [4 x i8], [1 x i8], [0 x i8] }
%struct.nls_table = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @get_joliet_filename(ptr noundef %de, ptr noundef %outname, ptr nocapture noundef readonly %inode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %s_nls_iocharset = getelementptr inbounds %struct.isofs_sb_info, ptr %3, i32 0, i32 16
  %4 = ptrtoint ptr %s_nls_iocharset to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_nls_iocharset, align 4
  %tobool.not = icmp eq ptr %5, null
  %name = getelementptr inbounds %struct.iso_directory_record, ptr %de, i32 0, i32 10
  %name_len = getelementptr inbounds %struct.iso_directory_record, ptr %de, i32 0, i32 9
  %6 = ptrtoint ptr %name_len to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %name_len, align 1
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %8 = lshr i8 %7, 1
  %9 = zext i8 %8 to i32
  %call1 = tail call i32 @utf16s_to_utf8s(ptr noundef %name, i32 noundef %9, i32 noundef 2, ptr noundef %outname, i32 noundef 4096) #2
  br label %if.end

if.else:                                          ; preds = %entry
  %10 = ptrtoint ptr %name to i32
  call void @__asan_loadN_noabort(i32 %10, i32 2)
  %11 = load i16, ptr %name, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %tobool.not12.i = icmp eq i16 %11, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %7)
  %tobool1.not13.i = icmp ult i8 %7, 2
  %or.cond14.i = or i1 %tobool1.not13.i, %tobool.not12.i
  br i1 %or.cond14.i, label %if.else.uni16_to_x8.exit_crit_edge, label %while.body.lr.ph.i

if.else.uni16_to_x8.exit_crit_edge:               ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #4
  br label %uni16_to_x8.exit

while.body.lr.ph.i:                               ; preds = %if.else
  %12 = lshr i8 %7, 1
  %13 = zext i8 %12 to i32
  %uni2char.i = getelementptr inbounds %struct.nls_table, ptr %5, i32 0, i32 2
  br label %while.body.i

while.body.i:                                     ; preds = %if.end.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %14 = phi i16 [ %11, %while.body.lr.ph.i ], [ %19, %if.end.i.while.body.i_crit_edge ]
  %len.addr.017.i = phi i32 [ %13, %while.body.lr.ph.i ], [ %dec.i, %if.end.i.while.body.i_crit_edge ]
  %ip.016.i = phi ptr [ %name, %while.body.lr.ph.i ], [ %incdec.ptr3.i, %if.end.i.while.body.i_crit_edge ]
  %op.015.i = phi ptr [ %outname, %while.body.lr.ph.i ], [ %op.1.i, %if.end.i.while.body.i_crit_edge ]
  %15 = ptrtoint ptr %uni2char.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %uni2char.i, align 4
  %call.i = tail call i32 %16(i16 noundef zeroext %14, ptr noundef %op.015.i, i32 noundef 6) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp sgt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #4
  %add.ptr.i = getelementptr i8, ptr %op.015.i, i32 %call.i
  br label %if.end.i

if.else.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #4
  %incdec.ptr.i = getelementptr i8, ptr %op.015.i, i32 1
  %17 = ptrtoint ptr %op.015.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 63, ptr %op.015.i, align 1
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %op.1.i = phi ptr [ %add.ptr.i, %if.then.i ], [ %incdec.ptr.i, %if.else.i ]
  %incdec.ptr3.i = getelementptr i16, ptr %ip.016.i, i32 1
  %dec.i = add nsw i32 %len.addr.017.i, -1
  %18 = ptrtoint ptr %incdec.ptr3.i to i32
  call void @__asan_loadN_noabort(i32 %18, i32 2)
  %19 = load i16, ptr %incdec.ptr3.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %19)
  %tobool.not.i = icmp eq i16 %19, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %tobool1.not.i = icmp eq i32 %dec.i, 0
  %or.cond.i = select i1 %tobool.not.i, i1 true, i1 %tobool1.not.i
  br i1 %or.cond.i, label %if.end.i.uni16_to_x8.exit_crit_edge, label %if.end.i.while.body.i_crit_edge

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.body.i

if.end.i.uni16_to_x8.exit_crit_edge:              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %uni16_to_x8.exit

uni16_to_x8.exit:                                 ; preds = %if.end.i.uni16_to_x8.exit_crit_edge, %if.else.uni16_to_x8.exit_crit_edge
  %op.0.lcssa.i = phi ptr [ %outname, %if.else.uni16_to_x8.exit_crit_edge ], [ %op.1.i, %if.end.i.uni16_to_x8.exit_crit_edge ]
  %20 = ptrtoint ptr %op.0.lcssa.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %op.0.lcssa.i, align 1
  %sub.ptr.lhs.cast.i = ptrtoint ptr %op.0.lcssa.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %outname to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  br label %if.end

if.end:                                           ; preds = %uni16_to_x8.exit, %if.then
  %len.0.in = phi i32 [ %sub.ptr.sub.i, %uni16_to_x8.exit ], [ %call1, %if.then ]
  %conv11 = and i32 %len.0.in, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %conv11)
  %cmp = icmp ugt i32 %conv11, 2
  br i1 %cmp, label %land.lhs.true, label %if.end.if.end29_crit_edge

if.end.if.end29_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end29

land.lhs.true:                                    ; preds = %if.end
  %sub = add nsw i32 %conv11, -2
  %arrayidx14 = getelementptr i8, ptr %outname, i32 %sub
  %21 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx14, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 59, i8 %22)
  %cmp16 = icmp eq i8 %22, 59
  br i1 %cmp16, label %land.lhs.true18, label %land.lhs.true.if.end29_crit_edge

land.lhs.true.if.end29_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end29

land.lhs.true18:                                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #4
  %sub20 = add nsw i32 %conv11, -1
  %arrayidx21 = getelementptr i8, ptr %outname, i32 %sub20
  %23 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx21, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 49, i8 %24)
  %cmp23 = icmp eq i8 %24, 49
  %spec.select = select i1 %cmp23, i32 %sub, i32 %len.0.in
  %.pre = and i32 %spec.select, 255
  br label %if.end29

if.end29:                                         ; preds = %land.lhs.true18, %land.lhs.true.if.end29_crit_edge, %if.end.if.end29_crit_edge
  %conv3055.pre-phi = phi i32 [ %.pre, %land.lhs.true18 ], [ %conv11, %land.lhs.true.if.end29_crit_edge ], [ %conv11, %if.end.if.end29_crit_edge ]
  %len.1.in = phi i32 [ %spec.select, %land.lhs.true18 ], [ %len.0.in, %land.lhs.true.if.end29_crit_edge ], [ %len.0.in, %if.end.if.end29_crit_edge ]
  %len.1 = trunc i32 %len.1.in to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %len.1)
  %cmp3156 = icmp ugt i8 %len.1, 1
  br i1 %cmp3156, label %if.end29.land.rhs_crit_edge, label %if.end29.while.end_crit_edge

if.end29.while.end_crit_edge:                     ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.end

if.end29.land.rhs_crit_edge:                      ; preds = %if.end29
  br label %land.rhs

while.cond:                                       ; preds = %land.rhs
  %dec = add i8 %len.257, -1
  %conv30 = zext i8 %dec to i32
  %cmp31 = icmp ugt i8 %dec, 1
  br i1 %cmp31, label %while.cond.land.rhs_crit_edge, label %while.cond.while.end_crit_edge

while.cond.while.end_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.end

while.cond.land.rhs_crit_edge:                    ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #4
  br label %land.rhs

land.rhs:                                         ; preds = %while.cond.land.rhs_crit_edge, %if.end29.land.rhs_crit_edge
  %conv3058 = phi i32 [ %conv30, %while.cond.land.rhs_crit_edge ], [ %conv3055.pre-phi, %if.end29.land.rhs_crit_edge ]
  %len.257 = phi i8 [ %dec, %while.cond.land.rhs_crit_edge ], [ %len.1, %if.end29.land.rhs_crit_edge ]
  %sub34 = add nsw i32 %conv3058, -1
  %arrayidx35 = getelementptr i8, ptr %outname, i32 %sub34
  %25 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx35, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 46, i8 %26)
  %cmp37 = icmp eq i8 %26, 46
  br i1 %cmp37, label %while.cond, label %land.rhs.while.end_crit_edge

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.end

while.end:                                        ; preds = %land.rhs.while.end_crit_edge, %while.cond.while.end_crit_edge, %if.end29.while.end_crit_edge
  %conv30.lcssa = phi i32 [ %conv3055.pre-phi, %if.end29.while.end_crit_edge ], [ %conv30, %while.cond.while.end_crit_edge ], [ %conv3058, %land.rhs.while.end_crit_edge ]
  ret i32 %conv30.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @utf16s_to_utf8s(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 8, !"branch-target-enforcement", i32 0}
!3 = !{i32 8, !"sign-return-address", i32 0}
!4 = !{i32 8, !"sign-return-address-all", i32 0}
!5 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!6 = !{i32 7, !"uwtable", i32 1}
!7 = !{i32 7, !"frame-pointer", i32 2}
!8 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
