; ModuleID = '/llk/IR_all_yes/fs/xfs/xfs_pnfs.c_pt.bc'
source_filename = "../fs/xfs/xfs_pnfs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.81, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.82, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.83, ptr, %struct.address_space, %struct.list_head, %union.anon.84, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.81 = type { i32 }
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
%union.anon.82 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%struct.atomic_t = type { i32 }
%union.anon.83 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.84 = type { ptr }
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
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
%struct.xfs_sb = type { i32, i32, i64, i64, i64, %struct.uuid_t, i64, i64, i64, i64, i32, i32, i32, i32, i32, i16, i16, i16, i16, [12 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i64, i64, i64, i64, i64, i64, i16, i8, i8, i32, i32, i32, i8, i8, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, %struct.uuid_t }
%struct.xfs_bmbt_irec = type { i64, i64, i64, i32 }
%struct.xfs_mount = type { %struct.xfs_sb, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i8, i32, i32, i32, [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], i32, [2 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], i32, i64, [5 x i64], [5 x i64], %struct.xfs_ino_geometry, %struct.xfs_trans_resv, i32, i8, i8, i8, i8, i8, i8, i8, i8, [116 x i8], %struct.spinlock, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, %struct.atomic64_t, %struct.xarray, %struct.spinlock, i64, i64, i64, %struct.delayed_work, %struct.xfs_kobj, %struct.xfs_kobj, %struct.xfs_kobj, [1 x [4 x %struct.xfs_error_cfg]], %struct.xstats, i32, i32, %struct.spinlock, %struct.shrinker, %struct.work_struct, i32, %struct.mutex, ptr, %struct.xfs_kobj }
%struct.xfs_ino_geometry = type { i64, i32, i32, i32, i32, i32, i32, i32, [2 x i32], [2 x i32], i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.xfs_trans_resv = type { %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res }
%struct.xfs_trans_res = type { i32, i32, i32 }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.xfs_error_cfg = type { %struct.xfs_kobj, i32, i32 }
%struct.xstats = type { ptr, %struct.xfs_kobj }
%struct.xfs_kobj = type { %struct.kobject, %struct.completion }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.xfs_inode = type { ptr, ptr, ptr, ptr, i64, %struct.xfs_imap, ptr, ptr, %struct.xfs_ifork, ptr, %struct.mrlock_t, %struct.atomic_t, %struct.llist_node, i16, i16, %struct.spinlock, i32, i64, i64, i64, i32, i32, %union.anon.91, i8, i16, i64, %struct.timespec64, %struct.inode, %struct.spinlock, %struct.work_struct, %struct.list_head }
%struct.xfs_imap = type { i64, i16, i16 }
%struct.xfs_ifork = type { i64, ptr, i32, i32, %union.anon.90, i16, i8, i32 }
%union.anon.90 = type { ptr }
%struct.mrlock_t = type { %struct.rw_semaphore, i32 }
%struct.llist_node = type { ptr }
%union.anon.91 = type { i32 }
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, ptr }
%struct.iomap = type { i64, i64, i64, i16, i16, ptr, ptr, ptr, ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.xfs_trans = type { i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr, ptr, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.list_head, %struct.list_head, %struct.list_head, i32 }

@xfs_fs_get_uuid.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"Using experimental pNFS feature, use at your own risk!\00", [41 x i8] zeroinitializer }, align 32
@xfs_fs_map_blocks.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"fs/xfs/xfs_pnfs.c\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"!nimaps || imap.br_startblock != DELAYSTARTBLOCK\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"iattr->ia_valid & (ATTR_ATIME|ATTR_CTIME|ATTR_MTIME)\00", [43 x i8] zeroinitializer }, align 32
@xfs_fs_commit_blocks.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__seqprop_assert.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@hardirqs_enabled = external dso_local global i32, section ".data..percpu", align 4
@.str.4 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/seqlock.h\00", [40 x i8] zeroinitializer }, align 32
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.15, i32 61, i32 2 }
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.15, i32 170, i32 6 }
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.15, i32 180, i32 2 }
@___asan_gen_.15 = private constant [21 x i8] c"../fs/xfs/xfs_pnfs.c\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.15, i32 270, i32 2 }
@___asan_gen_.17 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.18 = private unnamed_addr constant [27 x i8] c"../include/linux/seqlock.h\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 271, i32 2 }
@llvm.compiler.used = appending global [5 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4], section "llvm.metadata"
@0 = internal global [5 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_break_leased_layouts(ptr noundef %inode, ptr nocapture noundef %iolock, ptr nocapture noundef writeonly %did_unlock) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %inode, i32 -312
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !25
  %i_flctx.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 45
  %0 = ptrtoint ptr %i_flctx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_flctx.i, align 4
  %tobool.not.i24 = icmp eq ptr %1, null
  br i1 %tobool.not.i24, label %entry.while.end_crit_edge, label %entry.land.lhs.true.i_crit_edge

entry.land.lhs.true.i_crit_edge:                  ; preds = %entry
  br label %land.lhs.true.i

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

land.lhs.true.i:                                  ; preds = %break_layout.exit20.land.lhs.true.i_crit_edge, %entry.land.lhs.true.i_crit_edge
  %2 = phi ptr [ %19, %break_layout.exit20.land.lhs.true.i_crit_edge ], [ %1, %entry.land.lhs.true.i_crit_edge ]
  %flc_lease.i = getelementptr inbounds %struct.file_lock_context, ptr %2, i32 0, i32 3
  %3 = ptrtoint ptr %flc_lease.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %flc_lease.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !26
  %cmp.i.not.i.i = icmp eq ptr %4, %flc_lease.i
  br i1 %cmp.i.not.i.i, label %list_empty_careful.exit.i, label %land.lhs.true.i.break_layout.exit_crit_edge

land.lhs.true.i.break_layout.exit_crit_edge:      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %break_layout.exit

list_empty_careful.exit.i:                        ; preds = %land.lhs.true.i
  %prev.i.i = getelementptr inbounds %struct.file_lock_context, ptr %2, i32 0, i32 3, i32 1
  %5 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i.i, align 4
  %cmp.i.not.i = icmp eq ptr %6, %flc_lease.i
  br i1 %cmp.i.not.i, label %list_empty_careful.exit.i.while.end_crit_edge, label %list_empty_careful.exit.i.break_layout.exit_crit_edge

list_empty_careful.exit.i.break_layout.exit_crit_edge: ; preds = %list_empty_careful.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %break_layout.exit

list_empty_careful.exit.i.while.end_crit_edge:    ; preds = %list_empty_careful.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

break_layout.exit:                                ; preds = %list_empty_careful.exit.i.break_layout.exit_crit_edge, %land.lhs.true.i.break_layout.exit_crit_edge
  %call6.i = tail call i32 @__break_lease(ptr noundef %inode, i32 noundef 2049, i32 noundef 2048) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %call6.i)
  %cmp = icmp eq i32 %call6.i, -11
  br i1 %cmp, label %while.body, label %break_layout.exit.while.end_crit_edge

