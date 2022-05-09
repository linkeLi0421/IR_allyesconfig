; ModuleID = '/llk/IR_all_yes/fs/iomap/fiemap.c_pt.bc'
source_filename = "../fs/iomap/fiemap.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+iomap_fiemap\22, \22a\22\09"
module asm "\09.weak\09__crc_iomap_fiemap\09\09\09\09"
module asm "\09.long\09__crc_iomap_fiemap\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iomap_fiemap:\09\09\09\09\09"
module asm "\09.asciz \09\22iomap_fiemap\22\09\09\09\09\09"
module asm "__kstrtabns_iomap_fiemap:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+iomap_bmap\22, \22a\22\09"
module asm "\09.weak\09__crc_iomap_bmap\09\09\09\09"
module asm "\09.long\09__crc_iomap_bmap\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iomap_bmap:\09\09\09\09\09"
module asm "\09.asciz \09\22iomap_bmap\22\09\09\09\09\09"
module asm "__kstrtabns_iomap_bmap:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.iomap_iter = type { ptr, i64, i64, i64, i32, %struct.iomap, %struct.iomap }
%struct.iomap = type { i64, i64, i64, i16, i16, ptr, ptr, ptr, ptr, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.71, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.72, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.73, ptr, %struct.address_space, %struct.list_head, %union.anon.74, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.71 = type { i32 }
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
%union.anon.72 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%struct.atomic_t = type { i32 }
%union.anon.73 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.74 = type { ptr }

@__kstrtab_iomap_fiemap = external dso_local constant [0 x i8], align 1
@__kstrtabns_iomap_fiemap = external dso_local constant [0 x i8], align 1
@__ksymtab_iomap_fiemap = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iomap_fiemap to i32), ptr @__kstrtab_iomap_fiemap, ptr @__kstrtabns_iomap_fiemap }, section "___ksymtab_gpl+iomap_fiemap", align 4
@__kstrtab_iomap_bmap = external dso_local constant [0 x i8], align 1
@__kstrtabns_iomap_bmap = external dso_local constant [0 x i8], align 1
@__ksymtab_iomap_bmap = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iomap_bmap to i32), ptr @__kstrtab_iomap_bmap, ptr @__kstrtabns_iomap_bmap }, section "___ksymtab_gpl+iomap_bmap", align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 16, i64 0, i64 1, i64 3, i64 4]
@__sancov_gen_cov_switch_values.1 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.2 = internal global [6 x i64] [i64 4, i64 16, i64 0, i64 1, i64 3, i64 4]
@llvm.compiler.used = appending global [2 x ptr] [ptr @__ksymtab_iomap_bmap, ptr @__ksymtab_iomap_fiemap], section "llvm.metadata"
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iomap_fiemap(ptr noundef %inode, ptr noundef %fi, i64 noundef %start, i64 noundef %len, ptr noundef %ops) #0 align 64 {
entry:
  %iter = alloca %struct.iomap_iter, align 8
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %iter) #4
  %0 = call ptr @memset(ptr %iter, i32 0, i32 136)
  %1 = ptrtoint ptr %iter to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %inode, ptr %iter, align 8
  %pos = getelementptr inbounds %struct.iomap_iter, ptr %iter, i32 0, i32 1
  %2 = ptrtoint ptr %pos to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %start, ptr %pos, align 8
  %len2 = getelementptr inbounds %struct.iomap_iter, ptr %iter, i32 0, i32 2
  %3 = ptrtoint ptr %len2 to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 %len, ptr %len2, align 8
  %flags = getelementptr inbounds %struct.iomap_iter, ptr %iter, i32 0, i32 4
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 4, ptr %flags, align 8
  %call = call i32 @fiemap_prep(ptr noundef %inode, ptr noundef %fi, i64 noundef %start, ptr noundef %len2, i32 noundef 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %while.cond.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

while.cond.preheader:                             ; preds = %entry
  %call459 = call i32 @iomap_iter(ptr noundef nonnull %iter, ptr noundef %ops) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call459)
  %cmp60 = icmp sgt i32 %call459, 0
  br i1 %cmp60, label %while.body.lr.ph, label %while.cond.preheader.if.end14_crit_edge

