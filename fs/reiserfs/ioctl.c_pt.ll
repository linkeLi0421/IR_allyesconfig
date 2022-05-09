; ModuleID = '/llk/IR_all_yes/fs/reiserfs/ioctl.c_pt.bc'
source_filename = "../fs/reiserfs/ioctl.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.user_namespace = type opaque
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.76 }
%struct.atomic_t = type { i32 }
%union.anon.76 = type { i32 }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.69, %struct.list_head, %struct.list_head, %union.anon.70 }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.2, ptr }
%union.anon.2 = type { i64 }
%struct.lockref = type { %union.anon.67 }
%union.anon.67 = type { %struct.anon.68 }
%struct.anon.68 = type { %struct.spinlock, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%union.anon.69 = type { %struct.list_head }
%struct.list_head = type { ptr, ptr }
%union.anon.70 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.63, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.64, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.65, ptr, %struct.address_space, %struct.list_head, %union.anon.66, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.63 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%union.anon.64 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.65 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.66 = type { ptr }
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
%struct.reiserfs_sb_info = type { ptr, ptr, ptr, ptr, i16, %struct.mutex, ptr, i32, ptr, ptr, ptr, i32, %struct.anon.73, %struct.wait_queue_head, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.reiserfs_proc_info_data, ptr, i32, %struct.spinlock, ptr, ptr, i32, i32, %struct.delayed_work, %struct.spinlock, [2 x ptr], i32, ptr, ptr }
%struct.anon.73 = type { i32, i32, i32, i32, i32 }
%struct.reiserfs_proc_info_data = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], i32, %struct.__scan_bitmap_stats, %struct.__journal_stats }
%struct.__scan_bitmap_stats = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.__journal_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.fileattr = type { i32, i32, i32, i32, i32, i32, i8 }
%struct.page = type { i32, %union.anon.21, %union.anon.34, %struct.atomic_t, i32 }
%union.anon.21 = type { %struct.anon.22 }
%struct.anon.22 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.34 = type { %struct.atomic_t }
%struct.file = type { %union.anon.4, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.4 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@.str = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"fs/reiserfs/ioctl.c\00", [44 x i8] zeroinitializer }, align 32
@init_user_ns = external dso_local global %struct.user_namespace, align 1
@.str.1 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"VM_BUG_ON_PAGE(page_ref_count(page) == 0)\00", [54 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod_and_test = external dso_local global %struct.tracepoint, align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1074034178, i64 1074056449, i64 2147776001]
@___asan_gen_.3 = private constant [23 x i8] c"../fs/reiserfs/ioctl.c\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.3, i32 96, i32 9 }
@___asan_gen_.5 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.6 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.6, i32 717, i32 2 }
@llvm.compiler.used = appending global [2 x ptr] [ptr @.str, ptr @.str.1], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @reiserfs_fileattr_get(ptr nocapture noundef readonly %dentry, ptr noundef %fa) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode.i, align 8
  %i_sb = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info.i, align 16
  %s_mount_opt = getelementptr inbounds %struct.reiserfs_sb_info, ptr %5, i32 0, i32 11
  %6 = ptrtoint ptr %s_mount_opt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %s_mount_opt, align 4
  %and = and i32 %7, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %i_attrs = getelementptr i8, ptr %1, i32 -240
  %8 = ptrtoint ptr %i_attrs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %i_attrs, align 8
  tail call void @fileattr_fill_flags(ptr noundef %fa, i32 noundef %9) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -25, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fileattr_fill_flags(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @reiserfs_fileattr_set(ptr nocapture noundef readnone %mnt_userns, ptr nocapture noundef readonly %dentry, ptr nocapture noundef readonly %fa) local_unnamed_addr #0 align 64 {
entry:
  %tmp = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode.i, align 8
  %2 = ptrtoint ptr %fa to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fa, align 4
  %i_sb = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_sb, align 4
  tail call void @reiserfs_write_lock(ptr noundef %5) #5
  %6 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %7, i32 0, i32 33
  %8 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %s_fs_info.i, align 16
  %s_mount_opt = getelementptr inbounds %struct.reiserfs_sb_info, ptr %9, i32 0, i32 11
  %10 = ptrtoint ptr %s_mount_opt to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %s_mount_opt, align 4
  %and = and i32 %11, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.unlock_crit_edge, label %if.end

entry.unlock_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %unlock

if.end:                                           ; preds = %entry
  %fsx_valid.i = getelementptr inbounds %struct.fileattr, ptr %fa, i32 0, i32 6
  %12 = ptrtoint ptr %fsx_valid.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %bf.load.i = load i8, ptr %fsx_valid.i, align 4
  %13 = and i8 %bf.load.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %bf.cast.not.i = icmp eq i8 %13, 0
  br i1 %bf.cast.not.i, label %if.end.if.end6_crit_edge, label %land.rhs.i

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6

land.rhs.i:                                       ; preds = %if.end
  %fsx_xflags.i = getelementptr inbounds %struct.fileattr, ptr %fa, i32 0, i32 1
  %14 = ptrtoint ptr %fsx_xflags.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %fsx_xflags.i, align 4
  %and.i = and i32 %15, -33529
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %land.rhs.i.unlock_crit_edge

land.rhs.i.unlock_crit_edge:                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %unlock

lor.lhs.false.i:                                  ; preds = %land.rhs.i
  %fsx_extsize.i = getelementptr inbounds %struct.fileattr, ptr %fa, i32 0, i32 2
  %16 = ptrtoint ptr %fsx_extsize.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %fsx_extsize.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp.not.i = icmp eq i32 %17, 0
  br i1 %cmp.not.i, label %lor.lhs.false1.i, label %lor.lhs.false.i.unlock_crit_edge

lor.lhs.false.i.unlock_crit_edge:                 ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %unlock

lor.lhs.false1.i:                                 ; preds = %lor.lhs.false.i
  %fsx_projid.i = getelementptr inbounds %struct.fileattr, ptr %fa, i32 0, i32 4
  %18 = ptrtoint ptr %fsx_projid.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %fsx_projid.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp2.not.i = icmp eq i32 %19, 0
  br i1 %cmp2.not.i, label %fileattr_has_fsx.exit, label %lor.lhs.false1.i.unlock_crit_edge

lor.lhs.false1.i.unlock_crit_edge:                ; preds = %lor.lhs.false1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %unlock

fileattr_has_fsx.exit:                            ; preds = %lor.lhs.false1.i
  %fsx_cowextsize.i = getelementptr inbounds %struct.fileattr, ptr %fa, i32 0, i32 5
  %20 = ptrtoint ptr %fsx_cowextsize.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %fsx_cowextsize.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp3.i.not = icmp eq i32 %21, 0
  br i1 %cmp3.i.not, label %fileattr_has_fsx.exit.if.end6_crit_edge, label %fileattr_has_fsx.exit.unlock_crit_edge

fileattr_has_fsx.exit.unlock_crit_edge:           ; preds = %fileattr_has_fsx.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %unlock

fileattr_has_fsx.exit.if.end6_crit_edge:          ; preds = %fileattr_has_fsx.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6

if.end6:                                          ; preds = %fileattr_has_fsx.exit.if.end6_crit_edge, %if.end.if.end6_crit_edge
  %i_flags = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 4
  %22 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %i_flags, align 4
  %and7 = and i32 %23, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %if.end10, label %if.end6.unlock_crit_edge

if.end6.unlock_crit_edge:                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %unlock

if.end10:                                         ; preds = %if.end6
  %and11 = and i32 %3, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %if.end10.if.end20_crit_edge, label %land.lhs.true

if.end10.if.end20_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end20

land.lhs.true:                                    ; preds = %if.end10
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %1, align 8
  %26 = and i16 %25, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %26)
  %cmp = icmp eq i16 %26, -32768
  br i1 %cmp, label %if.then15, label %land.lhs.true.if.end20_crit_edge

