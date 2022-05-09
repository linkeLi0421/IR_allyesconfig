; ModuleID = '/llk/IR_all_yes/fs/f2fs/acl.c_pt.bc'
source_filename = "../fs/f2fs/acl.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i32, i8, %struct.list_head, ptr, %struct.rw_semaphore, ptr, %struct.work_struct, %struct.ctl_table_set, ptr, ptr, [16 x i32] }
%struct.uid_gid_map = type { i32, %union.anon.34 }
%union.anon.34 = type { [5 x %struct.uid_gid_extent] }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.atomic_t = type { i32 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.36, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.36 = type { %struct.anon.37 }
%struct.anon.37 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.76, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.77, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.78, ptr, %struct.address_space, %struct.list_head, %union.anon.79, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.76 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
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
%struct.f2fs_acl_header = type { i32 }
%struct.posix_acl = type { %struct.refcount_struct, %struct.callback_head, i32, [0 x %struct.posix_acl_entry] }
%struct.posix_acl_entry = type { i16, i16, %union.anon }
%union.anon = type { %struct.kuid_t }
%struct.f2fs_acl_entry = type { i16, i16, i32 }
%struct.f2fs_sb_info = type { ptr, ptr, ptr, %struct.rw_semaphore, i32, i32, %struct.mutex, i32, i32, ptr, ptr, ptr, [3 x ptr], %struct.rw_semaphore, ptr, ptr, i32, %struct.spinlock, ptr, %struct.rw_semaphore, %struct.rw_semaphore, %struct.rw_semaphore, %struct.rw_semaphore, %struct.wait_queue_head, [6 x i32], [6 x i32], %struct.ckpt_req_control, [5 x %struct.inode_management], %struct.spinlock, %struct.list_head, i32, i32, i32, [4 x %struct.list_head], [4 x %struct.spinlock], %struct.mutex, %struct.xarray, %struct.mutex, %struct.list_head, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.atomic_t, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, %struct.rw_semaphore, [14 x %struct.atomic_t], %struct.percpu_counter, [2 x %struct.atomic_t], %struct.percpu_counter, %struct.f2fs_mount_info, %struct.rw_semaphore, ptr, %struct.atgc_management, i32, i32, [2 x i32], %struct.spinlock, i8, i32, i32, [2 x i64], i64, i64, %struct.rw_semaphore, i32, i32, ptr, [4 x %struct.atomic_t], [2 x i32], [2 x i32], %struct.atomic_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, i32, [4 x i32], %struct.spinlock, i32, i32, %struct.kobject, %struct.completion, %struct.kobject, %struct.completion, %struct.kobject, %struct.completion, %struct.list_head, %struct.mutex, i32, i32, ptr, i32, %struct.spinlock, i8, i64, i64, ptr, i32, ptr, ptr, i32, i32, [6 x i32], i32, i32, i32, ptr, i32, i64, i64, i32, ptr, i32, i32, %struct.atomic_t, %struct.spinlock, [22 x i64], [22 x i64], i8, i32, i32, %struct.spinlock, ptr }
%struct.ckpt_req_control = type { ptr, i32, %struct.wait_queue_head, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.llist_head, %struct.spinlock, i32, i32 }
%struct.llist_head = type { ptr }
%struct.inode_management = type { %struct.xarray, %struct.spinlock, %struct.list_head, i32 }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.f2fs_mount_info = type { i32, i32, i32, %struct.kuid_t, %struct.kgid_t, i32, i32, %struct.f2fs_fault_info, [3 x ptr], i32, i32, i32, i32, i32, i32, i32, %struct.fscrypt_dummy_policy, i32, i32, i8, i8, i8, i8, i8, i8, i32, [16 x [8 x i8]], [16 x [8 x i8]] }
%struct.f2fs_fault_info = type { %struct.atomic_t, i32, i32 }
%struct.fscrypt_dummy_policy = type { ptr }
%struct.atgc_management = type { i8, %struct.rb_root_cached, %struct.list_head, i32, i32, i32, i32, i64 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.f2fs_checkpoint = type { i64, i64, i64, i32, i32, i32, [8 x i32], [8 x i16], [8 x i32], [8 x i16], i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, [16 x i8], [0 x i8] }
%struct.f2fs_inode_info = type { %struct.inode, i32, i8, i8, i32, [2 x i32], i32, i16, [2 x i32], %struct.rw_semaphore, %struct.atomic_t, i32, i32, ptr, ptr, i32, i64, %struct.spinlock, [3 x ptr], i64, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.mutex, ptr, [2 x %struct.rw_semaphore], %struct.rw_semaphore, i32, %struct.kprojid_t, i32, %struct.timespec64, [4 x %struct.timespec64], %struct.atomic_t, i8, i8, i8, i16, i32 }
%struct.kprojid_t = type { i32 }

@.str = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@f2fs_kmalloc._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.f2fs_kmalloc = private unnamed_addr constant [13 x i8] c"f2fs_kmalloc\00", align 1
@f2fs_kmalloc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @__func__.f2fs_kmalloc, ptr @.str.3, i32 3219, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%sF2FS-fs (%s) : inject %s in %s of %pS\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"fs/f2fs/f2fs.h\00", [17 x i8] zeroinitializer }, align 32
@f2fs_kmalloc._entry_ptr = internal global ptr @f2fs_kmalloc._entry, section ".printk_index", align 4
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@f2fs_fault_name = external dso_local local_unnamed_addr global [18 x ptr], align 4
@init_user_ns = external dso_local global %struct.user_namespace, align 4
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 32, i64 1, i64 2, i64 4, i64 8, i64 16, i64 32]
@__sancov_gen_cov_switch_values.5 = internal global [4 x i64] [i64 2, i64 32, i64 16384, i64 32768]
@__sancov_gen_cov_switch_values.6 = internal global [8 x i64] [i64 6, i64 32, i64 1, i64 2, i64 4, i64 8, i64 16, i64 32]
@__sancov_gen_cov_switch_values.7 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967201]
@__sancov_gen_cov_switch_values.8 = internal global [8 x i64] [i64 6, i64 32, i64 1, i64 2, i64 4, i64 8, i64 16, i64 32]
@___asan_gen_.10 = private constant [17 x i8] c"../fs/f2fs/acl.c\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.10, i32 179, i32 44 }
@___asan_gen_.12 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.18 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.27 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.28 = private unnamed_addr constant [18 x i8] c"../fs/f2fs/f2fs.h\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 3219, i32 3 }
@llvm.compiler.used = appending global [8 x ptr] [ptr @f2fs_kmalloc._entry, ptr @f2fs_kmalloc._entry_ptr, ptr @.str, ptr @f2fs_kmalloc._rs, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f2fs_kmalloc._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f2fs_kmalloc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @f2fs_get_acl(ptr noundef %inode, i32 noundef %type, i1 noundef zeroext %rcu) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %rcu, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call1 = tail call fastcc ptr @__f2fs_get_acl(ptr noundef %inode, i32 noundef %type, ptr noundef null)
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi ptr [ %call1, %if.end ], [ inttoptr (i32 -10 to ptr), %entry.return_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @__f2fs_get_acl(ptr noundef %inode, i32 noundef %type, ptr noundef %dpage) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 32768, i32 %type)
  %cmp = icmp eq i32 %type, 32768
  %spec.select = select i1 %cmp, i32 2, i32 3
  %call = tail call i32 @f2fs_getxattr(ptr noundef %inode, i32 noundef %spec.select, ptr noundef nonnull @.str, ptr noundef null, i32 noundef 0, ptr noundef %dpage) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp2 = icmp sgt i32 %call, 0
  br i1 %cmp2, label %if.then3, label %entry.if.else_crit_edge

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

if.then3:                                         ; preds = %entry
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i.i, align 16
  %call5 = tail call fastcc ptr @f2fs_kmalloc(ptr noundef %3, i32 noundef %call, i32 noundef 3392)
  %tobool.not = icmp eq ptr %call5, null
  br i1 %tobool.not, label %if.then3.cleanup_crit_edge, label %if.end10

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end10:                                         ; preds = %if.then3
  %call9 = tail call i32 @f2fs_getxattr(ptr noundef %inode, i32 noundef %spec.select, ptr noundef nonnull @.str, ptr noundef nonnull %call5, i32 noundef %call, ptr noundef %dpage) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp11 = icmp sgt i32 %call9, 0
  br i1 %cmp11, label %if.then12, label %if.end10.if.else_crit_edge

if.end10.if.else_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

if.then12:                                        ; preds = %if.end10
  %add.ptr.i = getelementptr %struct.f2fs_acl_header, ptr %call5, i32 1
  %add.ptr2.i = getelementptr i8, ptr %call5, i32 %call9
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call9)
  %cmp.i = icmp ult i32 %call9, 4
  br i1 %cmp.i, label %if.then12.if.end19_crit_edge, label %if.end.i

