; ModuleID = '/llk/IR_all_yes/fs/xfs/libxfs/xfs_btree_staging.c_pt.bc'
source_filename = "../fs/xfs/libxfs/xfs_btree_staging.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.72 }
%struct.atomic_t = type { i32 }
%union.anon.72 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.xfs_btree_cur = type { ptr, ptr, ptr, ptr, i32, i32, %union.xfs_btree_irec, i8, i8, i32, %union.anon.95, [0 x %struct.xfs_btree_level] }
%union.xfs_btree_irec = type { %struct.xfs_bmbt_irec }
%struct.xfs_bmbt_irec = type { i64, i64, i64, i32 }
%union.anon.95 = type { %struct.xfs_btree_cur_ag }
%struct.xfs_btree_cur_ag = type { ptr, %union.anon.96, %union.anon.97 }
%union.anon.96 = type { ptr }
%union.anon.97 = type { %struct.anon.98 }
%struct.anon.98 = type { i32, i32 }
%struct.xfs_btree_level = type { ptr, i16, i16 }
%struct.xfs_btree_ops = type { i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.xbtree_afakeroot = type { i32, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.xbtree_ifakeroot = type { ptr, i64, i32, i32, i32, i32 }
%struct.xfs_btree_cur_ino = type { ptr, ptr, i32, i16, i8, i8 }
%struct.xfs_btree_bload = type { ptr, ptr, ptr, i64, i32, i32, i64, i32 }
%struct.list_head = type { ptr, ptr }
%union.xfs_btree_ptr = type { i64 }
%struct.xfs_ifork = type { i64, ptr, i32, i32, %union.anon.89, i16, i8, i32 }
%union.anon.89 = type { ptr }
%struct.xfs_inode = type { ptr, ptr, ptr, ptr, i64, %struct.xfs_imap, ptr, ptr, %struct.xfs_ifork, ptr, %struct.mrlock_t, %struct.atomic_t, %struct.llist_node, i16, i16, %struct.spinlock, i32, i64, i64, i64, i32, i32, %union.anon.90, i8, i16, i64, %struct.timespec64, %struct.inode, %struct.spinlock, %struct.work_struct, %struct.list_head }
%struct.xfs_imap = type { i64, i16, i16 }
%struct.mrlock_t = type { %struct.rw_semaphore, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.llist_node = type { ptr }
%union.anon.90 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.75, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.76, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.77, ptr, %struct.address_space, %struct.list_head, %union.anon.78, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.75 = type { i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%union.anon.76 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.77 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.78 = type { ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%union.xfs_btree_key = type { %struct.xfs_bmbt_key, [32 x i8] }
%struct.xfs_bmbt_key = type { i64 }

@.str = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"!(cur->bc_flags & XFS_BTREE_STAGING)\00", [59 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"fs/xfs/libxfs/xfs_btree_staging.c\00", [62 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"!(cur->bc_flags & XFS_BTREE_ROOT_IN_INODE)\00", [53 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"cur->bc_tp == NULL\00", [45 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"cur->bc_flags & XFS_BTREE_STAGING\00", [62 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"cur->bc_flags & XFS_BTREE_ROOT_IN_INODE\00", [56 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"cur->bc_nlevels <= cur->bc_maxlevels\00", [59 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"xfs_btree_ptr_is_null(cur, &ptr)\00", [63 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"list_empty(&buffers_list)\00", [38 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"0\00", [30 x i8] zeroinitializer }, align 32
@__tracepoint_xfs_btree_commit_afakeroot = external dso_local global %struct.tracepoint, align 4
@.str.10 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fs/xfs/xfs_trace.h\00", [45 x i8] zeroinitializer }, align 32
@trace_xfs_btree_commit_afakeroot.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.11 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.12 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@__tracepoint_xfs_btree_commit_ifakeroot = external dso_local global %struct.tracepoint, align 4
@trace_xfs_btree_commit_ifakeroot.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xfs_btree_bload_level_geometry = external dso_local global %struct.tracepoint, align 4
@trace_xfs_btree_bload_level_geometry.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.13 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"*bpp == NULL\00", [19 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"!xfs_btree_ptr_is_null(cur, &new_ptr)\00", [58 x i8] zeroinitializer }, align 32
@__tracepoint_xfs_btree_bload_block = external dso_local global %struct.tracepoint, align 4
@trace_xfs_btree_bload_block.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.15 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"!xfs_btree_ptr_is_null(cur, child_ptr)\00", [57 x i8] zeroinitializer }, align 32
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 138, i32 2 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 139, i32 2 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 140, i32 2 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 169, i32 2 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 220, i32 2 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 706, i32 4 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 853, i32 3 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 871, i32 3 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 67, i32 2 }
@___asan_gen_.50 = private unnamed_addr constant [22 x i8] c"../fs/xfs/xfs_trace.h\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 3838, i32 1 }
@___asan_gen_.53 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 108, i32 2 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 384, i32 3 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 409, i32 2 }
@___asan_gen_.61 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.62 = private constant [37 x i8] c"../fs/xfs/libxfs/xfs_btree_staging.c\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 486, i32 3 }
@llvm.compiler.used = appending global [16 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15], section "llvm.metadata"
@0 = internal global [16 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xfs_btree_stage_afakeroot(ptr nocapture noundef %cur, ptr noundef %afake) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %bc_flags = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 4
  %0 = ptrtoint ptr %bc_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bc_flags, align 8
  %and = and i32 %1, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.false, !prof !52

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 138) #7
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %2 = ptrtoint ptr %bc_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bc_flags, align 8
  %and5 = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %cond.end.cond.end17_crit_edge, label %cond.false16, !prof !52

cond.end.cond.end17_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end17

cond.false16:                                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 139) #7
  br label %cond.end17

cond.end17:                                       ; preds = %cond.false16, %cond.end.cond.end17_crit_edge
  %4 = ptrtoint ptr %cur to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cur, align 8
  %cmp = icmp eq ptr %5, null
  br i1 %cmp, label %cond.end17.cond.end26_crit_edge, label %cond.false25, !prof !52

cond.end17.cond.end26_crit_edge:                  ; preds = %cond.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end26

cond.false25:                                     ; preds = %cond.end17
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 140) #7
  br label %cond.end26

cond.end26:                                       ; preds = %cond.false25, %cond.end17.cond.end26_crit_edge
  %call = tail call ptr @kmem_alloc(i32 noundef 80, i32 noundef 4) #7
  %bc_ops = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 2
  %6 = ptrtoint ptr %bc_ops to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bc_ops, align 8
  %8 = call ptr @memcpy(ptr %call, ptr %7, i32 80)
  %alloc_block = getelementptr inbounds %struct.xfs_btree_ops, ptr %call, i32 0, i32 5
  %9 = ptrtoint ptr %alloc_block to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @xfs_btree_fakeroot_alloc_block, ptr %alloc_block, align 4
  %free_block = getelementptr inbounds %struct.xfs_btree_ops, ptr %call, i32 0, i32 6
  %10 = ptrtoint ptr %free_block to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @xfs_btree_fakeroot_free_block, ptr %free_block, align 4
  %init_ptr_from_cur = getelementptr inbounds %struct.xfs_btree_ops, ptr %call, i32 0, i32 13
  %11 = ptrtoint ptr %init_ptr_from_cur to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @xfs_btree_fakeroot_init_ptr_from_cur, ptr %init_ptr_from_cur, align 4
  %set_root = getelementptr inbounds %struct.xfs_btree_ops, ptr %call, i32 0, i32 4
  %12 = ptrtoint ptr %set_root to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @xfs_btree_afakeroot_set_root, ptr %set_root, align 4
  %dup_cursor = getelementptr inbounds %struct.xfs_btree_ops, ptr %call, i32 0, i32 2
  %13 = ptrtoint ptr %dup_cursor to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @xfs_btree_fakeroot_dup_cursor, ptr %dup_cursor, align 4
  %14 = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 10, i32 0, i32 1
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %afake, ptr %14, align 4
  %af_levels = getelementptr inbounds %struct.xbtree_afakeroot, ptr %afake, i32 0, i32 1
  %16 = ptrtoint ptr %af_levels to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %af_levels, align 4
  %conv = trunc i32 %17 to i8
  %bc_nlevels = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 7
  %18 = ptrtoint ptr %bc_nlevels to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv, ptr %bc_nlevels, align 8
  store ptr %call, ptr %bc_ops, align 8
  %19 = ptrtoint ptr %bc_flags to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %bc_flags, align 8
  %or = or i32 %20, 32
  store i32 %or, ptr %bc_flags, align 8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @assfail(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_alloc(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xfs_btree_fakeroot_alloc_block(ptr nocapture noundef readnone %cur, ptr nocapture noundef readnone %start_bno, ptr nocapture noundef readnone %new_bno, ptr nocapture noundef readnone %stat) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.1, i32 noundef 67) #7
  ret i32 -117
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xfs_btree_fakeroot_free_block(ptr nocapture noundef readnone %cur, ptr nocapture noundef readnone %bp) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.1, i32 noundef 80) #7
  ret i32 -117
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xfs_btree_fakeroot_init_ptr_from_cur(ptr nocapture noundef readonly %cur, ptr nocapture noundef writeonly %ptr) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %bc_flags = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 4
  %0 = ptrtoint ptr %bc_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bc_flags, align 8
  %and = and i32 %1, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %cond.false, label %entry.cond.end_crit_edge, !prof !53

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 92) #7
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %2 = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 10, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %4, align 4
  %7 = ptrtoint ptr %ptr to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %ptr, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xfs_btree_afakeroot_set_root(ptr nocapture noundef readonly %cur, ptr nocapture noundef readonly %ptr, i32 noundef %inc) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 10, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %bc_flags = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 4
  %3 = ptrtoint ptr %bc_flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %bc_flags, align 8
  %and = and i32 %4, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %cond.false, label %entry.cond.end_crit_edge, !prof !53

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 121) #7
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %5 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ptr, align 8
  %7 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %2, align 4
  %af_levels = getelementptr inbounds %struct.xbtree_afakeroot, ptr %2, i32 0, i32 1
  %8 = ptrtoint ptr %af_levels to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %af_levels, align 4
  %add = add i32 %9, %inc
  store i32 %add, ptr %af_levels, align 4
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal noalias ptr @xfs_btree_fakeroot_dup_cursor(ptr nocapture noundef readnone %cur) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.1, i32 noundef 49) #7
  ret ptr null
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xfs_btree_commit_afakeroot(ptr noundef %cur, ptr noundef %tp, ptr noundef %agbp, ptr noundef %ops) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %bc_flags = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 4
  %0 = ptrtoint ptr %bc_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bc_flags, align 8
  %and = and i32 %1, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %cond.false, label %entry.cond.end_crit_edge, !prof !53

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 169) #7
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %2 = ptrtoint ptr %cur to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cur, align 8
  %cmp = icmp eq ptr %3, null
  br i1 %cmp, label %cond.end.cond.end11_crit_edge, label %cond.false10, !prof !52

cond.end.cond.end11_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end11

cond.false10:                                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 170) #7
  br label %cond.end11

cond.end11:                                       ; preds = %cond.false10, %cond.end.cond.end11_crit_edge
  tail call fastcc void @trace_xfs_btree_commit_afakeroot(ptr noundef %cur)
  %bc_ops = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 2
  %4 = ptrtoint ptr %bc_ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bc_ops, align 8
  tail call void @kvfree(ptr noundef %5) #7
  %6 = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 10, i32 0, i32 1
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %agbp, ptr %6, align 4
  %8 = ptrtoint ptr %bc_ops to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %ops, ptr %bc_ops, align 8
  %9 = ptrtoint ptr %bc_flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %bc_flags, align 8
  %and14 = and i32 %10, -33
  store i32 %and14, ptr %bc_flags, align 8
  %11 = ptrtoint ptr %cur to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %tp, ptr %cur, align 8
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_btree_commit_afakeroot(ptr noundef %cur) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_btree_commit_afakeroot, i32 0, i32 1), ptr blockaddress(@trace_xfs_btree_commit_afakeroot, %do.body)) #7
          to label %if.end48 [label %do.body], !srcloc !54

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !42) #7
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !52

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #9
  %9 = tail call i32 @llvm.read_register.i32(metadata !42) #7
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !55
  %call42 = tail call i32 @__traceiter_xfs_btree_commit_afakeroot(ptr noundef null, ptr noundef %cur) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !56
  %13 = tail call i32 @llvm.read_register.i32(metadata !42) #7
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !42) #7
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !52

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !42) #7
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !57
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_btree_commit_afakeroot, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_btree_commit_afakeroot, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_xfs_btree_commit_afakeroot.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @trace_xfs_btree_commit_afakeroot.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 3864, ptr noundef nonnull @.str.11) #7
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !58
  %31 = tail call i32 @llvm.read_register.i32(metadata !42) #7
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xfs_btree_stage_ifakeroot(ptr nocapture noundef %cur, ptr noundef %ifake, ptr noundef writeonly %new_ops) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %bc_flags = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 4
  %0 = ptrtoint ptr %bc_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bc_flags, align 8
  %and = and i32 %1, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.false, !prof !52

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 219) #7
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %2 = ptrtoint ptr %bc_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bc_flags, align 8
  %and5 = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %cond.false14, label %cond.end.cond.end15_crit_edge, !prof !53