land.lhs.true.if.end20_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end20

if.then15:                                        ; preds = %land.lhs.true
  %call16 = tail call i32 @reiserfs_unpack(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.then15.if.end20_crit_edge, label %if.then15.unlock_crit_edge

if.then15.unlock_crit_edge:                       ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #7
  br label %unlock

if.then15.if.end20_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end20

if.end20:                                         ; preds = %if.then15.if.end20_crit_edge, %land.lhs.true.if.end20_crit_edge, %if.end10.if.end20_crit_edge
  %conv21 = trunc i32 %3 to i16
  tail call void @sd_attrs_to_i_attrs(i16 noundef zeroext %conv21, ptr noundef %1) #5
  %i_attrs = getelementptr i8, ptr %1, i32 -240
  %27 = ptrtoint ptr %i_attrs to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %3, ptr %i_attrs, align 8
  %i_ctime = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp) #5
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp, ptr noundef %1) #5
  %28 = call ptr @memcpy(ptr %i_ctime, ptr %tmp, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp) #5
  call void @__mark_inode_dirty(ptr noundef %1, i32 noundef 7) #5
  br label %unlock

unlock:                                           ; preds = %if.end20, %if.then15.unlock_crit_edge, %if.end6.unlock_crit_edge, %fileattr_has_fsx.exit.unlock_crit_edge, %lor.lhs.false1.i.unlock_crit_edge, %lor.lhs.false.i.unlock_crit_edge, %land.rhs.i.unlock_crit_edge, %entry.unlock_crit_edge
  %err.0 = phi i32 [ -95, %fileattr_has_fsx.exit.unlock_crit_edge ], [ -1, %if.end6.unlock_crit_edge ], [ %call16, %if.then15.unlock_crit_edge ], [ 0, %if.end20 ], [ -25, %entry.unlock_crit_edge ], [ -95, %lor.lhs.false1.i.unlock_crit_edge ], [ -95, %lor.lhs.false.i.unlock_crit_edge ], [ -95, %land.rhs.i.unlock_crit_edge ]
  %29 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %i_sb, align 4
  call void @reiserfs_write_unlock(ptr noundef %30) #5
  ret i32 %err.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @reiserfs_write_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @reiserfs_unpack(ptr noundef %inode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %s_blocksize, align 16
  %i_size = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  %4 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %i_size, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %5)
  %cmp = icmp eq i64 %5, 0
  %i_flags = getelementptr i8, ptr %inode, i32 -248
  %6 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %i_flags, align 8
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %or = or i32 %7, 8
  %8 = ptrtoint ptr %i_flags to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %or, ptr %i_flags, align 8
  br label %cleanup