break_layout.exit.while.end_crit_edge:            ; preds = %break_layout.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body:                                       ; preds = %break_layout.exit
  %7 = ptrtoint ptr %iolock to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %iolock, align 4
  tail call void @xfs_iunlock(ptr noundef %add.ptr.i, i32 noundef %8) #7
  %9 = ptrtoint ptr %did_unlock to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %did_unlock, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !25
  %10 = ptrtoint ptr %i_flctx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %i_flctx.i, align 4
  %tobool.not.i10 = icmp eq ptr %11, null
  br i1 %tobool.not.i10, label %while.body.break_layout.exit20_crit_edge, label %land.lhs.true.i13

while.body.break_layout.exit20_crit_edge:         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %break_layout.exit20

land.lhs.true.i13:                                ; preds = %while.body
  %flc_lease.i11 = getelementptr inbounds %struct.file_lock_context, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %flc_lease.i11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %flc_lease.i11, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !26
  %cmp.i.not.i.i12 = icmp eq ptr %13, %flc_lease.i11
  br i1 %cmp.i.not.i.i12, label %list_empty_careful.exit.i16, label %land.lhs.true.i13.if.then.i18_crit_edge

land.lhs.true.i13.if.then.i18_crit_edge:          ; preds = %land.lhs.true.i13
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i18

list_empty_careful.exit.i16:                      ; preds = %land.lhs.true.i13
  %prev.i.i14 = getelementptr inbounds %struct.file_lock_context, ptr %11, i32 0, i32 3, i32 1
  %14 = ptrtoint ptr %prev.i.i14 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %prev.i.i14, align 4
  %cmp.i.not.i15 = icmp eq ptr %15, %flc_lease.i11
  br i1 %cmp.i.not.i15, label %list_empty_careful.exit.i16.break_layout.exit20_crit_edge, label %list_empty_careful.exit.i16.if.then.i18_crit_edge

list_empty_careful.exit.i16.if.then.i18_crit_edge: ; preds = %list_empty_careful.exit.i16
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i18

list_empty_careful.exit.i16.break_layout.exit20_crit_edge: ; preds = %list_empty_careful.exit.i16
  call void @__sanitizer_cov_trace_pc() #9
  br label %break_layout.exit20

if.then.i18:                                      ; preds = %list_empty_careful.exit.i16.if.then.i18_crit_edge, %land.lhs.true.i13.if.then.i18_crit_edge
  %call6.i17 = tail call i32 @__break_lease(ptr noundef %inode, i32 noundef 1, i32 noundef 2048) #7
  br label %break_layout.exit20

break_layout.exit20:                              ; preds = %if.then.i18, %list_empty_careful.exit.i16.break_layout.exit20_crit_edge, %while.body.break_layout.exit20_crit_edge
  %16 = ptrtoint ptr %iolock to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %iolock, align 4
  %and = and i32 %17, -4
  %or = or i32 %and, 1
  store i32 %or, ptr %iolock, align 4
  tail call void @xfs_ilock(ptr noundef %add.ptr.i, i32 noundef %or) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !25
  %18 = ptrtoint ptr %i_flctx.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %i_flctx.i, align 4
  %tobool.not.i = icmp eq ptr %19, null
  br i1 %tobool.not.i, label %break_layout.exit20.while.end_crit_edge, label %break_layout.exit20.land.lhs.true.i_crit_edge

break_layout.exit20.land.lhs.true.i_crit_edge:    ; preds = %break_layout.exit20
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true.i

