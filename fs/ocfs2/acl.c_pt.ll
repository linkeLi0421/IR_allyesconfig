; ModuleID = '/llk/IR_all_yes/fs/ocfs2/acl.c_pt.bc'
source_filename = "../fs/ocfs2/acl.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i32, i8, %struct.list_head, ptr, %struct.rw_semaphore, ptr, %struct.work_struct, %struct.ctl_table_set, ptr, ptr, [16 x i32] }
%struct.uid_gid_map = type { i32, %union.anon }
%union.anon = type { [5 x %struct.uid_gid_extent] }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.atomic_t = type { i32 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.10, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.10 = type { %struct.anon.11 }
%struct.anon.11 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
%struct.ocfs2_lock_holder = type { %struct.list_head, ptr, i32 }
%struct.timespec64 = type { i64, i32 }
%struct.buffer_head = type { i32, ptr, ptr, i64, i32, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.spinlock }
%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.76, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.77, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.78, ptr, %struct.address_space, %struct.list_head, %union.anon.79, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.76 = type { i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%union.anon.77 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.78 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%union.anon.79 = type { ptr }
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
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ocfs2_dinode = type { [8 x i8], i32, i16, i16, i16, i16, i32, i32, i32, i64, i16, i16, i32, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i16, i16, i64, %struct.ocfs2_block_check, i64, i64, i64, i16, [3 x i16], [2 x i64], %union.anon.85, %union.anon.89 }
%struct.ocfs2_block_check = type { i32, i16, i16 }
%union.anon.85 = type { i64 }
%union.anon.89 = type { %struct.ocfs2_super_block }
%struct.ocfs2_super_block = type { i16, i16, i16, i16, i16, i16, i32, i64, i32, i32, i32, i32, i64, i64, i32, i32, i16, i16, i32, i64, [64 x i8], [16 x i8], %struct.ocfs2_cluster_info, i16, i16, [3 x i32], [15 x i64] }
%struct.ocfs2_cluster_info = type { [4 x i8], %union.anon.90, [16 x i8] }
%union.anon.90 = type { i32 }
%struct.jbd2_journal_handle = type { %union.anon.82, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%union.anon.82 = type { ptr }
%struct.transaction_s = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, %struct.spinlock, i32, i32, i32, %struct.transaction_chp_stats_s, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, i32, i64, i8, i32, %struct.list_head }
%struct.transaction_chp_stats_s = type { i32, i32, i32, i32 }
%struct.posix_acl = type { %struct.refcount_struct, %struct.callback_head, i32, [0 x %struct.posix_acl_entry] }
%struct.posix_acl_entry = type { i16, i16, %union.anon.14 }
%union.anon.14 = type { %struct.kuid_t }
%struct.ocfs2_acl_entry = type { i16, i16, i32 }
%struct.ocfs2_super = type { ptr, ptr, ptr, ptr, [7 x ptr], ptr, ptr, ptr, %struct.spinlock, i64, i64, i64, i32, ptr, i32, ptr, i64, i32, i32, i32, i32, %struct.spinlock, i32, i32, i16, i16, %struct.atomic_t, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, %struct.mutex, ptr, ptr, ptr, i32, %struct.wait_queue_head, ptr, i32, %struct.delayed_work, i32, i32, i32, i32, ptr, i64, %struct.ocfs2_reservation_map, i32, i32, ptr, ptr, %struct.ocfs2_blockcheck_stats, %struct.ocfs2_alloc_stats, [20 x i8], i8, [5 x i8], [17 x i8], ptr, %struct.ocfs2_lock_res, %struct.ocfs2_lock_res, %struct.ocfs2_lock_res, %struct.rw_semaphore, %struct.ocfs2_lock_res, %struct.mutex, ptr, ptr, %struct.wait_queue_head, %struct.spinlock, ptr, %struct.wait_queue_head, i32, i32, %struct.list_head, i32, %struct.llist_head, %struct.work_struct, %struct.wait_queue_head, ptr, ptr, %struct.delayed_work, %struct.atomic_t, i32, %struct.ocfs2_node_map, ptr, %struct.wait_queue_head, %struct.ocfs2_orphan_scan, %struct.spinlock, i32, [4 x i32], i64, %struct.rb_root, ptr, %struct.mutex, ptr, ptr, %struct.ocfs2_filecheck_sysfs_entry }
%struct.ocfs2_reservation_map = type { %struct.rb_root, ptr, ptr, i32, %struct.list_head }
%struct.ocfs2_blockcheck_stats = type { %struct.spinlock, i64, i64, i64, ptr }
%struct.ocfs2_alloc_stats = type { %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t }
%struct.ocfs2_lock_res = type { ptr, ptr, %struct.list_head, %struct.list_head, %struct.list_head, i32, [32 x i8], i32, i32, i8, i8, i8, i8, i8, i8, i32, %struct.spinlock, %struct.ocfs2_dlm_lksb, %struct.wait_queue_head, %struct.list_head, %struct.ocfs2_lock_stats, i32, i64, %struct.ocfs2_lock_stats, %struct.lockdep_map }
%struct.ocfs2_dlm_lksb = type { %union.anon.94, ptr }
%union.anon.94 = type { %struct.fsdlm_lksb_plus_lvb }
%struct.fsdlm_lksb_plus_lvb = type { %struct.dlm_lksb, [64 x i8] }
%struct.dlm_lksb = type { i32, i32, i8, ptr }
%struct.ocfs2_lock_stats = type { i64, i32, i32, i32, i64 }
%struct.llist_head = type { ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ocfs2_node_map = type { i16, [8 x i32] }
%struct.ocfs2_orphan_scan = type { %struct.mutex, ptr, %struct.ocfs2_lock_res, %struct.delayed_work, i64, i32, i32, %struct.atomic_t }
%struct.ocfs2_filecheck_sysfs_entry = type { %struct.kobject, %struct.completion, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }

@init_user_ns = external dso_local global %struct.user_namespace, align 4
@__func__.ocfs2_init_acl = private unnamed_addr constant [15 x i8] c"ocfs2_init_acl\00", align 1
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"status = %lld\0A\00", [17 x i8] zeroinitializer }, align 32
@__func__.ocfs2_acl_set_mode = private unnamed_addr constant [19 x i8] c"ocfs2_acl_set_mode\00", align 1
@.str.1 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 524289, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.2 = internal global [7 x i64] [i64 5, i64 32, i64 524289, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.3 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 524289, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.4 = internal global [4 x i64] [i64 2, i64 32, i64 16384, i64 32768]
@__sancov_gen_cov_switch_values.5 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 8]
@__sancov_gen_cov_switch_values.6 = internal global [4 x i64] [i64 2, i64 32, i64 16384, i64 32768]
@__sancov_gen_cov_switch_values.7 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 8]
@__sancov_gen_cov_switch_values.8 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967235]
@__sancov_gen_cov_switch_values.9 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 524289, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.10 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 524289, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.15, i32 376, i32 5 }
@___asan_gen_.14 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.15 = private constant [18 x i8] c"../fs/ocfs2/acl.c\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.15, i32 251, i32 11 }
@llvm.compiler.used = appending global [2 x ptr] [ptr @.str, ptr @.str.1], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ocfs2_iop_set_acl(ptr nocapture noundef readnone %mnt_userns, ptr noundef %inode, ptr noundef %acl, i32 noundef %type) local_unnamed_addr #0 align 64 {
entry:
  %acl.addr = alloca ptr, align 4
  %bh = alloca ptr, align 4
  %oh = alloca %struct.ocfs2_lock_holder, align 4
  %mode = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %acl.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %acl, ptr %acl.addr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bh) #6
  %1 = ptrtoint ptr %bh to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %bh, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %oh) #6
  %2 = call ptr @memset(ptr %oh, i32 255, i32 16)
  %call = call i32 @ocfs2_inode_lock_tracker(ptr noundef %inode, ptr noundef nonnull %bh, i32 noundef 1, ptr noundef nonnull %oh) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup13_crit_edge, label %if.end