cond.end.cond.end15_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end15

cond.false14:                                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 220) #7
  br label %cond.end15

cond.end15:                                       ; preds = %cond.false14, %cond.end.cond.end15_crit_edge
  %4 = ptrtoint ptr %cur to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cur, align 8
  %cmp = icmp eq ptr %5, null
  br i1 %cmp, label %cond.end15.cond.end24_crit_edge, label %cond.false23, !prof !52

cond.end15.cond.end24_crit_edge:                  ; preds = %cond.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end24

cond.false23:                                     ; preds = %cond.end15
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 221) #7
  br label %cond.end24

cond.end24:                                       ; preds = %cond.false23, %cond.end15.cond.end24_crit_edge
  %call = tail call ptr @kmem_alloc(i32 noundef 80, i32 noundef 4) #7
  %bc_ops = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 2
  %6 = ptrtoint ptr %bc_ops to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bc_ops, align 8
  %8 = call ptr @memcpy(ptr %call, ptr %7, i32 80)
  %alloc_block = getelementptr inbounds %struct.xfs_btree_ops, ptr %call, i32 0, i32 5
  %9 = ptrtoint ptr %alloc_block to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @xfs_btree_fakeroot_alloc_block, ptr %alloc_block, align 4
  %free_block = getelementptr inbounds %struct.xfs_btree_ops, ptr %call, i32 0, i32 6
  %10 = ptrtoint ptr %free_block to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @xfs_btree_fakeroot_free_block, ptr %free_block, align 4
  %init_ptr_from_cur = getelementptr inbounds %struct.xfs_btree_ops, ptr %call, i32 0, i32 13
  %11 = ptrtoint ptr %init_ptr_from_cur to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @xfs_btree_fakeroot_init_ptr_from_cur, ptr %init_ptr_from_cur, align 4
  %dup_cursor = getelementptr inbounds %struct.xfs_btree_ops, ptr %call, i32 0, i32 2
  %12 = ptrtoint ptr %dup_cursor to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @xfs_btree_fakeroot_dup_cursor, ptr %dup_cursor, align 4
  %ifake25 = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 10, i32 0, i32 1
  %13 = ptrtoint ptr %ifake25 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %ifake, ptr %ifake25, align 4
  %if_levels = getelementptr inbounds %struct.xbtree_ifakeroot, ptr %ifake, i32 0, i32 2
  %14 = ptrtoint ptr %if_levels to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %if_levels, align 8
  %conv = trunc i32 %15 to i8
  %bc_nlevels = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 7
  %16 = ptrtoint ptr %bc_nlevels to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv, ptr %bc_nlevels, align 8
  store ptr %call, ptr %bc_ops, align 8
  %17 = ptrtoint ptr %bc_flags to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %bc_flags, align 8
  %or = or i32 %18, 32
  store i32 %or, ptr %bc_flags, align 8
  %tobool28.not = icmp eq ptr %new_ops, null
  br i1 %tobool28.not, label %cond.end24.if.end_crit_edge, label %if.then

cond.end24.if.end_crit_edge:                      ; preds = %cond.end24
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %cond.end24
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %new_ops to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call, ptr %new_ops, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end24.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xfs_btree_commit_ifakeroot(ptr noundef %cur, ptr noundef %tp, i32 noundef %whichfork, ptr noundef %ops) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %bc_flags = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 4
  %0 = ptrtoint ptr %bc_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bc_flags, align 8
  %and = and i32 %1, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %cond.false, label %entry.cond.end_crit_edge, !prof !53

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 252) #7
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %2 = ptrtoint ptr %cur to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cur, align 8
  %cmp = icmp eq ptr %3, null
  br i1 %cmp, label %cond.end.cond.end11_crit_edge, label %cond.false10, !prof !52

cond.end.cond.end11_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end11

cond.false10:                                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 253) #7
  br label %cond.end11

cond.end11:                                       ; preds = %cond.false10, %cond.end.cond.end11_crit_edge
  tail call fastcc void @trace_xfs_btree_commit_ifakeroot(ptr noundef %cur)
  %bc_ops = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 2
  %4 = ptrtoint ptr %bc_ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bc_ops, align 8
  tail call void @kvfree(ptr noundef %5) #7
  %6 = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 10
  %ifake = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 10, i32 0, i32 1
  %7 = ptrtoint ptr %ifake to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %ifake, align 4
  %conv = trunc i32 %whichfork to i8
  %whichfork12 = getelementptr inbounds %struct.xfs_btree_cur_ino, ptr %6, i32 0, i32 4
  %8 = ptrtoint ptr %whichfork12 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv, ptr %whichfork12, align 2
  %9 = ptrtoint ptr %bc_ops to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %ops, ptr %bc_ops, align 8
  %10 = ptrtoint ptr %bc_flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %bc_flags, align 8
  %and15 = and i32 %11, -33
  store i32 %and15, ptr %bc_flags, align 8
  %12 = ptrtoint ptr %cur to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %tp, ptr %cur, align 8
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_btree_commit_ifakeroot(ptr noundef %cur) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_btree_commit_ifakeroot, i32 0, i32 1), ptr blockaddress(@trace_xfs_btree_commit_ifakeroot, %do.body)) #7
          to label %if.end48 [label %do.body], !srcloc !54

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !42) #7
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !52

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #9
  %9 = tail call i32 @llvm.read_register.i32(metadata !42) #7
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !59
  %call42 = tail call i32 @__traceiter_xfs_btree_commit_ifakeroot(ptr noundef null, ptr noundef %cur) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !60
  %13 = tail call i32 @llvm.read_register.i32(metadata !42) #7
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !42) #7
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !52

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !42) #7
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !57
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_btree_commit_ifakeroot, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_btree_commit_ifakeroot, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_xfs_btree_commit_ifakeroot.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @trace_xfs_btree_commit_ifakeroot.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 3897, ptr noundef nonnull @.str.11) #7
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !58
  %31 = tail call i32 @llvm.read_register.i32(metadata !42) #7
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_btree_bload_compute_geometry(ptr noundef %cur, ptr nocapture noundef %bbl, i64 noundef %nr_records) local_unnamed_addr #0 align 64 {
entry:
  %level_blocks = alloca i64, align 8
  %dontcare64 = alloca i64, align 8
  %avg_per_block = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %bc_flags = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 4
  %0 = ptrtoint ptr %bc_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bc_flags, align 8
  %and = and i32 %1, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %cond.false, label %entry.cond.end_crit_edge, !prof !53

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 651) #7
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %bc_maxlevels = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 8
  %2 = ptrtoint ptr %bc_maxlevels to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %bc_maxlevels, align 1
  %sub = add i8 %3, -1
  %bc_nlevels = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 7
  %4 = ptrtoint ptr %bc_nlevels to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %sub, ptr %bc_nlevels, align 8
  %leaf_slack = getelementptr inbounds %struct.xfs_btree_bload, ptr %bbl, i32 0, i32 4
  %bc_ops.i = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 2
  %5 = ptrtoint ptr %bc_ops.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bc_ops.i, align 8
  %get_maxrecs.i = getelementptr inbounds %struct.xfs_btree_ops, ptr %6, i32 0, i32 9
  %7 = ptrtoint ptr %get_maxrecs.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %get_maxrecs.i, align 4
  %call.i = tail call i32 %8(ptr noundef %cur, i32 noundef 0) #7
  %9 = ptrtoint ptr %bc_ops.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bc_ops.i, align 8
  %get_minrecs.i = getelementptr inbounds %struct.xfs_btree_ops, ptr %10, i32 0, i32 8
  %11 = ptrtoint ptr %get_minrecs.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %get_minrecs.i, align 4
  %call2.i = tail call i32 %12(ptr noundef %cur, i32 noundef 0) #7
  %13 = ptrtoint ptr %leaf_slack to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %leaf_slack, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp.i = icmp slt i32 %14, 0
  br i1 %cmp.i, label %if.then.i, label %cond.end.xfs_btree_bload_ensure_slack.exit_crit_edge