if.then12.if.end19_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

if.end.i:                                         ; preds = %if.then12
  %4 = ptrtoint ptr %call5 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %call5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %5)
  %cmp3.not.i = icmp eq i32 %5, 16777216
  br i1 %cmp3.not.i, label %if.end6.i, label %if.end.i.if.end19_crit_edge

if.end.i.if.end19_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

if.end6.i:                                        ; preds = %if.end.i
  %sub1.i.i = add nsw i32 %call9, -20
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %call9)
  %cmp.i.i = icmp ult i32 %call9, 20
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %if.end6.i
  %rem.i.i = and i32 %call9, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i.i)
  %tobool.not.i.i = icmp eq i32 %rem.i.i, 0
  br i1 %tobool.not.i.i, label %if.end11.i, label %if.then.i.i.if.end19_crit_edge

if.then.i.i.if.end19_crit_edge:                   ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

if.else.i.i:                                      ; preds = %if.end6.i
  %rem3.i.i = and i32 %sub1.i.i, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem3.i.i)
  %tobool4.not.i.i = icmp eq i32 %rem3.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end11.thread.i, label %if.else.i.i.if.end19_crit_edge

if.else.i.i.if.end19_crit_edge:                   ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

if.end11.thread.i:                                ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %div713.i.i = lshr i32 %sub1.i.i, 3
  %add.i.i = add nuw nsw i32 %div713.i.i, 4
  br label %if.end14.i

if.end11.i:                                       ; preds = %if.then.i.i
  %sub.i.i = add nsw i32 %call9, -4
  %div14.i.i = lshr i32 %sub.i.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub.i.i)
  %cmp12.i = icmp ult i32 %sub.i.i, 4
  br i1 %cmp12.i, label %if.end11.i.if.end19_crit_edge, label %if.end11.i.if.end14.i_crit_edge

if.end11.i.if.end14.i_crit_edge:                  ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14.i

if.end11.i.if.end19_crit_edge:                    ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

if.end14.i:                                       ; preds = %if.end11.i.if.end14.i_crit_edge, %if.end11.thread.i
  %retval.0.i89.i = phi i32 [ %add.i.i, %if.end11.thread.i ], [ %div14.i.i, %if.end11.i.if.end14.i_crit_edge ]
  %call15.i = tail call ptr @posix_acl_alloc(i32 noundef %retval.0.i89.i, i32 noundef 3136) #9
  %tobool.not.i = icmp eq ptr %call15.i, null
  br i1 %tobool.not.i, label %if.end14.i.if.end19_crit_edge, label %for.cond.preheader.i

if.end14.i.if.end19_crit_edge:                    ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

for.cond.preheader.i:                             ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i89.i)
  %cmp1991.not.i = icmp eq i32 %retval.0.i89.i, 0
  br i1 %cmp1991.not.i, label %for.cond.preheader.i.for.end.i_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.093.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %entry1.092.i = phi ptr [ %add.ptr30.i, %for.inc.i.for.body.i_crit_edge ], [ %add.ptr.i, %for.cond.preheader.i.for.body.i_crit_edge ]
  %cmp20.i = icmp ugt ptr %entry1.092.i, %add.ptr2.i
  br i1 %cmp20.i, label %for.body.i.land.lhs.true.i.i_crit_edge, label %if.end22.i

for.body.i.land.lhs.true.i.i_crit_edge:           ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true.i.i

if.end22.i:                                       ; preds = %for.body.i
  %6 = ptrtoint ptr %entry1.092.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %entry1.092.i, align 4
  %8 = tail call i16 @llvm.bswap.i16(i16 %7) #9
  %arrayidx.i = getelementptr %struct.posix_acl, ptr %call15.i, i32 0, i32 3, i32 %i.093.i
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %8, ptr %arrayidx.i, align 4
  %e_perm.i = getelementptr inbounds %struct.f2fs_acl_entry, ptr %entry1.092.i, i32 0, i32 1
  %10 = ptrtoint ptr %e_perm.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %e_perm.i, align 2
  %12 = tail call i16 @llvm.bswap.i16(i16 %11) #9
  %e_perm26.i = getelementptr %struct.posix_acl, ptr %call15.i, i32 0, i32 3, i32 %i.093.i, i32 1
  %13 = ptrtoint ptr %e_perm26.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %12, ptr %e_perm26.i, align 2
  %conv.i = sext i16 %8 to i32
  %14 = zext i32 %conv.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values)
  switch i32 %conv.i, label %if.end22.i.land.lhs.true.i.i_crit_edge [
    i32 1, label %if.end22.i.for.inc.i_crit_edge
    i32 4, label %if.end22.i.for.inc.i_crit_edge43
    i32 16, label %if.end22.i.for.inc.i_crit_edge44
    i32 32, label %if.end22.i.for.inc.i_crit_edge45
    i32 2, label %sw.bb31.i
    i32 8, label %sw.bb36.i
  ]

if.end22.i.for.inc.i_crit_edge45:                 ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.end22.i.for.inc.i_crit_edge44:                 ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.end22.i.for.inc.i_crit_edge43:                 ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.end22.i.for.inc.i_crit_edge:                   ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.end22.i.land.lhs.true.i.i_crit_edge:           ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true.i.i

sw.bb31.i:                                        ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #11
  %15 = getelementptr %struct.posix_acl, ptr %call15.i, i32 0, i32 3, i32 %i.093.i, i32 2
  %e_id.i = getelementptr inbounds %struct.f2fs_acl_entry, ptr %entry1.092.i, i32 0, i32 2
  %16 = ptrtoint ptr %e_id.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %e_id.i, align 4
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #9
  %call34.i = tail call i32 @make_kuid(ptr noundef nonnull @init_user_ns, i32 noundef %18) #9
  %19 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %call34.i, ptr %15, align 4
  br label %for.inc.i

sw.bb36.i:                                        ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #11
  %20 = getelementptr %struct.posix_acl, ptr %call15.i, i32 0, i32 3, i32 %i.093.i, i32 2
  %e_id40.i = getelementptr inbounds %struct.f2fs_acl_entry, ptr %entry1.092.i, i32 0, i32 2
  %21 = ptrtoint ptr %e_id40.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %e_id40.i, align 4
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #9
  %call41.i = tail call i32 @make_kgid(ptr noundef nonnull @init_user_ns, i32 noundef %23) #9
  %24 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %call41.i, ptr %20, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %sw.bb36.i, %sw.bb31.i, %if.end22.i.for.inc.i_crit_edge, %if.end22.i.for.inc.i_crit_edge43, %if.end22.i.for.inc.i_crit_edge44, %if.end22.i.for.inc.i_crit_edge45
  %.sink.i = phi i32 [ 8, %sw.bb31.i ], [ 8, %sw.bb36.i ], [ 4, %if.end22.i.for.inc.i_crit_edge ], [ 4, %if.end22.i.for.inc.i_crit_edge43 ], [ 4, %if.end22.i.for.inc.i_crit_edge44 ], [ 4, %if.end22.i.for.inc.i_crit_edge45 ]
  %add.ptr30.i = getelementptr i8, ptr %entry1.092.i, i32 %.sink.i
  %inc.i = add nuw nsw i32 %i.093.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %retval.0.i89.i
  br i1 %exitcond.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %entry1.0.lcssa.i = phi ptr [ %add.ptr.i, %for.cond.preheader.i.for.end.i_crit_edge ], [ %add.ptr30.i, %for.inc.i.for.end.i_crit_edge ]
  %cmp44.not.i = icmp eq ptr %entry1.0.lcssa.i, %add.ptr2.i
  br i1 %cmp44.not.i, label %for.end.i.if.end19_crit_edge, label %for.end.i.land.lhs.true.i.i_crit_edge