entry.cleanup13_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup13

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 32768, i32 %type)
  %cmp1 = icmp eq i32 %type, 32768
  br i1 %cmp1, label %land.lhs.true, label %if.end.if.end11_crit_edge

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

land.lhs.true:                                    ; preds = %if.end
  %3 = ptrtoint ptr %acl.addr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %acl.addr, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %land.lhs.true.if.end11_crit_edge, label %if.then2

land.lhs.true.if.end11_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

if.then2:                                         ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %mode) #6
  %5 = ptrtoint ptr %mode to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 -1, ptr %mode, align 2, !annotation !16
  %call3 = call i32 @posix_acl_update_mode(ptr noundef nonnull @init_user_ns, ptr noundef %inode, ptr noundef nonnull %mode, ptr noundef nonnull %acl.addr) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.then2.cleanup.thread_crit_edge

if.then2.cleanup.thread_crit_edge:                ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.thread

if.end6:                                          ; preds = %if.then2
  %6 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bh, align 4
  %8 = ptrtoint ptr %mode to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %mode, align 2
  %call7 = call fastcc i32 @ocfs2_acl_set_mode(ptr noundef %inode, ptr noundef %7, ptr noundef null, i16 noundef zeroext %9)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %cleanup, label %if.end6.cleanup.thread_crit_edge

if.end6.cleanup.thread_crit_edge:                 ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.end6.cleanup.thread_crit_edge, %if.then2.cleanup.thread_crit_edge
  %status.0.ph = phi i32 [ %call7, %if.end6.cleanup.thread_crit_edge ], [ %call3, %if.then2.cleanup.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %mode) #6
  br label %unlock

cleanup:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %mode) #6
  br label %if.end11

if.end11:                                         ; preds = %cleanup, %land.lhs.true.if.end11_crit_edge, %if.end.if.end11_crit_edge
  %10 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bh, align 4
  %12 = ptrtoint ptr %acl.addr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %acl.addr, align 4
  %call12 = call fastcc i32 @ocfs2_set_acl(ptr noundef null, ptr noundef %inode, ptr noundef %11, i32 noundef %type, ptr noundef %13, ptr noundef null, ptr noundef null)
  br label %unlock

unlock:                                           ; preds = %if.end11, %cleanup.thread
  %status.1 = phi i32 [ %call12, %if.end11 ], [ %status.0.ph, %cleanup.thread ]
  call void @ocfs2_inode_unlock_tracker(ptr noundef %inode, i32 noundef 1, ptr noundef nonnull %oh, i32 noundef %call) #6
  %14 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bh, align 4
  %tobool.not.i = icmp eq ptr %15, null
  br i1 %tobool.not.i, label %unlock.cleanup13_crit_edge, label %if.then.i

unlock.cleanup13_crit_edge:                       ; preds = %unlock
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup13

if.then.i:                                        ; preds = %unlock
  call void @__sanitizer_cov_trace_pc() #8
  call void @__brelse(ptr noundef nonnull %15) #6
  br label %cleanup13

cleanup13:                                        ; preds = %if.then.i, %unlock.cleanup13_crit_edge, %entry.cleanup13_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup13_crit_edge ], [ %status.1, %unlock.cleanup13_crit_edge ], [ %status.1, %if.then.i ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %oh) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bh) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocfs2_inode_lock_tracker(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @posix_acl_update_mode(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ocfs2_acl_set_mode(ptr noundef %inode, ptr noundef %di_bh, ptr noundef %handle, i16 noundef zeroext %new_mode) unnamed_addr #0 align 64 {
entry:
  %di_bh.addr = alloca ptr, align 4
  %_m = alloca i64, align 8
  %_m40 = alloca i64, align 8
  %_m73 = alloca i64, align 8
  %tmp84 = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %di_bh.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %di_bh, ptr %di_bh.addr, align 4
  %cmp = icmp eq ptr %di_bh, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call = call i32 @ocfs2_read_inode_block(ptr noundef %inode, ptr noundef nonnull %di_bh.addr) #6
  %1 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call, label %do.body [
    i32 0, label %if.then.if.end15_crit_edge
    i32 -512, label %if.then.out_crit_edge
    i32 -4, label %if.then.out_crit_edge139
    i32 524289, label %if.then.out_crit_edge140
    i32 -28, label %if.then.out_crit_edge141
    i32 -122, label %if.then.out_crit_edge142
  ]

if.then.out_crit_edge142:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.then.out_crit_edge141:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.then.out_crit_edge140:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.then.out_crit_edge139:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.then.out_crit_edge:                            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.then.if.end15_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

do.body:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #6
  %2 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 1152921504606846976, ptr %_m, align 8
  %conv = sext i32 %call to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.ocfs2_acl_set_mode, i32 noundef 167, ptr noundef nonnull @.str, i64 noundef %conv) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #6
  br label %out

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %b_count.i = getelementptr inbounds %struct.buffer_head, ptr %di_bh, i32 0, i32 11
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %b_count.i, i32 noundef 4) #6
  tail call void @llvm.prefetch.p0(ptr %b_count.i, i32 1, i32 3, i32 1) #6
  %3 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %b_count.i, ptr %b_count.i, i32 1, ptr elementtype(i32) %b_count.i) #6, !srcloc !17
  br label %if.end15

if.end15:                                         ; preds = %if.else, %if.then.if.end15_crit_edge
  %cmp16 = icmp eq ptr %handle, null
  br i1 %cmp16, label %if.then18, label %if.end15.if.end51_crit_edge

if.end15.if.end51_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end51

if.then18:                                        ; preds = %if.end15
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %4 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 33
  %6 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s_fs_info, align 16
  %call19 = call ptr @ocfs2_start_trans(ptr noundef %7, i32 noundef 1) #6
  %cmp.i = icmp ugt ptr %call19, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then21, label %if.then18.if.end51_crit_edge

if.then18.if.end51_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end51

if.then21:                                        ; preds = %if.then18
  %8 = ptrtoint ptr %call19 to i32
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.2)
  switch i32 %8, label %do.body39 [
    i32 -512, label %if.then21.out_brelse_crit_edge
    i32 -4, label %if.then21.out_brelse_crit_edge143
    i32 524289, label %if.then21.out_brelse_crit_edge144
    i32 -28, label %if.then21.out_brelse_crit_edge145
    i32 -122, label %if.then21.out_brelse_crit_edge146
  ]

if.then21.out_brelse_crit_edge146:                ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_brelse

if.then21.out_brelse_crit_edge145:                ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_brelse

if.then21.out_brelse_crit_edge144:                ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_brelse

if.then21.out_brelse_crit_edge143:                ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_brelse

if.then21.out_brelse_crit_edge:                   ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_brelse

do.body39:                                        ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m40) #6
  %10 = ptrtoint ptr %_m40 to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 1152921504606846976, ptr %_m40, align 8
  %conv44 = sext i32 %8 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m40, ptr noundef nonnull @__func__.ocfs2_acl_set_mode, i32 noundef 178, ptr noundef nonnull @.str, i64 noundef %conv44) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m40) #6
  br label %out_brelse