cond.end.xfs_btree_bload_ensure_slack.exit_crit_edge: ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %xfs_btree_bload_ensure_slack.exit

if.then.i:                                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  %add.i = add i32 %call2.i, %call.i
  %shr.i = ashr i32 %add.i, 1
  %sub.i = sub i32 %call.i, %shr.i
  %15 = ptrtoint ptr %leaf_slack to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %sub.i, ptr %leaf_slack, align 4
  br label %xfs_btree_bload_ensure_slack.exit

xfs_btree_bload_ensure_slack.exit:                ; preds = %if.then.i, %cond.end.xfs_btree_bload_ensure_slack.exit_crit_edge
  %16 = ptrtoint ptr %leaf_slack to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %leaf_slack, align 4
  %sub3.i = sub i32 %call.i, %call2.i
  %18 = tail call i32 @llvm.smin.i32(i32 %17, i32 %sub3.i) #7
  %19 = ptrtoint ptr %leaf_slack to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %leaf_slack, align 4
  %node_slack = getelementptr inbounds %struct.xfs_btree_bload, ptr %bbl, i32 0, i32 5
  %20 = ptrtoint ptr %bc_ops.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bc_ops.i, align 8
  %get_maxrecs.i126 = getelementptr inbounds %struct.xfs_btree_ops, ptr %21, i32 0, i32 9
  %22 = ptrtoint ptr %get_maxrecs.i126 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %get_maxrecs.i126, align 4
  %call.i127 = tail call i32 %23(ptr noundef %cur, i32 noundef 1) #7
  %24 = ptrtoint ptr %bc_ops.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %bc_ops.i, align 8
  %get_minrecs.i128 = getelementptr inbounds %struct.xfs_btree_ops, ptr %25, i32 0, i32 8
  %26 = ptrtoint ptr %get_minrecs.i128 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %get_minrecs.i128, align 4
  %call2.i129 = tail call i32 %27(ptr noundef %cur, i32 noundef 1) #7
  %28 = ptrtoint ptr %node_slack to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %node_slack, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp.i130 = icmp slt i32 %29, 0
  br i1 %cmp.i130, label %if.then.i134, label %xfs_btree_bload_ensure_slack.exit.xfs_btree_bload_ensure_slack.exit136_crit_edge

xfs_btree_bload_ensure_slack.exit.xfs_btree_bload_ensure_slack.exit136_crit_edge: ; preds = %xfs_btree_bload_ensure_slack.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %xfs_btree_bload_ensure_slack.exit136

if.then.i134:                                     ; preds = %xfs_btree_bload_ensure_slack.exit
  call void @__sanitizer_cov_trace_pc() #9
  %add.i131 = add i32 %call2.i129, %call.i127
  %shr.i132 = ashr i32 %add.i131, 1
  %sub.i133 = sub i32 %call.i127, %shr.i132
  %30 = ptrtoint ptr %node_slack to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %sub.i133, ptr %node_slack, align 4
  br label %xfs_btree_bload_ensure_slack.exit136

xfs_btree_bload_ensure_slack.exit136:             ; preds = %if.then.i134, %xfs_btree_bload_ensure_slack.exit.xfs_btree_bload_ensure_slack.exit136_crit_edge
  %31 = ptrtoint ptr %node_slack to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %node_slack, align 4
  %sub3.i135 = sub i32 %call.i127, %call2.i129
  %33 = tail call i32 @llvm.smin.i32(i32 %32, i32 %sub3.i135) #7
  %34 = ptrtoint ptr %node_slack to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %node_slack, align 4
  %nr_records4 = getelementptr inbounds %struct.xfs_btree_bload, ptr %bbl, i32 0, i32 3
  %35 = ptrtoint ptr %nr_records4 to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 %nr_records, ptr %nr_records4, align 8
  %36 = ptrtoint ptr %bc_nlevels to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 1, ptr %bc_nlevels, align 8
  %37 = ptrtoint ptr %bc_maxlevels to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %bc_maxlevels, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %cmp.not142 = icmp eq i8 %38, 0
  br i1 %cmp.not142, label %xfs_btree_bload_ensure_slack.exit136.for.end_crit_edge, label %xfs_btree_bload_ensure_slack.exit136.for.body_crit_edge

xfs_btree_bload_ensure_slack.exit136.for.body_crit_edge: ; preds = %xfs_btree_bload_ensure_slack.exit136
  br label %for.body

xfs_btree_bload_ensure_slack.exit136.for.end_crit_edge: ; preds = %xfs_btree_bload_ensure_slack.exit136
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %xfs_btree_bload_ensure_slack.exit136.for.body_crit_edge
  %39 = phi i8 [ %60, %cleanup.for.body_crit_edge ], [ 1, %xfs_btree_bload_ensure_slack.exit136.for.body_crit_edge ]
  %nr_this_level.0146 = phi i64 [ %58, %cleanup.for.body_crit_edge ], [ %nr_records, %xfs_btree_bload_ensure_slack.exit136.for.body_crit_edge ]
  %nr_blocks.0143 = phi i64 [ %add, %cleanup.for.body_crit_edge ], [ 0, %xfs_btree_bload_ensure_slack.exit136.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %level_blocks) #7
  %40 = ptrtoint ptr %level_blocks to i32
  call void @__asan_store8_noabort(i32 %40)
  store i64 -1, ptr %level_blocks, align 8, !annotation !61
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %dontcare64) #7
  %41 = ptrtoint ptr %dontcare64 to i32
  call void @__asan_store8_noabort(i32 %41)
  store i64 -1, ptr %dontcare64, align 8, !annotation !61
  %conv12 = zext i8 %39 to i32
  %sub13 = add nsw i32 %conv12, -1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %avg_per_block) #7
  %42 = ptrtoint ptr %avg_per_block to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 -1, ptr %avg_per_block, align 4, !annotation !61
  call fastcc void @xfs_btree_bload_level_geometry(ptr noundef %cur, ptr noundef %bbl, i32 noundef %sub13, i64 noundef %nr_this_level.0146, ptr noundef nonnull %avg_per_block, ptr noundef nonnull %level_blocks, ptr noundef nonnull %dontcare64)
  %43 = ptrtoint ptr %bc_flags to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %bc_flags, align 8
  %and15 = and i32 %44, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %if.else, label %if.then

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub13)
  %cmp17.not = icmp eq i32 %sub13, 0
  br i1 %cmp17.not, label %if.then.if.end_crit_edge, label %land.lhs.true

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true:                                    ; preds = %if.then
  %45 = ptrtoint ptr %avg_per_block to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %avg_per_block, align 4
  %conv19 = zext i32 %46 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %nr_this_level.0146, i64 %conv19)
  %cmp20.not = icmp ugt i64 %nr_this_level.0146, %conv19
  br i1 %cmp20.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.cleanup.thread_crit_edge

land.lhs.true.cleanup.thread_crit_edge:           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.thread

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %if.then.if.end_crit_edge
  %47 = ptrtoint ptr %bc_nlevels to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %bc_nlevels, align 8
  %inc24 = add i8 %48, 1
  store i8 %inc24, ptr %bc_nlevels, align 8
  %49 = ptrtoint ptr %bc_maxlevels to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %bc_maxlevels, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %inc24, i8 %50)
  %cmp29.not = icmp ugt i8 %inc24, %50
  br i1 %cmp29.not, label %cond.false38, label %if.end.cond.end39_crit_edge, !prof !53

if.end.cond.end39_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end39

cond.false38:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1, i32 noundef 706) #7
  br label %cond.end39

cond.end39:                                       ; preds = %cond.false38, %if.end.cond.end39_crit_edge
  call fastcc void @xfs_btree_bload_level_geometry(ptr noundef %cur, ptr noundef %bbl, i32 noundef %sub13, i64 noundef %nr_this_level.0146, ptr noundef nonnull %avg_per_block, ptr noundef nonnull %level_blocks, ptr noundef nonnull %dontcare64)
  br label %cleanup

if.else:                                          ; preds = %for.body
  %51 = ptrtoint ptr %avg_per_block to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %avg_per_block, align 4
  %conv40 = zext i32 %52 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %nr_this_level.0146, i64 %conv40)
  %cmp41.not = icmp ugt i64 %nr_this_level.0146, %conv40
  br i1 %cmp41.not, label %if.end45, label %if.else.cleanup.thread_crit_edge

if.else.cleanup.thread_crit_edge:                 ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.thread

if.end45:                                         ; preds = %if.else
  %53 = ptrtoint ptr %bc_nlevels to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %bc_nlevels, align 8
  %inc47 = add i8 %54, 1
  store i8 %inc47, ptr %bc_nlevels, align 8
  %55 = ptrtoint ptr %bc_maxlevels to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %bc_maxlevels, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %inc47, i8 %56)
  %cmp52.not = icmp ugt i8 %inc47, %56
  br i1 %cmp52.not, label %cond.false61, label %if.end45.cleanup_crit_edge, !prof !53

if.end45.cleanup_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cond.false61:                                     ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #9
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1, i32 noundef 722) #7
  br label %cleanup