for.end.i.land.lhs.true.i.i_crit_edge:            ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true.i.i

for.end.i.if.end19_crit_edge:                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

land.lhs.true.i.i:                                ; preds = %for.end.i.land.lhs.true.i.i_crit_edge, %if.end22.i.land.lhs.true.i.i_crit_edge, %for.body.i.land.lhs.true.i.i_crit_edge
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call15.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !20
  tail call void @llvm.prefetch.p0(ptr nonnull %call15.i, i32 1, i32 3, i32 1) #9
  %25 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call15.i, ptr nonnull %call15.i, i32 1, ptr nonnull elementtype(i32) %call15.i) #9, !srcloc !21
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %25, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %do.end.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.if.end19_crit_edge, label %if.then10.i.i.i.i.i, !prof !22

if.end5.i.i.i.i.i.if.end19_crit_edge:             ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef nonnull %call15.i, i32 noundef 3) #9
  br label %if.end19

do.end.i.i:                                       ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !23
  %a_rcu.i.i = getelementptr inbounds %struct.posix_acl, ptr %call15.i, i32 0, i32 1
  tail call void @kvfree_call_rcu(ptr noundef %a_rcu.i.i, ptr noundef nonnull inttoptr (i32 4 to ptr)) #9
  br label %if.end19

if.else:                                          ; preds = %if.end10.if.else_crit_edge, %entry.if.else_crit_edge
  %retval1.041 = phi i32 [ %call9, %if.end10.if.else_crit_edge ], [ %call, %entry.if.else_crit_edge ]
  %value.040 = phi ptr [ %call5, %if.end10.if.else_crit_edge ], [ null, %entry.if.else_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -61, i32 %retval1.041)
  %cmp14 = icmp eq i32 %retval1.041, -61
  %26 = inttoptr i32 %retval1.041 to ptr
  %spec.select42 = select i1 %cmp14, ptr null, ptr %26
  br label %if.end19

if.end19:                                         ; preds = %if.else, %do.end.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.if.end19_crit_edge, %for.end.i.if.end19_crit_edge, %if.end14.i.if.end19_crit_edge, %if.end11.i.if.end19_crit_edge, %if.else.i.i.if.end19_crit_edge, %if.then.i.i.if.end19_crit_edge, %if.end.i.if.end19_crit_edge, %if.then12.if.end19_crit_edge
  %value.039 = phi ptr [ %call5, %if.then12.if.end19_crit_edge ], [ %call5, %if.end.i.if.end19_crit_edge ], [ %call5, %if.then.i.i.if.end19_crit_edge ], [ %call5, %if.else.i.i.if.end19_crit_edge ], [ %call5, %if.end11.i.if.end19_crit_edge ], [ %call5, %if.end14.i.if.end19_crit_edge ], [ %call5, %for.end.i.if.end19_crit_edge ], [ %call5, %if.end5.i.i.i.i.i.if.end19_crit_edge ], [ %call5, %if.then10.i.i.i.i.i ], [ %call5, %do.end.i.i ], [ %value.040, %if.else ]
  %acl.0 = phi ptr [ inttoptr (i32 -22 to ptr), %if.then12.if.end19_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end.i.if.end19_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.then.i.i.if.end19_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.else.i.i.if.end19_crit_edge ], [ null, %if.end11.i.if.end19_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end14.i.if.end19_crit_edge ], [ %call15.i, %for.end.i.if.end19_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end5.i.i.i.i.i.if.end19_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.then10.i.i.i.i.i ], [ inttoptr (i32 -22 to ptr), %do.end.i.i ], [ %spec.select42, %if.else ]
  tail call void @kfree(ptr noundef %value.039) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %if.then3.cleanup_crit_edge
  %retval.0 = phi ptr [ %acl.0, %if.end19 ], [ inttoptr (i32 -12 to ptr), %if.then3.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @f2fs_set_acl(ptr nocapture noundef readnone %mnt_userns, ptr noundef %inode, ptr noundef %acl, i32 noundef %type) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i.i, align 16
  %ckpt.i.i.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %3, i32 0, i32 15
  %4 = ptrtoint ptr %ckpt.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ckpt.i.i.i, align 4
  %ckpt_flags1.i.i.i = getelementptr inbounds %struct.f2fs_checkpoint, ptr %5, i32 0, i32 10
  %6 = ptrtoint ptr %ckpt_flags1.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load i32, ptr %ckpt_flags1.i.i.i, align 1
  %8 = and i32 %7, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.i.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.i.i.not, label %if.end, label %entry.return_crit_edge, !prof !22

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call3 = tail call fastcc i32 @__f2fs_set_acl(ptr noundef %inode, i32 noundef %type, ptr noundef %acl, ptr noundef null)
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end ], [ -5, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__f2fs_set_acl(ptr noundef %inode, i32 noundef %type, ptr noundef %acl, ptr noundef %ipage) unnamed_addr #0 align 64 {
entry:
  %mode.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %inode, align 8
  %2 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.5)
  switch i32 %type, label %entry.cleanup_crit_edge [
    i32 32768, label %sw.bb
    i32 16384, label %sw.bb5
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %tobool.not = icmp ne ptr %acl, null
  %tobool1.not = icmp eq ptr %ipage, null
  %or.cond = and i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %if.then, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.then:                                          ; preds = %sw.bb
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %mode.i) #9
  %3 = ptrtoint ptr %mode.i to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 %1, ptr %mode.i, align 2
  %flags.i.i = getelementptr inbounds %struct.f2fs_inode_info, ptr %inode, i32 0, i32 8
  %4 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %flags.i.i, align 4
  %6 = and i32 %5, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i = icmp eq i32 %6, 0
  br i1 %tobool.not.i, label %if.then.if.end.i_crit_edge, label %if.then.i

if.then.if.end.i_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %i_acl_mode.i = getelementptr inbounds %struct.f2fs_inode_info, ptr %inode, i32 0, i32 7
  %7 = ptrtoint ptr %i_acl_mode.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %i_acl_mode.i, align 8
  %9 = ptrtoint ptr %mode.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %8, ptr %mode.i, align 2
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then.if.end.i_crit_edge
  %call2.i = call i32 @posix_acl_equiv_mode(ptr noundef nonnull %acl, ptr noundef nonnull %mode.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp.i = icmp slt i32 %call2.i, 0
  br i1 %cmp.i, label %f2fs_acl_update_mode.exit, label %if.end4.i

if.end4.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp5.i = icmp eq i32 %call2.i, 0
  %spec.select = select i1 %cmp5.i, ptr null, ptr %acl
  %i_gid.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 3
  %10 = ptrtoint ptr %i_gid.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %.unpack.i.i = load i32, ptr %i_gid.i.i, align 8
  %.fca.0.insert.i = insertvalue [1 x i32] poison, i32 %.unpack.i.i, 0
  %call10.i = call i32 @in_group_p([1 x i32] %.fca.0.insert.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool11.not.i = icmp eq i32 %call10.i, 0
  br i1 %tobool11.not.i, label %land.lhs.true.i, label %if.end4.i.if.end_crit_edge

if.end4.i.if.end_crit_edge:                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true.i:                                  ; preds = %if.end4.i
  %call12.i = call zeroext i1 @capable_wrt_inode_uidgid(ptr noundef nonnull @init_user_ns, ptr noundef %inode, i32 noundef 4) #9
  br i1 %call12.i, label %land.lhs.true.i.if.end_crit_edge, label %if.then13.i

land.lhs.true.i.if.end_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then13.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %mode.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %mode.i, align 2
  %13 = and i16 %12, -1025
  store i16 %13, ptr %mode.i, align 2
  br label %if.end

f2fs_acl_update_mode.exit:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %mode.i) #9
  br label %cleanup

if.end:                                           ; preds = %if.then13.i, %land.lhs.true.i.if.end_crit_edge, %if.end4.i.if.end_crit_edge
  %14 = ptrtoint ptr %mode.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %mode.i, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %mode.i) #9
  %i_acl_mode.i44 = getelementptr inbounds %struct.f2fs_inode_info, ptr %inode, i32 0, i32 7
  %16 = ptrtoint ptr %i_acl_mode.i44 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %15, ptr %i_acl_mode.i44, align 8
  call void @_set_bit(i32 noundef 5, ptr noundef %flags.i.i) #9
  call void @f2fs_mark_inode_dirty_sync(ptr noundef %inode, i1 noundef zeroext false) #9
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  %17 = and i16 %1, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %17)
  %cmp = icmp eq i16 %17, 16384
  br i1 %cmp, label %sw.bb5.sw.epilog_crit_edge, label %if.then8

