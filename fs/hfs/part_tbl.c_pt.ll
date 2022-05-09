; ModuleID = '/llk/IR_all_yes/fs/hfs/part_tbl.c_pt.bc'
source_filename = "../fs/hfs/part_tbl.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [24 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [24 x i8] }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hlist_bl_head = type { ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x ptr], [3 x %struct.mem_dqinfo], [3 x ptr] }
%struct.mem_dqinfo = type { ptr, i32, %struct.list_head, i32, i32, i32, i64, i64, ptr }
%struct.sb_writers = type { i32, %struct.wait_queue_head, [3 x %struct.percpu_rw_semaphore] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, ptr, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t, %struct.lockdep_map }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { ptr }
%struct.uuid_t = type { [16 x i8] }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.atomic_t = type { i32 }
%struct.hlist_head = type { ptr }
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
%struct.callback_head = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.buffer_head = type { i32, ptr, ptr, i64, i32, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.spinlock }
%struct.old_pmap = type <{ i16, [42 x %struct.old_pmap_entry] }>
%struct.old_pmap_entry = type { i32, i32, i32 }
%struct.hfs_sb_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i32, i16, i16, %struct.kuid_t, %struct.kgid_t, i32, i32, ptr, ptr, %struct.mutex, i32, i16, i32, ptr, i32, %struct.delayed_work, %struct.spinlock }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.new_pmap = type { i16, i16, i32, i32, i32, [32 x i8], [32 x i8] }

@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Apple_HFS\00", [22 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 20557, i64 21587]
@___asan_gen_.1 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.2 = private constant [21 x i8] c"../fs/hfs/part_tbl.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 97, i32 31 }
@llvm.compiler.used = appending global [1 x ptr] [ptr @.str], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hfs_part_find(ptr nocapture noundef readonly %sb, ptr nocapture noundef %part_start, ptr nocapture noundef writeonly %part_size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %part_start to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %part_start, align 8
  %add = shl i64 %1, 9
  %shl = add i64 %add, 512
  %s_blocksize_bits = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 2
  %2 = ptrtoint ptr %s_blocksize_bits to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %s_blocksize_bits, align 4
  %sh_prom = zext i8 %3 to i64
  %shr = ashr i64 %shl, %sh_prom
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 3
  %4 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %s_blocksize, align 16
  %s_bdev.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 26
  %6 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s_bdev.i, align 4
  %call.i = tail call ptr @__bread_gfp(ptr noundef %7, i64 noundef %shr, i32 noundef %5, i32 noundef 8) #4
  %cmp.not = icmp eq ptr %call.i, null
  br i1 %cmp.not, label %entry.cleanup98_crit_edge, label %if.end7, !prof !11

entry.cleanup98_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup98

if.end7:                                          ; preds = %entry
  %sub = add i32 %5, -1
  %8 = trunc i64 %shl to i32
  %conv2 = and i32 %sub, %8
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %call.i, i32 0, i32 5
  %9 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %b_data, align 4
  %add.ptr = getelementptr i8, ptr %10, i32 %conv2
  %11 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %add.ptr, align 2
  %13 = zext i16 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values)
  switch i16 %12, label %if.end7.if.then.i148_crit_edge [
    i16 21587, label %sw.bb
    i16 20557, label %sw.bb31
  ]

if.end7.if.then.i148_crit_edge:                   ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then.i148

sw.bb:                                            ; preds = %if.end7
  %14 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %b_data, align 4
  %pdEntry = getelementptr inbounds %struct.old_pmap, ptr %15, i32 0, i32 1
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %sw.bb
  %p.0169 = phi ptr [ %pdEntry, %sw.bb ], [ %incdec.ptr, %for.inc.for.body_crit_edge ]
  %i.0167 = phi i32 [ 0, %sw.bb ], [ %inc, %for.inc.for.body_crit_edge ]
  %res.0166 = phi i32 [ -2, %sw.bb ], [ %res.1, %for.inc.for.body_crit_edge ]
  %16 = ptrtoint ptr %p.0169 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %p.0169, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool12.not = icmp eq i32 %17, 0
  br i1 %tobool12.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %pdSize = getelementptr inbounds %struct.old_pmap_entry, ptr %p.0169, i32 0, i32 1
  %18 = ptrtoint ptr %pdSize to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %pdSize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool13.not = icmp eq i32 %19, 0
  br i1 %tobool13.not, label %land.lhs.true.for.inc_crit_edge, label %land.lhs.true14

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

land.lhs.true14:                                  ; preds = %land.lhs.true
  %pdFSID = getelementptr inbounds %struct.old_pmap_entry, ptr %p.0169, i32 0, i32 2
  %20 = ptrtoint ptr %pdFSID to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %pdFSID, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1413894961, i32 %21)
  %cmp15 = icmp eq i32 %21, 1413894961
  br i1 %cmp15, label %land.lhs.true17, label %land.lhs.true14.for.inc_crit_edge

land.lhs.true14.for.inc_crit_edge:                ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