if.end:                                           ; preds = %entry
  %and = and i32 %7, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call7 = tail call i32 @reiserfs_write_unlock_nested(ptr noundef %1) #5
  %i_rwsem.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 25
  tail call void @down_write(ptr noundef %i_rwsem.i) #5
  %9 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %i_sb, align 4
  tail call void @reiserfs_write_lock_nested(ptr noundef %10, i32 noundef %call7) #5
  %11 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %i_sb, align 4
  tail call void @reiserfs_write_lock(ptr noundef %12) #5
  %13 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %i_size, align 8
  %sub = add i32 %3, -1
  %15 = trunc i64 %14 to i32
  %conv12 = and i32 %sub, %15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv12)
  %cmp13 = icmp eq i32 %conv12, 0
  br i1 %cmp13, label %if.then15, label %if.end19

if.then15:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  %16 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %i_flags, align 8
  %or18 = or i32 %17, 8
  store i32 %or18, ptr %i_flags, align 8
  br label %out

if.end19:                                         ; preds = %if.end5
  %18 = lshr i64 %14, 12
  %conv21 = trunc i64 %18 to i32
  %i_mapping = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 9
  %19 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %i_mapping, align 8
  %gfp_mask.i.i = getelementptr inbounds %struct.address_space, ptr %20, i32 0, i32 3
  %21 = ptrtoint ptr %gfp_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %gfp_mask.i.i, align 4
  %call.i.i = tail call ptr @pagecache_get_page(ptr noundef %20, i32 noundef %conv21, i32 noundef 7, i32 noundef %22) #5
  %tobool23.not = icmp eq ptr %call.i.i, null
  br i1 %tobool23.not, label %if.end19.out_crit_edge, label %if.end25