while.cond.preheader.if.end14_crit_edge:          ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end14

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %type.i = getelementptr inbounds %struct.iomap_iter, ptr %iter, i32 0, i32 5, i32 3
  %iomap.i = getelementptr inbounds %struct.iomap_iter, ptr %iter, i32 0, i32 5
  %prev.sroa.7.0.iomap.i.sroa_idx37 = getelementptr inbounds %struct.iomap_iter, ptr %iter, i32 0, i32 5, i32 1
  %prev.sroa.9.0.iomap.i.sroa_idx40 = getelementptr inbounds %struct.iomap_iter, ptr %iter, i32 0, i32 5, i32 2
  %prev.sroa.14.0.iomap.i.sroa_idx47 = getelementptr inbounds %struct.iomap_iter, ptr %iter, i32 0, i32 5, i32 4
  %type.i19.i = getelementptr inbounds %struct.iomap_iter, ptr %iter, i32 0, i32 6, i32 3
  %offset4.i21.i = getelementptr inbounds %struct.iomap_iter, ptr %iter, i32 0, i32 6, i32 1
  %length6.i22.i = getelementptr inbounds %struct.iomap_iter, ptr %iter, i32 0, i32 6, i32 2
  %processed = getelementptr inbounds %struct.iomap_iter, ptr %iter, i32 0, i32 3
  br label %while.body

while.body:                                       ; preds = %iomap_fiemap_iter.exit.while.body_crit_edge, %while.body.lr.ph
  %prev.sroa.14.065 = phi i16 [ 0, %while.body.lr.ph ], [ %prev.sroa.14.2, %iomap_fiemap_iter.exit.while.body_crit_edge ]
  %prev.sroa.11.064 = phi i16 [ 0, %while.body.lr.ph ], [ %prev.sroa.11.2, %iomap_fiemap_iter.exit.while.body_crit_edge ]
  %prev.sroa.9.063 = phi i64 [ 0, %while.body.lr.ph ], [ %prev.sroa.9.2, %iomap_fiemap_iter.exit.while.body_crit_edge ]
  %prev.sroa.7.062 = phi i64 [ 0, %while.body.lr.ph ], [ %prev.sroa.7.2, %iomap_fiemap_iter.exit.while.body_crit_edge ]
  %prev.sroa.0.061 = phi i64 [ 0, %while.body.lr.ph ], [ %prev.sroa.0.2, %iomap_fiemap_iter.exit.while.body_crit_edge ]
  %5 = ptrtoint ptr %type.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %cmp.i = icmp eq i16 %6, 0
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %while.body
  %7 = ptrtoint ptr %prev.sroa.7.0.iomap.i.sroa_idx37 to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %prev.sroa.7.0.iomap.i.sroa_idx37, align 8
  %9 = ptrtoint ptr %prev.sroa.9.0.iomap.i.sroa_idx40 to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %prev.sroa.9.0.iomap.i.sroa_idx40, align 8
  %add.i.i = add i64 %10, %8
  %11 = ptrtoint ptr %type.i19.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %type.i19.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %cmp.not.i.i = icmp eq i16 %12, 0
  br i1 %cmp.not.i.i, label %if.then.i.iomap_length.exit.i_crit_edge, label %if.then.i.i

if.then.i.iomap_length.exit.i_crit_edge:          ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %iomap_length.exit.i

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  %13 = ptrtoint ptr %offset4.i21.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %offset4.i21.i, align 8
  %15 = ptrtoint ptr %length6.i22.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %length6.i22.i, align 8
  %add7.i.i = add i64 %16, %14
  %17 = call i64 @llvm.umin.i64(i64 %add.i.i, i64 %add7.i.i) #4
  br label %iomap_length.exit.i

iomap_length.exit.i:                              ; preds = %if.then.i.i, %if.then.i.iomap_length.exit.i_crit_edge
  %end.0.i.i = phi i64 [ %17, %if.then.i.i ], [ %add.i.i, %if.then.i.iomap_length.exit.i_crit_edge ]
  %18 = ptrtoint ptr %len2 to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %len2, align 8
  %20 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %pos, align 8
  %sub.i.i = sub i64 %end.0.i.i, %21
  %22 = call i64 @llvm.umin.i64(i64 %19, i64 %sub.i.i) #4
  br label %iomap_fiemap_iter.exit