cleanup.thread:                                   ; preds = %if.else.cleanup.thread_crit_edge, %land.lhs.true.cleanup.thread_crit_edge
  %nr_blocks.1.ph = add i64 %nr_blocks.0143, 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %avg_per_block) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %dontcare64) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %level_blocks) #7
  br label %for.end

cleanup:                                          ; preds = %cond.false61, %if.end45.cleanup_crit_edge, %cond.end39
  %57 = ptrtoint ptr %level_blocks to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %level_blocks, align 8
  %add = add i64 %58, %nr_blocks.0143
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %avg_per_block) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %dontcare64) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %level_blocks) #7
  %59 = ptrtoint ptr %bc_nlevels to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %bc_nlevels, align 8
  %61 = ptrtoint ptr %bc_maxlevels to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %bc_maxlevels, align 1
  %cmp.not = icmp ugt i8 %60, %62
  br i1 %cmp.not, label %cleanup.for.end_crit_edge, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %cleanup.thread, %xfs_btree_bload_ensure_slack.exit136.for.end_crit_edge
  %nr_blocks.2 = phi i64 [ %nr_blocks.1.ph, %cleanup.thread ], [ 0, %xfs_btree_bload_ensure_slack.exit136.for.end_crit_edge ], [ %add, %cleanup.for.end_crit_edge ]
  %63 = ptrtoint ptr %bc_nlevels to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %bc_nlevels, align 8
  %65 = ptrtoint ptr %bc_maxlevels to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %bc_maxlevels, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %64, i8 %66)
  %cmp71 = icmp ugt i8 %64, %66
  br i1 %cmp71, label %for.end.cleanup86_crit_edge, label %if.end74

for.end.cleanup86_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup86

if.end74:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %conv68 = zext i8 %64 to i32
  %btree_height = getelementptr inbounds %struct.xfs_btree_bload, ptr %bbl, i32 0, i32 7
  %67 = ptrtoint ptr %btree_height to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %conv68, ptr %btree_height, align 8
  %68 = ptrtoint ptr %bc_flags to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %bc_flags, align 8
  %and78 = shl i32 %69, 30
  %sext = ashr i32 %and78, 31
  %sub81 = sext i32 %sext to i64
  %sub81.sink = add i64 %nr_blocks.2, %sub81
  %nr_blocks82 = getelementptr inbounds %struct.xfs_btree_bload, ptr %bbl, i32 0, i32 6
  %70 = ptrtoint ptr %nr_blocks82 to i32
  call void @__asan_store8_noabort(i32 %70)
  store i64 %sub81.sink, ptr %nr_blocks82, align 8
  br label %cleanup86

cleanup86:                                        ; preds = %if.end74, %for.end.cleanup86_crit_edge
  %retval.0 = phi i32 [ -75, %for.end.cleanup86_crit_edge ], [ 0, %if.end74 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xfs_btree_bload_level_geometry(ptr noundef %cur, ptr nocapture noundef readonly %bbl, i32 noundef %level, i64 noundef %nr_this_level, ptr nocapture noundef writeonly %avg_per_block, ptr nocapture noundef %blocks, ptr noundef %blocks_with_extra) unnamed_addr #3 align 64 {
entry:
  %dontcare = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %dontcare) #7
  %0 = ptrtoint ptr %dontcare to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %dontcare, align 8, !annotation !61
  %bc_ops = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 2
  %1 = ptrtoint ptr %bc_ops to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %bc_ops, align 8
  %get_maxrecs = getelementptr inbounds %struct.xfs_btree_ops, ptr %2, i32 0, i32 9
  %3 = ptrtoint ptr %get_maxrecs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %get_maxrecs, align 4
  %call = tail call i32 %4(ptr noundef %cur, i32 noundef %level) #7
  %call1 = tail call fastcc i32 @xfs_btree_bload_desired_npb(ptr noundef %cur, ptr noundef %bbl, i32 noundef %level)
  %conv = zext i32 %call1 to i64
  %call2 = call i64 @div64_u64_rem(i64 noundef %nr_this_level, i64 noundef %conv, ptr noundef nonnull %dontcare) #7
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call2)
  %cmp = icmp eq i64 %call2, 0
  %.call2 = select i1 %cmp, i64 1, i64 %call2
  %5 = ptrtoint ptr %blocks to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %.call2, ptr %blocks, align 8
  %call4 = call i64 @div64_u64_rem(i64 noundef %nr_this_level, i64 noundef %.call2, ptr noundef %blocks_with_extra) #7
  %conv5 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %call4, i64 %conv5)
  %cmp6 = icmp ugt i64 %call4, %conv5
  br i1 %cmp6, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_cmp8(i64 %call4, i64 %conv5)
  %cmp9 = icmp eq i64 %call4, %conv5
  br i1 %cmp9, label %land.lhs.true, label %lor.lhs.false.if.end_crit_edge

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true:                                    ; preds = %lor.lhs.false
  %6 = ptrtoint ptr %blocks_with_extra to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %blocks_with_extra, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %7)
  %cmp11.not = icmp eq i64 %7, 0
  br i1 %cmp11.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.if.then_crit_edge

land.lhs.true.if.then_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %land.lhs.true.if.then_crit_edge, %entry.if.then_crit_edge
  %8 = ptrtoint ptr %blocks to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %blocks, align 8
  %inc = add i64 %9, 1
  store i64 %inc, ptr %blocks, align 8
  %call13 = call i64 @div64_u64_rem(i64 noundef %nr_this_level, i64 noundef %inc, ptr noundef %blocks_with_extra) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %lor.lhs.false.if.end_crit_edge
  %npb.0 = phi i64 [ %call13, %if.then ], [ %call4, %land.lhs.true.if.end_crit_edge ], [ %call4, %lor.lhs.false.if.end_crit_edge ]
  %10 = call i64 @llvm.umin.i64(i64 %npb.0, i64 %nr_this_level)
  %cond20.off0 = trunc i64 %10 to i32
  %11 = ptrtoint ptr %avg_per_block to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %cond20.off0, ptr %avg_per_block, align 4
  %12 = ptrtoint ptr %blocks to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %blocks, align 8
  %14 = ptrtoint ptr %blocks_with_extra to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %blocks_with_extra, align 8
  call fastcc void @trace_xfs_btree_bload_level_geometry(ptr noundef %cur, i32 noundef %level, i64 noundef %nr_this_level, i32 noundef %cond20.off0, i32 noundef %call1, i64 noundef %13, i64 noundef %15)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %dontcare) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_btree_bload(ptr noundef %cur, ptr nocapture noundef readonly %bbl, ptr noundef %priv) local_unnamed_addr #0 align 64 {
entry:
  %buffers_list = alloca %struct.list_head, align 4
  %child_ptr = alloca %union.xfs_btree_ptr, align 8
  %ptr = alloca %union.xfs_btree_ptr, align 8
  %bp = alloca ptr, align 4
  %block = alloca ptr, align 4
  %blocks = alloca i64, align 8
  %blocks_with_extra = alloca i64, align 8
  %avg_per_block = alloca i32, align 4
  %first_ptr = alloca %union.xfs_btree_ptr, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %buffers_list) #7
  %0 = getelementptr inbounds %struct.list_head, ptr %buffers_list, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %child_ptr) #7
  %1 = ptrtoint ptr %child_ptr to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 -1, ptr %child_ptr, align 8, !annotation !61
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ptr) #7
  %2 = ptrtoint ptr %ptr to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 -1, ptr %ptr, align 8, !annotation !61
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bp) #7
  %3 = ptrtoint ptr %bp to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %bp, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %block) #7
  %4 = ptrtoint ptr %block to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %block, align 4
  %nr_records = getelementptr inbounds %struct.xfs_btree_bload, ptr %bbl, i32 0, i32 3
  %5 = ptrtoint ptr %nr_records to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %nr_records, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %blocks) #7
  %7 = ptrtoint ptr %blocks to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 -1, ptr %blocks, align 8, !annotation !61
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %blocks_with_extra) #7
  %8 = ptrtoint ptr %blocks_with_extra to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 -1, ptr %blocks_with_extra, align 8, !annotation !61
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %avg_per_block) #7
  %9 = ptrtoint ptr %avg_per_block to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %avg_per_block, align 4, !annotation !61
  %bc_flags = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 4
  %10 = ptrtoint ptr %bc_flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %bc_flags, align 8
  %and = and i32 %11, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %cond.false, label %entry.cond.end_crit_edge, !prof !53

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 761) #7
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %12 = ptrtoint ptr %buffers_list to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %buffers_list, ptr %buffers_list, align 4
  %13 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %buffers_list, ptr %0, align 4
  %btree_height = getelementptr inbounds %struct.xfs_btree_bload, ptr %bbl, i32 0, i32 7
  %14 = ptrtoint ptr %btree_height to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %btree_height, align 8
  %conv = trunc i32 %15 to i8
  %bc_nlevels = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 7
  %16 = ptrtoint ptr %bc_nlevels to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv, ptr %bc_nlevels, align 8
  call void @xfs_btree_set_ptr_null(ptr noundef %cur, ptr noundef nonnull %child_ptr) #7
  call void @xfs_btree_set_ptr_null(ptr noundef %cur, ptr noundef nonnull %ptr) #7
  call fastcc void @xfs_btree_bload_level_geometry(ptr noundef %cur, ptr noundef %bbl, i32 noundef 0, i64 noundef %6, ptr noundef nonnull %avg_per_block, ptr noundef nonnull %blocks, ptr noundef nonnull %blocks_with_extra)
  %17 = ptrtoint ptr %blocks to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %blocks, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %18)
  %cmp207.not = icmp eq i64 %18, 0
  br i1 %cmp207.not, label %cond.end.for.end_crit_edge, label %for.body.lr.ph

cond.end.for.end_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %cond.end
  %19 = ptrtoint ptr %avg_per_block to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %avg_per_block, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0208 = phi i64 [ 0, %for.body.lr.ph ], [ %inc17, %for.inc.for.body_crit_edge ]
  %21 = ptrtoint ptr %blocks_with_extra to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %blocks_with_extra, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %i.0208, i64 %22)
  %cmp4 = icmp ult i64 %i.0208, %22
  %inc = zext i1 %cmp4 to i32
  %spec.select = add i32 %20, %inc
  %call = call fastcc i32 @xfs_btree_bload_prep_block(ptr noundef %cur, ptr noundef %bbl, ptr noundef nonnull %buffers_list, i32 noundef 0, i32 noundef %spec.select, ptr noundef nonnull %ptr, ptr noundef nonnull %bp, ptr noundef nonnull %block, ptr noundef %priv)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool6.not = icmp eq i32 %call, 0
  br i1 %tobool6.not, label %if.end8, label %for.body.out_crit_edge