if.end51:                                         ; preds = %if.then18.if.end51_crit_edge, %if.end15.if.end51_crit_edge
  %handle.addr.0 = phi ptr [ %handle, %if.end15.if.end51_crit_edge ], [ %call19, %if.then18.if.end51_crit_edge ]
  %11 = ptrtoint ptr %di_bh.addr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %di_bh.addr, align 4
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %12, i32 0, i32 5
  %13 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %b_data, align 4
  %ip_metadata_cache.i = getelementptr i8, ptr %inode, i32 -56
  %call53 = call i32 @ocfs2_journal_access_di(ptr noundef %handle.addr.0, ptr noundef %ip_metadata_cache.i, ptr noundef %12, i32 noundef 1) #6
  %15 = zext i32 %call53 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.3)
  switch i32 %call53, label %do.body72 [
    i32 0, label %if.end83
    i32 -512, label %if.end51.out_commit_crit_edge
    i32 -4, label %if.end51.out_commit_crit_edge147
    i32 524289, label %if.end51.out_commit_crit_edge148
    i32 -28, label %if.end51.out_commit_crit_edge149
    i32 -122, label %if.end51.out_commit_crit_edge150
  ]

if.end51.out_commit_crit_edge150:                 ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_commit

if.end51.out_commit_crit_edge149:                 ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_commit

if.end51.out_commit_crit_edge148:                 ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_commit

if.end51.out_commit_crit_edge147:                 ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_commit

if.end51.out_commit_crit_edge:                    ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_commit

do.body72:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m73) #6
  %16 = ptrtoint ptr %_m73 to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 1152921504606846976, ptr %_m73, align 8
  %conv77 = sext i32 %call53 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m73, ptr noundef nonnull @__func__.ocfs2_acl_set_mode, i32 noundef 189, ptr noundef nonnull @.str, i64 noundef %conv77) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m73) #6
  br label %out_commit

if.end83:                                         ; preds = %if.end51
  %17 = ptrtoint ptr %inode to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %new_mode, ptr %inode, align 8
  %i_ctime = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp84) #6
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp84, ptr noundef %inode) #6
  %18 = call ptr @memcpy(ptr %i_ctime, ptr %tmp84, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp84) #6
  %19 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %inode, align 8
  %21 = call i16 @llvm.bswap.i16(i16 %20)
  %i_mode86 = getelementptr inbounds %struct.ocfs2_dinode, ptr %14, i32 0, i32 10
  %22 = ptrtoint ptr %i_mode86 to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %21, ptr %i_mode86, align 8
  %23 = ptrtoint ptr %i_ctime to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %i_ctime, align 8
  %25 = call i64 @llvm.bswap.i64(i64 %24)
  %i_ctime88 = getelementptr inbounds %struct.ocfs2_dinode, ptr %14, i32 0, i32 14
  %26 = ptrtoint ptr %i_ctime88 to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 %25, ptr %i_ctime88, align 8
  %tv_nsec = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 17, i32 1
  %27 = ptrtoint ptr %tv_nsec to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %tv_nsec, align 8
  %29 = call i32 @llvm.bswap.i32(i32 %28)
  %i_ctime_nsec = getelementptr inbounds %struct.ocfs2_dinode, ptr %14, i32 0, i32 21
  %30 = ptrtoint ptr %i_ctime_nsec to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %i_ctime_nsec, align 8
  %h_aborted.i.i = getelementptr inbounds %struct.jbd2_journal_handle, ptr %handle.addr.0, i32 0, i32 7
  %31 = ptrtoint ptr %h_aborted.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %bf.load.i.i = load i32, ptr %h_aborted.i.i, align 4
  %32 = and i32 %bf.load.i.i, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.not.i.i = icmp eq i32 %32, 0
  br i1 %tobool.not.i.i, label %lor.lhs.false.i.i, label %if.end83.ocfs2_update_inode_fsync_trans.exit_crit_edge

if.end83.ocfs2_update_inode_fsync_trans.exit_crit_edge: ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #8
  br label %ocfs2_update_inode_fsync_trans.exit

lor.lhs.false.i.i:                                ; preds = %if.end83
  %33 = ptrtoint ptr %handle.addr.0 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %handle.addr.0, align 4
  %tobool1.not.i.i = icmp eq ptr %34, null
  br i1 %tobool1.not.i.i, label %lor.lhs.false.i.i.ocfs2_update_inode_fsync_trans.exit_crit_edge, label %is_handle_aborted.exit.i

lor.lhs.false.i.i.ocfs2_update_inode_fsync_trans.exit_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ocfs2_update_inode_fsync_trans.exit

is_handle_aborted.exit.i:                         ; preds = %lor.lhs.false.i.i
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %34, align 8
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %36, align 8
  %and.i.i.i = and i32 %38, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %is_handle_aborted.exit.i.ocfs2_update_inode_fsync_trans.exit_crit_edge

is_handle_aborted.exit.i.ocfs2_update_inode_fsync_trans.exit_crit_edge: ; preds = %is_handle_aborted.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ocfs2_update_inode_fsync_trans.exit

if.then.i:                                        ; preds = %is_handle_aborted.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %t_tid.i = getelementptr inbounds %struct.transaction_s, ptr %34, i32 0, i32 1
  %39 = ptrtoint ptr %t_tid.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %t_tid.i, align 4
  %i_sync_tid.i = getelementptr i8, ptr %inode, i32 884
  %41 = ptrtoint ptr %i_sync_tid.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %i_sync_tid.i, align 4
  br label %ocfs2_update_inode_fsync_trans.exit

ocfs2_update_inode_fsync_trans.exit:              ; preds = %if.then.i, %is_handle_aborted.exit.i.ocfs2_update_inode_fsync_trans.exit_crit_edge, %lor.lhs.false.i.i.ocfs2_update_inode_fsync_trans.exit_crit_edge, %if.end83.ocfs2_update_inode_fsync_trans.exit_crit_edge
  %42 = ptrtoint ptr %di_bh.addr to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %di_bh.addr, align 4
  call void @ocfs2_journal_dirty(ptr noundef %handle.addr.0, ptr noundef %43) #6
  br label %out_commit

out_commit:                                       ; preds = %ocfs2_update_inode_fsync_trans.exit, %do.body72, %if.end51.out_commit_crit_edge, %if.end51.out_commit_crit_edge147, %if.end51.out_commit_crit_edge148, %if.end51.out_commit_crit_edge149, %if.end51.out_commit_crit_edge150
  br i1 %cmp16, label %if.then91, label %out_commit.out_brelse_crit_edge

out_commit.out_brelse_crit_edge:                  ; preds = %out_commit
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_brelse

if.then91:                                        ; preds = %out_commit
  call void @__sanitizer_cov_trace_pc() #8
  %i_sb92 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %44 = ptrtoint ptr %i_sb92 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %i_sb92, align 4
  %s_fs_info93 = getelementptr inbounds %struct.super_block, ptr %45, i32 0, i32 33
  %46 = ptrtoint ptr %s_fs_info93 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %s_fs_info93, align 16
  %call94 = call i32 @ocfs2_commit_trans(ptr noundef %47, ptr noundef %handle.addr.0) #6
  br label %out_brelse

out_brelse:                                       ; preds = %if.then91, %out_commit.out_brelse_crit_edge, %do.body39, %if.then21.out_brelse_crit_edge, %if.then21.out_brelse_crit_edge143, %if.then21.out_brelse_crit_edge144, %if.then21.out_brelse_crit_edge145, %if.then21.out_brelse_crit_edge146
  %ret.0 = phi i32 [ %call53, %if.then91 ], [ %call53, %out_commit.out_brelse_crit_edge ], [ %8, %if.then21.out_brelse_crit_edge ], [ %8, %if.then21.out_brelse_crit_edge143 ], [ %8, %if.then21.out_brelse_crit_edge144 ], [ %8, %if.then21.out_brelse_crit_edge145 ], [ %8, %if.then21.out_brelse_crit_edge146 ], [ %8, %do.body39 ]
  %48 = ptrtoint ptr %di_bh.addr to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %di_bh.addr, align 4
  %tobool.not.i137 = icmp eq ptr %49, null
  br i1 %tobool.not.i137, label %out_brelse.out_crit_edge, label %if.then.i138