break_layout.exit20.while.end_crit_edge:          ; preds = %break_layout.exit20
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.end:                                        ; preds = %break_layout.exit20.while.end_crit_edge, %break_layout.exit.while.end_crit_edge, %list_empty_careful.exit.i.while.end_crit_edge, %entry.while.end_crit_edge
  %retval.0.i23 = phi i32 [ 0, %entry.while.end_crit_edge ], [ 0, %break_layout.exit20.while.end_crit_edge ], [ 0, %list_empty_careful.exit.i.while.end_crit_edge ], [ %call6.i, %break_layout.exit.while.end_crit_edge ]
  ret i32 %retval.0.i23
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_iunlock(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_ilock(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_fs_get_uuid(ptr nocapture noundef readonly %sb, ptr nocapture noundef writeonly %buf, ptr nocapture noundef %len, ptr nocapture noundef writeonly %offset) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info, align 16
  %.b16 = load i1, ptr @xfs_fs_get_uuid.__already_done, align 1
  br i1 %.b16, label %entry.if.end_crit_edge, label %if.then, !prof !27

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @xfs_fs_get_uuid.__already_done, align 1
  tail call void (ptr, ptr, ...) @xfs_notice(ptr noundef %1, ptr noundef nonnull @.str) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %2 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %3)
  %cmp = icmp ult i32 %3, 16
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end12

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end12:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %sb_uuid = getelementptr inbounds %struct.xfs_sb, ptr %1, i32 0, i32 5
  %4 = call ptr @memcpy(ptr %buf, ptr %sb_uuid, i32 16)
  %5 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 16, ptr %len, align 4
  %6 = ptrtoint ptr %offset to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 32, ptr %offset, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end12 ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_notice(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_fs_map_blocks(ptr noundef %inode, i64 noundef %offset, i64 noundef %length, ptr noundef %iomap, i1 noundef zeroext %write, ptr nocapture noundef writeonly %device_generation) local_unnamed_addr #0 align 64 {
entry:
  %imap = alloca %struct.xfs_bmbt_irec, align 8
  %nimaps = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %inode, i32 -312
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %imap) #7
  %2 = call ptr @memset(ptr %imap, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nimaps) #7
  %3 = ptrtoint ptr %nimaps to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1, ptr %nimaps, align 4
  %m_opstate.i = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 66
  %4 = ptrtoint ptr %m_opstate.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %m_opstate.i, align 4
  %6 = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.i.not = icmp eq i32 %6, 0
  br i1 %tobool.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %i_diflags = getelementptr i8, ptr %inode, i32 -26
  %7 = ptrtoint ptr %i_diflags to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %i_diflags, align 2
  %9 = and i16 %8, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %tobool.not = icmp eq i16 %9, 0
  br i1 %tobool.not, label %if.end.if.end5_crit_edge, label %land.lhs.true

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

land.lhs.true:                                    ; preds = %if.end
  %m_rtdev_targp = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 15
  %10 = ptrtoint ptr %m_rtdev_targp to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %m_rtdev_targp, align 64
  %tobool3.not = icmp eq ptr %11, null
  br i1 %tobool3.not, label %land.lhs.true.if.end5_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true.if.end5_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

if.end5:                                          ; preds = %land.lhs.true.if.end5_crit_edge, %if.end.if.end5_crit_edge
  %i_diflags2.i = getelementptr i8, ptr %inode, i32 -24
  %12 = ptrtoint ptr %i_diflags2.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %i_diflags2.i, align 8
  %and.i = and i64 %13, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i215.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i215.not, label %if.end8, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end8:                                          ; preds = %if.end5
  tail call void @xfs_ilock(ptr noundef %add.ptr.i, i32 noundef 1) #7
  %m_super = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 1
  %14 = ptrtoint ptr %m_super to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %m_super, align 8
  %s_maxbytes = getelementptr inbounds %struct.super_block, ptr %15, i32 0, i32 4
  %16 = ptrtoint ptr %s_maxbytes to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %s_maxbytes, align 8
  br i1 %write, label %if.end8.if.end15_crit_edge, label %if.then10

if.end8.if.end15_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15

if.then10:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  %call11 = tail call fastcc i64 @i_size_read(ptr noundef %inode)
  %sub = add i64 %call11, -1
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %18 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %i_sb, align 4
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %s_blocksize, align 16
  %sub12 = add i32 %21, -1
  %conv13 = zext i32 %sub12 to i64
  %or = or i64 %sub, %conv13
  %add = add i64 %or, 1
  %22 = tail call i64 @llvm.smax.i64(i64 %17, i64 %add)
  br label %if.end15

if.end15:                                         ; preds = %if.then10, %if.end8.if.end15_crit_edge
  %limit.0 = phi i64 [ %17, %if.end8.if.end15_crit_edge ], [ %22, %if.then10 ]
  call void @__sanitizer_cov_trace_cmp8(i64 %limit.0, i64 %offset)
  %cmp16 = icmp slt i64 %limit.0, %offset
  br i1 %cmp16, label %if.end15.out_unlock_crit_edge, label %if.end19

if.end15.out_unlock_crit_edge:                    ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_unlock

if.end19:                                         ; preds = %if.end15
  %sub20 = sub i64 %limit.0, %length
  call void @__sanitizer_cov_trace_cmp8(i64 %sub20, i64 %offset)
  %cmp21 = icmp ult i64 %sub20, %offset
  %sub24 = sub i64 %limit.0, %offset
  %spec.select = select i1 %cmp21, i64 %sub24, i64 %length
  %i_mapping = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 9
  %23 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %i_mapping, align 8
  %call.i = tail call i32 @filemap_write_and_wait_range(ptr noundef %24, i64 noundef 0, i64 noundef 9223372036854775807) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool27.not = icmp eq i32 %call.i, 0
  br i1 %tobool27.not, label %if.end29, label %if.end19.out_unlock_crit_edge

if.end19.out_unlock_crit_edge:                    ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_unlock

if.end29:                                         ; preds = %if.end19
  %25 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %i_mapping, align 8
  %call31 = tail call i32 @invalidate_inode_pages2(ptr noundef %26) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.end75.critedge, label %land.rhs

land.rhs:                                         ; preds = %if.end29
  %.b213 = load i1, ptr @xfs_fs_map_blocks.__already_done, align 1
  br i1 %.b213, label %land.rhs.out_unlock_crit_edge, label %if.then42, !prof !27

land.rhs.out_unlock_crit_edge:                    ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_unlock

if.then42:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @xfs_fs_map_blocks.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 170, i32 noundef 9, ptr noundef null) #7
  br label %out_unlock

if.end75.critedge:                                ; preds = %if.end29
  %add76 = add i64 %spec.select, %offset
  %m_blockmask = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 31
  %27 = ptrtoint ptr %m_blockmask to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %m_blockmask, align 8
  %conv77 = zext i32 %28 to i64
  %add78 = add i64 %add76, %conv77
  %sb_blocklog = getelementptr inbounds %struct.xfs_sb, ptr %1, i32 0, i32 20
  %29 = ptrtoint ptr %sb_blocklog to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %sb_blocklog, align 8
  %sh_prom = zext i8 %30 to i64
  %shr = lshr i64 %add78, %sh_prom
  %shr84 = lshr i64 %offset, %sh_prom
  %call85 = tail call i32 @xfs_ilock_data_map_shared(ptr noundef %add.ptr.i) #7
  %sub86 = sub i64 %shr, %shr84
  %call87 = call i32 @xfs_bmapi_read(ptr noundef %add.ptr.i, i64 noundef %shr84, i64 noundef %sub86, ptr noundef nonnull %imap, ptr noundef nonnull %nimaps, i32 noundef 1) #7
  %31 = ptrtoint ptr %nimaps to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %nimaps, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool88.not = icmp eq i32 %32, 0
  br i1 %tobool88.not, label %if.end75.critedge.cond.end99_crit_edge, label %lor.rhs

if.end75.critedge.cond.end99_crit_edge:           ; preds = %if.end75.critedge
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end99

lor.rhs:                                          ; preds = %if.end75.critedge
  %br_startblock = getelementptr inbounds %struct.xfs_bmbt_irec, ptr %imap, i32 0, i32 1
  %33 = ptrtoint ptr %br_startblock to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %br_startblock, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %34)
  %cmp89.not = icmp eq i64 %34, -1
  br i1 %cmp89.not, label %cond.false98, label %lor.rhs.cond.end99_crit_edge, !prof !28

lor.rhs.cond.end99_crit_edge:                     ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end99

cond.false98:                                     ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #9
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 180) #7
  br label %cond.end99

cond.end99:                                       ; preds = %cond.false98, %lor.rhs.cond.end99_crit_edge, %if.end75.critedge.cond.end99_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call87)
  %tobool100.not = icmp eq i32 %call87, 0
  %35 = and i1 %tobool100.not, %write
  br i1 %35, label %land.lhs.true104, label %cond.end99.if.else145_crit_edge

cond.end99.if.else145_crit_edge:                  ; preds = %cond.end99
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else145

land.lhs.true104:                                 ; preds = %cond.end99
  %36 = ptrtoint ptr %nimaps to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %nimaps, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool105.not = icmp eq i32 %37, 0
  br i1 %tobool105.not, label %land.lhs.true104.if.then109_crit_edge, label %lor.lhs.false

land.lhs.true104.if.then109_crit_edge:            ; preds = %land.lhs.true104
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then109

lor.lhs.false:                                    ; preds = %land.lhs.true104
  %br_startblock106 = getelementptr inbounds %struct.xfs_bmbt_irec, ptr %imap, i32 0, i32 1
  %38 = ptrtoint ptr %br_startblock106 to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %br_startblock106, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -2, i64 %39)
  %cmp107 = icmp eq i64 %39, -2
  br i1 %cmp107, label %lor.lhs.false.if.then109_crit_edge, label %lor.lhs.false.if.else145_crit_edge