sw.bb5.sw.epilog_crit_edge:                       ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.then8:                                         ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #11
  %tobool9.not = icmp eq ptr %acl, null
  %cond = select i1 %tobool9.not, i32 0, i32 -13
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb5.sw.epilog_crit_edge, %if.end, %sw.bb.sw.epilog_crit_edge
  %acl.addr.2 = phi ptr [ %acl, %sw.bb5.sw.epilog_crit_edge ], [ %spec.select, %if.end ], [ %acl, %sw.bb.sw.epilog_crit_edge ]
  %name_index.0 = phi i32 [ 3, %sw.bb5.sw.epilog_crit_edge ], [ 2, %if.end ], [ 2, %sw.bb.sw.epilog_crit_edge ]
  %tobool11.not = icmp eq ptr %acl.addr.2, null
  br i1 %tobool11.not, label %sw.epilog.if.end19_crit_edge, label %if.then12

sw.epilog.if.end19_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

if.then12:                                        ; preds = %sw.epilog
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %18 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %19, i32 0, i32 33
  %20 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %s_fs_info.i.i, align 16
  %a_count.i = getelementptr inbounds %struct.posix_acl, ptr %acl.addr.2, i32 0, i32 2
  %22 = ptrtoint ptr %a_count.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %a_count.i, align 4
  %mul.i = shl i32 %23, 3
  %add.i = or i32 %mul.i, 4
  %call.i = call fastcc ptr @f2fs_kmalloc(ptr noundef %21, i32 noundef %add.i, i32 noundef 3136) #9
  %tobool.not.i46 = icmp eq ptr %call.i, null
  br i1 %tobool.not.i46, label %if.then12.if.then16_crit_edge, label %if.end.i47

if.then12.if.then16_crit_edge:                    ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then16

if.end.i47:                                       ; preds = %if.then12
  %24 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 16777216, ptr %call.i, align 4
  %25 = ptrtoint ptr %a_count.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %a_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp54.not.i = icmp eq i32 %26, 0
  br i1 %cmp54.not.i, label %if.end.i47.for.end.thread.i_crit_edge, label %for.body.preheader.i

if.end.i47.for.end.thread.i_crit_edge:            ; preds = %if.end.i47
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.thread.i

for.body.preheader.i:                             ; preds = %if.end.i47
  %add.ptr.i = getelementptr %struct.f2fs_acl_header, ptr %call.i, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.preheader.i
  %i.056.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %entry1.055.i = phi ptr [ %add.ptr14.i, %for.inc.i.for.body.i_crit_edge ], [ %add.ptr.i, %for.body.preheader.i ]
  %arrayidx.i = getelementptr %struct.posix_acl, ptr %acl.addr.2, i32 0, i32 3, i32 %i.056.i
  %27 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %arrayidx.i, align 4
  %29 = call i16 @llvm.bswap.i16(i16 %28) #9
  %30 = ptrtoint ptr %entry1.055.i to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %29, ptr %entry1.055.i, align 4
  %e_perm.i = getelementptr %struct.posix_acl, ptr %acl.addr.2, i32 0, i32 3, i32 %i.056.i, i32 1
  %31 = ptrtoint ptr %e_perm.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %e_perm.i, align 2
  %33 = call i16 @llvm.bswap.i16(i16 %32) #9
  %e_perm7.i = getelementptr inbounds %struct.f2fs_acl_entry, ptr %entry1.055.i, i32 0, i32 1
  %34 = ptrtoint ptr %e_perm7.i to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %33, ptr %e_perm7.i, align 2
  %35 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %arrayidx.i, align 4
  %conv.i = sext i16 %36 to i32
  %37 = zext i32 %conv.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values.6)
  switch i32 %conv.i, label %fail.i [
    i32 2, label %sw.bb.i
    i32 8, label %sw.bb15.i
    i32 1, label %for.body.i.for.inc.i_crit_edge
    i32 4, label %for.body.i.for.inc.i_crit_edge67
    i32 16, label %for.body.i.for.inc.i_crit_edge68
    i32 32, label %for.body.i.for.inc.i_crit_edge69
  ]

for.body.i.for.inc.i_crit_edge69:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

for.body.i.for.inc.i_crit_edge68:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

for.body.i.for.inc.i_crit_edge67:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

sw.bb.i:                                          ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %38 = getelementptr %struct.posix_acl, ptr %acl.addr.2, i32 0, i32 3, i32 %i.056.i, i32 2
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %.unpack52.i = load i32, ptr %38, align 4
  %40 = insertvalue [1 x i32] undef, i32 %.unpack52.i, 0
  %call13.i = call i32 @from_kuid(ptr noundef nonnull @init_user_ns, [1 x i32] %40) #9
  br label %for.inc.sink.split.i

sw.bb15.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %41 = getelementptr %struct.posix_acl, ptr %acl.addr.2, i32 0, i32 3, i32 %i.056.i, i32 2
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %.unpack.i = load i32, ptr %41, align 4
  %43 = insertvalue [1 x i32] undef, i32 %.unpack.i, 0
  %call19.i = call i32 @from_kgid(ptr noundef nonnull @init_user_ns, [1 x i32] %43) #9
  br label %for.inc.sink.split.i

for.inc.sink.split.i:                             ; preds = %sw.bb15.i, %sw.bb.i
  %call13.sink.i = phi i32 [ %call13.i, %sw.bb.i ], [ %call19.i, %sw.bb15.i ]
  %44 = call i32 @llvm.bswap.i32(i32 %call13.sink.i) #9
  %e_id.i = getelementptr inbounds %struct.f2fs_acl_entry, ptr %entry1.055.i, i32 0, i32 2
  %45 = ptrtoint ptr %e_id.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %e_id.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %for.inc.sink.split.i, %for.body.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge67, %for.body.i.for.inc.i_crit_edge68, %for.body.i.for.inc.i_crit_edge69
  %.sink.i = phi i32 [ 4, %for.body.i.for.inc.i_crit_edge ], [ 4, %for.body.i.for.inc.i_crit_edge67 ], [ 4, %for.body.i.for.inc.i_crit_edge68 ], [ 4, %for.body.i.for.inc.i_crit_edge69 ], [ 8, %for.inc.sink.split.i ]
  %add.ptr14.i = getelementptr i8, ptr %entry1.055.i, i32 %.sink.i
  %inc.i = add nuw i32 %i.056.i, 1
  %46 = ptrtoint ptr %a_count.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %a_count.i, align 4
  %cmp.i48 = icmp ult i32 %inc.i, %47
  br i1 %cmp.i48, label %for.inc.i.for.body.i_crit_edge, label %for.end.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %47)
  %cmp.i.i = icmp slt i32 %47, 5
  %mul.i.i = shl i32 %47, 2
  %add.i.i = add i32 %mul.i.i, 4
  %sub.i.i = shl i32 %47, 3
  %add2.i.i = add i32 %sub.i.i, -12
  br i1 %cmp.i.i, label %for.end.i.for.end.thread.i_crit_edge, label %for.end.i.f2fs_acl_to_disk.exit_crit_edge

for.end.i.f2fs_acl_to_disk.exit_crit_edge:        ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %f2fs_acl_to_disk.exit

for.end.i.for.end.thread.i_crit_edge:             ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.thread.i

for.end.thread.i:                                 ; preds = %for.end.i.for.end.thread.i_crit_edge, %if.end.i47.for.end.thread.i_crit_edge
  %add.i65.i = phi i32 [ %add.i.i, %for.end.i.for.end.thread.i_crit_edge ], [ 4, %if.end.i47.for.end.thread.i_crit_edge ]
  br label %f2fs_acl_to_disk.exit