if.end.i:                                         ; preds = %while.body
  %23 = zext i16 %prev.sroa.11.064 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values)
  switch i16 %prev.sroa.11.064, label %if.end.i.iomap_to_fiemap.exit.i_crit_edge [
    i16 0, label %iomap_to_fiemap.exit.thread.i
    i16 1, label %sw.bb1.i.i
    i16 4, label %sw.bb4.i.i
    i16 3, label %sw.bb2.i.i
  ]

if.end.i.iomap_to_fiemap.exit.i_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %iomap_to_fiemap.exit.i

iomap_to_fiemap.exit.thread.i:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %24 = ptrtoint ptr %iomap.i to i32
  call void @__asan_load8_noabort(i32 %24)
  %prev.sroa.0.0.copyload36 = load i64, ptr %iomap.i, align 8
  %25 = ptrtoint ptr %prev.sroa.7.0.iomap.i.sroa_idx37 to i32
  call void @__asan_load8_noabort(i32 %25)
  %prev.sroa.7.0.copyload38 = load i64, ptr %prev.sroa.7.0.iomap.i.sroa_idx37, align 8
  %26 = ptrtoint ptr %prev.sroa.9.0.iomap.i.sroa_idx40 to i32
  call void @__asan_load8_noabort(i32 %26)
  %prev.sroa.9.0.copyload41 = load i64, ptr %prev.sroa.9.0.iomap.i.sroa_idx40, align 8
  %27 = ptrtoint ptr %type.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %prev.sroa.11.0.copyload44 = load i16, ptr %type.i, align 8
  %28 = ptrtoint ptr %prev.sroa.14.0.iomap.i.sroa_idx47 to i32
  call void @__asan_load2_noabort(i32 %28)
  %prev.sroa.14.0.copyload48 = load i16, ptr %prev.sroa.14.0.iomap.i.sroa_idx47, align 2
  br label %sw.bb.i

sw.bb1.i.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %iomap_to_fiemap.exit.i

sw.bb2.i.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %iomap_to_fiemap.exit.i

sw.bb4.i.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %iomap_to_fiemap.exit.i

iomap_to_fiemap.exit.i:                           ; preds = %sw.bb4.i.i, %sw.bb2.i.i, %sw.bb1.i.i, %if.end.i.iomap_to_fiemap.exit.i_crit_edge
  %flags.addr.0.i.i = phi i32 [ 0, %if.end.i.iomap_to_fiemap.exit.i_crit_edge ], [ 2048, %sw.bb2.i.i ], [ 512, %sw.bb4.i.i ], [ 6, %sw.bb1.i.i ]
  %29 = shl i16 %prev.sroa.14.065, 9
  %30 = and i16 %29, 4096
  %31 = shl i16 %prev.sroa.14.065, 11
  %32 = and i16 %31, 8192
  %33 = or i16 %32, %30
  %34 = zext i16 %33 to i32
  %35 = or i32 %flags.addr.0.i.i, %34
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %prev.sroa.0.061)
  %cmp.not.i14.i = icmp eq i64 %prev.sroa.0.061, -1
  %cond.i.i = select i1 %cmp.not.i14.i, i64 0, i64 %prev.sroa.0.061
  %call.i.i = call i32 @fiemap_fill_next_extent(ptr noundef %fi, i64 noundef %prev.sroa.7.062, i64 noundef %cond.i.i, i64 noundef %prev.sroa.9.063, i32 noundef %35) #4
  %36 = ptrtoint ptr %iomap.i to i32
  call void @__asan_load8_noabort(i32 %36)
  %prev.sroa.0.0.copyload = load i64, ptr %iomap.i, align 8
  %37 = ptrtoint ptr %prev.sroa.7.0.iomap.i.sroa_idx37 to i32
  call void @__asan_load8_noabort(i32 %37)
  %prev.sroa.7.0.copyload = load i64, ptr %prev.sroa.7.0.iomap.i.sroa_idx37, align 8
  %38 = ptrtoint ptr %prev.sroa.9.0.iomap.i.sroa_idx40 to i32
  call void @__asan_load8_noabort(i32 %38)
  %prev.sroa.9.0.copyload = load i64, ptr %prev.sroa.9.0.iomap.i.sroa_idx40, align 8
  %39 = ptrtoint ptr %type.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %prev.sroa.11.0.copyload = load i16, ptr %type.i, align 8
  %40 = ptrtoint ptr %prev.sroa.14.0.iomap.i.sroa_idx47 to i32
  call void @__asan_load2_noabort(i32 %40)
  %prev.sroa.14.0.copyload = load i16, ptr %prev.sroa.14.0.iomap.i.sroa_idx47, align 2
  %41 = zext i32 %call.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %41, ptr @__sancov_gen_cov_switch_values.1)
  switch i32 %call.i.i, label %sw.default.i [
    i32 0, label %iomap_to_fiemap.exit.i.sw.bb.i_crit_edge
    i32 1, label %iomap_to_fiemap.exit.i.iomap_fiemap_iter.exit_crit_edge
  ]