out_brelse.out_crit_edge:                         ; preds = %out_brelse
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.then.i138:                                     ; preds = %out_brelse
  call void @__sanitizer_cov_trace_pc() #8
  call void @__brelse(ptr noundef nonnull %49) #6
  br label %out

out:                                              ; preds = %if.then.i138, %out_brelse.out_crit_edge, %do.body, %if.then.out_crit_edge, %if.then.out_crit_edge139, %if.then.out_crit_edge140, %if.then.out_crit_edge141, %if.then.out_crit_edge142
  %ret.1 = phi i32 [ %call, %if.then.out_crit_edge ], [ %call, %if.then.out_crit_edge139 ], [ %call, %if.then.out_crit_edge140 ], [ %call, %if.then.out_crit_edge141 ], [ %call, %if.then.out_crit_edge142 ], [ %call, %do.body ], [ %ret.0, %out_brelse.out_crit_edge ], [ %ret.0, %if.then.i138 ]
  ret i32 %ret.1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ocfs2_set_acl(ptr noundef %handle, ptr noundef %inode, ptr noundef %di_bh, i32 noundef %type, ptr noundef %acl, ptr noundef %meta_ac, ptr noundef %data_ac) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %inode, align 8
  %2 = and i16 %1, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -24576, i16 %2)
  %cmp = icmp eq i16 %2, -24576
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.4)
  switch i32 %type, label %if.end.cleanup_crit_edge [
    i32 32768, label %if.end.sw.epilog_crit_edge
    i32 16384, label %sw.bb2
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb2:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %2)
  %cmp6 = icmp eq i16 %2, 16384
  br i1 %cmp6, label %sw.bb2.sw.epilog_crit_edge, label %if.then8

sw.bb2.sw.epilog_crit_edge:                       ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.then8:                                         ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #8
  %tobool.not = icmp eq ptr %acl, null
  %cond = select i1 %tobool.not, i32 0, i32 -13
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb2.sw.epilog_crit_edge, %if.end.sw.epilog_crit_edge
  %name_index.0 = phi i32 [ 3, %sw.bb2.sw.epilog_crit_edge ], [ 2, %if.end.sw.epilog_crit_edge ]
  %tobool10.not = icmp eq ptr %acl, null
  br i1 %tobool10.not, label %sw.epilog.if.end16_crit_edge, label %if.then11

sw.epilog.if.end16_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16

if.then11:                                        ; preds = %sw.epilog
  %a_count.i = getelementptr inbounds %struct.posix_acl, ptr %acl, i32 0, i32 2
  %4 = ptrtoint ptr %a_count.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %a_count.i, align 4
  %mul.i = shl i32 %5, 3
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %mul.i, i32 noundef 3136) #9
  %tobool.not.i = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not.i, label %if.then11.if.then13_crit_edge, label %for.cond.preheader.i

if.then11.if.then13_crit_edge:                    ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then13

for.cond.preheader.i:                             ; preds = %if.then11
  %6 = ptrtoint ptr %a_count.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %a_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp44.not.i = icmp eq i32 %7, 0
  br i1 %cmp44.not.i, label %for.cond.preheader.i.ocfs2_acl_to_xattr.exit_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.ocfs2_acl_to_xattr.exit_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ocfs2_acl_to_xattr.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %n.047.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %entry1.045.i = phi ptr [ %incdec.ptr.i, %for.inc.i.for.body.i_crit_edge ], [ %call9.i.i, %for.cond.preheader.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.posix_acl, ptr %acl, i32 0, i32 3, i32 %n.047.i
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %arrayidx.i, align 4
  %10 = tail call i16 @llvm.bswap.i16(i16 %9) #6
  %11 = ptrtoint ptr %entry1.045.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %10, ptr %entry1.045.i, align 4
  %e_perm.i = getelementptr %struct.posix_acl, ptr %acl, i32 0, i32 3, i32 %n.047.i, i32 1
  %12 = ptrtoint ptr %e_perm.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %e_perm.i, align 2
  %14 = tail call i16 @llvm.bswap.i16(i16 %13) #6
  %e_perm7.i = getelementptr inbounds %struct.ocfs2_acl_entry, ptr %entry1.045.i, i32 0, i32 1
  %15 = ptrtoint ptr %e_perm7.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %14, ptr %e_perm7.i, align 2
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %arrayidx.i, align 4
  %conv.i = sext i16 %17 to i32
  %18 = zext i32 %conv.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.5)
  switch i32 %conv.i, label %for.body.i.for.inc.i_crit_edge [
    i32 2, label %sw.bb.i
    i32 8, label %sw.bb14.i
  ]

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

sw.bb.i:                                          ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %19 = getelementptr %struct.posix_acl, ptr %acl, i32 0, i32 3, i32 %n.047.i, i32 2
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %.unpack43.i = load i32, ptr %19, align 4
  %21 = insertvalue [1 x i32] undef, i32 %.unpack43.i, 0
  %call13.i = tail call i32 @from_kuid(ptr noundef nonnull @init_user_ns, [1 x i32] %21) #6
  %22 = tail call i32 @llvm.bswap.i32(i32 %call13.i) #6
  br label %for.inc.i

sw.bb14.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %23 = getelementptr %struct.posix_acl, ptr %acl, i32 0, i32 3, i32 %n.047.i, i32 2
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %.unpack.i = load i32, ptr %23, align 4
  %25 = insertvalue [1 x i32] undef, i32 %.unpack.i, 0
  %call18.i = tail call i32 @from_kgid(ptr noundef nonnull @init_user_ns, [1 x i32] %25) #6
  %26 = tail call i32 @llvm.bswap.i32(i32 %call18.i) #6
  br label %for.inc.i

for.inc.i:                                        ; preds = %sw.bb14.i, %sw.bb.i, %for.body.i.for.inc.i_crit_edge
  %.sink.i = phi i32 [ %22, %sw.bb.i ], [ %26, %sw.bb14.i ], [ -1, %for.body.i.for.inc.i_crit_edge ]
  %e_id.i = getelementptr inbounds %struct.ocfs2_acl_entry, ptr %entry1.045.i, i32 0, i32 2
  %27 = ptrtoint ptr %e_id.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %.sink.i, ptr %e_id.i, align 4
  %inc.i = add nuw i32 %n.047.i, 1
  %incdec.ptr.i = getelementptr %struct.ocfs2_acl_entry, ptr %entry1.045.i, i32 1
  %28 = ptrtoint ptr %a_count.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %a_count.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %29
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.ocfs2_acl_to_xattr.exit_crit_edge

for.inc.i.ocfs2_acl_to_xattr.exit_crit_edge:      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ocfs2_acl_to_xattr.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

ocfs2_acl_to_xattr.exit:                          ; preds = %for.inc.i.ocfs2_acl_to_xattr.exit_crit_edge, %for.cond.preheader.i.ocfs2_acl_to_xattr.exit_crit_edge
  %cmp.i43 = icmp ugt ptr %call9.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i43, label %ocfs2_acl_to_xattr.exit.if.then13_crit_edge, label %ocfs2_acl_to_xattr.exit.if.end16_crit_edge

ocfs2_acl_to_xattr.exit.if.end16_crit_edge:       ; preds = %ocfs2_acl_to_xattr.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16

ocfs2_acl_to_xattr.exit.if.then13_crit_edge:      ; preds = %ocfs2_acl_to_xattr.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then13