fail.i:                                           ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @kfree(ptr noundef nonnull %call.i) #9
  br label %if.then16

f2fs_acl_to_disk.exit:                            ; preds = %for.end.thread.i, %for.end.i.f2fs_acl_to_disk.exit_crit_edge
  %size.0 = phi i32 [ %add.i65.i, %for.end.thread.i ], [ %add2.i.i, %for.end.i.f2fs_acl_to_disk.exit_crit_edge ]
  %cmp.i50 = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i50, label %f2fs_acl_to_disk.exit.if.then16_crit_edge, label %f2fs_acl_to_disk.exit.if.end19_crit_edge

f2fs_acl_to_disk.exit.if.end19_crit_edge:         ; preds = %f2fs_acl_to_disk.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

f2fs_acl_to_disk.exit.if.then16_crit_edge:        ; preds = %f2fs_acl_to_disk.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then16

if.then16:                                        ; preds = %f2fs_acl_to_disk.exit.if.then16_crit_edge, %fail.i, %if.then12.if.then16_crit_edge
  %retval.0.i4966 = phi ptr [ %call.i, %f2fs_acl_to_disk.exit.if.then16_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.then12.if.then16_crit_edge ], [ inttoptr (i32 -22 to ptr), %fail.i ]
  %flags.i = getelementptr inbounds %struct.f2fs_inode_info, ptr %inode, i32 0, i32 8
  call void @_clear_bit(i32 noundef 5, ptr noundef %flags.i) #9
  %48 = ptrtoint ptr %retval.0.i4966 to i32
  br label %cleanup

if.end19:                                         ; preds = %f2fs_acl_to_disk.exit.if.end19_crit_edge, %sw.epilog.if.end19_crit_edge
  %size.1 = phi i32 [ 0, %sw.epilog.if.end19_crit_edge ], [ %size.0, %f2fs_acl_to_disk.exit.if.end19_crit_edge ]
  %value.0 = phi ptr [ null, %sw.epilog.if.end19_crit_edge ], [ %call.i, %f2fs_acl_to_disk.exit.if.end19_crit_edge ]
  %call20 = call i32 @f2fs_setxattr(ptr noundef %inode, i32 noundef %name_index.0, ptr noundef nonnull @.str, ptr noundef %value.0, i32 noundef %size.1, ptr noundef %ipage, i32 noundef 0) #9
  call void @kfree(ptr noundef %value.0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.then22, label %if.end19.if.end23_crit_edge

if.end19.if.end23_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23

if.then22:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  call void @set_cached_acl(ptr noundef %inode, i32 noundef %type, ptr noundef %acl.addr.2) #9
  br label %if.end23

if.end23:                                         ; preds = %if.then22, %if.end19.if.end23_crit_edge
  %flags.i51 = getelementptr inbounds %struct.f2fs_inode_info, ptr %inode, i32 0, i32 8
  call void @_clear_bit(i32 noundef 5, ptr noundef %flags.i51) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %if.then16, %if.then8, %f2fs_acl_update_mode.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %48, %if.then16 ], [ %call20, %if.end23 ], [ %cond, %if.then8 ], [ %call2.i, %f2fs_acl_update_mode.exit ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @f2fs_init_acl(ptr noundef %inode, ptr noundef %dir, ptr noundef %ipage, ptr noundef %dpage) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %inode, align 2
  %2 = and i16 %1, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -24576, i16 %2)
  %cmp.i = icmp eq i16 %2, -24576
  br i1 %cmp.i, label %entry.if.end.thread68_crit_edge, label %lor.lhs.false.i

entry.if.end.thread68_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.thread68

lor.lhs.false.i:                                  ; preds = %entry
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  %3 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %i_sb.i, align 4
  %s_flags.i = getelementptr inbounds %struct.super_block, ptr %4, i32 0, i32 10
  %5 = ptrtoint ptr %s_flags.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %s_flags.i, align 4
  %and2.i = and i32 %6, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool.not.i = icmp eq i32 %and2.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i.if.end.thread68_crit_edge, label %if.end.i

lor.lhs.false.i.if.end.thread68_crit_edge:        ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.thread68

if.end.i:                                         ; preds = %lor.lhs.false.i
  %call.i = tail call fastcc ptr @__f2fs_get_acl(ptr noundef %dir, i32 noundef 16384, ptr noundef %dpage) #9
  %magicptr.i = ptrtoint ptr %call.i to i32
  %7 = zext i32 %magicptr.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.7)
  switch i32 %magicptr.i, label %if.end13.i [
    i32 0, label %if.end.i.if.then8.i_crit_edge
    i32 -95, label %if.end.i.if.then8.i_crit_edge85
  ]

if.end.i.if.then8.i_crit_edge85:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then8.i

if.end.i.if.then8.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then8.i

if.then8.i:                                       ; preds = %if.end.i.if.then8.i_crit_edge, %if.end.i.if.then8.i_crit_edge85
  %call9.i = tail call i32 @current_umask() #9
  %8 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %inode, align 2
  %10 = trunc i32 %call9.i to i16
  %11 = xor i16 %10, -1
  %conv12.i = and i16 %9, %11
  store i16 %conv12.i, ptr %inode, align 2
  br label %if.end.thread68

if.end13.i:                                       ; preds = %if.end.i
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end13.i.cleanup_crit_edge, label %if.then.i.i

if.end13.i.cleanup_crit_edge:                     ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.i.i:                                      ; preds = %if.end13.i
  %a_count.i.i = getelementptr inbounds %struct.posix_acl, ptr %call.i, i32 0, i32 2
  %12 = ptrtoint ptr %a_count.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %a_count.i.i, align 4
  %mul.i.i = shl i32 %13, 3
  %add.i.i = add i32 %mul.i.i, 16
  %call.i.i = tail call ptr @kmemdup(ptr noundef nonnull %call.i, i32 noundef %add.i.i, i32 noundef 3136) #9
  %tobool1.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool1.not.i.i, label %if.then.i.i.land.lhs.true.i.i_crit_edge, label %if.end21.i

if.then.i.i.land.lhs.true.i.i_crit_edge:          ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true.i.i

if.end21.i:                                       ; preds = %if.then.i.i
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call.i.i, i32 noundef 4) #9
  %14 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile i32 1, ptr %call.i.i, align 4
  %a_entries.i.i = getelementptr inbounds %struct.posix_acl, ptr %call.i.i, i32 0, i32 3
  %a_count.i59.i = getelementptr inbounds %struct.posix_acl, ptr %call.i.i, i32 0, i32 2
  %15 = ptrtoint ptr %a_count.i59.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %a_count.i59.i, align 4
  %add.ptr.i.i = getelementptr %struct.posix_acl_entry, ptr %a_entries.i.i, i32 %16
  %cmp97.i.i = icmp ult ptr %a_entries.i.i, %add.ptr.i.i
  br i1 %cmp97.i.i, label %for.body.i.preheader.i, label %if.end21.i.land.lhs.true.i41_crit_edge

if.end21.i.land.lhs.true.i41_crit_edge:           ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true.i41

for.body.i.preheader.i:                           ; preds = %if.end21.i
  %17 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %inode, align 2
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.i.preheader.i
  %not_equiv.0103.i.i = phi i32 [ %not_equiv.1.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %for.body.i.preheader.i ]
  %mode.0102.i.i = phi i16 [ %mode.1.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %18, %for.body.i.preheader.i ]
  %mask_obj.0101.i.i = phi ptr [ %mask_obj.1.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ null, %for.body.i.preheader.i ]
  %group_obj.0100.i.i = phi ptr [ %group_obj.1.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ null, %for.body.i.preheader.i ]
  %pa.098.i.i = phi ptr [ %incdec.ptr.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %a_entries.i.i, %for.body.i.preheader.i ]
  %19 = ptrtoint ptr %pa.098.i.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %pa.098.i.i, align 4
  %conv.i.i = sext i16 %20 to i32
  %21 = zext i32 %conv.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.8)
  switch i32 %conv.i.i, label %for.body.i.i.land.lhs.true.i41_crit_edge [
    i32 1, label %sw.bb.i.i
    i32 2, label %for.body.i.i.for.inc.i.i_crit_edge
    i32 8, label %for.body.i.i.for.inc.i.i_crit_edge86
    i32 4, label %sw.bb11.i.i
    i32 32, label %sw.bb12.i.i
    i32 16, label %sw.bb25.i.i
  ]