lor.lhs.false.if.else145_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else145

lor.lhs.false.if.then109_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then109

if.then109:                                       ; preds = %lor.lhs.false.if.then109_crit_edge, %land.lhs.true104.if.then109_crit_edge
  %40 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %inode, align 8
  %42 = and i16 %41, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %42)
  %cmp.i = icmp eq i16 %42, -32768
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.then109
  call void @__sanitizer_cov_trace_pc() #9
  %call3.i = call fastcc i64 @i_size_read(ptr noundef %inode) #7
  br label %XFS_ISIZE.exit

if.end.i:                                         ; preds = %if.then109
  call void @__sanitizer_cov_trace_pc() #9
  %i_disk_size.i = getelementptr i8, ptr %inode, i32 -56
  %43 = ptrtoint ptr %i_disk_size.i to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %i_disk_size.i, align 8
  br label %XFS_ISIZE.exit

XFS_ISIZE.exit:                                   ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i64 [ %call3.i, %if.then.i ], [ %44, %if.end.i ]
  call void @__sanitizer_cov_trace_cmp8(i64 %add76, i64 %retval.0.i)
  %cmp112 = icmp ugt i64 %add76, %retval.0.i
  br i1 %cmp112, label %if.then114, label %if.else

if.then114:                                       ; preds = %XFS_ISIZE.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call115 = call i64 @xfs_iomap_eof_align_last_fsb(ptr noundef %add.ptr.i, i64 noundef %shr) #7
  br label %if.end131

if.else:                                          ; preds = %XFS_ISIZE.exit
  %45 = ptrtoint ptr %nimaps to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %nimaps, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool116.not = icmp eq i32 %46, 0
  br i1 %tobool116.not, label %if.else.if.end131_crit_edge, label %land.lhs.true117

if.else.if.end131_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end131

land.lhs.true117:                                 ; preds = %if.else
  %br_startblock118 = getelementptr inbounds %struct.xfs_bmbt_irec, ptr %imap, i32 0, i32 1
  %47 = ptrtoint ptr %br_startblock118 to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %br_startblock118, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -2, i64 %48)
  %cmp119 = icmp eq i64 %48, -2
  br i1 %cmp119, label %if.then121, label %land.lhs.true117.if.end131_crit_edge

land.lhs.true117.if.end131_crit_edge:             ; preds = %land.lhs.true117
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end131

if.then121:                                       ; preds = %land.lhs.true117
  call void @__sanitizer_cov_trace_pc() #9
  %49 = ptrtoint ptr %imap to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %imap, align 8
  %br_blockcount = getelementptr inbounds %struct.xfs_bmbt_irec, ptr %imap, i32 0, i32 2
  %51 = ptrtoint ptr %br_blockcount to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %br_blockcount, align 8
  %add122 = add i64 %52, %50
  %53 = call i64 @llvm.umin.i64(i64 %shr, i64 %add122)
  br label %if.end131

if.end131:                                        ; preds = %if.then121, %land.lhs.true117.if.end131_crit_edge, %if.else.if.end131_crit_edge, %if.then114
  %end_fsb.0 = phi i64 [ %call115, %if.then114 ], [ %53, %if.then121 ], [ %shr, %land.lhs.true117.if.end131_crit_edge ], [ %shr, %if.else.if.end131_crit_edge ]
  call void @xfs_iunlock(ptr noundef %add.ptr.i, i32 noundef %call85) #7
  %sub132 = sub i64 %end_fsb.0, %shr84
  %call133 = call i32 @xfs_iomap_write_direct(ptr noundef %add.ptr.i, i64 noundef %shr84, i64 noundef %sub132, i32 noundef 0, ptr noundef nonnull %imap) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call133)
  %tobool134.not = icmp eq i32 %call133, 0
  br i1 %tobool134.not, label %if.end136, label %if.end131.out_unlock_crit_edge

if.end131.out_unlock_crit_edge:                   ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_unlock

if.end136:                                        ; preds = %if.end131
  %call137 = call fastcc i32 @xfs_fs_map_update_inode(ptr noundef %add.ptr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call137)
  %tobool138.not = icmp eq i32 %call137, 0
  br i1 %tobool138.not, label %if.end141, label %if.end136.out_unlock_crit_edge

if.end136.out_unlock_crit_edge:                   ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_unlock

if.end141:                                        ; preds = %if.end136
  %call140 = call i32 @xfs_log_force_inode(ptr noundef %add.ptr.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call140)
  %tobool142.not = icmp eq i32 %call140, 0
  br i1 %tobool142.not, label %if.end141.if.end146_crit_edge, label %if.end141.out_unlock_crit_edge

if.end141.out_unlock_crit_edge:                   ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_unlock

if.end141.if.end146_crit_edge:                    ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end146

if.else145:                                       ; preds = %lor.lhs.false.if.else145_crit_edge, %cond.end99.if.else145_crit_edge
  call void @xfs_iunlock(ptr noundef %add.ptr.i, i32 noundef %call85) #7
  br label %if.end146

if.end146:                                        ; preds = %if.else145, %if.end141.if.end146_crit_edge
  call void @xfs_iunlock(ptr noundef %add.ptr.i, i32 noundef 1) #7
  %call147 = call i32 @xfs_bmbt_to_iomap(ptr noundef %add.ptr.i, ptr noundef %iomap, ptr noundef nonnull %imap, i32 noundef 0, i16 noundef zeroext 0) #7
  %m_generation = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 98
  %54 = ptrtoint ptr %m_generation to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %m_generation, align 4
  %56 = ptrtoint ptr %device_generation to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %device_generation, align 4
  br label %cleanup

out_unlock:                                       ; preds = %if.end141.out_unlock_crit_edge, %if.end136.out_unlock_crit_edge, %if.end131.out_unlock_crit_edge, %if.then42, %land.rhs.out_unlock_crit_edge, %if.end19.out_unlock_crit_edge, %if.end15.out_unlock_crit_edge
  %error.1 = phi i32 [ -22, %if.end15.out_unlock_crit_edge ], [ %call.i, %if.end19.out_unlock_crit_edge ], [ %call133, %if.end131.out_unlock_crit_edge ], [ %call140, %if.end141.out_unlock_crit_edge ], [ %call31, %if.then42 ], [ %call31, %land.rhs.out_unlock_crit_edge ], [ %call137, %if.end136.out_unlock_crit_edge ]
  call void @xfs_iunlock(ptr noundef %add.ptr.i, i32 noundef 1) #7
  br label %cleanup