if.then13:                                        ; preds = %ocfs2_acl_to_xattr.exit.if.then13_crit_edge, %if.then11.if.then13_crit_edge
  %retval.0.i47 = phi ptr [ %call9.i.i, %ocfs2_acl_to_xattr.exit.if.then13_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.then11.if.then13_crit_edge ]
  %30 = ptrtoint ptr %retval.0.i47 to i32
  br label %cleanup

if.end16:                                         ; preds = %ocfs2_acl_to_xattr.exit.if.end16_crit_edge, %sw.epilog.if.end16_crit_edge
  %size.0 = phi i32 [ 0, %sw.epilog.if.end16_crit_edge ], [ %mul.i, %ocfs2_acl_to_xattr.exit.if.end16_crit_edge ]
  %value.0 = phi ptr [ null, %sw.epilog.if.end16_crit_edge ], [ %call9.i.i, %ocfs2_acl_to_xattr.exit.if.end16_crit_edge ]
  %tobool17.not = icmp eq ptr %handle, null
  br i1 %tobool17.not, label %if.else, label %if.then18

if.then18:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  %call19 = tail call i32 @ocfs2_xattr_set_handle(ptr noundef nonnull %handle, ptr noundef %inode, ptr noundef %di_bh, i32 noundef %name_index.0, ptr noundef nonnull @.str.1, ptr noundef %value.0, i32 noundef %size.0, i32 noundef 0, ptr noundef %meta_ac, ptr noundef %data_ac) #6
  br label %if.end21

if.else:                                          ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  %call20 = tail call i32 @ocfs2_xattr_set(ptr noundef %inode, i32 noundef %name_index.0, ptr noundef nonnull @.str.1, ptr noundef %value.0, i32 noundef %size.0, i32 noundef 0) #6
  br label %if.end21

if.end21:                                         ; preds = %if.else, %if.then18
  %ret.0 = phi i32 [ %call19, %if.then18 ], [ %call20, %if.else ]
  tail call void @kfree(ptr noundef %value.0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool22.not = icmp eq i32 %ret.0, 0
  br i1 %tobool22.not, label %if.then23, label %if.end21.cleanup_crit_edge

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then23:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @set_cached_acl(ptr noundef %inode, i32 noundef %type, ptr noundef %acl) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then23, %if.end21.cleanup_crit_edge, %if.then13, %if.then8, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %30, %if.then13 ], [ %cond, %if.then8 ], [ -95, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ 0, %if.then23 ], [ %ret.0, %if.end21.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ocfs2_inode_unlock_tracker(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ocfs2_iop_get_acl(ptr noundef %inode, i32 noundef %type, i1 noundef zeroext %rcu) local_unnamed_addr #0 align 64 {
entry:
  %di_bh = alloca ptr, align 4
  %oh = alloca %struct.ocfs2_lock_holder, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %di_bh) #6
  %0 = ptrtoint ptr %di_bh to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %di_bh, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %oh) #6
  %1 = call ptr @memset(ptr %oh, i32 255, i32 16)
  br i1 %rcu, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info, align 16
  %s_mount_opt = getelementptr inbounds %struct.ocfs2_super, ptr %5, i32 0, i32 28
  %6 = ptrtoint ptr %s_mount_opt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %s_mount_opt, align 8
  %and = and i32 %7, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %call4 = call i32 @ocfs2_inode_lock_tracker(ptr noundef %inode, ptr noundef nonnull %di_bh, i32 noundef 0, ptr noundef nonnull %oh) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp = icmp slt i32 %call4, 0
  br i1 %cmp, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  %8 = inttoptr i32 %call4 to ptr
  br label %cleanup

if.end7:                                          ; preds = %if.end3
  %ip_xattr_sem = getelementptr i8, ptr %inode, i32 -328
  call void @down_read(ptr noundef %ip_xattr_sem) #6
  %9 = ptrtoint ptr %di_bh to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %di_bh, align 4
  %call9 = call fastcc ptr @ocfs2_get_acl_nolock(ptr noundef %inode, i32 noundef %type, ptr noundef %10)
  call void @up_read(ptr noundef %ip_xattr_sem) #6
  call void @ocfs2_inode_unlock_tracker(ptr noundef %inode, i32 noundef 0, ptr noundef nonnull %oh, i32 noundef %call4) #6
  %11 = ptrtoint ptr %di_bh to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %di_bh, align 4
  %tobool.not.i = icmp eq ptr %12, null
  br i1 %tobool.not.i, label %if.end7.cleanup_crit_edge, label %if.then.i

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then.i:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  call void @__brelse(ptr noundef nonnull %12) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.end7.cleanup_crit_edge, %if.then5, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %8, %if.then5 ], [ null, %if.end.cleanup_crit_edge ], [ inttoptr (i32 -10 to ptr), %entry.cleanup_crit_edge ], [ %call9, %if.end7.cleanup_crit_edge ], [ %call9, %if.then.i ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %oh) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %di_bh) #6
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @ocfs2_get_acl_nolock(ptr noundef %inode, i32 noundef %type, ptr noundef %di_bh) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.6)
  switch i32 %type, label %entry.cleanup_crit_edge [
    i32 32768, label %entry.sw.epilog_crit_edge
    i32 16384, label %sw.bb2
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb2, %entry.sw.epilog_crit_edge
  %name_index.0 = phi i32 [ 3, %sw.bb2 ], [ 2, %entry.sw.epilog_crit_edge ]
  %call3 = tail call i32 @ocfs2_xattr_get_nolock(ptr noundef %inode, ptr noundef %di_bh, i32 noundef %name_index.0, ptr noundef nonnull @.str.1, ptr noundef null, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp sgt i32 %call3, 0
  br i1 %cmp, label %if.end8.i, label %sw.epilog.if.else_crit_edge

sw.epilog.if.else_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

if.end8.i:                                        ; preds = %sw.epilog
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %call3, i32 noundef 3136) #9
  %tobool.not = icmp eq ptr %call9.i, null
  br i1 %tobool.not, label %if.end8.i.cleanup_crit_edge, label %if.end8

if.end8.i.cleanup_crit_edge:                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end8:                                          ; preds = %if.end8.i
  %call7 = tail call i32 @ocfs2_xattr_get_nolock(ptr noundef %inode, ptr noundef %di_bh, i32 noundef %name_index.0, ptr noundef nonnull @.str.1, ptr noundef nonnull %call9.i, i32 noundef %call3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp9 = icmp sgt i32 %call7, 0
  br i1 %cmp9, label %if.end.i36, label %if.end8.if.else_crit_edge

if.end8.if.else_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

if.end.i36:                                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %call7)
  %cmp.i35 = icmp ult i32 %call7, 8
  br i1 %cmp.i35, label %if.end.i36.if.end18_crit_edge, label %if.end2.i

if.end.i36.if.end18_crit_edge:                    ; preds = %if.end.i36
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18

if.end2.i:                                        ; preds = %if.end.i36
  %div48.i = lshr i32 %call7, 3
  %call3.i = tail call ptr @posix_acl_alloc(i32 noundef %div48.i, i32 noundef 3136) #6
  %tobool4.not.i = icmp eq ptr %call3.i, null
  br i1 %tobool4.not.i, label %if.end2.i.if.end18_crit_edge, label %if.end2.i.for.body.i_crit_edge

if.end2.i.for.body.i_crit_edge:                   ; preds = %if.end2.i
  br label %for.body.i

if.end2.i.if.end18_crit_edge:                     ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18

for.body.i:                                       ; preds = %sw.epilog.i.for.body.i_crit_edge, %if.end2.i.for.body.i_crit_edge
  %value.addr.052.i = phi ptr [ %add.ptr.i, %sw.epilog.i.for.body.i_crit_edge ], [ %call9.i, %if.end2.i.for.body.i_crit_edge ]
  %n.050.i = phi i32 [ %inc.i, %sw.epilog.i.for.body.i_crit_edge ], [ 0, %if.end2.i.for.body.i_crit_edge ]
  %1 = ptrtoint ptr %value.addr.052.i to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %value.addr.052.i, align 4
  %3 = tail call i16 @llvm.bswap.i16(i16 %2) #6
  %arrayidx.i = getelementptr %struct.posix_acl, ptr %call3.i, i32 0, i32 3, i32 %n.050.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %3, ptr %arrayidx.i, align 4
  %e_perm.i = getelementptr inbounds %struct.ocfs2_acl_entry, ptr %value.addr.052.i, i32 0, i32 1
  %5 = ptrtoint ptr %e_perm.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %e_perm.i, align 2
  %7 = tail call i16 @llvm.bswap.i16(i16 %6) #6
  %e_perm13.i = getelementptr %struct.posix_acl, ptr %call3.i, i32 0, i32 3, i32 %n.050.i, i32 1
  %8 = ptrtoint ptr %e_perm13.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %7, ptr %e_perm13.i, align 2
  %conv.i = sext i16 %3 to i32
  %9 = zext i32 %conv.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.7)
  switch i32 %conv.i, label %for.body.i.sw.epilog.i_crit_edge [
    i32 2, label %sw.bb.i
    i32 8, label %sw.bb20.i
  ]