for.body.i.i.for.inc.i.i_crit_edge86:             ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i

for.body.i.i.land.lhs.true.i41_crit_edge:         ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true.i41

sw.bb.i.i:                                        ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %22 = lshr i16 %mode.0102.i.i, 6
  %or.i.i = or i16 %22, -8
  %e_perm.i.i = getelementptr inbounds %struct.posix_acl_entry, ptr %pa.098.i.i, i32 0, i32 1
  %23 = ptrtoint ptr %e_perm.i.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %e_perm.i.i, align 2
  %and.i.i = and i16 %24, %or.i.i
  store i16 %and.i.i, ptr %e_perm.i.i, align 2
  %shl.i.i = shl i16 %and.i.i, 6
  %or6.i.i = or i16 %shl.i.i, -449
  %and8.i.i = and i16 %or6.i.i, %mode.0102.i.i
  br label %for.inc.i.i

sw.bb11.i.i:                                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i

sw.bb12.i.i:                                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %or14.i.i = or i16 %mode.0102.i.i, -8
  %e_perm15.i.i = getelementptr inbounds %struct.posix_acl_entry, ptr %pa.098.i.i, i32 0, i32 1
  %25 = ptrtoint ptr %e_perm15.i.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %e_perm15.i.i, align 2
  %and17.i.i = and i16 %26, %or14.i.i
  store i16 %and17.i.i, ptr %e_perm15.i.i, align 2
  %27 = or i16 %and17.i.i, -8
  %and2392.i.i = and i16 %27, %mode.0102.i.i
  br label %for.inc.i.i

sw.bb25.i.i:                                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %sw.bb25.i.i, %sw.bb12.i.i, %sw.bb11.i.i, %sw.bb.i.i, %for.body.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge86
  %group_obj.1.i.i = phi ptr [ %group_obj.0100.i.i, %sw.bb25.i.i ], [ %group_obj.0100.i.i, %sw.bb12.i.i ], [ %pa.098.i.i, %sw.bb11.i.i ], [ %group_obj.0100.i.i, %sw.bb.i.i ], [ %group_obj.0100.i.i, %for.body.i.i.for.inc.i.i_crit_edge ], [ %group_obj.0100.i.i, %for.body.i.i.for.inc.i.i_crit_edge86 ]
  %mask_obj.1.i.i = phi ptr [ %pa.098.i.i, %sw.bb25.i.i ], [ %mask_obj.0101.i.i, %sw.bb12.i.i ], [ %mask_obj.0101.i.i, %sw.bb11.i.i ], [ %mask_obj.0101.i.i, %sw.bb.i.i ], [ %mask_obj.0101.i.i, %for.body.i.i.for.inc.i.i_crit_edge ], [ %mask_obj.0101.i.i, %for.body.i.i.for.inc.i.i_crit_edge86 ]
  %mode.1.i.i = phi i16 [ %mode.0102.i.i, %sw.bb25.i.i ], [ %and2392.i.i, %sw.bb12.i.i ], [ %mode.0102.i.i, %sw.bb11.i.i ], [ %and8.i.i, %sw.bb.i.i ], [ %mode.0102.i.i, %for.body.i.i.for.inc.i.i_crit_edge ], [ %mode.0102.i.i, %for.body.i.i.for.inc.i.i_crit_edge86 ]
  %not_equiv.1.i.i = phi i32 [ 1, %sw.bb25.i.i ], [ %not_equiv.0103.i.i, %sw.bb12.i.i ], [ %not_equiv.0103.i.i, %sw.bb11.i.i ], [ %not_equiv.0103.i.i, %sw.bb.i.i ], [ 1, %for.body.i.i.for.inc.i.i_crit_edge ], [ 1, %for.body.i.i.for.inc.i.i_crit_edge86 ]
  %incdec.ptr.i.i = getelementptr %struct.posix_acl_entry, ptr %pa.098.i.i, i32 1
  %cmp.i60.i = icmp ult ptr %incdec.ptr.i.i, %add.ptr.i.i
  br i1 %cmp.i60.i, label %for.inc.i.i.for.body.i.i_crit_edge, label %for.end.i.i

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

for.end.i.i:                                      ; preds = %for.inc.i.i
  %tobool.not.i61.i = icmp eq ptr %mask_obj.1.i.i, null
  br i1 %tobool.not.i61.i, label %if.else.i.i, label %if.then.i62.i

if.then.i62.i:                                    ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %28 = lshr i16 %mode.1.i.i, 3
  %or28.i.i = or i16 %28, -8
  %e_perm29.i.i = getelementptr inbounds %struct.posix_acl_entry, ptr %mask_obj.1.i.i, i32 0, i32 1
  %29 = ptrtoint ptr %e_perm29.i.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %e_perm29.i.i, align 2
  %and31.i.i = and i16 %30, %or28.i.i
  store i16 %and31.i.i, ptr %e_perm29.i.i, align 2
  br label %if.end26.i

if.else.i.i:                                      ; preds = %for.end.i.i
  %tobool40.not.i.i = icmp eq ptr %group_obj.1.i.i, null
  br i1 %tobool40.not.i.i, label %if.else.i.i.land.lhs.true.i41_crit_edge, label %if.end.i.i

if.else.i.i.land.lhs.true.i41_crit_edge:          ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true.i41

if.end.i.i:                                       ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %31 = lshr i16 %mode.1.i.i, 3
  %or44.i.i = or i16 %31, -8
  %e_perm45.i.i = getelementptr inbounds %struct.posix_acl_entry, ptr %group_obj.1.i.i, i32 0, i32 1
  %32 = ptrtoint ptr %e_perm45.i.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %e_perm45.i.i, align 2
  %and47.i.i = and i16 %33, %or44.i.i
  store i16 %and47.i.i, ptr %e_perm45.i.i, align 2
  br label %if.end26.i

if.end26.i:                                       ; preds = %if.end.i.i, %if.then.i62.i
  %or36.pn.in.in.i.i = phi i16 [ %and31.i.i, %if.then.i62.i ], [ %and47.i.i, %if.end.i.i ]
  %or36.pn.in.i.i = shl i16 %or36.pn.in.in.i.i, 3
  %or36.pn.i.i = or i16 %or36.pn.in.i.i, -57
  %mode.2.i.i = and i16 %or36.pn.i.i, %mode.1.i.i
  %34 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %inode, align 2
  %36 = and i16 %35, -512
  %or6091.i.i = or i16 %mode.2.i.i, %36
  store i16 %or6091.i.i, ptr %inode, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %not_equiv.1.i.i)
  %cmp27.i = icmp eq i32 %not_equiv.1.i.i, 0
  br i1 %cmp27.i, label %if.then29.i, label %if.end26.i.if.end30.i_crit_edge

if.end26.i.if.end30.i_crit_edge:                  ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end30.i

if.then29.i:                                      ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @posix_acl_release(ptr noundef nonnull %call.i.i) #9
  br label %if.end30.i

if.end30.i:                                       ; preds = %if.then29.i, %if.end26.i.if.end30.i_crit_edge
  %acl.0 = phi ptr [ null, %if.then29.i ], [ %call.i.i, %if.end26.i.if.end30.i_crit_edge ]
  %37 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %inode, align 2
  %39 = and i16 %38, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %39)
  %cmp33.i = icmp eq i16 %39, 16384
  br i1 %cmp33.i, label %if.end, label %if.then35.i

if.then35.i:                                      ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @posix_acl_release(ptr noundef nonnull %call.i) #9
  br label %if.end.thread68