for.body.out_crit_edge:                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end8:                                          ; preds = %for.body
  call fastcc void @trace_xfs_btree_bload_block(ptr noundef %cur, i32 noundef 0, i64 noundef %i.0208, i64 noundef %18, ptr noundef nonnull %ptr, i32 noundef %spec.select)
  %23 = ptrtoint ptr %bbl to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %bbl, align 8
  %25 = ptrtoint ptr %block to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %block, align 4
  %call9 = call fastcc i32 @xfs_btree_bload_leaf(ptr noundef %cur, i32 noundef %spec.select, ptr noundef %24, ptr noundef %26, ptr noundef %priv)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %if.end8.out_crit_edge

if.end8.out_crit_edge:                            ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end12:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %i.0208)
  %cmp13 = icmp eq i64 %i.0208, 0
  br i1 %cmp13, label %if.then15, label %if.end12.for.inc_crit_edge

if.end12.for.inc_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then15:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  call void @xfs_btree_copy_ptrs(ptr noundef %cur, ptr noundef nonnull %child_ptr, ptr noundef nonnull %ptr, i32 noundef 1) #7
  br label %for.inc

for.inc:                                          ; preds = %if.then15, %if.end12.for.inc_crit_edge
  %inc17 = add nuw i64 %i.0208, 1
  %cmp = icmp ult i64 %inc17, %18
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %cond.end.for.end_crit_edge
  %27 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %bp, align 4
  %cmp.i = icmp eq ptr %28, null
  br i1 %cmp.i, label %for.end.xfs_btree_bload_drop_buf.exit_crit_edge, label %if.end.i

for.end.xfs_btree_bload_drop_buf.exit_crit_edge:  ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %xfs_btree_bload_drop_buf.exit

if.end.i:                                         ; preds = %for.end
  %call.i = call zeroext i1 @xfs_buf_delwri_queue(ptr noundef nonnull %28, ptr noundef nonnull %buffers_list) #7
  br i1 %call.i, label %if.end.i.if.end2.i_crit_edge, label %if.then1.i

if.end.i.if.end2.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end2.i

if.then1.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.1, i32 noundef 346) #7
  br label %if.end2.i

if.end2.i:                                        ; preds = %if.then1.i, %if.end.i.if.end2.i_crit_edge
  call void @xfs_buf_unlock(ptr noundef nonnull %28) #7
  call void @xfs_buf_rele(ptr noundef nonnull %28) #7
  %29 = ptrtoint ptr %bp to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %bp, align 4
  br label %xfs_btree_bload_drop_buf.exit

xfs_btree_bload_drop_buf.exit:                    ; preds = %if.end2.i, %for.end.xfs_btree_bload_drop_buf.exit_crit_edge
  %30 = ptrtoint ptr %bc_nlevels to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %bc_nlevels, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %31)
  %cmp21213 = icmp ugt i8 %31, 1
  br i1 %cmp21213, label %xfs_btree_bload_drop_buf.exit.for.body23_crit_edge, label %xfs_btree_bload_drop_buf.exit.for.end58_crit_edge

xfs_btree_bload_drop_buf.exit.for.end58_crit_edge: ; preds = %xfs_btree_bload_drop_buf.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end58

xfs_btree_bload_drop_buf.exit.for.body23_crit_edge: ; preds = %xfs_btree_bload_drop_buf.exit
  br label %for.body23

for.body23:                                       ; preds = %for.inc56.for.body23_crit_edge, %xfs_btree_bload_drop_buf.exit.for.body23_crit_edge
  %level.0215 = phi i32 [ %inc57, %for.inc56.for.body23_crit_edge ], [ 1, %xfs_btree_bload_drop_buf.exit.for.body23_crit_edge ]
  %total_blocks.0214 = phi i64 [ %add52, %for.inc56.for.body23_crit_edge ], [ %18, %xfs_btree_bload_drop_buf.exit.for.body23_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %first_ptr) #7
  %32 = ptrtoint ptr %first_ptr to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 -1, ptr %first_ptr, align 8, !annotation !61
  %33 = ptrtoint ptr %blocks to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %blocks, align 8
  %35 = ptrtoint ptr %block to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr null, ptr %block, align 4
  call void @xfs_btree_set_ptr_null(ptr noundef %cur, ptr noundef nonnull %ptr) #7
  call fastcc void @xfs_btree_bload_level_geometry(ptr noundef %cur, ptr noundef %bbl, i32 noundef %level.0215, i64 noundef %34, ptr noundef nonnull %avg_per_block, ptr noundef nonnull %blocks, ptr noundef nonnull %blocks_with_extra)
  %36 = ptrtoint ptr %blocks to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %blocks, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %37)
  %cmp25209.not = icmp eq i64 %37, 0
  br i1 %cmp25209.not, label %for.body23.for.end51_crit_edge, label %for.body27.lr.ph

for.body23.for.end51_crit_edge:                   ; preds = %for.body23
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end51

for.body27.lr.ph:                                 ; preds = %for.body23
  %38 = ptrtoint ptr %avg_per_block to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %avg_per_block, align 4
  br label %for.body27

for.body27:                                       ; preds = %for.inc49.for.body27_crit_edge, %for.body27.lr.ph
  %i.1210 = phi i64 [ 0, %for.body27.lr.ph ], [ %inc50, %for.inc49.for.body27_crit_edge ]
  %40 = ptrtoint ptr %blocks_with_extra to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %blocks_with_extra, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %i.1210, i64 %41)
  %cmp29 = icmp ult i64 %i.1210, %41
  %inc32 = zext i1 %cmp29 to i32
  %spec.select183 = add i32 %39, %inc32
  %call34 = call fastcc i32 @xfs_btree_bload_prep_block(ptr noundef %cur, ptr noundef %bbl, ptr noundef nonnull %buffers_list, i32 noundef %level.0215, i32 noundef %spec.select183, ptr noundef nonnull %ptr, ptr noundef nonnull %bp, ptr noundef nonnull %block, ptr noundef %priv)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.end37, label %for.body27.cleanup53.thread_crit_edge

for.body27.cleanup53.thread_crit_edge:            ; preds = %for.body27
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup53.thread

if.end37:                                         ; preds = %for.body27
  call fastcc void @trace_xfs_btree_bload_block(ptr noundef %cur, i32 noundef %level.0215, i64 noundef %i.1210, i64 noundef %37, ptr noundef nonnull %ptr, i32 noundef %spec.select183)
  %42 = ptrtoint ptr %block to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %block, align 4
  %call38 = call fastcc i32 @xfs_btree_bload_node(ptr noundef %cur, i32 noundef %spec.select183, ptr noundef nonnull %child_ptr, ptr noundef %43)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.end41, label %if.end37.cleanup53.thread_crit_edge

if.end37.cleanup53.thread_crit_edge:              ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup53.thread

if.end41:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %i.1210)
  %cmp42 = icmp eq i64 %i.1210, 0
  br i1 %cmp42, label %if.then44, label %if.end41.for.inc49_crit_edge

if.end41.for.inc49_crit_edge:                     ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc49

if.then44:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #9
  call void @xfs_btree_copy_ptrs(ptr noundef %cur, ptr noundef nonnull %first_ptr, ptr noundef nonnull %ptr, i32 noundef 1) #7
  br label %for.inc49

for.inc49:                                        ; preds = %if.then44, %if.end41.for.inc49_crit_edge
  %inc50 = add nuw i64 %i.1210, 1
  %cmp25 = icmp ult i64 %inc50, %37
  br i1 %cmp25, label %for.inc49.for.body27_crit_edge, label %for.inc49.for.end51_crit_edge

for.inc49.for.end51_crit_edge:                    ; preds = %for.inc49
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end51

for.inc49.for.body27_crit_edge:                   ; preds = %for.inc49
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body27

for.end51:                                        ; preds = %for.inc49.for.end51_crit_edge, %for.body23.for.end51_crit_edge
  %add52 = add i64 %37, %total_blocks.0214
  %44 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %bp, align 4
  %cmp.i184 = icmp eq ptr %45, null
  br i1 %cmp.i184, label %for.end51.for.inc56_crit_edge, label %if.end.i186

for.end51.for.inc56_crit_edge:                    ; preds = %for.end51
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc56

if.end.i186:                                      ; preds = %for.end51
  %call.i185 = call zeroext i1 @xfs_buf_delwri_queue(ptr noundef nonnull %45, ptr noundef nonnull %buffers_list) #7
  br i1 %call.i185, label %if.end.i186.if.end2.i188_crit_edge, label %if.then1.i187

if.end.i186.if.end2.i188_crit_edge:               ; preds = %if.end.i186
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end2.i188

if.then1.i187:                                    ; preds = %if.end.i186
  call void @__sanitizer_cov_trace_pc() #9
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.1, i32 noundef 346) #7
  br label %if.end2.i188

if.end2.i188:                                     ; preds = %if.then1.i187, %if.end.i186.if.end2.i188_crit_edge
  call void @xfs_buf_unlock(ptr noundef nonnull %45) #7
  call void @xfs_buf_rele(ptr noundef nonnull %45) #7
  %46 = ptrtoint ptr %bp to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr null, ptr %bp, align 4
  br label %for.inc56

cleanup53.thread:                                 ; preds = %if.end37.cleanup53.thread_crit_edge, %for.body27.cleanup53.thread_crit_edge
  %ret.5.ph = phi i32 [ %call38, %if.end37.cleanup53.thread_crit_edge ], [ %call34, %for.body27.cleanup53.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %first_ptr) #7
  br label %out