for.body.i.sw.epilog.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

sw.bb.i:                                          ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %10 = getelementptr %struct.posix_acl, ptr %call3.i, i32 0, i32 3, i32 %n.050.i, i32 2
  %e_id.i = getelementptr inbounds %struct.ocfs2_acl_entry, ptr %value.addr.052.i, i32 0, i32 2
  %11 = ptrtoint ptr %e_id.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %e_id.i, align 4
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #6
  %call19.i = tail call i32 @make_kuid(ptr noundef nonnull @init_user_ns, i32 noundef %13) #6
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %call19.i, ptr %10, align 4
  br label %sw.epilog.i

sw.bb20.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %15 = getelementptr %struct.posix_acl, ptr %call3.i, i32 0, i32 3, i32 %n.050.i, i32 2
  %e_id24.i = getelementptr inbounds %struct.ocfs2_acl_entry, ptr %value.addr.052.i, i32 0, i32 2
  %16 = ptrtoint ptr %e_id24.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %e_id24.i, align 4
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #6
  %call25.i = tail call i32 @make_kgid(ptr noundef nonnull @init_user_ns, i32 noundef %18) #6
  %19 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %call25.i, ptr %15, align 4
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb20.i, %sw.bb.i, %for.body.i.sw.epilog.i_crit_edge
  %add.ptr.i = getelementptr i8, ptr %value.addr.052.i, i32 8
  %inc.i = add nuw nsw i32 %n.050.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %div48.i
  br i1 %exitcond.not.i, label %sw.epilog.i.if.end18_crit_edge, label %sw.epilog.i.for.body.i_crit_edge

sw.epilog.i.for.body.i_crit_edge:                 ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

sw.epilog.i.if.end18_crit_edge:                   ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18

if.else:                                          ; preds = %if.end8.if.else_crit_edge, %sw.epilog.if.else_crit_edge
  %retval1.042 = phi i32 [ %call7, %if.end8.if.else_crit_edge ], [ %call3, %sw.epilog.if.else_crit_edge ]
  %value.041 = phi ptr [ %call9.i, %if.end8.if.else_crit_edge ], [ null, %sw.epilog.if.else_crit_edge ]
  %20 = zext i32 %retval1.042 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.8)
  switch i32 %retval1.042, label %if.else15 [
    i32 -61, label %if.else.if.end18_crit_edge
    i32 0, label %if.else.if.end18_crit_edge43
  ]

if.else.if.end18_crit_edge43:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18

if.else.if.end18_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18

if.else15:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %21 = inttoptr i32 %retval1.042 to ptr
  br label %if.end18

if.end18:                                         ; preds = %if.else15, %if.else.if.end18_crit_edge, %if.else.if.end18_crit_edge43, %sw.epilog.i.if.end18_crit_edge, %if.end2.i.if.end18_crit_edge, %if.end.i36.if.end18_crit_edge
  %value.040 = phi ptr [ %value.041, %if.else15 ], [ %value.041, %if.else.if.end18_crit_edge ], [ %value.041, %if.else.if.end18_crit_edge43 ], [ %call9.i, %if.end.i36.if.end18_crit_edge ], [ %call9.i, %if.end2.i.if.end18_crit_edge ], [ %call9.i, %sw.epilog.i.if.end18_crit_edge ]
  %acl.0 = phi ptr [ %21, %if.else15 ], [ null, %if.else.if.end18_crit_edge ], [ null, %if.else.if.end18_crit_edge43 ], [ inttoptr (i32 -22 to ptr), %if.end.i36.if.end18_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end2.i.if.end18_crit_edge ], [ %call3.i, %sw.epilog.i.if.end18_crit_edge ]
  tail call void @kfree(ptr noundef %value.040) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %if.end8.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %acl.0, %if.end18 ], [ inttoptr (i32 -22 to ptr), %entry.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end8.i.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ocfs2_acl_chmod(ptr noundef %inode, ptr noundef %bh) local_unnamed_addr #0 align 64 {
entry:
  %acl = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info, align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %acl) #6
  %4 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %inode, align 8
  %6 = and i16 %5, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -24576, i16 %6)
  %cmp = icmp eq i16 %6, -24576
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %s_mount_opt = getelementptr inbounds %struct.ocfs2_super, ptr %3, i32 0, i32 28
  %7 = ptrtoint ptr %s_mount_opt to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %s_mount_opt, align 8
  %and2 = and i32 %8, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool.not = icmp eq i32 %and2, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %ip_xattr_sem = getelementptr i8, ptr %inode, i32 -328
  tail call void @down_read(ptr noundef %ip_xattr_sem) #6
  %call5 = tail call fastcc ptr @ocfs2_get_acl_nolock(ptr noundef %inode, i32 noundef 32768, ptr noundef %bh)
  %9 = ptrtoint ptr %acl to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call5, ptr %acl, align 4
  tail call void @up_read(ptr noundef %ip_xattr_sem) #6
  %tobool.not.i = icmp eq ptr %call5, null
  %cmp.i = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i
  br i1 %spec.select.i, label %if.then9, label %if.end11

if.then9:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %call5 to i32
  %spec.select.i29 = select i1 %cmp.i, i32 %10, i32 0
  br label %cleanup

if.end11:                                         ; preds = %if.end4
  %11 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %inode, align 8
  %call13 = call i32 @__posix_acl_chmod(ptr noundef nonnull %acl, i32 noundef 3264, i16 noundef zeroext %12) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end16:                                         ; preds = %if.end11
  %13 = ptrtoint ptr %acl to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %acl, align 4
  %call17 = call fastcc i32 @ocfs2_set_acl(ptr noundef null, ptr noundef %inode, ptr noundef null, i32 noundef 32768, ptr noundef %14, ptr noundef null, ptr noundef null)
  %15 = ptrtoint ptr %acl to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %acl, align 4
  %tobool.not.i30 = icmp eq ptr %16, null
  br i1 %tobool.not.i30, label %if.end16.cleanup_crit_edge, label %land.lhs.true.i

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true.i:                                  ; preds = %if.end16
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %16, i32 noundef 4) #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !18
  call void @llvm.prefetch.p0(ptr nonnull %16, i32 1, i32 3, i32 1) #6
  %17 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %16, ptr nonnull %16, i32 1, ptr nonnull elementtype(i32) %16) #6, !srcloc !19
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %17, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %do.end.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i, !prof !20

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @refcount_warn_saturate(ptr noundef nonnull %16, i32 noundef 3) #6
  br label %cleanup