land.lhs.true.i41:                                ; preds = %if.else.i.i.land.lhs.true.i41_crit_edge, %for.body.i.i.land.lhs.true.i41_crit_edge, %if.end21.i.land.lhs.true.i41_crit_edge
  %call.i.i.i.i.i.i38 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call.i.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !20
  tail call void @llvm.prefetch.p0(ptr nonnull %call.i.i, i32 1, i32 3, i32 1) #9
  %40 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call.i.i, ptr nonnull %call.i.i, i32 1, ptr nonnull elementtype(i32) %call.i.i) #9, !srcloc !21
  %asmresult.i.i.i.i.i.i.i39 = extractvalue { i32, i32, i32 } %40, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i39)
  %cmp.i.i.i.i40 = icmp eq i32 %asmresult.i.i.i.i.i.i.i39, 1
  br i1 %cmp.i.i.i.i40, label %do.end.i46, label %if.end5.i.i.i.i43

if.end5.i.i.i.i43:                                ; preds = %land.lhs.true.i41
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i39)
  %.not.i.i.i.i42 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i39, 0
  br i1 %.not.i.i.i.i42, label %if.end5.i.i.i.i43.land.lhs.true.i.i_crit_edge, label %if.then10.i.i.i.i44, !prof !22

if.end5.i.i.i.i43.land.lhs.true.i.i_crit_edge:    ; preds = %if.end5.i.i.i.i43
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true.i.i

if.then10.i.i.i.i44:                              ; preds = %if.end5.i.i.i.i43
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef nonnull %call.i.i, i32 noundef 3) #9
  br label %land.lhs.true.i.i

do.end.i46:                                       ; preds = %land.lhs.true.i41
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !23
  %a_rcu.i45 = getelementptr inbounds %struct.posix_acl, ptr %call.i.i, i32 0, i32 1
  tail call void @kvfree_call_rcu(ptr noundef %a_rcu.i45, ptr noundef nonnull inttoptr (i32 4 to ptr)) #9
  br label %land.lhs.true.i.i

land.lhs.true.i.i:                                ; preds = %do.end.i46, %if.then10.i.i.i.i44, %if.end5.i.i.i.i43.land.lhs.true.i.i_crit_edge, %if.then.i.i.land.lhs.true.i.i_crit_edge
  %ret.0.i = phi i32 [ -12, %if.then.i.i.land.lhs.true.i.i_crit_edge ], [ -5, %if.end5.i.i.i.i43.land.lhs.true.i.i_crit_edge ], [ -5, %if.then10.i.i.i.i44 ], [ -5, %do.end.i46 ]
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !20
  tail call void @llvm.prefetch.p0(ptr nonnull %call.i, i32 1, i32 3, i32 1) #9
  %41 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call.i, ptr nonnull %call.i, i32 1, ptr nonnull elementtype(i32) %call.i) #9, !srcloc !21
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %41, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %do.end.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i.i, !prof !22

if.end5.i.i.i.i.i.cleanup_crit_edge:              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef nonnull %call.i, i32 noundef 3) #9
  br label %cleanup

do.end.i.i:                                       ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !23
  %a_rcu.i.i = getelementptr inbounds %struct.posix_acl, ptr %call.i, i32 0, i32 1
  tail call void @kvfree_call_rcu(ptr noundef %a_rcu.i.i, ptr noundef nonnull inttoptr (i32 4 to ptr)) #9
  br label %cleanup

if.end.thread68:                                  ; preds = %if.then35.i, %if.then8.i, %lor.lhs.false.i.if.end.thread68_crit_edge, %entry.if.end.thread68_crit_edge
  %acl.1.ph.ph = phi ptr [ null, %entry.if.end.thread68_crit_edge ], [ null, %lor.lhs.false.i.if.end.thread68_crit_edge ], [ %acl.0, %if.then35.i ], [ null, %if.then8.i ]
  tail call void @f2fs_mark_inode_dirty_sync(ptr noundef %inode, i1 noundef zeroext true) #9
  br label %if.end4.thread

if.end:                                           ; preds = %if.end30.i
  tail call void @f2fs_mark_inode_dirty_sync(ptr noundef %inode, i1 noundef zeroext true) #9
  %tobool1.not = icmp eq ptr %call.i, null
  br i1 %tobool1.not, label %if.end.if.end4.thread_crit_edge, label %land.lhs.true.i

if.end.if.end4.thread_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4.thread

land.lhs.true.i:                                  ; preds = %if.end
  %call3 = tail call fastcc i32 @__f2fs_set_acl(ptr noundef %inode, i32 noundef 16384, ptr noundef nonnull %call.i, ptr noundef %ipage)
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !20
  tail call void @llvm.prefetch.p0(ptr nonnull %call.i, i32 1, i32 3, i32 1) #9
  %42 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call.i, ptr nonnull %call.i, i32 1, ptr nonnull elementtype(i32) %call.i) #9, !srcloc !21
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %42, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %do.end.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.if.end4_crit_edge, label %if.then10.i.i.i.i, !prof !22

if.end5.i.i.i.i.if.end4_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef nonnull %call.i, i32 noundef 3) #9
  br label %if.end4

do.end.i:                                         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !23
  %a_rcu.i = getelementptr inbounds %struct.posix_acl, ptr %call.i, i32 0, i32 1
  tail call void @kvfree_call_rcu(ptr noundef %a_rcu.i, ptr noundef nonnull inttoptr (i32 4 to ptr)) #9
  br label %if.end4

if.end4:                                          ; preds = %do.end.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.if.end4_crit_edge
  %tobool5.not = icmp eq ptr %acl.0, null
  br i1 %tobool5.not, label %if.end4.if.else11_crit_edge, label %if.then6

if.end4.if.else11_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else11

if.end4.thread:                                   ; preds = %if.end.if.end4.thread_crit_edge, %if.end.thread68
  %acl.15567 = phi ptr [ %acl.0, %if.end.if.end4.thread_crit_edge ], [ %acl.1.ph.ph, %if.end.thread68 ]
  %i_default_acl = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 6
  %43 = ptrtoint ptr %i_default_acl to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr null, ptr %i_default_acl, align 4
  %tobool5.not74 = icmp eq ptr %acl.15567, null
  br i1 %tobool5.not74, label %if.end4.thread.if.else11_crit_edge, label %if.end4.thread.if.then8_crit_edge

if.end4.thread.if.then8_crit_edge:                ; preds = %if.end4.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then8

if.end4.thread.if.else11_crit_edge:               ; preds = %if.end4.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else11

if.then6:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool7.not = icmp eq i32 %call3, 0
  br i1 %tobool7.not, label %if.then6.if.then8_crit_edge, label %if.then6.land.lhs.true.i30_crit_edge

if.then6.land.lhs.true.i30_crit_edge:             ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true.i30

if.then6.if.then8_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then8

if.then8:                                         ; preds = %if.then6.if.then8_crit_edge, %if.end4.thread.if.then8_crit_edge
  %acl.155667581 = phi ptr [ %acl.0, %if.then6.if.then8_crit_edge ], [ %acl.15567, %if.end4.thread.if.then8_crit_edge ]
  %call9 = tail call fastcc i32 @__f2fs_set_acl(ptr noundef %inode, i32 noundef 32768, ptr noundef nonnull %acl.155667581, ptr noundef %ipage)
  br label %land.lhs.true.i30

land.lhs.true.i30:                                ; preds = %if.then8, %if.then6.land.lhs.true.i30_crit_edge
  %acl.156 = phi ptr [ %acl.0, %if.then6.land.lhs.true.i30_crit_edge ], [ %acl.155667581, %if.then8 ]
  %error.1 = phi i32 [ %call3, %if.then6.land.lhs.true.i30_crit_edge ], [ %call9, %if.then8 ]
  %call.i.i.i.i.i.i27 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %acl.156, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !20
  tail call void @llvm.prefetch.p0(ptr nonnull %acl.156, i32 1, i32 3, i32 1) #9
  %44 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %acl.156, ptr nonnull %acl.156, i32 1, ptr nonnull elementtype(i32) %acl.156) #9, !srcloc !21
  %asmresult.i.i.i.i.i.i.i28 = extractvalue { i32, i32, i32 } %44, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i28)
  %cmp.i.i.i.i29 = icmp eq i32 %asmresult.i.i.i.i.i.i.i28, 1
  br i1 %cmp.i.i.i.i29, label %do.end.i35, label %if.end5.i.i.i.i32