for.inc56:                                        ; preds = %if.end2.i188, %for.end51.for.inc56_crit_edge
  call void @xfs_btree_copy_ptrs(ptr noundef %cur, ptr noundef nonnull %child_ptr, ptr noundef nonnull %first_ptr, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %first_ptr) #7
  %inc57 = add nuw nsw i32 %level.0215, 1
  %47 = ptrtoint ptr %bc_nlevels to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %bc_nlevels, align 8
  %conv20 = zext i8 %48 to i32
  %cmp21 = icmp ult i32 %inc57, %conv20
  br i1 %cmp21, label %for.inc56.for.body23_crit_edge, label %for.inc56.for.end58_crit_edge

for.inc56.for.end58_crit_edge:                    ; preds = %for.inc56
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end58

for.inc56.for.body23_crit_edge:                   ; preds = %for.inc56
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body23

for.end58:                                        ; preds = %for.inc56.for.end58_crit_edge, %xfs_btree_bload_drop_buf.exit.for.end58_crit_edge
  %total_blocks.0.lcssa = phi i64 [ %18, %xfs_btree_bload_drop_buf.exit.for.end58_crit_edge ], [ %add52, %for.inc56.for.end58_crit_edge ]
  %49 = ptrtoint ptr %bc_flags to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %bc_flags, align 8
  %and60 = and i32 %50, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and60)
  %tobool61.not = icmp eq i32 %and60, 0
  br i1 %tobool61.not, label %if.else, label %if.then62

if.then62:                                        ; preds = %for.end58
  %call63 = call zeroext i1 @xfs_btree_ptr_is_null(ptr noundef %cur, ptr noundef nonnull %ptr) #7
  br i1 %call63, label %if.then62.cond.end72_crit_edge, label %cond.false71, !prof !52

if.then62.cond.end72_crit_edge:                   ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end72

cond.false71:                                     ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #9
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, i32 noundef 853) #7
  br label %cond.end72

cond.end72:                                       ; preds = %cond.false71, %if.then62.cond.end72_crit_edge
  %51 = ptrtoint ptr %bc_nlevels to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %bc_nlevels, align 8
  %conv74 = zext i8 %52 to i32
  %ifake = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 10, i32 0, i32 1
  %53 = ptrtoint ptr %ifake to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %ifake, align 4
  %if_levels = getelementptr inbounds %struct.xbtree_ifakeroot, ptr %54, i32 0, i32 2
  %55 = ptrtoint ptr %if_levels to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %conv74, ptr %if_levels, align 8
  %sub = add i64 %total_blocks.0.lcssa, -1
  %56 = load ptr, ptr %ifake, align 4
  %if_blocks = getelementptr inbounds %struct.xbtree_ifakeroot, ptr %56, i32 0, i32 1
  %57 = ptrtoint ptr %if_blocks to i32
  call void @__asan_store8_noabort(i32 %57)
  store i64 %sub, ptr %if_blocks, align 8
  br label %if.end79

if.else:                                          ; preds = %for.end58
  call void @__sanitizer_cov_trace_pc() #9
  %58 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %ptr, align 8
  %60 = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 10, i32 0, i32 1
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %60, align 4
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %59, ptr %62, align 4
  %64 = ptrtoint ptr %bc_nlevels to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %bc_nlevels, align 8
  %conv77 = zext i8 %65 to i32
  %66 = load ptr, ptr %60, align 4
  %af_levels = getelementptr inbounds %struct.xbtree_afakeroot, ptr %66, i32 0, i32 1
  %67 = ptrtoint ptr %af_levels to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %conv77, ptr %af_levels, align 4
  %conv78 = trunc i64 %total_blocks.0.lcssa to i32
  %68 = load ptr, ptr %60, align 4
  %af_blocks = getelementptr inbounds %struct.xbtree_afakeroot, ptr %68, i32 0, i32 2
  %69 = ptrtoint ptr %af_blocks to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %conv78, ptr %af_blocks, align 4
  br label %if.end79

if.end79:                                         ; preds = %if.else, %cond.end72
  %call80 = call i32 @xfs_buf_delwri_submit(ptr noundef nonnull %buffers_list) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80)
  %tobool81.not = icmp eq i32 %call80, 0
  br i1 %tobool81.not, label %if.end83, label %if.end79.out_crit_edge

if.end79.out_crit_edge:                           ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end83:                                         ; preds = %if.end79
  %70 = ptrtoint ptr %buffers_list to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load volatile ptr, ptr %buffers_list, align 4
  %cmp.i190.not = icmp eq ptr %71, %buffers_list
  br i1 %cmp.i190.not, label %if.end83.out_crit_edge, label %if.then86

if.end83.out_crit_edge:                           ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.then86:                                        ; preds = %if.end83
  %72 = ptrtoint ptr %buffers_list to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load volatile ptr, ptr %buffers_list, align 4
  %cmp.i191.not = icmp eq ptr %73, %buffers_list
  br i1 %cmp.i191.not, label %if.then86.out_crit_edge, label %cond.false96, !prof !52

if.then86.out_crit_edge:                          ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

cond.false96:                                     ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #9
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.1, i32 noundef 871) #7
  br label %out

out:                                              ; preds = %cond.false96, %if.then86.out_crit_edge, %if.end83.out_crit_edge, %if.end79.out_crit_edge, %cleanup53.thread, %if.end8.out_crit_edge, %for.body.out_crit_edge
  %ret.6 = phi i32 [ %call80, %if.end79.out_crit_edge ], [ 0, %if.end83.out_crit_edge ], [ -5, %if.then86.out_crit_edge ], [ -5, %cond.false96 ], [ %ret.5.ph, %cleanup53.thread ], [ %call9, %if.end8.out_crit_edge ], [ %call, %for.body.out_crit_edge ]
  call void @xfs_buf_delwri_cancel(ptr noundef nonnull %buffers_list) #7
  %74 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %bp, align 4
  %tobool99.not = icmp eq ptr %75, null
  br i1 %tobool99.not, label %out.cleanup102_crit_edge, label %if.then100

out.cleanup102_crit_edge:                         ; preds = %out
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup102

if.then100:                                       ; preds = %out
  call void @__sanitizer_cov_trace_pc() #9
  call void @xfs_buf_unlock(ptr noundef nonnull %75) #7
  call void @xfs_buf_rele(ptr noundef nonnull %75) #7
  br label %cleanup102

cleanup102:                                       ; preds = %if.then100, %out.cleanup102_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %avg_per_block) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %blocks_with_extra) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %blocks) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %block) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bp) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ptr) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %child_ptr) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %buffers_list) #7
  ret i32 %ret.6
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_btree_set_ptr_null(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xfs_btree_bload_prep_block(ptr noundef %cur, ptr nocapture noundef readonly %bbl, ptr noundef %buffers_list, i32 noundef %level, i32 noundef %nr_this_block, ptr noundef %ptrp, ptr nocapture noundef %bpp, ptr nocapture noundef %blockp, ptr noundef %priv) unnamed_addr #3 align 64 {
entry:
  %new_ptr = alloca %union.xfs_btree_ptr, align 8
  %new_bp = alloca ptr, align 4
  %new_block = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %new_ptr) #7
  %0 = ptrtoint ptr %new_ptr to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %new_ptr, align 8, !annotation !61
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %new_bp) #7
  %1 = ptrtoint ptr %new_bp to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %new_bp, align 4, !annotation !61
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %new_block) #7
  %2 = ptrtoint ptr %new_block to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %new_block, align 4, !annotation !61
  %bc_flags = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 4
  %3 = ptrtoint ptr %bc_flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %bc_flags, align 8
  %and = and i32 %4, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %bc_nlevels = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 7
  %5 = ptrtoint ptr %bc_nlevels to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %bc_nlevels, align 8
  %conv = zext i8 %6 to i32
  %sub = add nsw i32 %conv, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %level)
  %cmp = icmp eq i32 %sub, %level
  br i1 %cmp, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  %call = tail call ptr @xfs_btree_ifork_ptr(ptr noundef %cur) #7
  %7 = ptrtoint ptr %bpp to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bpp, align 4
  %cmp2 = icmp eq ptr %8, null
  br i1 %cmp2, label %if.then.cond.end_crit_edge, label %cond.false, !prof !52

if.then.cond.end_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

cond.false:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.1, i32 noundef 384) #7
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.then.cond.end_crit_edge
  %iroot_size = getelementptr inbounds %struct.xfs_btree_bload, ptr %bbl, i32 0, i32 2
  %9 = ptrtoint ptr %iroot_size to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %iroot_size, align 8
  %call6 = tail call i32 %10(ptr noundef %cur, i32 noundef %nr_this_block, ptr noundef %priv) #7
  %call.i = tail call ptr @kmem_alloc(i32 noundef %call6, i32 noundef 16) #7
  %if_broot = getelementptr inbounds %struct.xfs_ifork, ptr %call, i32 0, i32 1
  %11 = ptrtoint ptr %if_broot to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call.i, ptr %if_broot, align 8
  %conv8 = trunc i32 %call6 to i16
  %if_broot_bytes = getelementptr inbounds %struct.xfs_ifork, ptr %call, i32 0, i32 5
  %12 = ptrtoint ptr %if_broot_bytes to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %conv8, ptr %if_broot_bytes, align 8
  %bc_mp = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 1
  %13 = ptrtoint ptr %bc_mp to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %bc_mp, align 4
  %bc_btnum = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 5
  %15 = ptrtoint ptr %bc_btnum to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %bc_btnum, align 4
  %conv10 = trunc i32 %level to i16
  %conv11 = trunc i32 %nr_this_block to i16
  %17 = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 10
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 8
  %i_ino = getelementptr inbounds %struct.xfs_inode, ptr %19, i32 0, i32 4
  %20 = ptrtoint ptr %i_ino to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %i_ino, align 8
  %22 = ptrtoint ptr %bc_flags to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %bc_flags, align 8
  tail call void @xfs_btree_init_block_int(ptr noundef %14, ptr noundef %call.i, i64 noundef -1, i32 noundef %16, i16 noundef zeroext %conv10, i16 noundef zeroext %conv11, i64 noundef %21, i32 noundef %23) #7
  %24 = ptrtoint ptr %bpp to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %bpp, align 4
  %25 = ptrtoint ptr %if_broot to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %if_broot, align 8
  %27 = ptrtoint ptr %blockp to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %26, ptr %blockp, align 4
  tail call void @xfs_btree_set_ptr_null(ptr noundef %cur, ptr noundef %ptrp) #7
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  call void @xfs_btree_set_ptr_null(ptr noundef %cur, ptr noundef nonnull %new_ptr) #7
  %claim_block = getelementptr inbounds %struct.xfs_btree_bload, ptr %bbl, i32 0, i32 1
  %28 = ptrtoint ptr %claim_block to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %claim_block, align 4
  %call14 = call i32 %29(ptr noundef %cur, ptr noundef nonnull %new_ptr, ptr noundef %priv) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end17, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end17:                                         ; preds = %if.end
  %call18 = call zeroext i1 @xfs_btree_ptr_is_null(ptr noundef %cur, ptr noundef nonnull %new_ptr) #7
  br i1 %call18, label %cond.false28, label %if.end17.cond.end29_crit_edge, !prof !53