cleanup:                                          ; preds = %out_unlock, %if.end146, %if.end5.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %error.1, %out_unlock ], [ %call147, %if.end146 ], [ -5, %entry.cleanup_crit_edge ], [ -6, %land.lhs.true.cleanup_crit_edge ], [ -6, %if.end5.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nimaps) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %imap) #7
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i64 @i_size_read(ptr noundef %inode) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %i_size_seqcount = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23
  %dep_map.c48.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23, i32 1
  %i_size18 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  br label %do.body

do.body:                                          ; preds = %while.end.do.body_crit_edge, %entry
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #7, !srcloc !29
  %and.i.i = and i32 %0, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %do.body24.critedge.i

if.then.i:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @trace_hardirqs_off() #7
  %1 = tail call ptr @llvm.returnaddress(i32 0) #7
  %2 = ptrtoint ptr %1 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %2) #7
  tail call void @lock_release(ptr noundef %dep_map.c48.i, i32 noundef %2) #7
  tail call void @trace_hardirqs_on() #7
  br label %do.body24.i

do.body24.critedge.i:                             ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %3 = tail call ptr @llvm.returnaddress(i32 0) #7
  %4 = ptrtoint ptr %3 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %4) #7
  tail call void @lock_release(ptr noundef %dep_map.c48.i, i32 noundef %4) #7
  br label %do.body24.i

do.body24.i:                                      ; preds = %do.body24.critedge.i, %if.then.i
  %5 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #7, !srcloc !30
  %and.i.i.i = and i32 %5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool32.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool32.not.i, label %if.then36.i, label %do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge, !prof !28

do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge: ; preds = %do.body24.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %seqcount_lockdep_reader_access.exit

if.then36.i:                                      ; preds = %do.body24.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @warn_bogus_irq_restore() #7
  br label %seqcount_lockdep_reader_access.exit

seqcount_lockdep_reader_access.exit:              ; preds = %if.then36.i, %do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #7, !srcloc !31
  %6 = ptrtoint ptr %i_size_seqcount to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %i_size_seqcount, align 4
  %and29 = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool.not30 = icmp eq i32 %and29, 0
  br i1 %tobool.not30, label %seqcount_lockdep_reader_access.exit.while.end_crit_edge, label %seqcount_lockdep_reader_access.exit.do.end_crit_edge

seqcount_lockdep_reader_access.exit.do.end_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit
  br label %do.end

seqcount_lockdep_reader_access.exit.while.end_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

do.end:                                           ; preds = %do.end.do.end_crit_edge, %seqcount_lockdep_reader_access.exit.do.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !32
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #7, !srcloc !33
  %8 = ptrtoint ptr %i_size_seqcount to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %i_size_seqcount, align 4
  %and = and i32 %9, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.end.while.end_crit_edge, label %do.end.do.end_crit_edge