if.end19.out_crit_edge:                           ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end25:                                         ; preds = %if.end19
  %call26 = tail call i32 @__reiserfs_write_begin(ptr noundef nonnull %call.i.i, i32 noundef %conv12, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.end29, label %if.end25.out_unlock_crit_edge

if.end25.out_unlock_crit_edge:                    ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_unlock

if.end29:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @flush_dcache_page(ptr noundef nonnull %call.i.i) #5
  %call30 = tail call i32 @reiserfs_commit_write(ptr noundef null, ptr noundef nonnull %call.i.i, i32 noundef %conv12, i32 noundef %conv12) #5
  %23 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %i_flags, align 8
  %or33 = or i32 %24, 8
  store i32 %or33, ptr %i_flags, align 8
  br label %out_unlock

out_unlock:                                       ; preds = %if.end29, %if.end25.out_unlock_crit_edge
  %retval1.0 = phi i32 [ %call26, %if.end25.out_unlock_crit_edge ], [ %call30, %if.end29 ]
  tail call void @unlock_page(ptr noundef nonnull %call.i.i) #5
  %25 = getelementptr inbounds %struct.page, ptr %call.i.i, i32 0, i32 1
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %25, align 4
  %and.i.i = and i32 %27, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !14

if.then.i.i:                                      ; preds = %out_unlock
  call void @__sanitizer_cov_trace_pc() #7
  %sub.i.i = add i32 %27, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %out_unlock
  call void @__sanitizer_cov_trace_pc() #7
  %28 = ptrtoint ptr %call.i.i to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %28, %if.end.i.i ]
  %29 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %29, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #5
  %30 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp.i.i.i.i = icmp eq i32 %31, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !15

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @dump_page(ptr noundef %29, ptr noundef nonnull @.str.1) #5
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #5, !srcloc !16
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !17
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #5
  %32 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #5, !srcloc !18
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %32, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@reiserfs_unpack, %if.then.i.i.i.i.i)) #5
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !20

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %29, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #5
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.out_crit_edge

folio_put_testzero.exit.i.i.out_crit_edge:        ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__put_page(ptr noundef %29) #5
  br label %out

out:                                              ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.out_crit_edge, %if.end19.out_crit_edge, %if.then15
  %retval1.1 = phi i32 [ 0, %if.then15 ], [ -12, %if.end19.out_crit_edge ], [ %retval1.0, %folio_put_testzero.exit.i.i.out_crit_edge ], [ %retval1.0, %if.then.i4.i ]
  tail call void @up_write(ptr noundef %i_rwsem.i) #5
  %33 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %i_sb, align 4
  tail call void @reiserfs_write_unlock(ptr noundef %34) #5
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %retval1.1, %out ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sd_attrs_to_i_attrs(i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @current_time(ptr sret(%struct.timespec64) align 8, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @reiserfs_write_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @reiserfs_ioctl(ptr noundef %filp, i32 noundef %cmd, i32 noundef %arg) local_unnamed_addr #0 align 64 {
entry:
  %tmp30 = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %i_sb = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb, align 4
  tail call void @reiserfs_write_lock(ptr noundef %3) #5
  %4 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %cmd, label %entry.sw.epilog_crit_edge [
    i32 1074056449, label %sw.bb
    i32 -2147191295, label %sw.bb5
    i32 1074034178, label %sw.bb8
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %1, align 8
  %7 = and i16 %6, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %7)
  %cmp = icmp eq i16 %7, -32768
  br i1 %cmp, label %if.then, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %arg)
  %tobool.not = icmp eq i32 %arg, 0
  br i1 %tobool.not, label %if.then.sw.epilog_crit_edge, label %if.then2

if.then.sw.epilog_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %call3 = tail call i32 @reiserfs_unpack(ptr noundef %1)
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %8 = inttoptr i32 %arg to ptr
  %i_generation = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 49
  %9 = ptrtoint ptr %i_generation to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %i_generation, align 8
  tail call void @__might_fault(ptr noundef nonnull @.str, i32 noundef 96) #5
  %11 = tail call i32 @llvm.read_register.i32(metadata !4) #5
  %and.i.i.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 4
  %13 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #3, !srcloc !21
  %and.i = and i32 %13, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #5, !srcloc !22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !23
  %14 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %8, i32 %10, i32 -1226833921) #5, !srcloc !24
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %13) #5, !srcloc !22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !23
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry
  %call9 = tail call zeroext i1 @inode_owner_or_capable(ptr noundef nonnull @init_user_ns, ptr noundef %1) #5
  br i1 %call9, label %if.end11, label %sw.bb8.sw.epilog_crit_edge

sw.bb8.sw.epilog_crit_edge:                       ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.end11:                                         ; preds = %sw.bb8
  %call12 = tail call i32 @mnt_want_write_file(ptr noundef %filp) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %if.end11.sw.epilog_crit_edge