if.end17.cond.end29_crit_edge:                    ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end29

cond.false28:                                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.1, i32 noundef 409) #7
  br label %cond.end29

cond.end29:                                       ; preds = %cond.false28, %if.end17.cond.end29_crit_edge
  %call30 = call i32 @xfs_btree_get_buf_block(ptr noundef %cur, ptr noundef nonnull %new_ptr, ptr noundef nonnull %new_block, ptr noundef nonnull %new_bp) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.end33, label %cond.end29.cleanup_crit_edge

cond.end29.cleanup_crit_edge:                     ; preds = %cond.end29
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end33:                                         ; preds = %cond.end29
  %30 = ptrtoint ptr %blockp to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %blockp, align 4
  %tobool34.not = icmp eq ptr %31, null
  br i1 %tobool34.not, label %if.end33.if.end36_crit_edge, label %if.then35

if.end33.if.end36_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end36

if.then35:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #9
  call void @xfs_btree_set_sibling(ptr noundef %cur, ptr noundef nonnull %31, ptr noundef nonnull %new_ptr, i32 noundef 16) #7
  br label %if.end36

if.end36:                                         ; preds = %if.then35, %if.end33.if.end36_crit_edge
  %32 = ptrtoint ptr %bpp to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %bpp, align 4
  %cmp.i = icmp eq ptr %33, null
  br i1 %cmp.i, label %if.end36.xfs_btree_bload_drop_buf.exit_crit_edge, label %if.end.i

if.end36.xfs_btree_bload_drop_buf.exit_crit_edge: ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #9
  br label %xfs_btree_bload_drop_buf.exit

if.end.i:                                         ; preds = %if.end36
  %call.i77 = call zeroext i1 @xfs_buf_delwri_queue(ptr noundef nonnull %33, ptr noundef %buffers_list) #7
  br i1 %call.i77, label %if.end.i.if.end2.i_crit_edge, label %if.then1.i

if.end.i.if.end2.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end2.i

if.then1.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.1, i32 noundef 346) #7
  br label %if.end2.i

if.end2.i:                                        ; preds = %if.then1.i, %if.end.i.if.end2.i_crit_edge
  %34 = ptrtoint ptr %bpp to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %bpp, align 4
  call void @xfs_buf_unlock(ptr noundef %35) #7
  call void @xfs_buf_rele(ptr noundef %35) #7
  %36 = ptrtoint ptr %bpp to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr null, ptr %bpp, align 4
  br label %xfs_btree_bload_drop_buf.exit

xfs_btree_bload_drop_buf.exit:                    ; preds = %if.end2.i, %if.end36.xfs_btree_bload_drop_buf.exit_crit_edge
  %37 = ptrtoint ptr %new_bp to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %new_bp, align 4
  call void @xfs_btree_init_block_cur(ptr noundef %cur, ptr noundef %38, i32 noundef %level, i32 noundef %nr_this_block) #7
  %39 = ptrtoint ptr %new_block to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %new_block, align 4
  call void @xfs_btree_set_sibling(ptr noundef %cur, ptr noundef %40, ptr noundef %ptrp, i32 noundef 8) #7
  %41 = ptrtoint ptr %new_bp to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %new_bp, align 4
  %43 = ptrtoint ptr %bpp to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %42, ptr %bpp, align 4
  %44 = ptrtoint ptr %new_block to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %new_block, align 4
  %46 = ptrtoint ptr %blockp to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %45, ptr %blockp, align 4
  call void @xfs_btree_copy_ptrs(ptr noundef %cur, ptr noundef %ptrp, ptr noundef nonnull %new_ptr, i32 noundef 1) #7
  br label %cleanup

cleanup:                                          ; preds = %xfs_btree_bload_drop_buf.exit, %cond.end29.cleanup_crit_edge, %if.end.cleanup_crit_edge, %cond.end
  %retval.0 = phi i32 [ 0, %cond.end ], [ 0, %xfs_btree_bload_drop_buf.exit ], [ %call14, %if.end.cleanup_crit_edge ], [ %call30, %cond.end29.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %new_block) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %new_bp) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %new_ptr) #7
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_btree_bload_block(ptr noundef %cur, i32 noundef %level, i64 noundef %block_idx, i64 noundef %nr_blocks, ptr noundef %ptr, i32 noundef %nr_records) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_btree_bload_block, i32 0, i32 1), ptr blockaddress(@trace_xfs_btree_bload_block, %do.body)) #7
          to label %if.end48 [label %do.body], !srcloc !54

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !42) #7
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !52

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #9
  %9 = tail call i32 @llvm.read_register.i32(metadata !42) #7
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !62
  %call42 = tail call i32 @__traceiter_xfs_btree_bload_block(ptr noundef null, ptr noundef %cur, i32 noundef %level, i64 noundef %block_idx, i64 noundef %nr_blocks, ptr noundef %ptr, i32 noundef %nr_records) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !63
  %13 = tail call i32 @llvm.read_register.i32(metadata !42) #7
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !42) #7
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !52

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !42) #7
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !57
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_btree_bload_block, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_btree_bload_block, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_xfs_btree_bload_block.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @trace_xfs_btree_bload_block.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 3981, ptr noundef nonnull @.str.11) #7
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !58
  %31 = tail call i32 @llvm.read_register.i32(metadata !42) #7
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xfs_btree_bload_leaf(ptr noundef %cur, i32 noundef %recs_this_block, ptr nocapture noundef readonly %get_record, ptr noundef %block, ptr noundef %priv) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %recs_this_block)
  %cmp.not12 = icmp eq i32 %recs_this_block, 0
  br i1 %cmp.not12, label %entry.cleanup2_crit_edge, label %for.body.lr.ph

entry.cleanup2_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup2

for.body.lr.ph:                                   ; preds = %entry
  %bc_ops = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %j.013 = phi i32 [ 1, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %call = tail call i32 %get_record(ptr noundef %cur, ptr noundef %priv) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.inc, label %for.body.cleanup2_crit_edge

for.body.cleanup2_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup2

for.inc:                                          ; preds = %for.body
  %call1 = tail call ptr @xfs_btree_rec_addr(ptr noundef %cur, i32 noundef %j.013, ptr noundef %block) #7
  %0 = ptrtoint ptr %bc_ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bc_ops, align 8
  %init_rec_from_cur = getelementptr inbounds %struct.xfs_btree_ops, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %init_rec_from_cur to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %init_rec_from_cur, align 4
  tail call void %3(ptr noundef %cur, ptr noundef %call1) #7
  %inc = add i32 %j.013, 1
  %cmp.not = icmp ugt i32 %inc, %recs_this_block
  br i1 %cmp.not, label %for.inc.cleanup2_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.cleanup2_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup2

cleanup2:                                         ; preds = %for.inc.cleanup2_crit_edge, %for.body.cleanup2_crit_edge, %entry.cleanup2_crit_edge
  %retval.2 = phi i32 [ 0, %entry.cleanup2_crit_edge ], [ %call, %for.body.cleanup2_crit_edge ], [ 0, %for.inc.cleanup2_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_btree_copy_ptrs(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xfs_btree_bload_node(ptr noundef %cur, i32 noundef %recs_this_block, ptr noundef %child_ptr, ptr noundef %block) unnamed_addr #3 align 64 {
entry:
  %child_key = alloca %union.xfs_btree_key, align 8
  %child_block = alloca ptr, align 4
  %child_bp = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %recs_this_block)
  %cmp.not30 = icmp eq i32 %recs_this_block, 0
  br i1 %cmp.not30, label %entry.cleanup11_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup11_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup11

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %j.031 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 1, %entry.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %child_key) #7
  %0 = call ptr @memset(ptr %child_key, i32 255, i32 40)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %child_block) #7
  %1 = ptrtoint ptr %child_block to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %child_block, align 4, !annotation !61
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %child_bp) #7
  %2 = ptrtoint ptr %child_bp to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %child_bp, align 4, !annotation !61
  %call = call zeroext i1 @xfs_btree_ptr_is_null(ptr noundef %cur, ptr noundef %child_ptr) #7
  br i1 %call, label %cond.false, label %for.body.cond.end_crit_edge, !prof !53

for.body.cond.end_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

cond.false:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.1, i32 noundef 486) #7
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %for.body.cond.end_crit_edge
  %call3 = call i32 @xfs_btree_get_buf_block(ptr noundef %cur, ptr noundef %child_ptr, ptr noundef nonnull %child_block, ptr noundef nonnull %child_bp) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %for.inc, label %cleanup

cleanup:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %child_bp) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %child_block) #7
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %child_key) #7
  br label %cleanup11