land.lhs.true17:                                  ; preds = %land.lhs.true14
  %22 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %s_fs_info, align 16
  %part = getelementptr inbounds %struct.hfs_sb_info, ptr %23, i32 0, i32 26
  %24 = ptrtoint ptr %part to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %part, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp18 = icmp slt i32 %25, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %i.0167)
  %cmp22 = icmp eq i32 %25, %i.0167
  %or.cond = select i1 %cmp18, i1 true, i1 %cmp22
  br i1 %or.cond, label %if.then24, label %land.lhs.true17.for.inc_crit_edge

land.lhs.true17.for.inc_crit_edge:                ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

if.then24:                                        ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #6
  %conv26 = zext i32 %17 to i64
  %26 = ptrtoint ptr %part_start to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %part_start, align 8
  %add27 = add i64 %27, %conv26
  store i64 %add27, ptr %part_start, align 8
  %28 = ptrtoint ptr %pdSize to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %pdSize, align 4
  %conv29 = zext i32 %29 to i64
  %30 = ptrtoint ptr %part_size to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 %conv29, ptr %part_size, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.then24, %land.lhs.true17.for.inc_crit_edge, %land.lhs.true14.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %res.1 = phi i32 [ 0, %if.then24 ], [ %res.0166, %land.lhs.true14.for.inc_crit_edge ], [ %res.0166, %land.lhs.true.for.inc_crit_edge ], [ %res.0166, %for.body.for.inc_crit_edge ], [ %res.0166, %land.lhs.true17.for.inc_crit_edge ]
  %incdec.ptr = getelementptr %struct.old_pmap_entry, ptr %p.0169, i32 1
  %inc = add nuw nsw i32 %i.0167, 1
  %exitcond175.not = icmp eq i32 %inc, 42
  br i1 %exitcond175.not, label %for.inc.if.then.i148_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.inc.if.then.i148_crit_edge:                   ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then.i148

sw.bb31:                                          ; preds = %if.end7
  %31 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %b_data, align 4
  %pmMapBlkCnt = getelementptr inbounds %struct.new_pmap, ptr %32, i32 0, i32 2
  %33 = ptrtoint ptr %pmMapBlkCnt to i32
  call void @__asan_loadN_noabort(i32 %33, i32 4)
  %34 = load i32, ptr %pmMapBlkCnt, align 1
  %s_fs_info42 = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %smax = call i32 @llvm.smax.i32(i32 %34, i32 0)
  br label %for.cond34

for.cond34:                                       ; preds = %if.end91.for.cond34_crit_edge, %sw.bb31
  %i.1 = phi i32 [ 0, %sw.bb31 ], [ %inc61, %if.end91.for.cond34_crit_edge ]
  %pm32.0 = phi ptr [ %32, %sw.bb31 ], [ %add.ptr85, %if.end91.for.cond34_crit_edge ]
  %bh.0 = phi ptr [ %call.i, %sw.bb31 ], [ %call.i146, %if.end91.for.cond34_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.1, i32 %smax)
  %exitcond.not = icmp eq i32 %i.1, %smax
  br i1 %exitcond.not, label %for.cond34.if.then.i148_crit_edge, label %for.body37

for.cond34.if.then.i148_crit_edge:                ; preds = %for.cond34
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then.i148

for.body37:                                       ; preds = %for.cond34
  %pmPartType = getelementptr inbounds %struct.new_pmap, ptr %pm32.0, i32 0, i32 6
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(9) %pmPartType, ptr noundef nonnull dereferenceable(9) @.str, i32 9) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool40.not = icmp eq i32 %bcmp, 0
  br i1 %tobool40.not, label %land.lhs.true41, label %for.body37.brelse.exit_crit_edge

for.body37.brelse.exit_crit_edge:                 ; preds = %for.body37
  call void @__sanitizer_cov_trace_pc() #6
  br label %brelse.exit

land.lhs.true41:                                  ; preds = %for.body37
  %35 = ptrtoint ptr %s_fs_info42 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %s_fs_info42, align 16
  %part43 = getelementptr inbounds %struct.hfs_sb_info, ptr %36, i32 0, i32 26
  %37 = ptrtoint ptr %part43 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %part43, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp44 = icmp slt i32 %38, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %i.1)
  %cmp49 = icmp eq i32 %38, %i.1
  %or.cond143 = select i1 %cmp44, i1 true, i1 %cmp49
  br i1 %or.cond143, label %if.then51, label %land.lhs.true41.brelse.exit_crit_edge

land.lhs.true41.brelse.exit_crit_edge:            ; preds = %land.lhs.true41
  call void @__sanitizer_cov_trace_pc() #6
  br label %brelse.exit