iomap_to_fiemap.exit.i.iomap_fiemap_iter.exit_crit_edge: ; preds = %iomap_to_fiemap.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %iomap_fiemap_iter.exit

iomap_to_fiemap.exit.i.sw.bb.i_crit_edge:         ; preds = %iomap_to_fiemap.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb.i

sw.bb.i:                                          ; preds = %iomap_to_fiemap.exit.i.sw.bb.i_crit_edge, %iomap_to_fiemap.exit.thread.i
  %prev.sroa.0.1 = phi i64 [ %prev.sroa.0.0.copyload, %iomap_to_fiemap.exit.i.sw.bb.i_crit_edge ], [ %prev.sroa.0.0.copyload36, %iomap_to_fiemap.exit.thread.i ]
  %prev.sroa.7.1 = phi i64 [ %prev.sroa.7.0.copyload, %iomap_to_fiemap.exit.i.sw.bb.i_crit_edge ], [ %prev.sroa.7.0.copyload38, %iomap_to_fiemap.exit.thread.i ]
  %prev.sroa.9.1 = phi i64 [ %prev.sroa.9.0.copyload, %iomap_to_fiemap.exit.i.sw.bb.i_crit_edge ], [ %prev.sroa.9.0.copyload41, %iomap_to_fiemap.exit.thread.i ]
  %prev.sroa.11.1 = phi i16 [ %prev.sroa.11.0.copyload, %iomap_to_fiemap.exit.i.sw.bb.i_crit_edge ], [ %prev.sroa.11.0.copyload44, %iomap_to_fiemap.exit.thread.i ]
  %prev.sroa.14.1 = phi i16 [ %prev.sroa.14.0.copyload, %iomap_to_fiemap.exit.i.sw.bb.i_crit_edge ], [ %prev.sroa.14.0.copyload48, %iomap_to_fiemap.exit.thread.i ]
  %42 = ptrtoint ptr %prev.sroa.7.0.iomap.i.sroa_idx37 to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %prev.sroa.7.0.iomap.i.sroa_idx37, align 8
  %44 = ptrtoint ptr %prev.sroa.9.0.iomap.i.sroa_idx40 to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %prev.sroa.9.0.iomap.i.sroa_idx40, align 8
  %add.i18.i = add i64 %45, %43
  %46 = ptrtoint ptr %type.i19.i to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %type.i19.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %47)
  %cmp.not.i20.i = icmp eq i16 %47, 0
  br i1 %cmp.not.i20.i, label %sw.bb.i.iomap_length.exit29.i_crit_edge, label %if.then.i24.i

sw.bb.i.iomap_length.exit29.i_crit_edge:          ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %iomap_length.exit29.i

if.then.i24.i:                                    ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #6
  %48 = ptrtoint ptr %offset4.i21.i to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %offset4.i21.i, align 8
  %50 = ptrtoint ptr %length6.i22.i to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %length6.i22.i, align 8
  %add7.i23.i = add i64 %51, %49
  %52 = call i64 @llvm.umin.i64(i64 %add.i18.i, i64 %add7.i23.i) #4
  br label %iomap_length.exit29.i