do.end.do.end_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end.while.end_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.end:                                        ; preds = %do.end.while.end_crit_edge, %seqcount_lockdep_reader_access.exit.while.end_crit_edge
  %.lcssa = phi i32 [ %7, %seqcount_lockdep_reader_access.exit.while.end_crit_edge ], [ %9, %do.end.while.end_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !34
  %10 = ptrtoint ptr %i_size18 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %i_size18, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !35
  %12 = ptrtoint ptr %i_size_seqcount to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %i_size_seqcount, align 4
  %cmp.i.i.not = icmp eq i32 %13, %.lcssa
  br i1 %cmp.i.i.not, label %do.end24, label %while.end.do.body_crit_edge

while.end.do.body_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

do.end24:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  ret i64 %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @invalidate_inode_pages2(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_ilock_data_map_shared(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_bmapi_read(ptr noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @assfail(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @xfs_iomap_eof_align_last_fsb(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_iomap_write_direct(ptr noundef, i64 noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xfs_fs_map_update_inode(ptr noundef %ip) unnamed_addr #0 align 64 {
entry:
  %tp = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tp) #7
  %0 = ptrtoint ptr %tp to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %tp, align 4, !annotation !36
  %1 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ip, align 8
  %tr_writeid = getelementptr inbounds %struct.xfs_mount, ptr %2, i32 0, i32 65, i32 13
  %call = call i32 @xfs_trans_alloc(ptr noundef %2, ptr noundef %tr_writeid, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %tp) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @xfs_ilock(ptr noundef %ip, i32 noundef 4) #7
  %3 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %tp, align 4
  call void @xfs_trans_ijoin(ptr noundef %4, ptr noundef %ip, i32 noundef 4) #7
  %i_vnode.i = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 27
  %5 = ptrtoint ptr %i_vnode.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %i_vnode.i, align 8
  %7 = and i16 %6, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool8.not = icmp eq i16 %7, 0
  %spec.select.v = select i1 %tobool8.not, i16 -2049, i16 -3073
  %spec.select = and i16 %6, %spec.select.v
  %8 = ptrtoint ptr %i_vnode.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %spec.select, ptr %i_vnode.i, align 8
  %9 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %tp, align 4
  call void @xfs_trans_ichgtime(ptr noundef %10, ptr noundef %ip, i32 noundef 3) #7
  %i_diflags = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 24
  %11 = ptrtoint ptr %i_diflags to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %i_diflags, align 2
  %13 = or i16 %12, 2
  store i16 %13, ptr %i_diflags, align 2
  %14 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %tp, align 4
  call void @xfs_trans_log_inode(ptr noundef %15, ptr noundef %ip, i32 noundef 1) #7
  %16 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %tp, align 4
  %call18 = call i32 @xfs_trans_commit(ptr noundef %17) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call18, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tp) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_log_force_inode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_bmbt_to_iomap(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_fs_commit_blocks(ptr noundef %inode, ptr nocapture noundef readonly %maps, i32 noundef %nr_maps, ptr noundef %iattr) local_unnamed_addr #0 align 64 {
entry:
  %imap.i = alloca %struct.xfs_bmbt_irec, align 8
  %nimaps.i = alloca i32, align 4
  %tp = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %inode, i32 -312
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tp) #7
  %2 = ptrtoint ptr %tp to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %tp, align 4, !annotation !36
  %3 = ptrtoint ptr %iattr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %iattr, align 8
  %and = and i32 %4, 112
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %cond.false, label %entry.cond.end_crit_edge, !prof !28

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 270) #7
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  tail call void @xfs_ilock(ptr noundef %add.ptr.i, i32 noundef 1) #7
  %call3 = tail call fastcc i64 @i_size_read(ptr noundef %inode)
  %5 = ptrtoint ptr %iattr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %iattr, align 8
  %and5 = and i32 %6, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %cond.end.if.end_crit_edge, label %land.lhs.true

cond.end.if.end_crit_edge:                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true:                                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  %ia_size = getelementptr inbounds %struct.iattr, ptr %iattr, i32 0, i32 4
  %7 = ptrtoint ptr %ia_size to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %ia_size, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %8, i64 %call3)
  %cmp = icmp sgt i64 %8, %call3
  %9 = tail call i64 @llvm.smax.i64(i64 %8, i64 %call3)
  br label %if.end

if.end:                                           ; preds = %land.lhs.true, %cond.end.if.end_crit_edge
  %update_isize.0.off0 = phi i1 [ false, %cond.end.if.end_crit_edge ], [ %cmp, %land.lhs.true ]
  %size.0 = phi i64 [ %call3, %cond.end.if.end_crit_edge ], [ %9, %land.lhs.true ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr_maps)
  %cmp8151 = icmp sgt i32 %nr_maps, 0
  br i1 %cmp8151, label %for.body.lr.ph, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %i_mapping = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 9
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0153 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %offset = getelementptr %struct.iomap, ptr %maps, i32 %i.0153, i32 1
  %10 = ptrtoint ptr %offset to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %offset, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %11, i64 %size.0)
  %cmp9 = icmp ugt i64 %11, %size.0
  br i1 %cmp9, label %for.body.for.inc_crit_edge, label %if.end11

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end11:                                         ; preds = %for.body
  %length13 = getelementptr %struct.iomap, ptr %maps, i32 %i.0153, i32 2
  %12 = ptrtoint ptr %length13 to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %length13, align 8
  %add = add i64 %13, %11
  %14 = tail call i64 @llvm.umin.i64(i64 %add, i64 %size.0)
  %sub = sub i64 %14, %11
  call void @__sanitizer_cov_trace_cmp8(i64 %14, i64 %11)
  %tobool17.not = icmp eq i64 %14, %11
  br i1 %tobool17.not, label %if.end11.for.inc_crit_edge, label %if.end19

if.end11.for.inc_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end19:                                         ; preds = %if.end11
  %15 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %i_mapping, align 8
  %shr = lshr i64 %11, 12
  %conv = trunc i64 %shr to i32
  %sub20 = add i64 %14, 17592186044415
  %shr21 = lshr i64 %sub20, 12
  %conv22 = trunc i64 %shr21 to i32
  %call23 = tail call i32 @invalidate_inode_pages2_range(ptr noundef %16, i32 noundef %conv, i32 noundef %conv22) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end19.if.end62_crit_edge, label %land.rhs

if.end19.if.end62_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end62

land.rhs:                                         ; preds = %if.end19
  %.b142 = load i1, ptr @xfs_fs_commit_blocks.__already_done, align 1
  br i1 %.b142, label %land.rhs.if.end62_crit_edge, label %if.then40, !prof !27

land.rhs.if.end62_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end62

if.then40:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @xfs_fs_commit_blocks.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 301, i32 noundef 9, ptr noundef null) #7
  br label %if.end62

if.end62:                                         ; preds = %if.then40, %land.rhs.if.end62_crit_edge, %if.end19.if.end62_crit_edge
  %call70 = tail call i32 @xfs_iomap_write_unwritten(ptr noundef %add.ptr.i, i64 noundef %11, i64 noundef %sub, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70)
  %tobool71.not = icmp eq i32 %call70, 0
  br i1 %tobool71.not, label %if.end62.for.inc_crit_edge, label %if.end62.cleanup93_crit_edge

if.end62.cleanup93_crit_edge:                     ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup93

if.end62.for.inc_crit_edge:                       ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

for.inc:                                          ; preds = %if.end62.for.inc_crit_edge, %if.end11.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0153, 1
  %exitcond.not = icmp eq i32 %inc, %nr_maps
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end.for.end_crit_edge
  br i1 %update_isize.0.off0, label %if.then77, label %for.end.if.end82_crit_edge

for.end.if.end82_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end82

if.then77:                                        ; preds = %for.end
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %imap.i) #7
  %17 = call ptr @memset(ptr %imap.i, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nimaps.i) #7
  %18 = ptrtoint ptr %nimaps.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %nimaps.i, align 4
  tail call void @xfs_ilock(ptr noundef %add.ptr.i, i32 noundef 8) #7
  %sub.i = add i64 %size.0, -1
  %19 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %add.ptr.i, align 8
  %sb_blocklog.i = getelementptr inbounds %struct.xfs_sb, ptr %20, i32 0, i32 20
  %21 = ptrtoint ptr %sb_blocklog.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %sb_blocklog.i, align 8
  %sh_prom.i = zext i8 %22 to i64
  %shr.i = lshr i64 %sub.i, %sh_prom.i
  %call.i = call i32 @xfs_bmapi_read(ptr noundef %add.ptr.i, i64 noundef %shr.i, i64 noundef 1, ptr noundef nonnull %imap.i, ptr noundef nonnull %nimaps.i, i32 noundef 0) #7
  call void @xfs_iunlock(ptr noundef %add.ptr.i, i32 noundef 8) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then77.xfs_pnfs_validate_isize.exit.thread_crit_edge

if.then77.xfs_pnfs_validate_isize.exit.thread_crit_edge: ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #9
  br label %xfs_pnfs_validate_isize.exit.thread

if.end.i:                                         ; preds = %if.then77
  %br_startblock.i = getelementptr inbounds %struct.xfs_bmbt_irec, ptr %imap.i, i32 0, i32 1
  %23 = ptrtoint ptr %br_startblock.i to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %br_startblock.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -3, i64 %24)
  %switch.i = icmp ugt i64 %24, -3
  br i1 %switch.i, label %if.end.i.xfs_pnfs_validate_isize.exit.thread_crit_edge, label %lor.lhs.false5.i

if.end.i.xfs_pnfs_validate_isize.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %xfs_pnfs_validate_isize.exit.thread

lor.lhs.false5.i:                                 ; preds = %if.end.i
  %br_state.i = getelementptr inbounds %struct.xfs_bmbt_irec, ptr %imap.i, i32 0, i32 3
  %25 = ptrtoint ptr %br_state.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %br_state.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %26)
  %cmp6.i = icmp eq i32 %26, 1
  br i1 %cmp6.i, label %lor.lhs.false5.i.xfs_pnfs_validate_isize.exit.thread_crit_edge, label %xfs_pnfs_validate_isize.exit

lor.lhs.false5.i.xfs_pnfs_validate_isize.exit.thread_crit_edge: ; preds = %lor.lhs.false5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %xfs_pnfs_validate_isize.exit.thread