do.end.i:                                         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !21
  %a_rcu.i = getelementptr inbounds %struct.posix_acl, ptr %16, i32 0, i32 1
  call void @kvfree_call_rcu(ptr noundef %a_rcu.i, ptr noundef nonnull inttoptr (i32 4 to ptr)) #6
  br label %cleanup

cleanup:                                          ; preds = %do.end.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup_crit_edge, %if.end16.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %if.then9, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select.i29, %if.then9 ], [ -95, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ %call13, %if.end11.cleanup_crit_edge ], [ %call17, %if.end16.cleanup_crit_edge ], [ %call17, %if.end5.i.i.i.i.cleanup_crit_edge ], [ %call17, %if.then10.i.i.i.i ], [ %call17, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %acl) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__posix_acl_chmod(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ocfs2_init_acl(ptr noundef %handle, ptr noundef %inode, ptr noundef %dir, ptr noundef %di_bh, ptr noundef %dir_bh, ptr noundef %meta_ac, ptr noundef %data_ac) local_unnamed_addr #0 align 64 {
entry:
  %acl = alloca ptr, align 4
  %mode = alloca i16, align 2
  %_m = alloca i64, align 8
  %_m87 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info, align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %acl) #6
  %4 = ptrtoint ptr %acl to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %acl, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %mode) #6
  %5 = ptrtoint ptr %mode to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 -1, ptr %mode, align 2, !annotation !16
  %6 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %inode, align 8
  %8 = and i16 %7, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -24576, i16 %8)
  %cmp = icmp eq i16 %8, -24576
  br i1 %cmp, label %entry.if.end43_crit_edge, label %if.then

entry.if.end43_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end43

if.then:                                          ; preds = %entry
  %s_mount_opt = getelementptr inbounds %struct.ocfs2_super, ptr %3, i32 0, i32 28
  %9 = ptrtoint ptr %s_mount_opt to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %s_mount_opt, align 8
  %and2 = and i32 %10, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool.not = icmp eq i32 %and2, 0
  br i1 %tobool.not, label %if.end10thread-pre-split, label %if.then3

if.then3:                                         ; preds = %if.then
  %ip_xattr_sem = getelementptr i8, ptr %dir, i32 -328
  tail call void @down_read(ptr noundef %ip_xattr_sem) #6
  %call4 = tail call fastcc ptr @ocfs2_get_acl_nolock(ptr noundef %dir, i32 noundef 16384, ptr noundef %dir_bh)
  %11 = ptrtoint ptr %acl to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call4, ptr %acl, align 4
  tail call void @up_read(ptr noundef %ip_xattr_sem) #6
  %cmp.i = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then8, label %if.then3.if.end10_crit_edge

if.then3.if.end10_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

if.then8:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %call4 to i32
  br label %cleanup104

if.end10thread-pre-split:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %13 = ptrtoint ptr %acl to i32
  call void @__asan_load4_noabort(i32 %13)
  %.pr = load ptr, ptr %acl, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.end10thread-pre-split, %if.then3.if.end10_crit_edge
  %14 = phi ptr [ %.pr, %if.end10thread-pre-split ], [ %call4, %if.then3.if.end10_crit_edge ]
  %tobool11.not = icmp eq ptr %14, null
  br i1 %tobool11.not, label %if.then12, label %if.end10.if.end43_crit_edge

if.end10.if.end43_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end43

if.then12:                                        ; preds = %if.end10
  %15 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %inode, align 8
  %call15 = tail call i32 @current_umask() #6
  %17 = trunc i32 %call15 to i16
  %18 = xor i16 %17, -1
  %conv17 = and i16 %16, %18
  %19 = ptrtoint ptr %mode to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %conv17, ptr %mode, align 2
  %call18 = tail call fastcc i32 @ocfs2_acl_set_mode(ptr noundef %inode, ptr noundef %di_bh, ptr noundef %handle, i16 noundef zeroext %conv17)
  %20 = zext i32 %call18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.9)
  switch i32 %call18, label %do.body [
    i32 0, label %if.then12.if.end43_crit_edge
    i32 -512, label %if.then12.cleanup_crit_edge
    i32 -4, label %if.then12.cleanup_crit_edge153
    i32 524289, label %if.then12.cleanup_crit_edge154
    i32 -28, label %if.then12.cleanup_crit_edge155
    i32 -122, label %if.then12.cleanup_crit_edge156
  ]

if.then12.cleanup_crit_edge156:                   ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then12.cleanup_crit_edge155:                   ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then12.cleanup_crit_edge154:                   ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then12.cleanup_crit_edge153:                   ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then12.cleanup_crit_edge:                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then12.if.end43_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end43

do.body:                                          ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #6
  %21 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 1152921504606846976, ptr %_m, align 8
  %conv38 = sext i32 %call18 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.ocfs2_init_acl, i32 noundef 376, ptr noundef nonnull @.str, i64 noundef %conv38) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #6
  br label %cleanup

if.end43:                                         ; preds = %if.then12.if.end43_crit_edge, %if.end10.if.end43_crit_edge, %entry.if.end43_crit_edge
  %s_mount_opt44 = getelementptr inbounds %struct.ocfs2_super, ptr %3, i32 0, i32 28
  %22 = ptrtoint ptr %s_mount_opt44 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %s_mount_opt44, align 8
  %and45 = and i32 %23, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45)
  %tobool46.not = icmp eq i32 %and45, 0
  br i1 %tobool46.not, label %if.end43.cleanup_crit_edge, label %land.lhs.true47

if.end43.cleanup_crit_edge:                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true47:                                  ; preds = %if.end43
  %24 = ptrtoint ptr %acl to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %acl, align 4
  %tobool48.not = icmp eq ptr %25, null
  br i1 %tobool48.not, label %land.lhs.true47.cleanup104_crit_edge, label %if.then49

land.lhs.true47.cleanup104_crit_edge:             ; preds = %land.lhs.true47
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup104

if.then49:                                        ; preds = %land.lhs.true47
  %26 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %inode, align 8
  %28 = and i16 %27, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %28)
  %cmp53 = icmp eq i16 %28, 16384
  br i1 %cmp53, label %if.then55, label %if.then49.if.end60_crit_edge

if.then49.if.end60_crit_edge:                     ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end60

if.then55:                                        ; preds = %if.then49
  %call56 = tail call fastcc i32 @ocfs2_set_acl(ptr noundef %handle, ptr noundef %inode, ptr noundef %di_bh, i32 noundef 16384, ptr noundef nonnull %25, ptr noundef %meta_ac, ptr noundef %data_ac)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %if.then55.if.end60_crit_edge, label %if.then55.cleanup_crit_edge

if.then55.cleanup_crit_edge:                      ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then55.if.end60_crit_edge:                     ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end60

if.end60:                                         ; preds = %if.then55.if.end60_crit_edge, %if.then49.if.end60_crit_edge
  %29 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %inode, align 8
  %31 = ptrtoint ptr %mode to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %30, ptr %mode, align 2
  %call62 = call i32 @__posix_acl_create(ptr noundef nonnull %acl, i32 noundef 3136, ptr noundef nonnull %mode) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %cmp63 = icmp slt i32 %call62, 0
  br i1 %cmp63, label %if.end60.cleanup104_crit_edge, label %if.end66

if.end60.cleanup104_crit_edge:                    ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup104