iomap_length.exit29.i:                            ; preds = %if.then.i24.i, %sw.bb.i.iomap_length.exit29.i_crit_edge
  %end.0.i25.i = phi i64 [ %52, %if.then.i24.i ], [ %add.i18.i, %sw.bb.i.iomap_length.exit29.i_crit_edge ]
  %53 = ptrtoint ptr %len2 to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %len2, align 8
  %55 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %pos, align 8
  %sub.i28.i = sub i64 %end.0.i25.i, %56
  %57 = call i64 @llvm.umin.i64(i64 %54, i64 %sub.i28.i) #4
  br label %iomap_fiemap_iter.exit

sw.default.i:                                     ; preds = %iomap_to_fiemap.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  %conv6.i = sext i32 %call.i.i to i64
  br label %iomap_fiemap_iter.exit

iomap_fiemap_iter.exit:                           ; preds = %sw.default.i, %iomap_length.exit29.i, %iomap_to_fiemap.exit.i.iomap_fiemap_iter.exit_crit_edge, %iomap_length.exit.i
  %prev.sroa.0.2 = phi i64 [ %prev.sroa.0.061, %iomap_length.exit.i ], [ %prev.sroa.0.0.copyload, %sw.default.i ], [ %prev.sroa.0.0.copyload, %iomap_to_fiemap.exit.i.iomap_fiemap_iter.exit_crit_edge ], [ %prev.sroa.0.1, %iomap_length.exit29.i ]
  %prev.sroa.7.2 = phi i64 [ %prev.sroa.7.062, %iomap_length.exit.i ], [ %prev.sroa.7.0.copyload, %sw.default.i ], [ %prev.sroa.7.0.copyload, %iomap_to_fiemap.exit.i.iomap_fiemap_iter.exit_crit_edge ], [ %prev.sroa.7.1, %iomap_length.exit29.i ]
  %prev.sroa.9.2 = phi i64 [ %prev.sroa.9.063, %iomap_length.exit.i ], [ %prev.sroa.9.0.copyload, %sw.default.i ], [ %prev.sroa.9.0.copyload, %iomap_to_fiemap.exit.i.iomap_fiemap_iter.exit_crit_edge ], [ %prev.sroa.9.1, %iomap_length.exit29.i ]
  %prev.sroa.11.2 = phi i16 [ %prev.sroa.11.064, %iomap_length.exit.i ], [ %prev.sroa.11.0.copyload, %sw.default.i ], [ %prev.sroa.11.0.copyload, %iomap_to_fiemap.exit.i.iomap_fiemap_iter.exit_crit_edge ], [ %prev.sroa.11.1, %iomap_length.exit29.i ]
  %prev.sroa.14.2 = phi i16 [ %prev.sroa.14.065, %iomap_length.exit.i ], [ %prev.sroa.14.0.copyload, %sw.default.i ], [ %prev.sroa.14.0.copyload, %iomap_to_fiemap.exit.i.iomap_fiemap_iter.exit_crit_edge ], [ %prev.sroa.14.1, %iomap_length.exit29.i ]
  %retval.0.i = phi i64 [ %22, %iomap_length.exit.i ], [ %conv6.i, %sw.default.i ], [ 0, %iomap_to_fiemap.exit.i.iomap_fiemap_iter.exit_crit_edge ], [ %57, %iomap_length.exit29.i ]
  %58 = ptrtoint ptr %processed to i32
  call void @__asan_store8_noabort(i32 %58)
  store i64 %retval.0.i, ptr %processed, align 8
  %call4 = call i32 @iomap_iter(ptr noundef nonnull %iter, ptr noundef %ops) #4
  %cmp = icmp sgt i32 %call4, 0
  br i1 %cmp, label %iomap_fiemap_iter.exit.while.body_crit_edge, label %while.end

iomap_fiemap_iter.exit.while.body_crit_edge:      ; preds = %iomap_fiemap_iter.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body

while.end:                                        ; preds = %iomap_fiemap_iter.exit
  %59 = zext i16 %prev.sroa.11.2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %59, ptr @__sancov_gen_cov_switch_values.2)
  switch i16 %prev.sroa.11.2, label %while.end.iomap_to_fiemap.exit_crit_edge [
    i16 0, label %while.end.if.end14_crit_edge
    i16 3, label %sw.bb2.i
    i16 1, label %sw.bb1.i
    i16 4, label %sw.bb4.i
  ]

while.end.if.end14_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end14

while.end.iomap_to_fiemap.exit_crit_edge:         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %iomap_to_fiemap.exit