if.end5.i.i.i.i32:                                ; preds = %land.lhs.true.i30
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i28)
  %.not.i.i.i.i31 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i28, 0
  br i1 %.not.i.i.i.i31, label %if.end5.i.i.i.i32.cleanup_crit_edge, label %if.then10.i.i.i.i33, !prof !22

if.end5.i.i.i.i32.cleanup_crit_edge:              ; preds = %if.end5.i.i.i.i32
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then10.i.i.i.i33:                              ; preds = %if.end5.i.i.i.i32
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef nonnull %acl.156, i32 noundef 3) #9
  br label %cleanup

do.end.i35:                                       ; preds = %land.lhs.true.i30
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !23
  %a_rcu.i34 = getelementptr inbounds %struct.posix_acl, ptr %acl.156, i32 0, i32 1
  tail call void @kvfree_call_rcu(ptr noundef %a_rcu.i34, ptr noundef nonnull inttoptr (i32 4 to ptr)) #9
  br label %cleanup

if.else11:                                        ; preds = %if.end4.thread.if.else11_crit_edge, %if.end4.if.else11_crit_edge
  %error.077 = phi i32 [ 0, %if.end4.thread.if.else11_crit_edge ], [ %call3, %if.end4.if.else11_crit_edge ]
  %i_acl = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 5
  %45 = ptrtoint ptr %i_acl to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr null, ptr %i_acl, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.else11, %do.end.i35, %if.then10.i.i.i.i33, %if.end5.i.i.i.i32.cleanup_crit_edge, %do.end.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.cleanup_crit_edge, %if.end13.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %error.077, %if.else11 ], [ %error.1, %if.end5.i.i.i.i32.cleanup_crit_edge ], [ %error.1, %if.then10.i.i.i.i33 ], [ %error.1, %do.end.i35 ], [ %ret.0.i, %if.end5.i.i.i.i.i.cleanup_crit_edge ], [ %ret.0.i, %if.then10.i.i.i.i.i ], [ %ret.0.i, %do.end.i.i ], [ %magicptr.i, %if.end13.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @f2fs_mark_inode_dirty_sync(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @posix_acl_release(ptr noundef %acl) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %tobool.not = icmp eq ptr %acl, null
  br i1 %tobool.not, label %entry.if.end6_crit_edge, label %land.lhs.true

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

land.lhs.true:                                    ; preds = %entry
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %acl, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !20
  tail call void @llvm.prefetch.p0(ptr nonnull %acl, i32 1, i32 3, i32 1) #9
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %acl, ptr nonnull %acl, i32 1, ptr nonnull elementtype(i32) %acl) #9, !srcloc !21
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %do.end, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.if.end6_crit_edge, label %if.then10.i.i.i, !prof !22

if.end5.i.i.i.if.end6_crit_edge:                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef nonnull %acl, i32 noundef 3) #9
  br label %if.end6

do.end:                                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !23
  %a_rcu = getelementptr inbounds %struct.posix_acl, ptr %acl, i32 0, i32 1
  tail call void @kvfree_call_rcu(ptr noundef %a_rcu, ptr noundef nonnull inttoptr (i32 4 to ptr)) #9
  br label %if.end6

if.end6:                                          ; preds = %do.end, %if.then10.i.i.i, %if.end5.i.i.i.if.end6_crit_edge, %entry.if.end6_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @f2fs_getxattr(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @f2fs_kmalloc(ptr noundef %sbi, i32 noundef %size, i32 noundef %flags) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %fault_info.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 73, i32 7
  %inject_rate.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 73, i32 7, i32 1
  %0 = ptrtoint ptr %inject_rate.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %inject_rate.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not.i = icmp eq i32 %1, 0
  br i1 %tobool.not.i, label %entry.if.end8.i_crit_edge, label %if.end.i7

entry.if.end8.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.i

if.end.i7:                                        ; preds = %entry
  %inject_type.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 73, i32 7, i32 2
  %2 = ptrtoint ptr %inject_type.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %inject_type.i, align 4
  %and.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool1.not.i, label %if.end.i7.if.end8.i_crit_edge, label %if.end3.i

if.end.i7.if.end8.i_crit_edge:                    ; preds = %if.end.i7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.i

if.end3.i:                                        ; preds = %if.end.i7
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %fault_info.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %fault_info.i, i32 1, i32 3, i32 1) #9
  %4 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %fault_info.i, ptr %fault_info.i, i32 1, ptr elementtype(i32) %fault_info.i) #9, !srcloc !24
  %call.i.i1.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %fault_info.i, i32 noundef 4) #9
  %5 = ptrtoint ptr %fault_info.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %fault_info.i, align 4
  %7 = ptrtoint ptr %inject_rate.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %inject_rate.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %8)
  %cmp.not.i = icmp ult i32 %6, %8
  br i1 %cmp.not.i, label %if.end3.i.if.end8.i_crit_edge, label %if.then

if.end3.i.if.end8.i_crit_edge:                    ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.i

if.then:                                          ; preds = %if.end3.i
  %call.i.i2.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %fault_info.i, i32 noundef 4) #9
  %9 = ptrtoint ptr %fault_info.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile i32 0, ptr %fault_info.i, align 4
  %call1 = tail call i32 @___ratelimit(ptr noundef nonnull @f2fs_kmalloc._rs, ptr noundef nonnull @__func__.f2fs_kmalloc) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then.return_crit_edge, label %do.end

if.then.return_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %sbi to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sbi, align 8
  %s_id = getelementptr inbounds %struct.super_block, ptr %11, i32 0, i32 39
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @f2fs_fault_name to i32))
  %12 = load ptr, ptr @f2fs_fault_name, align 4
  %13 = tail call ptr @llvm.returnaddress(i32 0)
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.4, ptr noundef %s_id, ptr noundef %12, ptr noundef nonnull @__func__.f2fs_kmalloc, ptr noundef %13) #12
  br label %return

if.end8.i:                                        ; preds = %if.end3.i.if.end8.i_crit_edge, %if.end.i7.if.end8.i_crit_edge, %entry.if.end8.i_crit_edge
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %size, i32 noundef %flags) #13
  br label %return

return:                                           ; preds = %if.end8.i, %do.end, %if.then.return_crit_edge
  %retval.0 = phi ptr [ null, %do.end ], [ null, %if.then.return_crit_edge ], [ %call9.i, %if.end8.i ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @posix_acl_alloc(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kuid(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kgid(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @f2fs_setxattr(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_cached_acl(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @posix_acl_equiv_mode(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @in_group_p([1 x i32]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable_wrt_inode_uidgid(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kgid(ptr noundef, [1 x i32]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kuid(ptr noundef, [1 x i32]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @current_umask() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !10}
!llvm.module.flags = !{!11, !12, !13, !14, !15, !16, !17, !18}
!llvm.ident = !{!19}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/f2fs/acl.c", i32 179, i32 44}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../fs/f2fs/f2fs.h", i32 3219, i32 3}
!4 = !{ptr @f2fs_kmalloc._rs, !3, !"_rs", i1 false, i1 false}
!5 = !{ptr @__func__.f2fs_kmalloc, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @f2fs_kmalloc._entry, !3, !"_entry", i1 false, i1 false}
!9 = !{ptr @f2fs_kmalloc._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!11 = !{i32 1, !"wchar_size", i32 2}
!12 = !{i32 1, !"min_enum_size", i32 4}
!13 = !{i32 8, !"branch-target-enforcement", i32 0}
!14 = !{i32 8, !"sign-return-address", i32 0}
!15 = !{i32 8, !"sign-return-address-all", i32 0}
!16 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!17 = !{i32 7, !"uwtable", i32 1}
!18 = !{i32 7, !"frame-pointer", i32 2}
!19 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!20 = !{i64 2148820805}
!21 = !{i64 2148735245, i64 2148735277, i64 2148735306, i64 2148735340, i64 2148735371, i64 2148735394}
!22 = !{!"branch_weights", i32 2000, i32 1}
!23 = !{i64 2150017040}
!24 = !{i64 2148731250, i64 2148731276, i64 2148731305, i64 2148731339, i64 2148731370, i64 2148731393}