if.end66:                                         ; preds = %if.end60
  %32 = ptrtoint ptr %mode to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %mode, align 2
  %call67 = call fastcc i32 @ocfs2_acl_set_mode(ptr noundef %inode, ptr noundef %di_bh, ptr noundef %handle, i16 noundef zeroext %33)
  %34 = zext i32 %call67 to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values.10)
  switch i32 %call67, label %do.body86 [
    i32 0, label %if.end97
    i32 -512, label %if.end66.cleanup_crit_edge
    i32 -4, label %if.end66.cleanup_crit_edge157
    i32 524289, label %if.end66.cleanup_crit_edge158
    i32 -28, label %if.end66.cleanup_crit_edge159
    i32 -122, label %if.end66.cleanup_crit_edge160
  ]

if.end66.cleanup_crit_edge160:                    ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end66.cleanup_crit_edge159:                    ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end66.cleanup_crit_edge158:                    ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end66.cleanup_crit_edge157:                    ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end66.cleanup_crit_edge:                       ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body86:                                        ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m87) #6
  %35 = ptrtoint ptr %_m87 to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 1152921504606846976, ptr %_m87, align 8
  %conv91 = sext i32 %call67 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m87, ptr noundef nonnull @__func__.ocfs2_init_acl, i32 noundef 396, ptr noundef nonnull @.str, i64 noundef %conv91) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m87) #6
  br label %cleanup

if.end97:                                         ; preds = %if.end66
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %cmp98.not = icmp eq i32 %call62, 0
  br i1 %cmp98.not, label %if.end97.cleanup_crit_edge, label %if.then100

if.end97.cleanup_crit_edge:                       ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then100:                                       ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #8
  %36 = ptrtoint ptr %acl to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %acl, align 4
  %call101 = call fastcc i32 @ocfs2_set_acl(ptr noundef %handle, ptr noundef %inode, ptr noundef %di_bh, i32 noundef 32768, ptr noundef %37, ptr noundef %meta_ac, ptr noundef %data_ac)
  br label %cleanup

cleanup:                                          ; preds = %if.then100, %if.end97.cleanup_crit_edge, %do.body86, %if.end66.cleanup_crit_edge, %if.end66.cleanup_crit_edge157, %if.end66.cleanup_crit_edge158, %if.end66.cleanup_crit_edge159, %if.end66.cleanup_crit_edge160, %if.then55.cleanup_crit_edge, %if.end43.cleanup_crit_edge, %do.body, %if.then12.cleanup_crit_edge, %if.then12.cleanup_crit_edge153, %if.then12.cleanup_crit_edge154, %if.then12.cleanup_crit_edge155, %if.then12.cleanup_crit_edge156
  %ret.1.ph = phi i32 [ %call67, %do.body86 ], [ %call67, %if.end66.cleanup_crit_edge ], [ %call67, %if.end66.cleanup_crit_edge157 ], [ %call67, %if.end66.cleanup_crit_edge158 ], [ %call67, %if.end66.cleanup_crit_edge159 ], [ %call67, %if.end66.cleanup_crit_edge160 ], [ %call18, %do.body ], [ %call18, %if.then12.cleanup_crit_edge ], [ %call18, %if.then12.cleanup_crit_edge153 ], [ %call18, %if.then12.cleanup_crit_edge154 ], [ %call18, %if.then12.cleanup_crit_edge155 ], [ %call18, %if.then12.cleanup_crit_edge156 ], [ 0, %if.end43.cleanup_crit_edge ], [ 0, %if.end97.cleanup_crit_edge ], [ %call101, %if.then100 ], [ %call56, %if.then55.cleanup_crit_edge ]
  %38 = ptrtoint ptr %acl to i32
  call void @__asan_load4_noabort(i32 %38)
  %.pr149 = load ptr, ptr %acl, align 4
  %tobool.not.i = icmp eq ptr %.pr149, null
  br i1 %tobool.not.i, label %cleanup.cleanup104_crit_edge, label %land.lhs.true.i

cleanup.cleanup104_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup104

land.lhs.true.i:                                  ; preds = %cleanup
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %.pr149, i32 noundef 4) #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !18
  call void @llvm.prefetch.p0(ptr nonnull %.pr149, i32 1, i32 3, i32 1) #6
  %39 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %.pr149, ptr nonnull %.pr149, i32 1, ptr nonnull elementtype(i32) %.pr149) #6, !srcloc !19
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %39, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %do.end.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.cleanup104_crit_edge, label %if.then10.i.i.i.i, !prof !20

if.end5.i.i.i.i.cleanup104_crit_edge:             ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup104

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @refcount_warn_saturate(ptr noundef nonnull %.pr149, i32 noundef 3) #6
  br label %cleanup104

do.end.i:                                         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !21
  %a_rcu.i = getelementptr inbounds %struct.posix_acl, ptr %.pr149, i32 0, i32 1
  call void @kvfree_call_rcu(ptr noundef %a_rcu.i, ptr noundef nonnull inttoptr (i32 4 to ptr)) #6
  br label %cleanup104

cleanup104:                                       ; preds = %do.end.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup104_crit_edge, %cleanup.cleanup104_crit_edge, %if.end60.cleanup104_crit_edge, %land.lhs.true47.cleanup104_crit_edge, %if.then8
  %retval.0 = phi i32 [ %12, %if.then8 ], [ %call62, %if.end60.cleanup104_crit_edge ], [ %ret.1.ph, %cleanup.cleanup104_crit_edge ], [ %ret.1.ph, %if.end5.i.i.i.i.cleanup104_crit_edge ], [ %ret.1.ph, %if.then10.i.i.i.i ], [ %ret.1.ph, %do.end.i ], [ 0, %land.lhs.true47.cleanup104_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %mode) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %acl) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @current_umask() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mlog_printk(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__posix_acl_create(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocfs2_read_inode_block(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ocfs2_start_trans(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocfs2_journal_access_di(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @current_time(ptr sret(%struct.timespec64) align 8, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ocfs2_journal_dirty(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocfs2_commit_trans(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocfs2_xattr_set_handle(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocfs2_xattr_set(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_cached_acl(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kuid(ptr noundef, [1 x i32]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kgid(ptr noundef, [1 x i32]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__brelse(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocfs2_xattr_get_nolock(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @posix_acl_alloc(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kuid(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kgid(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5}
!llvm.module.flags = !{!7, !8, !9, !10, !11, !12, !13, !14}
!llvm.ident = !{!15}

!0 = !{ptr @__func__.ocfs2_init_acl, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/ocfs2/acl.c", i32 376, i32 5}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @__func__.ocfs2_acl_set_mode, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../fs/ocfs2/acl.c", i32 167, i32 4}
!5 = !{ptr @.str.1, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../fs/ocfs2/acl.c", i32 251, i32 11}
!7 = !{i32 1, !"wchar_size", i32 2}
!8 = !{i32 1, !"min_enum_size", i32 4}
!9 = !{i32 8, !"branch-target-enforcement", i32 0}
!10 = !{i32 8, !"sign-return-address", i32 0}
!11 = !{i32 8, !"sign-return-address-all", i32 0}
!12 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!13 = !{i32 7, !"uwtable", i32 1}
!14 = !{i32 7, !"frame-pointer", i32 2}
!15 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!16 = !{!"auto-init"}
!17 = !{i64 2148359984, i64 2148360010, i64 2148360039, i64 2148360073, i64 2148360104, i64 2148360127}
!18 = !{i64 2148449539}
!19 = !{i64 2148363979, i64 2148364011, i64 2148364040, i64 2148364074, i64 2148364105, i64 2148364128}
!20 = !{!"branch_weights", i32 2000, i32 1}
!21 = !{i64 2149313169}