for.inc:                                          ; preds = %cond.end
  %call5 = call ptr @xfs_btree_ptr_addr(ptr noundef %cur, i32 noundef %j.031, ptr noundef %block) #7
  call void @xfs_btree_copy_ptrs(ptr noundef %cur, ptr noundef %call5, ptr noundef %child_ptr, i32 noundef 1) #7
  %call6 = call ptr @xfs_btree_key_addr(ptr noundef %cur, i32 noundef %j.031, ptr noundef %block) #7
  %3 = ptrtoint ptr %child_block to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %child_block, align 4
  call void @xfs_btree_get_keys(ptr noundef %cur, ptr noundef %4, ptr noundef nonnull %child_key) #7
  call void @xfs_btree_copy_keys(ptr noundef %cur, ptr noundef %call6, ptr noundef nonnull %child_key, i32 noundef 1) #7
  %5 = ptrtoint ptr %child_block to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %child_block, align 4
  call void @xfs_btree_get_sibling(ptr noundef %cur, ptr noundef %6, ptr noundef %child_ptr, i32 noundef 16) #7
  %7 = ptrtoint ptr %child_bp to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %child_bp, align 4
  call void @xfs_buf_unlock(ptr noundef %8) #7
  call void @xfs_buf_rele(ptr noundef %8) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %child_bp) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %child_block) #7
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %child_key) #7
  %inc = add i32 %j.031, 1
  %cmp.not = icmp ugt i32 %inc, %recs_this_block
  br i1 %cmp.not, label %for.inc.cleanup11_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.cleanup11_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup11

cleanup11:                                        ; preds = %for.inc.cleanup11_crit_edge, %cleanup, %entry.cleanup11_crit_edge
  %retval.2 = phi i32 [ %call3, %cleanup ], [ 0, %entry.cleanup11_crit_edge ], [ 0, %for.inc.cleanup11_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @xfs_btree_ptr_is_null(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_buf_delwri_submit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_buf_delwri_cancel(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_btree_commit_afakeroot(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_btree_commit_ifakeroot(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xfs_btree_bload_desired_npb(ptr noundef %cur, ptr nocapture noundef readonly %bbl, i32 noundef %level) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @xfs_btree_bload_max_npb(ptr noundef %cur, ptr noundef %bbl, i32 noundef %level)
  %bc_nlevels = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 7
  %0 = ptrtoint ptr %bc_nlevels to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %bc_nlevels, align 8
  %conv = zext i8 %1 to i32
  %sub = add nsw i32 %conv, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %level)
  %cmp = icmp eq i32 %sub, %level
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp2 = icmp eq i32 %call, 0
  %.call = select i1 %cmp2, i32 1, i32 %call
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %bc_ops = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 2
  %2 = ptrtoint ptr %bc_ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bc_ops, align 8
  %get_minrecs = getelementptr inbounds %struct.xfs_btree_ops, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %get_minrecs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %get_minrecs, align 4
  %call4 = tail call i32 %5(ptr noundef %cur, i32 noundef %level) #7
  %6 = tail call i32 @llvm.umax.i32(i32 %call4, i32 %call)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %.call, %if.then ], [ %6, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div64_u64_rem(i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_btree_bload_level_geometry(ptr noundef %cur, i32 noundef %level, i64 noundef %nr_this_level, i32 noundef %nr_per_block, i32 noundef %desired_npb, i64 noundef %blocks, i64 noundef %blocks_with_extra) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_btree_bload_level_geometry, i32 0, i32 1), ptr blockaddress(@trace_xfs_btree_bload_level_geometry, %do.body)) #7
          to label %if.end48 [label %do.body], !srcloc !54

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !42) #7
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !52

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #9
  %9 = tail call i32 @llvm.read_register.i32(metadata !42) #7
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !64
  %call42 = tail call i32 @__traceiter_xfs_btree_bload_level_geometry(ptr noundef null, ptr noundef %cur, i32 noundef %level, i64 noundef %nr_this_level, i32 noundef %nr_per_block, i32 noundef %desired_npb, i64 noundef %blocks, i64 noundef %blocks_with_extra) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !65
  %13 = tail call i32 @llvm.read_register.i32(metadata !42) #7
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !42) #7
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !52

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !42) #7
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !57
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_btree_bload_level_geometry, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_btree_bload_level_geometry, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_xfs_btree_bload_level_geometry.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @trace_xfs_btree_bload_level_geometry.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 3938, ptr noundef nonnull @.str.11) #7
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !58
  %31 = tail call i32 @llvm.read_register.i32(metadata !42) #7
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xfs_btree_bload_max_npb(ptr noundef %cur, ptr nocapture noundef readonly %bbl, i32 noundef %level) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %bc_nlevels = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 7
  %0 = ptrtoint ptr %bc_nlevels to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %bc_nlevels, align 8
  %conv = zext i8 %1 to i32
  %sub = add nsw i32 %conv, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %level)
  %cmp = icmp eq i32 %sub, %level
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %bc_ops = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 2
  %2 = ptrtoint ptr %bc_ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bc_ops, align 8
  %get_dmaxrecs = getelementptr inbounds %struct.xfs_btree_ops, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %get_dmaxrecs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %get_dmaxrecs, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 %5(ptr noundef %cur, i32 noundef %level) #7
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %bc_ops4 = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 2
  %6 = ptrtoint ptr %bc_ops4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bc_ops4, align 8
  %get_maxrecs = getelementptr inbounds %struct.xfs_btree_ops, ptr %7, i32 0, i32 9
  %8 = ptrtoint ptr %get_maxrecs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %get_maxrecs, align 4
  %call5 = tail call i32 %9(ptr noundef %cur, i32 noundef %level) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %level)
  %cmp6 = icmp eq i32 %level, 0
  %leaf_slack = getelementptr inbounds %struct.xfs_btree_bload, ptr %bbl, i32 0, i32 4
  %node_slack = getelementptr inbounds %struct.xfs_btree_bload, ptr %bbl, i32 0, i32 5
  %.pn.in = select i1 %cmp6, ptr %leaf_slack, ptr %node_slack
  %10 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pn = load i32, ptr %.pn.in, align 4
  %ret.0 = sub i32 %call5, %.pn
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %ret.0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_btree_bload_level_geometry(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i32 noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xfs_btree_ifork_ptr(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_btree_init_block_int(ptr noundef, ptr noundef, i64 noundef, i32 noundef, i16 noundef zeroext, i16 noundef zeroext, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_btree_get_buf_block(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_btree_set_sibling(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_btree_init_block_cur(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_btree_bload_block(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xfs_btree_rec_addr(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @xfs_buf_delwri_queue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xfs_btree_ptr_addr(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xfs_btree_key_addr(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_btree_get_keys(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_btree_copy_keys(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_btree_get_sibling(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_buf_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_buf_rele(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind readonly }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !17, !19, !21, !22, !23, !24, !26, !27, !29, !30, !32, !33, !35, !37, !39, !40}
!llvm.named.register.sp = !{!42}
!llvm.module.flags = !{!43, !44, !45, !46, !47, !48, !49, !50}
!llvm.ident = !{!51}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/xfs/libxfs/xfs_btree_staging.c", i32 138, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../fs/xfs/libxfs/xfs_btree_staging.c", i32 139, i32 2}
!5 = !{ptr @.str.3, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../fs/xfs/libxfs/xfs_btree_staging.c", i32 140, i32 2}
!7 = !{ptr @.str.4, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../fs/xfs/libxfs/xfs_btree_staging.c", i32 169, i32 2}
!9 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../fs/xfs/libxfs/xfs_btree_staging.c", i32 220, i32 2}
!11 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../fs/xfs/libxfs/xfs_btree_staging.c", i32 706, i32 4}
!13 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../fs/xfs/libxfs/xfs_btree_staging.c", i32 853, i32 3}
!15 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../fs/xfs/libxfs/xfs_btree_staging.c", i32 871, i32 3}
!17 = !{ptr @.str.9, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../fs/xfs/libxfs/xfs_btree_staging.c", i32 67, i32 2}
!19 = distinct !{null, !20, !"__already_done", i1 false, i1 false}
!20 = !{!"../fs/xfs/xfs_trace.h", i32 3838, i32 1}
!21 = !{ptr @.str.10, !20, !"<string literal>", i1 false, i1 false}
!22 = distinct !{null, !20, !"__warned", i1 false, i1 false}
!23 = !{ptr @.str.11, !20, !"<string literal>", i1 false, i1 false}
!24 = distinct !{null, !25, !"__already_done", i1 false, i1 false}
!25 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!26 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!27 = distinct !{null, !28, !"__already_done", i1 false, i1 false}
!28 = !{!"../fs/xfs/xfs_trace.h", i32 3866, i32 1}
!29 = distinct !{null, !28, !"__warned", i1 false, i1 false}
!30 = distinct !{null, !31, !"__already_done", i1 false, i1 false}
!31 = !{!"../fs/xfs/xfs_trace.h", i32 3899, i32 1}
!32 = distinct !{null, !31, !"__warned", i1 false, i1 false}
!33 = !{ptr @.str.13, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../fs/xfs/libxfs/xfs_btree_staging.c", i32 384, i32 3}
!35 = !{ptr @.str.14, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../fs/xfs/libxfs/xfs_btree_staging.c", i32 409, i32 2}
!37 = distinct !{null, !38, !"__already_done", i1 false, i1 false}
!38 = !{!"../fs/xfs/xfs_trace.h", i32 3940, i32 1}
!39 = distinct !{null, !38, !"__warned", i1 false, i1 false}
!40 = !{ptr @.str.15, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../fs/xfs/libxfs/xfs_btree_staging.c", i32 486, i32 3}
!42 = !{!"sp"}
!43 = !{i32 1, !"wchar_size", i32 2}
!44 = !{i32 1, !"min_enum_size", i32 4}
!45 = !{i32 8, !"branch-target-enforcement", i32 0}
!46 = !{i32 8, !"sign-return-address", i32 0}
!47 = !{i32 8, !"sign-return-address-all", i32 0}
!48 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!49 = !{i32 7, !"uwtable", i32 1}
!50 = !{i32 7, !"frame-pointer", i32 2}
!51 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!52 = !{!"branch_weights", i32 2000, i32 1}
!53 = !{!"branch_weights", i32 1, i32 2000}
!54 = !{i64 2148269775, i64 2148269780, i64 2148269793, i64 2148269837, i64 2148269871, i64 2148269892}
!55 = !{i64 2165721895}
!56 = !{i64 2165722116}
!57 = !{i64 2149971868}
!58 = !{i64 2149972904}
!59 = !{i64 2165738975}
!60 = !{i64 2165739196}
!61 = !{!"auto-init"}
!62 = !{i64 2165779107}
!63 = !{i64 2165783471}
!64 = !{i64 2165759023}
!65 = !{i64 2165759408}