sw.bb1.i:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %iomap_to_fiemap.exit

sw.bb2.i:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %iomap_to_fiemap.exit

sw.bb4.i:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %iomap_to_fiemap.exit

iomap_to_fiemap.exit:                             ; preds = %sw.bb4.i, %sw.bb2.i, %sw.bb1.i, %while.end.iomap_to_fiemap.exit_crit_edge
  %flags.addr.0.i = phi i32 [ 2049, %sw.bb2.i ], [ 513, %sw.bb4.i ], [ 7, %sw.bb1.i ], [ 1, %while.end.iomap_to_fiemap.exit_crit_edge ]
  %60 = shl i16 %prev.sroa.14.2, 9
  %61 = and i16 %60, 4096
  %62 = shl i16 %prev.sroa.14.2, 11
  %63 = and i16 %62, 8192
  %64 = or i16 %63, %61
  %65 = zext i16 %64 to i32
  %66 = or i32 %flags.addr.0.i, %65
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %prev.sroa.0.2)
  %cmp.not.i = icmp eq i64 %prev.sroa.0.2, -1
  %cond.i = select i1 %cmp.not.i, i64 0, i64 %prev.sroa.0.2
  %call.i = call i32 @fiemap_fill_next_extent(ptr noundef %fi, i64 noundef %prev.sroa.7.2, i64 noundef %cond.i, i64 noundef %prev.sroa.9.2, i32 noundef %66) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp10 = icmp slt i32 %call.i, 0
  br i1 %cmp10, label %iomap_to_fiemap.exit.cleanup_crit_edge, label %iomap_to_fiemap.exit.if.end14_crit_edge

iomap_to_fiemap.exit.if.end14_crit_edge:          ; preds = %iomap_to_fiemap.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end14

iomap_to_fiemap.exit.cleanup_crit_edge:           ; preds = %iomap_to_fiemap.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end14:                                         ; preds = %iomap_to_fiemap.exit.if.end14_crit_edge, %while.end.if.end14_crit_edge, %while.cond.preheader.if.end14_crit_edge
  %ret.0 = phi i32 [ %call.i, %iomap_to_fiemap.exit.if.end14_crit_edge ], [ %call4, %while.end.if.end14_crit_edge ], [ %call459, %while.cond.preheader.if.end14_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %ret.0)
  %cmp15 = icmp sgt i32 %ret.0, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %ret.0)
  %cmp17.not = icmp eq i32 %ret.0, -2
  %or.cond = or i1 %cmp15, %cmp17.not
  %spec.select = select i1 %or.cond, i32 0, i32 %ret.0
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %iomap_to_fiemap.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call.i, %iomap_to_fiemap.exit.cleanup_crit_edge ], [ %spec.select, %if.end14 ]
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %iter) #4
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fiemap_prep(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iomap_iter(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @iomap_bmap(ptr noundef %mapping, i64 noundef %bno, ptr noundef %ops) #0 align 64 {
entry:
  %iter = alloca %struct.iomap_iter, align 8
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %iter) #4
  %0 = call ptr @memset(ptr %iter, i32 0, i32 136)
  %1 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %mapping, align 4
  %3 = ptrtoint ptr %iter to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %2, ptr %iter, align 8
  %pos = getelementptr inbounds %struct.iomap_iter, ptr %iter, i32 0, i32 1
  %i_blkbits = getelementptr inbounds %struct.inode, ptr %2, i32 0, i32 20
  %4 = ptrtoint ptr %i_blkbits to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %i_blkbits, align 2
  %sh_prom = zext i8 %5 to i64
  %shl = shl i64 %bno, %sh_prom
  %6 = ptrtoint ptr %pos to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %shl, ptr %pos, align 8
  %len = getelementptr inbounds %struct.iomap_iter, ptr %iter, i32 0, i32 2
  %conv.i = zext i8 %5 to i32
  %shl.i = shl nuw i32 1, %conv.i
  %conv3 = zext i32 %shl.i to i64
  %7 = ptrtoint ptr %len to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %conv3, ptr %len, align 8
  %flags = getelementptr inbounds %struct.iomap_iter, ptr %iter, i32 0, i32 4
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 4, ptr %flags, align 8
  %sub = add nsw i32 %conv.i, -9
  %call.i = tail call i32 @filemap_write_and_wait_range(ptr noundef %mapping, i64 noundef 0, i64 noundef 9223372036854775807) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %while.cond.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

while.cond.preheader:                             ; preds = %entry
  %call829 = call i32 @iomap_iter(ptr noundef nonnull %iter, ptr noundef %ops) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call829)
  %cmp30 = icmp sgt i32 %call829, 0
  br i1 %cmp30, label %while.body.lr.ph, label %while.cond.preheader.while.end_crit_edge

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %type = getelementptr inbounds %struct.iomap_iter, ptr %iter, i32 0, i32 5, i32 3
  %iomap = getelementptr inbounds %struct.iomap_iter, ptr %iter, i32 0, i32 5
  %offset.i = getelementptr inbounds %struct.iomap_iter, ptr %iter, i32 0, i32 5, i32 1
  %sh_prom17 = zext i32 %sub to i64
  br label %while.body