if.then51:                                        ; preds = %land.lhs.true41
  call void @__sanitizer_cov_trace_pc() #6
  %pmPyPartStart = getelementptr inbounds %struct.new_pmap, ptr %pm32.0, i32 0, i32 3
  %39 = ptrtoint ptr %pmPyPartStart to i32
  call void @__asan_loadN_noabort(i32 %39, i32 4)
  %40 = load i32, ptr %pmPyPartStart, align 1
  %conv52 = zext i32 %40 to i64
  %41 = ptrtoint ptr %part_start to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %part_start, align 8
  %add53 = add i64 %42, %conv52
  store i64 %add53, ptr %part_start, align 8
  %pmPartBlkCnt = getelementptr inbounds %struct.new_pmap, ptr %pm32.0, i32 0, i32 4
  %43 = ptrtoint ptr %pmPartBlkCnt to i32
  call void @__asan_loadN_noabort(i32 %43, i32 4)
  %44 = load i32, ptr %pmPartBlkCnt, align 1
  %conv54 = zext i32 %44 to i64
  %45 = ptrtoint ptr %part_size to i32
  call void @__asan_store8_noabort(i32 %45)
  store i64 %conv54, ptr %part_size, align 8
  br label %if.then.i148

brelse.exit:                                      ; preds = %land.lhs.true41.brelse.exit_crit_edge, %for.body37.brelse.exit_crit_edge
  tail call void @__brelse(ptr noundef nonnull %bh.0) #4
  %46 = ptrtoint ptr %part_start to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %part_start, align 8
  %narrow = add nuw i32 %i.1, 2
  %add60 = zext i32 %narrow to i64
  %add63 = add i64 %47, %add60
  %shl64 = shl i64 %add63, 9
  %48 = ptrtoint ptr %s_blocksize_bits to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %s_blocksize_bits, align 4
  %sh_prom67 = zext i8 %49 to i64
  %shr68 = ashr i64 %shl64, %sh_prom67
  %50 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %s_blocksize, align 16
  %52 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %s_bdev.i, align 4
  %call.i146 = tail call ptr @__bread_gfp(ptr noundef %53, i64 noundef %shr68, i32 noundef %51, i32 noundef 8) #4
  %cmp75.not = icmp eq ptr %call.i146, null
  br i1 %cmp75.not, label %brelse.exit.cleanup98_crit_edge, label %if.end91, !prof !11

brelse.exit.cleanup98_crit_edge:                  ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup98

if.end91:                                         ; preds = %brelse.exit
  %inc61 = add nuw i32 %i.1, 1
  %sub70 = add i32 %51, -1
  %54 = trunc i64 %shl64 to i32
  %conv73 = and i32 %sub70, %54
  %b_data84 = getelementptr inbounds %struct.buffer_head, ptr %call.i146, i32 0, i32 5
  %55 = ptrtoint ptr %b_data84 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %b_data84, align 4
  %add.ptr85 = getelementptr i8, ptr %56, i32 %conv73
  %57 = ptrtoint ptr %add.ptr85 to i32
  call void @__asan_loadN_noabort(i32 %57, i32 2)
  %58 = load i16, ptr %add.ptr85, align 1
  %cmp93.not = icmp eq i16 %58, 20557
  br i1 %cmp93.not, label %if.end91.for.cond34_crit_edge, label %if.end91.if.then.i148_crit_edge

if.end91.if.then.i148_crit_edge:                  ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then.i148

if.end91.for.cond34_crit_edge:                    ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond34

if.then.i148:                                     ; preds = %if.end91.if.then.i148_crit_edge, %if.then51, %for.cond34.if.then.i148_crit_edge, %for.inc.if.then.i148_crit_edge, %if.end7.if.then.i148_crit_edge
  %bh.3160 = phi ptr [ %call.i, %if.end7.if.then.i148_crit_edge ], [ %bh.0, %if.then51 ], [ %call.i, %for.inc.if.then.i148_crit_edge ], [ %call.i146, %if.end91.if.then.i148_crit_edge ], [ %bh.0, %for.cond34.if.then.i148_crit_edge ]
  %res.4158 = phi i32 [ -2, %if.end7.if.then.i148_crit_edge ], [ 0, %if.then51 ], [ %res.1, %for.inc.if.then.i148_crit_edge ], [ -2, %if.end91.if.then.i148_crit_edge ], [ -2, %for.cond34.if.then.i148_crit_edge ]
  tail call void @__brelse(ptr noundef nonnull %bh.3160) #4
  br label %cleanup98

cleanup98:                                        ; preds = %if.then.i148, %brelse.exit.cleanup98_crit_edge, %entry.cleanup98_crit_edge
  %retval.1 = phi i32 [ %res.4158, %if.then.i148 ], [ -5, %entry.cleanup98_crit_edge ], [ -5, %brelse.exit.cleanup98_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__bread_gfp(ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__brelse(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nofree nounwind readonly willreturn }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { nobuiltin }

!llvm.asan.globals = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/hfs/part_tbl.c", i32 97, i32 31}
!2 = !{i32 1, !"wchar_size", i32 2}
!3 = !{i32 1, !"min_enum_size", i32 4}
!4 = !{i32 8, !"branch-target-enforcement", i32 0}
!5 = !{i32 8, !"sign-return-address", i32 0}
!6 = !{i32 8, !"sign-return-address-all", i32 0}
!7 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!8 = !{i32 7, !"uwtable", i32 1}
!9 = !{i32 7, !"frame-pointer", i32 2}
!10 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!11 = !{!"branch_weights", i32 1, i32 2000}