xfs_pnfs_validate_isize.exit.thread:              ; preds = %lor.lhs.false5.i.xfs_pnfs_validate_isize.exit.thread_crit_edge, %if.end.i.xfs_pnfs_validate_isize.exit.thread_crit_edge, %if.then77.xfs_pnfs_validate_isize.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ -5, %if.end.i.xfs_pnfs_validate_isize.exit.thread_crit_edge ], [ %call.i, %if.then77.xfs_pnfs_validate_isize.exit.thread_crit_edge ], [ -5, %lor.lhs.false5.i.xfs_pnfs_validate_isize.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nimaps.i) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %imap.i) #7
  br label %cleanup93

xfs_pnfs_validate_isize.exit:                     ; preds = %lor.lhs.false5.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nimaps.i) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %imap.i) #7
  br label %if.end82

if.end82:                                         ; preds = %xfs_pnfs_validate_isize.exit, %for.end.if.end82_crit_edge
  %tr_ichange = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 65, i32 10
  %call83 = call i32 @xfs_trans_alloc(ptr noundef %1, ptr noundef %tr_ichange, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %tp) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call83)
  %tobool84.not = icmp eq i32 %call83, 0
  br i1 %tobool84.not, label %if.end86, label %if.end82.cleanup93_crit_edge

if.end82.cleanup93_crit_edge:                     ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup93

if.end86:                                         ; preds = %if.end82
  call void @xfs_ilock(ptr noundef %add.ptr.i, i32 noundef 4) #7
  %27 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %tp, align 4
  call void @xfs_trans_ijoin(ptr noundef %28, ptr noundef %add.ptr.i, i32 noundef 4) #7
  %29 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %tp, align 4
  call void @xfs_trans_log_inode(ptr noundef %30, ptr noundef %add.ptr.i, i32 noundef 1) #7
  call void @xfs_setattr_time(ptr noundef %add.ptr.i, ptr noundef %iattr) #7
  br i1 %update_isize.0.off0, label %if.then88, label %if.end86.if.end91_crit_edge

if.end86.if.end91_crit_edge:                      ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end91

if.then88:                                        ; preds = %if.end86
  %ia_size89 = getelementptr inbounds %struct.iattr, ptr %iattr, i32 0, i32 4
  %31 = ptrtoint ptr %ia_size89 to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %ia_size89, align 8
  %33 = call i32 @llvm.read_register.i32(metadata !15) #7
  %and.i.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %36, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !37
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %37 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool.not.i.i = icmp eq i32 %37, 0
  br i1 %tobool.not.i.i, label %if.then88.i_size_write.exit_crit_edge, label %land.lhs.true.i.i

if.then88.i_size_write.exit_crit_edge:            ; preds = %if.then88
  call void @__sanitizer_cov_trace_pc() #9
  br label %i_size_write.exit

land.lhs.true.i.i:                                ; preds = %if.then88
  %38 = call i32 @llvm.read_register.i32(metadata !15) #7
  %and.i.i.i.i.i = and i32 %38, -16384
  %39 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %41, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !38
  %42 = call i32 @llvm.read_register.i32(metadata !15) #7
  %and.i.i.i = and i32 %42, -16384
  %43 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %43, i32 0, i32 3
  %44 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %45
  %46 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx.i.i, align 4
  %add.i28.i = add i32 %47, ptrtoint (ptr @lockdep_recursion to i32)
  %48 = inttoptr i32 %add.i28.i to ptr
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile i32, ptr %48, align 4
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !39
  %51 = call i32 @llvm.read_register.i32(metadata !15) #7
  %and.i.i.i7.i.i = and i32 %51, -16384
  %52 = inttoptr i32 %and.i.i.i7.i.i to ptr
  %preempt_count.i.i8.i.i = getelementptr inbounds %struct.thread_info, ptr %52, i32 0, i32 1
  %53 = ptrtoint ptr %preempt_count.i.i8.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile i32, ptr %preempt_count.i.i8.i.i, align 4
  %sub.i.i.i = add i32 %54, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i8.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool20.not.i.i = icmp eq i32 %50, 0
  br i1 %tobool20.not.i.i, label %land.rhs.i.i, label %land.lhs.true.i.i.i_size_write.exit_crit_edge

land.lhs.true.i.i.i_size_write.exit_crit_edge:    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %i_size_write.exit

land.rhs.i.i:                                     ; preds = %land.lhs.true.i.i
  %55 = call i32 @llvm.read_register.i32(metadata !15) #7
  %and.i.i.i29.i = and i32 %55, -16384
  %56 = inttoptr i32 %and.i.i.i29.i to ptr
  %preempt_count.i.i30.i = getelementptr inbounds %struct.thread_info, ptr %56, i32 0, i32 1
  %57 = ptrtoint ptr %preempt_count.i.i30.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load volatile i32, ptr %preempt_count.i.i30.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %cmp.i.i = icmp eq i32 %58, 0
  br i1 %cmp.i.i, label %land.rhs22.i.i, label %land.rhs.i.i.i_size_write.exit_crit_edge

land.rhs.i.i.i_size_write.exit_crit_edge:         ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %i_size_write.exit

land.rhs22.i.i:                                   ; preds = %land.rhs.i.i
  %59 = call i32 @llvm.read_register.i32(metadata !15) #7
  %and.i.i.i9.i.i = and i32 %59, -16384
  %60 = inttoptr i32 %and.i.i.i9.i.i to ptr
  %preempt_count.i.i10.i.i = getelementptr inbounds %struct.thread_info, ptr %60, i32 0, i32 1
  %61 = ptrtoint ptr %preempt_count.i.i10.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load volatile i32, ptr %preempt_count.i.i10.i.i, align 4
  %add.i11.i.i = add i32 %62, 1
  store volatile i32 %add.i11.i.i, ptr %preempt_count.i.i10.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !40
  %63 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %cpu.i.i, align 4
  %arrayidx46.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %64
  %65 = ptrtoint ptr %arrayidx46.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %arrayidx46.i.i, align 4
  %add47.i.i = add i32 %66, ptrtoint (ptr @hardirqs_enabled to i32)
  %67 = inttoptr i32 %add47.i.i to ptr
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load volatile i32, ptr %67, align 4
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !41
  %70 = call i32 @llvm.read_register.i32(metadata !15) #7
  %and.i.i.i12.i.i = and i32 %70, -16384
  %71 = inttoptr i32 %and.i.i.i12.i.i to ptr
  %preempt_count.i.i13.i.i = getelementptr inbounds %struct.thread_info, ptr %71, i32 0, i32 1
  %72 = ptrtoint ptr %preempt_count.i.i13.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load volatile i32, ptr %preempt_count.i.i13.i.i, align 4
  %sub.i14.i.i = add i32 %73, -1
  store volatile i32 %sub.i14.i.i, ptr %preempt_count.i.i13.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %tobool54.not.i.i = icmp eq i32 %69, 0
  br i1 %tobool54.not.i.i, label %land.rhs22.i.i.i_size_write.exit_crit_edge, label %land.rhs58.i.i