while.body:                                       ; preds = %if.end18.while.body_crit_edge, %while.body.lr.ph
  %bno.addr.031 = phi i64 [ 0, %while.body.lr.ph ], [ %bno.addr.1, %if.end18.while.body_crit_edge ]
  %9 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %type, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %10)
  %cmp11 = icmp eq i16 %10, 2
  br i1 %cmp11, label %if.then13, label %while.body.if.end18_crit_edge

while.body.if.end18_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end18

if.then13:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  %11 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %pos, align 8
  %13 = ptrtoint ptr %iomap to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %iomap, align 8
  %add.i = add i64 %14, %12
  %15 = ptrtoint ptr %offset.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %offset.i, align 8
  %sub.i = sub i64 %add.i, %16
  %shr.i = lshr i64 %sub.i, 9
  %shr = lshr i64 %shr.i, %sh_prom17
  br label %if.end18

if.end18:                                         ; preds = %if.then13, %while.body.if.end18_crit_edge
  %bno.addr.1 = phi i64 [ %shr, %if.then13 ], [ %bno.addr.031, %while.body.if.end18_crit_edge ]
  %call8 = call i32 @iomap_iter(ptr noundef nonnull %iter, ptr noundef %ops) #4
  %cmp = icmp sgt i32 %call8, 0
  br i1 %cmp, label %if.end18.while.body_crit_edge, label %if.end18.while.end_crit_edge

if.end18.while.end_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

if.end18.while.body_crit_edge:                    ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body

while.end:                                        ; preds = %if.end18.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %bno.addr.0.lcssa = phi i64 [ 0, %while.cond.preheader.while.end_crit_edge ], [ %bno.addr.1, %if.end18.while.end_crit_edge ]
  %call8.lcssa = phi i32 [ %call829, %while.cond.preheader.while.end_crit_edge ], [ %call8, %if.end18.while.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.lcssa)
  %tobool19.not = icmp eq i32 %call8.lcssa, 0
  %bno.addr.0. = select i1 %tobool19.not, i64 %bno.addr.0.lcssa, i64 0
  br label %cleanup

cleanup:                                          ; preds = %while.end, %entry.cleanup_crit_edge
  %retval.0 = phi i64 [ 0, %entry.cleanup_crit_edge ], [ %bno.addr.0., %while.end ]
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %iter) #4
  ret i64 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fiemap_fill_next_extent(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @filemap_write_and_wait_range(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = !{ptr @__ksymtab_iomap_fiemap, !1, !"__ksymtab_iomap_fiemap", i1 false, i1 false}
!1 = !{!"../fs/iomap/fiemap.c", i32 93, i32 1}
!2 = !{ptr @__ksymtab_iomap_bmap, !3, !"__ksymtab_iomap_bmap", i1 false, i1 false}
!3 = !{!"../fs/iomap/fiemap.c", i32 123, i32 1}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 1, !"min_enum_size", i32 4}
!6 = !{i32 8, !"branch-target-enforcement", i32 0}
!7 = !{i32 8, !"sign-return-address", i32 0}
!8 = !{i32 8, !"sign-return-address-all", i32 0}
!9 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!10 = !{i32 7, !"uwtable", i32 1}
!11 = !{i32 7, !"frame-pointer", i32 2}
!12 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