if.end11.sw.epilog_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.end15:                                         ; preds = %if.end11
  tail call void @__might_fault(ptr noundef nonnull @.str, i32 noundef 106) #5
  %15 = inttoptr i32 %arg to ptr
  %16 = tail call i32 @llvm.read_register.i32(metadata !4) #5
  %and.i.i.i46 = and i32 %16, -16384
  %17 = inttoptr i32 %and.i.i.i46 to ptr
  %cpu_domain.i.i47 = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 4
  %18 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i47) #3, !srcloc !21
  %and.i48 = and i32 %18, -13
  %or.i49 = or i32 %and.i48, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i49) #5, !srcloc !22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !23
  %19 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %15, i32 -1226833921) #5, !srcloc !25
  %asmresult = extractvalue { i32, i32 } %19, 0
  %asmresult24 = extractvalue { i32, i32 } %19, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %18) #5, !srcloc !22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !23
  %i_generation25 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 49
  %20 = ptrtoint ptr %i_generation25 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %asmresult24, ptr %i_generation25, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult)
  %tobool27.not = icmp eq i32 %asmresult, 0
  br i1 %tobool27.not, label %if.end29, label %if.end15.setversion_out_crit_edge

if.end15.setversion_out_crit_edge:                ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  br label %setversion_out

if.end29:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  %i_ctime = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp30) #5
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp30, ptr noundef %1) #5
  %21 = call ptr @memcpy(ptr %i_ctime, ptr %tmp30, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp30) #5
  call void @__mark_inode_dirty(ptr noundef %1, i32 noundef 7) #5
  br label %setversion_out

setversion_out:                                   ; preds = %if.end29, %if.end15.setversion_out_crit_edge
  %err.0 = phi i32 [ 0, %if.end29 ], [ -14, %if.end15.setversion_out_crit_edge ]
  call void @mnt_drop_write_file(ptr noundef %filp) #5
  br label %sw.epilog

sw.epilog:                                        ; preds = %setversion_out, %if.end11.sw.epilog_crit_edge, %sw.bb8.sw.epilog_crit_edge, %sw.bb5, %if.then2, %if.then.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  %err.1 = phi i32 [ %call12, %if.end11.sw.epilog_crit_edge ], [ %err.0, %setversion_out ], [ %14, %sw.bb5 ], [ %call3, %if.then2 ], [ 0, %if.then.sw.epilog_crit_edge ], [ -25, %sw.bb.sw.epilog_crit_edge ], [ -1, %sw.bb8.sw.epilog_crit_edge ], [ -25, %entry.sw.epilog_crit_edge ]
  %22 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %i_sb, align 4
  call void @reiserfs_write_unlock(ptr noundef %23) #5
  ret i32 %err.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @inode_owner_or_capable(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mnt_want_write_file(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mnt_drop_write_file(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reiserfs_write_unlock_nested(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @reiserfs_write_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__reiserfs_write_begin(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_dcache_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reiserfs_commit_write(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mark_inode_dirty(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pagecache_get_page(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod_and_test(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

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

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind readonly }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2}
!llvm.named.register.sp = !{!4}
!llvm.module.flags = !{!5, !6, !7, !8, !9, !10, !11, !12}
!llvm.ident = !{!13}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/reiserfs/ioctl.c", i32 96, i32 9}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../include/linux/mm.h", i32 717, i32 2}
!4 = !{!"sp"}
!5 = !{i32 1, !"wchar_size", i32 2}
!6 = !{i32 1, !"min_enum_size", i32 4}
!7 = !{i32 8, !"branch-target-enforcement", i32 0}
!8 = !{i32 8, !"sign-return-address", i32 0}
!9 = !{i32 8, !"sign-return-address-all", i32 0}
!10 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!11 = !{i32 7, !"uwtable", i32 1}
!12 = !{i32 7, !"frame-pointer", i32 2}
!13 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!14 = !{!"branch_weights", i32 2000, i32 1}
!15 = !{!"branch_weights", i32 1, i32 2000}
!16 = !{i64 2153740151, i64 2153740634, i64 2153740188, i64 2153740244, i64 2153740278, i64 2153740302, i64 2153740343, i64 2153740364, i64 2153740392, i64 2153740426}
!17 = !{i64 2148782342}
!18 = !{i64 2148697051, i64 2148697083, i64 2148697112, i64 2148697146, i64 2148697177, i64 2148697200}
!19 = !{i64 2148782571}
!20 = !{i64 2148518464, i64 2148518469, i64 2148518482, i64 2148518526, i64 2148518560, i64 2148518581}
!21 = !{i64 4663437}
!22 = !{i64 4663634}
!23 = !{i64 2152148867}
!24 = !{i64 2154204516, i64 2154204796, i64 2154205130, i64 2154205464}
!25 = !{i64 2154216890, i64 2154217170, i64 2154217504, i64 2154217838}