land.rhs22.i.i.i_size_write.exit_crit_edge:       ; preds = %land.rhs22.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %i_size_write.exit

land.rhs58.i.i:                                   ; preds = %land.rhs22.i.i
  %.b1.i.i = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs58.i.i.i_size_write.exit_crit_edge, label %if.then.i.i, !prof !27

land.rhs58.i.i.i_size_write.exit_crit_edge:       ; preds = %land.rhs58.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %i_size_write.exit

if.then.i.i:                                      ; preds = %land.rhs58.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 271, i32 noundef 9, ptr noundef null) #7
  br label %i_size_write.exit

i_size_write.exit:                                ; preds = %if.then.i.i, %land.rhs58.i.i.i_size_write.exit_crit_edge, %land.rhs22.i.i.i_size_write.exit_crit_edge, %land.rhs.i.i.i_size_write.exit_crit_edge, %land.lhs.true.i.i.i_size_write.exit_crit_edge, %if.then88.i_size_write.exit_crit_edge
  %i_size_seqcount.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23
  %74 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %i_size_seqcount.i, align 4
  %inc.i.i.i.i = add i32 %75, 1
  store i32 %inc.i.i.i.i, ptr %i_size_seqcount.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !42
  %dep_map.i.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23, i32 1
  %76 = call ptr @llvm.returnaddress(i32 0) #7
  %77 = ptrtoint ptr %76 to i32
  call void @lock_acquire(ptr noundef %dep_map.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %77) #7
  %i_size8.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  %78 = ptrtoint ptr %i_size8.i to i32
  call void @__asan_store8_noabort(i32 %78)
  store i64 %32, ptr %i_size8.i, align 8
  call void @lock_release(ptr noundef %dep_map.i.i.i, i32 noundef %77) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !43
  %79 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %i_size_seqcount.i, align 4
  %inc.i.i.i = add i32 %80, 1
  store i32 %inc.i.i.i, ptr %i_size_seqcount.i, align 4
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !44
  %81 = call i32 @llvm.read_register.i32(metadata !15) #7
  %and.i.i.i26.i = and i32 %81, -16384
  %82 = inttoptr i32 %and.i.i.i26.i to ptr
  %preempt_count.i.i27.i = getelementptr inbounds %struct.thread_info, ptr %82, i32 0, i32 1
  %83 = ptrtoint ptr %preempt_count.i.i27.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load volatile i32, ptr %preempt_count.i.i27.i, align 4
  %sub.i.i = add i32 %84, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i27.i, align 4
  %85 = ptrtoint ptr %ia_size89 to i32
  call void @__asan_load8_noabort(i32 %85)
  %86 = load i64, ptr %ia_size89, align 8
  %i_disk_size = getelementptr i8, ptr %inode, i32 -56
  %87 = ptrtoint ptr %i_disk_size to i32
  call void @__asan_store8_noabort(i32 %87)
  store i64 %86, ptr %i_disk_size, align 8
  br label %if.end91

if.end91:                                         ; preds = %i_size_write.exit, %if.end86.if.end91_crit_edge
  %88 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %tp, align 4
  %t_flags = getelementptr inbounds %struct.xfs_trans, ptr %89, i32 0, i32 7
  %90 = ptrtoint ptr %t_flags to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %t_flags, align 4
  %or = or i32 %91, 8
  store i32 %or, ptr %t_flags, align 4
  %call92 = call i32 @xfs_trans_commit(ptr noundef %89) #7
  br label %cleanup93

cleanup93:                                        ; preds = %if.end91, %if.end82.cleanup93_crit_edge, %xfs_pnfs_validate_isize.exit.thread, %if.end62.cleanup93_crit_edge
  %error.2 = phi i32 [ %call83, %if.end82.cleanup93_crit_edge ], [ %call92, %if.end91 ], [ %retval.0.i.ph, %xfs_pnfs_validate_isize.exit.thread ], [ %call70, %if.end62.cleanup93_crit_edge ]
  call void @xfs_iunlock(ptr noundef %add.ptr.i, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tp) #7
  ret i32 %error.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @invalidate_inode_pages2_range(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_iomap_write_unwritten(ptr noundef, i64 noundef, i64 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_trans_alloc(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_trans_ijoin(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_trans_log_inode(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_setattr_time(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_trans_commit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__break_lease(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @filemap_write_and_wait_range(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_trans_ichgtime(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smax.i64(i64, i64) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #5 = { nounwind readonly }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14}
!llvm.named.register.sp = !{!15}
!llvm.module.flags = !{!16, !17, !18, !19, !20, !21, !22, !23}
!llvm.ident = !{!24}

!0 = distinct !{null, !1, !"__already_done", i1 false, i1 false}
!1 = !{!"../fs/xfs/xfs_pnfs.c", i32 61, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = distinct !{null, !4, !"__already_done", i1 false, i1 false}
!4 = !{!"../fs/xfs/xfs_pnfs.c", i32 170, i32 6}
!5 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/xfs/xfs_pnfs.c", i32 180, i32 2}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../fs/xfs/xfs_pnfs.c", i32 270, i32 2}
!10 = distinct !{null, !11, !"__already_done", i1 false, i1 false}
!11 = !{!"../fs/xfs/xfs_pnfs.c", i32 301, i32 3}
!12 = distinct !{null, !13, !"__already_done", i1 false, i1 false}
!13 = !{!"../include/linux/seqlock.h", i32 271, i32 2}
!14 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!15 = !{!"sp"}
!16 = !{i32 1, !"wchar_size", i32 2}
!17 = !{i32 1, !"min_enum_size", i32 4}
!18 = !{i32 8, !"branch-target-enforcement", i32 0}
!19 = !{i32 8, !"sign-return-address", i32 0}
!20 = !{i32 8, !"sign-return-address-all", i32 0}
!21 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!22 = !{i32 7, !"uwtable", i32 1}
!23 = !{i32 7, !"frame-pointer", i32 2}
!24 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!25 = !{i64 2153148427}
!26 = !{i64 2148401783}
!27 = !{!"branch_weights", i32 2000, i32 1}
!28 = !{!"branch_weights", i32 1, i32 2000}
!29 = !{i64 1028465, i64 1028526}
!30 = !{i64 1031197}
!31 = !{i64 1031482}
!32 = !{i64 2153123985}
!33 = !{i64 2153123827}
!34 = !{i64 2153124155}
!35 = !{i64 2149787835}
!36 = !{!"auto-init"}
!37 = !{i64 2153125916}
!38 = !{i64 2149680167}
!39 = !{i64 2149685099}
!40 = !{i64 2149706811}
!41 = !{i64 2149711703}
!42 = !{i64 2149788160}
!43 = !{i64 2149788485}
!44 = !{i64 2153137778}
