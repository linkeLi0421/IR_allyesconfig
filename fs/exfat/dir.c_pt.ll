; ModuleID = '/llk/IR_all_yes/fs/exfat/dir.c_pt.bc'
source_filename = "../fs/exfat/dir.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.exfat_chain = type { i32, i32, i8 }
%struct.exfat_uni_name = type { [258 x i16], i16, i8 }
%struct.exfat_dir_entry = type { %struct.exfat_chain, i32, i32, i32, i8, i16, i64, i32, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.exfat_dentry_namebuf }
%struct.timespec64 = type { i64, i32 }
%struct.exfat_dentry_namebuf = type { ptr, i32 }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.58, %struct.list_head, %struct.list_head, %union.anon.59 }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.16, ptr }
%union.anon.16 = type { i64 }
%struct.lockref = type { %union.anon.18 }
%union.anon.18 = type { %struct.anon.19 }
%struct.anon.19 = type { %struct.spinlock, i32 }
%union.anon.58 = type { %struct.list_head }
%union.anon.59 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.71, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.72, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.73, ptr, %struct.address_space, %struct.list_head, %union.anon.74, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.71 = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.72 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.73 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.74 = type { ptr }
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
%struct.exfat_sb_info = type { i64, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, ptr, i32, i32, ptr, ptr, i32, i32, %struct.mutex, %struct.mutex, %struct.exfat_mount_options, ptr, %struct.ratelimit_state, %struct.spinlock, [256 x %struct.hlist_head], %struct.callback_head }
%struct.exfat_mount_options = type { %struct.kuid_t, %struct.kgid_t, i16, i16, i16, ptr, i32, i8, i32 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.dir_context = type { ptr, i64 }
%struct.exfat_dentry = type { i8, %union.anon.77 }
%union.anon.77 = type { %struct.anon.78 }
%struct.anon.78 = type <{ i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, [7 x i8] }>
%struct.exfat_entry_set_cache = type { ptr, i8, i32, i32, [17 x ptr], i32 }
%struct.buffer_head = type { i32, ptr, ptr, i64, i32, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.spinlock }
%struct.anon.79 = type <{ i8, i8, i8, i16, i16, i64, i32, i32, i64 }>
%struct.exfat_hint_femp = type { i32, i32, %struct.exfat_chain }
%struct.exfat_inode_info = type { %struct.exfat_chain, i32, i32, i16, i32, i8, i32, %struct.exfat_hint, %struct.exfat_hint, %struct.exfat_hint_femp, %struct.spinlock, %struct.list_head, i32, i32, i64, i64, i64, %struct.hlist_node, %struct.rw_semaphore, %struct.inode, %struct.timespec64 }
%struct.exfat_hint = type { i32, %union.anon.83 }
%union.anon.83 = type { i32 }

@exfat_dir_operations = dso_local constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @generic_read_dir, ptr null, ptr null, ptr null, ptr null, ptr @exfat_iterate, ptr null, ptr null, ptr @exfat_ioctl, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr @exfat_file_fsync, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"abnormal access to deleted dentry\00", [62 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"access to deleted dentry\00", [39 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"fs/exfat/dir.c\00", [17 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c".\00", [30 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"..\00", [29 x i8] zeroinitializer }, align 32
@names_cachep = external dso_local local_unnamed_addr global ptr, align 4
@.str.6 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"requested sector is invalid(sect:%llu, root:%llu)\00", [46 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"invalid dentry access beyond EOF (clu : %u, eidx : %d)\00", [41 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@exfat_validate_entry.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 64, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.8 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.9 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 133]
@__sancov_gen_cov_switch_values.10 = internal global [6 x i64] [i64 4, i64 8, i64 129, i64 130, i64 131, i64 133]
@__sancov_gen_cov_switch_values.11 = internal global [11 x i64] [i64 9, i64 32, i64 0, i64 1, i64 257, i64 258, i64 259, i64 260, i64 287, i64 513, i64 514]
@__sancov_gen_cov_switch_values.12 = internal global [6 x i64] [i64 4, i64 8, i64 129, i64 130, i64 131, i64 133]
@__sancov_gen_cov_switch_values.13 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.14 = internal global [4 x i64] [i64 2, i64 32, i64 513, i64 514]
@__sancov_gen_cov_switch_values.15 = internal global [5 x i64] [i64 3, i64 8, i64 192, i64 193, i64 194]
@__sancov_gen_cov_switch_values.16 = internal global [6 x i64] [i64 4, i64 8, i64 129, i64 130, i64 131, i64 133]
@__sancov_gen_cov_switch_values.17 = internal global [6 x i64] [i64 4, i64 8, i64 129, i64 130, i64 131, i64 133]
@__sancov_gen_cov_switch_values.18 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 260]
@___asan_gen_.19 = private unnamed_addr constant [21 x i8] c"exfat_dir_operations\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 307, i32 30 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 722, i32 3 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 829, i32 3 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 976, i32 6 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 3566, i32 25 }
@___asan_gen_.38 = private unnamed_addr constant [22 x i8] c"../include/linux/fs.h\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 3571, i32 25 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 694, i32 3 }
@___asan_gen_.43 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.44 = private constant [18 x i8] c"../fs/exfat/dir.c\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 640, i32 5 }
@llvm.compiler.used = appending global [9 x ptr] [ptr @exfat_dir_operations, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7], section "llvm.metadata"
@0 = internal global [9 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exfat_dir_operations to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_file_llseek(ptr noundef, i64 noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_read_dir(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @exfat_iterate(ptr nocapture noundef readonly %filp, ptr noundef %ctx) #1 align 64 {
entry:
  %dir.i = alloca %struct.exfat_chain, align 4
  %clu.i = alloca %struct.exfat_chain, align 4
  %uni_name.i = alloca %struct.exfat_uni_name, align 2
  %bh.i = alloca ptr, align 4
  %de = alloca %struct.exfat_dir_entry, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dentry = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dentry, align 4
  %d_inode = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %d_inode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %d_inode, align 8
  %i_sb = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_sb, align 4
  call void @llvm.lifetime.start.p0(i64 104, ptr nonnull %de) #12
  %6 = call ptr @memset(ptr %de, i32 255, i32 96)
  %namebuf = getelementptr inbounds %struct.exfat_dir_entry, ptr %de, i32 0, i32 11
  %7 = ptrtoint ptr %namebuf to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %namebuf, align 8
  %lfnbuf_len.i = getelementptr inbounds %struct.exfat_dir_entry, ptr %de, i32 0, i32 11, i32 1
  %8 = ptrtoint ptr %lfnbuf_len.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %lfnbuf_len.i, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 33
  %9 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %s_fs_info.i, align 16
  %s_lock = getelementptr inbounds %struct.exfat_sb_info, ptr %10, i32 0, i32 21
  tail call void @mutex_lock_nested(ptr noundef %s_lock, i32 noundef 0) #12
  %pos = getelementptr inbounds %struct.dir_context, ptr %ctx, i32 0, i32 1
  %11 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %pos, align 8
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values)
  switch i64 %12, label %if.end5 [
    i64 0, label %if.then.i
    i64 1, label %entry.if.then6.i_crit_edge
    i64 2, label %entry.if.end7_crit_edge
  ]

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7

entry.if.then6.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then6.i

if.then.i:                                        ; preds = %entry
  %13 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ctx, align 8
  %15 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dentry, align 4
  %d_inode.i.i = getelementptr inbounds %struct.dentry, ptr %16, i32 0, i32 5
  %17 = ptrtoint ptr %d_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %d_inode.i.i, align 8
  %i_ino.i.i = getelementptr inbounds %struct.inode, ptr %18, i32 0, i32 11
  %19 = ptrtoint ptr %i_ino.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %i_ino.i.i, align 8
  %conv.i.i = zext i32 %20 to i64
  %call.i.i = tail call i32 %14(ptr noundef %ctx, ptr noundef nonnull @.str.4, i32 noundef 1, i64 noundef 0, i64 noundef %conv.i.i, i32 noundef 4) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.end3.thread.i, label %if.then.i.unlock_crit_edge

if.then.i.unlock_crit_edge:                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %unlock

if.end3.thread.i:                                 ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %21 = ptrtoint ptr %pos to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 1, ptr %pos, align 8
  br label %if.then6.i

if.then6.i:                                       ; preds = %if.end3.thread.i, %entry.if.then6.i_crit_edge
  %22 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ctx, align 8
  %24 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dentry, align 4
  %d_lockref.i.i.i = getelementptr inbounds %struct.dentry, ptr %25, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %d_lockref.i.i.i) #12
  %d_parent.i.i.i = getelementptr inbounds %struct.dentry, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %d_parent.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %d_parent.i.i.i, align 8
  %d_inode.i.i.i = getelementptr inbounds %struct.dentry, ptr %27, i32 0, i32 5
  %28 = ptrtoint ptr %d_inode.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %d_inode.i.i.i, align 8
  %i_ino.i.i.i = getelementptr inbounds %struct.inode, ptr %29, i32 0, i32 11
  %30 = ptrtoint ptr %i_ino.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %i_ino.i.i.i, align 8
  tail call void @_raw_spin_unlock(ptr noundef %d_lockref.i.i.i) #12
  %conv.i20.i = zext i32 %31 to i64
  %call1.i.i = tail call i32 %23(ptr noundef %ctx, ptr noundef nonnull @.str.5, i32 noundef 2, i64 noundef 1, i64 noundef %conv.i20.i, i32 noundef 4) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp.i21.i = icmp eq i32 %call1.i.i, 0
  br i1 %cmp.i21.i, label %if.end.thread, label %if.then6.i.unlock_crit_edge

if.then6.i.unlock_crit_edge:                      ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %unlock

if.end.thread:                                    ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #14
  %32 = ptrtoint ptr %pos to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 2, ptr %pos, align 8
  br label %if.end7

if.end5:                                          ; preds = %entry
  %and = and i64 %12, 31
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.end5.if.end7_crit_edge, label %if.end5.unlock_crit_edge

if.end5.unlock_crit_edge:                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %unlock

if.end5.if.end7_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7

if.end7:                                          ; preds = %if.end5.if.end7_crit_edge, %if.end.thread, %entry.if.end7_crit_edge
  %cpos.0123 = phi i64 [ %12, %if.end5.if.end7_crit_edge ], [ 0, %if.end.thread ], [ 0, %entry.if.end7_crit_edge ]
  %cmp116122 = phi i1 [ true, %if.end5.if.end7_crit_edge ], [ false, %if.end.thread ], [ false, %entry.if.end7_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @names_cachep to i32))
  %33 = load ptr, ptr @names_cachep, align 4
  %call.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %33, i32 noundef 3264) #12
  %34 = ptrtoint ptr %namebuf to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call.i, ptr %namebuf, align 8
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end7.unlock_crit_edge, label %exfat_alloc_namebuf.exit

if.end7.unlock_crit_edge:                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %unlock

exfat_alloc_namebuf.exit:                         ; preds = %if.end7
  %35 = ptrtoint ptr %lfnbuf_len.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 1536, ptr %lfnbuf_len.i, align 4
  %flags = getelementptr i8, ptr %3, i32 -236
  %type2.i = getelementptr i8, ptr %3, i32 -248
  %entry4.i = getelementptr i8, ptr %3, i32 -252
  %start_clu.i = getelementptr i8, ptr %3, i32 -240
  %flags31.i = getelementptr inbounds %struct.exfat_chain, ptr %clu.i, i32 0, i32 2
  %hint_bmap.i = getelementptr i8, ptr %3, i32 -228
  %36 = getelementptr i8, ptr %3, i32 -224
  %size.i = getelementptr inbounds %struct.exfat_chain, ptr %clu.i, i32 0, i32 1
  %attr97.i = getelementptr inbounds %struct.exfat_dir_entry, ptr %de, i32 0, i32 5
  %crtime.i = getelementptr inbounds %struct.exfat_dir_entry, ptr %de, i32 0, i32 10
  %mtime.i = getelementptr inbounds %struct.exfat_dir_entry, ptr %de, i32 0, i32 9
  %atime.i = getelementptr inbounds %struct.exfat_dir_entry, ptr %de, i32 0, i32 8
  %size119.i = getelementptr inbounds %struct.exfat_dir_entry, ptr %de, i32 0, i32 6
  %entry120.i = getelementptr inbounds %struct.exfat_dir_entry, ptr %de, i32 0, i32 1
  br label %get_new

get_new:                                          ; preds = %if.end55, %exfat_alloc_namebuf.exit
  %cpos.1 = phi i64 [ %cpos.0123, %exfat_alloc_namebuf.exit ], [ %conv158.i, %if.end55 ]
  %37 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %flags, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %38)
  %cmp12 = icmp eq i8 %38, 3
  br i1 %cmp12, label %land.lhs.true, label %get_new.if.end18_crit_edge

get_new.if.end18_crit_edge:                       ; preds = %get_new
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18

land.lhs.true:                                    ; preds = %get_new
  %call14 = call fastcc i64 @i_size_read(ptr noundef %3)
  call void @__sanitizer_cov_trace_cmp8(i64 %cpos.1, i64 %call14)
  %cmp15.not = icmp slt i64 %cpos.1, %call14
  br i1 %cmp15.not, label %land.lhs.true.if.end18_crit_edge, label %land.lhs.true.end_of_dir_crit_edge

land.lhs.true.end_of_dir_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %end_of_dir

land.lhs.true.if.end18_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18

if.end18:                                         ; preds = %land.lhs.true.if.end18_crit_edge, %get_new.if.end18_crit_edge
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %dir.i) #12
  %39 = call ptr @memset(ptr %dir.i, i32 255, i32 12)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %clu.i) #12
  %40 = call ptr @memset(ptr %clu.i, i32 255, i32 12)
  call void @llvm.lifetime.start.p0(i64 520, ptr nonnull %uni_name.i) #12
  %41 = call ptr @memset(ptr %uni_name.i, i32 255, i32 520)
  %42 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %43, i32 0, i32 33
  %44 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %s_fs_info.i.i, align 16
  %46 = lshr i64 %cpos.1, 5
  %conv.i = trunc i64 %46 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bh.i) #12
  %47 = ptrtoint ptr %bh.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr inttoptr (i32 -1 to ptr), ptr %bh.i, align 4, !annotation !28
  %48 = ptrtoint ptr %type2.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %type2.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 260, i32 %49)
  %cmp.not.i = icmp eq i32 %49, 260
  br i1 %cmp.not.i, label %if.end.i96, label %exfat_readdir.exit.thread129

exfat_readdir.exit.thread129:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bh.i) #12
  call void @llvm.lifetime.end.p0(i64 520, ptr nonnull %uni_name.i) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %clu.i) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %dir.i) #12
  br label %end_of_dir

if.end.i96:                                       ; preds = %if.end18
  %50 = ptrtoint ptr %entry4.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %entry4.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %51)
  %cmp5.i = icmp eq i32 %51, -1
  br i1 %cmp5.i, label %if.then7.i, label %if.else.i

if.then7.i:                                       ; preds = %if.end.i96
  call void @__sanitizer_cov_trace_pc() #14
  %root_dir.i = getelementptr inbounds %struct.exfat_sb_info, ptr %45, i32 0, i32 10
  %52 = ptrtoint ptr %root_dir.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %root_dir.i, align 4
  call void @exfat_chain_set(ptr noundef nonnull %dir.i, i32 noundef %53, i32 noundef 0, i8 noundef zeroext 1) #12
  br label %if.end11.i

if.else.i:                                        ; preds = %if.end.i96
  call void @__sanitizer_cov_trace_pc() #14
  %54 = ptrtoint ptr %start_clu.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %start_clu.i, align 8
  %call8.i = call fastcc i64 @i_size_read(ptr noundef %3) #12
  %cluster_size_bits.i = getelementptr inbounds %struct.exfat_sb_info, ptr %45, i32 0, i32 3
  %56 = ptrtoint ptr %cluster_size_bits.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %cluster_size_bits.i, align 8
  %sh_prom.i = zext i32 %57 to i64
  %shr9.i = ashr i64 %call8.i, %sh_prom.i
  %conv10.i = trunc i64 %shr9.i to i32
  %58 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %flags, align 4
  call void @exfat_chain_set(ptr noundef nonnull %dir.i, i32 noundef %55, i32 noundef %conv10.i, i8 noundef zeroext %59) #12
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.else.i, %if.then7.i
  %dentries_per_clu12.i = getelementptr inbounds %struct.exfat_sb_info, ptr %45, i32 0, i32 11
  %60 = ptrtoint ptr %dentries_per_clu12.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %dentries_per_clu12.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool.not.i.i.i = icmp eq i32 %61, 0
  %62 = call i32 @llvm.ctlz.i32(i32 %61, i1 true) #12, !range !29
  %sub.i.op.i.i = xor i32 %62, 31
  %sub.i.i = select i1 %tobool.not.i.i.i, i32 -1, i32 %sub.i.op.i.i
  %num_clusters.i = getelementptr inbounds %struct.exfat_sb_info, ptr %45, i32 0, i32 1
  %63 = ptrtoint ptr %num_clusters.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %num_clusters.i, align 8
  %conv21.i = zext i32 %64 to i64
  %sh_prom22.i = zext i32 %sub.i.i to i64
  %shl.i = shl i64 %conv21.i, %sh_prom22.i
  %65 = call i64 @llvm.umin.i64(i64 %shl.i, i64 8388608) #12
  %66 = trunc i64 %65 to i32
  %shr30.i = lshr i32 %conv.i, %sub.i.i
  call void @exfat_chain_dup(ptr noundef nonnull %clu.i, ptr noundef nonnull %dir.i) #12
  %67 = ptrtoint ptr %flags31.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %flags31.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %68)
  %cmp33.i = icmp eq i8 %68, 3
  br i1 %cmp33.i, label %if.then35.i, label %if.else38.i

if.then35.i:                                      ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #14
  %69 = ptrtoint ptr %clu.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %clu.i, align 4
  %add.i = add i32 %70, %shr30.i
  store i32 %add.i, ptr %clu.i, align 4
  %71 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %size.i, align 4
  %sub37.i = sub i32 %72, %shr30.i
  store i32 %sub37.i, ptr %size.i, align 4
  br label %if.end65.i

if.else38.i:                                      ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr30.i)
  %cmp39.not.i = icmp eq i32 %shr30.i, 0
  br i1 %cmp39.not.i, label %if.else38.i.if.end65.i_crit_edge, label %land.lhs.true.i

if.else38.i.if.end65.i_crit_edge:                 ; preds = %if.else38.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end65.i

land.lhs.true.i:                                  ; preds = %if.else38.i
  %73 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %36, align 4
  %75 = zext i32 %74 to i64
  call void @__sanitizer_cov_trace_switch(i64 %75, ptr @__sancov_gen_cov_switch_values.8)
  switch i32 %74, label %land.lhs.true47.i [
    i32 -1, label %land.lhs.true.i.while.body.i.preheader_crit_edge
    i32 0, label %land.lhs.true.i.while.body.i.preheader_crit_edge250
  ]

land.lhs.true.i.while.body.i.preheader_crit_edge250: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i.preheader

land.lhs.true.i.while.body.i.preheader_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i.preheader

land.lhs.true47.i:                                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_cmp4(i32 %shr30.i, i32 %74)
  %cmp49.not.i = icmp ult i32 %shr30.i, %74
  br i1 %cmp49.not.i, label %land.lhs.true47.i.while.body.i.preheader_crit_edge, label %if.end57.i

land.lhs.true47.i.while.body.i.preheader_crit_edge: ; preds = %land.lhs.true47.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i.preheader

if.end57.i:                                       ; preds = %land.lhs.true47.i
  %sub53.i = sub i32 %shr30.i, %74
  %76 = ptrtoint ptr %hint_bmap.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %hint_bmap.i, align 4
  %78 = ptrtoint ptr %clu.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %77, ptr %clu.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub53.i)
  %cmp58.not294.i = icmp eq i32 %sub53.i, 0
  br i1 %cmp58.not294.i, label %if.end57.i.if.end65.i_crit_edge, label %if.end57.i.while.body.i.preheader_crit_edge

if.end57.i.while.body.i.preheader_crit_edge:      ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i.preheader

if.end57.i.if.end65.i_crit_edge:                  ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end65.i

while.body.i.preheader:                           ; preds = %if.end57.i.while.body.i.preheader_crit_edge, %land.lhs.true47.i.while.body.i.preheader_crit_edge, %land.lhs.true.i.while.body.i.preheader_crit_edge, %land.lhs.true.i.while.body.i.preheader_crit_edge250
  %clu_offset.1295.i.ph = phi i32 [ %shr30.i, %land.lhs.true.i.while.body.i.preheader_crit_edge ], [ %shr30.i, %land.lhs.true.i.while.body.i.preheader_crit_edge250 ], [ %shr30.i, %land.lhs.true47.i.while.body.i.preheader_crit_edge ], [ %sub53.i, %if.end57.i.while.body.i.preheader_crit_edge ]
  br label %while.body.i

while.cond.i:                                     ; preds = %while.body.i
  %dec.i = add i32 %clu_offset.1295.i, -1
  %cmp58.not.i = icmp eq i32 %dec.i, 0
  br i1 %cmp58.not.i, label %while.cond.i.if.end65.i_crit_edge, label %while.cond.i.while.body.i_crit_edge

while.cond.i.while.body.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i

while.cond.i.if.end65.i_crit_edge:                ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end65.i

while.body.i:                                     ; preds = %while.cond.i.while.body.i_crit_edge, %while.body.i.preheader
  %clu_offset.1295.i = phi i32 [ %dec.i, %while.cond.i.while.body.i_crit_edge ], [ %clu_offset.1295.i.ph, %while.body.i.preheader ]
  %79 = ptrtoint ptr %clu.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %clu.i, align 4
  %call62.i = call i32 @exfat_ent_get(ptr noundef %43, i32 noundef %80, ptr noundef nonnull %clu.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62.i)
  %tobool.not.i97 = icmp eq i32 %call62.i, 0
  br i1 %tobool.not.i97, label %while.cond.i, label %while.body.i.if.then24_crit_edge

while.body.i.if.then24_crit_edge:                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then24

if.end65.i:                                       ; preds = %while.cond.i.if.end65.i_crit_edge, %if.end57.i.if.end65.i_crit_edge, %if.else38.i.if.end65.i_crit_edge, %if.then35.i
  %81 = ptrtoint ptr %clu.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %clu.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %82)
  %cmp68.not299.i = icmp ne i32 %82, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i, i32 %66)
  %cmp70300.i = icmp ult i32 %conv.i, %66
  %or.cond301.i = select i1 %cmp68.not299.i, i1 %cmp70300.i, i1 false
  br i1 %or.cond301.i, label %while.body72.lr.ph.i, label %if.end65.i.while.end154.i_crit_edge

if.end65.i.while.end154.i_crit_edge:              ; preds = %if.end65.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end154.i

while.body72.lr.ph.i:                             ; preds = %if.end65.i
  %sub73.i = add i32 %61, -1
  br label %while.body72.i

while.body72.i:                                   ; preds = %if.end153.i.while.body72.i_crit_edge, %while.body72.lr.ph.i
  %dentry.0302.i = phi i32 [ %conv.i, %while.body72.lr.ph.i ], [ %dentry.1285.i, %if.end153.i.while.body72.i_crit_edge ]
  %and74.i = and i32 %dentry.0302.i, %sub73.i
  call void @__sanitizer_cov_trace_cmp4(i32 %and74.i, i32 %61)
  %cmp75296.i = icmp slt i32 %and74.i, %61
  br i1 %cmp75296.i, label %for.body.preheader.i, label %while.body72.i.for.end.i_crit_edge

while.body72.i.for.end.i_crit_edge:               ; preds = %while.body72.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

for.body.preheader.i:                             ; preds = %while.body72.i
  %83 = add i32 %dentry.0302.i, %61
  %84 = sub i32 %83, %and74.i
  br label %for.body.i

for.body.i:                                       ; preds = %brelse.exit258.i.for.body.i_crit_edge, %for.body.preheader.i
  %dentry.1298.i = phi i32 [ %inc130.i, %brelse.exit258.i.for.body.i_crit_edge ], [ %dentry.0302.i, %for.body.preheader.i ]
  %i.0297.i = phi i32 [ %inc.i, %brelse.exit258.i.for.body.i_crit_edge ], [ %and74.i, %for.body.preheader.i ]
  %call77.i = call ptr @exfat_get_dentry(ptr noundef %43, ptr noundef nonnull %clu.i, i32 noundef %i.0297.i, ptr noundef nonnull %bh.i) #12
  %tobool78.not.i = icmp eq ptr %call77.i, null
  br i1 %tobool78.not.i, label %for.body.i.if.then24_crit_edge, label %if.end80.i

for.body.i.if.then24_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then24

if.end80.i:                                       ; preds = %for.body.i
  %85 = ptrtoint ptr %call77.i to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %call77.i, align 1
  %87 = zext i8 %86 to i64
  call void @__sanitizer_cov_trace_switch(i64 %87, ptr @__sancov_gen_cov_switch_values.9)
  switch i8 %86, label %if.then91.i [
    i8 0, label %if.then84.i
    i8 -123, label %if.end92.i
  ]

if.then84.i:                                      ; preds = %if.end80.i
  %88 = ptrtoint ptr %bh.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %bh.i, align 4
  %tobool.not.i253.i = icmp eq ptr %89, null
  br i1 %tobool.not.i253.i, label %if.then84.i.for.end.i_crit_edge, label %if.then.i.i

if.then84.i.for.end.i_crit_edge:                  ; preds = %if.then84.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

if.then.i.i:                                      ; preds = %if.then84.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @__brelse(ptr noundef nonnull %89) #12
  br label %for.end.i

if.then91.i:                                      ; preds = %if.end80.i
  %90 = ptrtoint ptr %bh.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %bh.i, align 4
  %tobool.not.i255.i = icmp eq ptr %91, null
  br i1 %tobool.not.i255.i, label %if.then91.i.brelse.exit258.i_crit_edge, label %if.then.i256.i

if.then91.i.brelse.exit258.i_crit_edge:           ; preds = %if.then91.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %brelse.exit258.i

if.then.i256.i:                                   ; preds = %if.then91.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @__brelse(ptr noundef nonnull %91) #12
  br label %brelse.exit258.i

brelse.exit258.i:                                 ; preds = %if.then.i256.i, %if.then91.i.brelse.exit258.i_crit_edge
  %inc.i = add i32 %i.0297.i, 1
  %inc130.i = add i32 %dentry.1298.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %61
  br i1 %exitcond.not.i, label %brelse.exit258.i.for.end.i_crit_edge, label %brelse.exit258.i.for.body.i_crit_edge

brelse.exit258.i.for.body.i_crit_edge:            ; preds = %brelse.exit258.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

brelse.exit258.i.for.end.i_crit_edge:             ; preds = %brelse.exit258.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

if.end92.i:                                       ; preds = %if.end80.i
  %dentry93.i = getelementptr inbounds %struct.exfat_dentry, ptr %call77.i, i32 0, i32 1
  %92 = ptrtoint ptr %dentry93.i to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %dentry93.i, align 1
  %attr.i = getelementptr inbounds %struct.exfat_dentry, ptr %call77.i, i32 0, i32 1, i32 0, i32 2
  %94 = ptrtoint ptr %attr.i to i32
  call void @__asan_loadN_noabort(i32 %94, i32 2)
  %95 = load i16, ptr %attr.i, align 1
  %96 = call i16 @llvm.bswap.i16(i16 %95) #12
  %97 = ptrtoint ptr %attr97.i to i32
  call void @__asan_store2_noabort(i32 %97)
  store i16 %96, ptr %attr97.i, align 2
  %create_tz.i = getelementptr inbounds %struct.exfat_dentry, ptr %call77.i, i32 0, i32 1, i32 0, i32 12
  %98 = ptrtoint ptr %create_tz.i to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %create_tz.i, align 1
  %create_time.i = getelementptr inbounds %struct.exfat_dentry, ptr %call77.i, i32 0, i32 1, i32 0, i32 4
  %100 = ptrtoint ptr %create_time.i to i32
  call void @__asan_loadN_noabort(i32 %100, i32 2)
  %101 = load i16, ptr %create_time.i, align 1
  %create_date.i = getelementptr inbounds %struct.exfat_dentry, ptr %call77.i, i32 0, i32 1, i32 0, i32 5
  %102 = ptrtoint ptr %create_date.i to i32
  call void @__asan_loadN_noabort(i32 %102, i32 2)
  %103 = load i16, ptr %create_date.i, align 1
  %create_time_cs.i = getelementptr inbounds %struct.exfat_dentry, ptr %call77.i, i32 0, i32 1, i32 0, i32 10
  %104 = ptrtoint ptr %create_time_cs.i to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %create_time_cs.i, align 1
  call void @exfat_get_entry_time(ptr noundef %45, ptr noundef %crtime.i, i8 noundef zeroext %99, i16 noundef zeroext %101, i16 noundef zeroext %103, i8 noundef zeroext %105) #12
  %modify_tz.i = getelementptr inbounds %struct.exfat_dentry, ptr %call77.i, i32 0, i32 1, i32 0, i32 13
  %106 = ptrtoint ptr %modify_tz.i to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %modify_tz.i, align 1
  %modify_time.i = getelementptr inbounds %struct.exfat_dentry, ptr %call77.i, i32 0, i32 1, i32 0, i32 6
  %108 = ptrtoint ptr %modify_time.i to i32
  call void @__asan_loadN_noabort(i32 %108, i32 2)
  %109 = load i16, ptr %modify_time.i, align 1
  %modify_date.i = getelementptr inbounds %struct.exfat_dentry, ptr %call77.i, i32 0, i32 1, i32 0, i32 7
  %110 = ptrtoint ptr %modify_date.i to i32
  call void @__asan_loadN_noabort(i32 %110, i32 2)
  %111 = load i16, ptr %modify_date.i, align 1
  %modify_time_cs.i = getelementptr inbounds %struct.exfat_dentry, ptr %call77.i, i32 0, i32 1, i32 0, i32 11
  %112 = ptrtoint ptr %modify_time_cs.i to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %modify_time_cs.i, align 1
  call void @exfat_get_entry_time(ptr noundef %45, ptr noundef %mtime.i, i8 noundef zeroext %107, i16 noundef zeroext %109, i16 noundef zeroext %111, i8 noundef zeroext %113) #12
  %access_tz.i = getelementptr inbounds %struct.exfat_dentry, ptr %call77.i, i32 0, i32 1, i32 0, i32 14
  %114 = ptrtoint ptr %access_tz.i to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %access_tz.i, align 1
  %access_time.i = getelementptr inbounds %struct.exfat_dentry, ptr %call77.i, i32 0, i32 1, i32 0, i32 8
  %116 = ptrtoint ptr %access_time.i to i32
  call void @__asan_loadN_noabort(i32 %116, i32 2)
  %117 = load i16, ptr %access_time.i, align 1
  %access_date.i = getelementptr inbounds %struct.exfat_dentry, ptr %call77.i, i32 0, i32 1, i32 0, i32 9
  %118 = ptrtoint ptr %access_date.i to i32
  call void @__asan_loadN_noabort(i32 %118, i32 2)
  %119 = load i16, ptr %access_date.i, align 1
  call void @exfat_get_entry_time(ptr noundef %45, ptr noundef %atime.i, i8 noundef zeroext %115, i16 noundef zeroext %117, i16 noundef zeroext %119, i8 noundef zeroext 0) #12
  %120 = ptrtoint ptr %uni_name.i to i32
  call void @__asan_store2_noabort(i32 %120)
  store i16 0, ptr %uni_name.i, align 2
  %call.i.i98 = call ptr @exfat_get_dentry_set(ptr noundef %43, ptr noundef nonnull %clu.i, i32 noundef %i.0297.i, i32 noundef 0) #12
  %tobool.not.i259.i = icmp eq ptr %call.i.i98, null
  br i1 %tobool.not.i259.i, label %if.end92.i.exfat_get_uniname_from_ext_entry.exit.i_crit_edge, label %for.cond.preheader.i.i

if.end92.i.exfat_get_uniname_from_ext_entry.exit.i_crit_edge: ; preds = %if.end92.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %exfat_get_uniname_from_ext_entry.exit.i

for.cond.preheader.i.i:                           ; preds = %if.end92.i
  %start_off.i.i.i = getelementptr inbounds %struct.exfat_entry_set_cache, ptr %call.i.i98, i32 0, i32 2
  %num_entries.i.i = getelementptr inbounds %struct.exfat_entry_set_cache, ptr %call.i.i98, i32 0, i32 5
  %121 = ptrtoint ptr %num_entries.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %num_entries.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %122)
  %cmp32.i.i = icmp ugt i32 %122, 2
  br i1 %cmp32.i.i, label %for.cond.preheader.i.i.for.body.i.i_crit_edge, label %for.cond.preheader.i.i.for.end.i.i_crit_edge

for.cond.preheader.i.i.for.end.i.i_crit_edge:     ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i.i

for.cond.preheader.i.i.for.body.i.i_crit_edge:    ; preds = %for.cond.preheader.i.i
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.cond.preheader.i.i.for.body.i.i_crit_edge
  %i.034.i.i = phi i32 [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 2, %for.cond.preheader.i.i.for.body.i.i_crit_edge ]
  %uniname.addr.033.i.i = phi ptr [ %add.ptr.i260.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %uni_name.i, %for.cond.preheader.i.i.for.body.i.i_crit_edge ]
  %123 = ptrtoint ptr %start_off.i.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %start_off.i.i.i, align 4
  %mul.i.i.i = shl i32 %i.034.i.i, 5
  %add.i.i.i = add i32 %124, %mul.i.i.i
  %125 = ptrtoint ptr %call.i.i98 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %call.i.i98, align 4
  %s_blocksize_bits.i.i.i = getelementptr inbounds %struct.super_block, ptr %126, i32 0, i32 2
  %127 = ptrtoint ptr %s_blocksize_bits.i.i.i to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %s_blocksize_bits.i.i.i, align 4
  %conv.i.i.i = zext i8 %128 to i32
  %shr.i.i.i = ashr i32 %add.i.i.i, %conv.i.i.i
  %arrayidx.i.i.i = getelementptr %struct.exfat_entry_set_cache, ptr %call.i.i98, i32 0, i32 4, i32 %shr.i.i.i
  %129 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %arrayidx.i.i.i, align 4
  %b_data.i.i.i = getelementptr inbounds %struct.buffer_head, ptr %130, i32 0, i32 5
  %131 = ptrtoint ptr %b_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %b_data.i.i.i, align 4
  %s_blocksize.i.i.i = getelementptr inbounds %struct.super_block, ptr %126, i32 0, i32 3
  %133 = ptrtoint ptr %s_blocksize.i.i.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %s_blocksize.i.i.i, align 16
  %sub.i.i.i = add i32 %134, -1
  %and.i.i.i = and i32 %sub.i.i.i, %add.i.i.i
  %add.ptr.i.i.i = getelementptr i8, ptr %132, i32 %and.i.i.i
  %135 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %add.ptr.i.i.i, align 1
  %.fr.i.i = freeze i8 %136
  call void @__sanitizer_cov_trace_const_cmp1(i8 -63, i8 %.fr.i.i)
  %cond.i.i = icmp eq i8 %.fr.i.i, -63
  br i1 %cond.i.i, label %for.inc.i.i, label %for.body.i.i.for.end.i.i_crit_edge

for.body.i.i.for.end.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %call7.i.i = call fastcc i32 @exfat_extract_uni_name(ptr noundef %add.ptr.i.i.i, ptr noundef %uniname.addr.033.i.i) #12
  %add.ptr.i260.i = getelementptr i16, ptr %uniname.addr.033.i.i, i32 15
  %inc.i.i = add nuw i32 %i.034.i.i, 1
  %137 = ptrtoint ptr %num_entries.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %num_entries.i.i, align 4
  %cmp.i261.i = icmp ult i32 %inc.i.i, %138
  br i1 %cmp.i261.i, label %for.inc.i.i.for.body.i.i_crit_edge, label %for.inc.i.i.for.end.i.i_crit_edge

for.inc.i.i.for.end.i.i_crit_edge:                ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i.i

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i

for.end.i.i:                                      ; preds = %for.inc.i.i.for.end.i.i_crit_edge, %for.body.i.i.for.end.i.i_crit_edge, %for.cond.preheader.i.i.for.end.i.i_crit_edge
  %modified.i.i.i = getelementptr inbounds %struct.exfat_entry_set_cache, ptr %call.i.i98, i32 0, i32 1
  %139 = ptrtoint ptr %modified.i.i.i to i32
  call void @__asan_load1_noabort(i32 %139)
  %140 = load i8, ptr %modified.i.i.i, align 4, !range !30
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %140)
  %tobool.not.i20.i.i = icmp eq i8 %140, 0
  br i1 %tobool.not.i20.i.i, label %for.end.i.i.if.end.i21.i.i_crit_edge, label %if.then.i.i.i

for.end.i.i.if.end.i21.i.i_crit_edge:             ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i21.i.i

if.then.i.i.i:                                    ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %bh.i.i.i = getelementptr inbounds %struct.exfat_entry_set_cache, ptr %call.i.i98, i32 0, i32 4
  %num_bh.i.i.i = getelementptr inbounds %struct.exfat_entry_set_cache, ptr %call.i.i98, i32 0, i32 3
  %141 = ptrtoint ptr %num_bh.i.i.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %num_bh.i.i.i, align 4
  %call.i.i.i = call i32 @exfat_update_bhs(ptr noundef %bh.i.i.i, i32 noundef %142, i32 noundef 0) #12
  br label %if.end.i21.i.i

if.end.i21.i.i:                                   ; preds = %if.then.i.i.i, %for.end.i.i.if.end.i21.i.i_crit_edge
  %err.0.i.i.i = phi i32 [ %call.i.i.i, %if.then.i.i.i ], [ 0, %for.end.i.i.if.end.i21.i.i_crit_edge ]
  %num_bh1.i.i.i = getelementptr inbounds %struct.exfat_entry_set_cache, ptr %call.i.i98, i32 0, i32 3
  %143 = ptrtoint ptr %num_bh1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %num_bh1.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %144)
  %cmp20.i.i.i = icmp sgt i32 %144, 0
  br i1 %cmp20.i.i.i, label %for.body.lr.ph.i.i.i, label %if.end.i21.i.i.exfat_free_dentry_set.exit.i.i_crit_edge

if.end.i21.i.i.exfat_free_dentry_set.exit.i.i_crit_edge: ; preds = %if.end.i21.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %exfat_free_dentry_set.exit.i.i

for.body.lr.ph.i.i.i:                             ; preds = %if.end.i21.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0.i.i.i)
  %tobool2.not.i.i.i = icmp eq i32 %err.0.i.i.i, 0
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.inc.i.i.i.for.body.i.i.i_crit_edge, %for.body.lr.ph.i.i.i
  %i.021.i.i.i = phi i32 [ 0, %for.body.lr.ph.i.i.i ], [ %inc.i.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ]
  %arrayidx6.i.i.i = getelementptr %struct.exfat_entry_set_cache, ptr %call.i.i98, i32 0, i32 4, i32 %i.021.i.i.i
  %145 = ptrtoint ptr %arrayidx6.i.i.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %arrayidx6.i.i.i, align 4
  %tobool.not.i18.i.i.i = icmp eq ptr %146, null
  br i1 %tobool2.not.i.i.i, label %if.else.i.i.i, label %if.then3.i.i.i

if.then3.i.i.i:                                   ; preds = %for.body.i.i.i
  br i1 %tobool.not.i18.i.i.i, label %if.then3.i.i.i.for.inc.i.i.i_crit_edge, label %if.then.i.i.i.i

if.then3.i.i.i.for.inc.i.i.i_crit_edge:           ; preds = %if.then3.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i.i.i

if.then.i.i.i.i:                                  ; preds = %if.then3.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @__bforget(ptr noundef nonnull %146) #12
  br label %for.inc.i.i.i

if.else.i.i.i:                                    ; preds = %for.body.i.i.i
  br i1 %tobool.not.i18.i.i.i, label %if.else.i.i.i.for.inc.i.i.i_crit_edge, label %if.then.i19.i.i.i

if.else.i.i.i.for.inc.i.i.i_crit_edge:            ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i.i.i

if.then.i19.i.i.i:                                ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @__brelse(ptr noundef nonnull %146) #12
  br label %for.inc.i.i.i

for.inc.i.i.i:                                    ; preds = %if.then.i19.i.i.i, %if.else.i.i.i.for.inc.i.i.i_crit_edge, %if.then.i.i.i.i, %if.then3.i.i.i.for.inc.i.i.i_crit_edge
  %inc.i.i.i = add nuw nsw i32 %i.021.i.i.i, 1
  %147 = ptrtoint ptr %num_bh1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %num_bh1.i.i.i, align 4
  %cmp.i22.i.i = icmp slt i32 %inc.i.i.i, %148
  br i1 %cmp.i22.i.i, label %for.inc.i.i.i.for.body.i.i.i_crit_edge, label %for.inc.i.i.i.exfat_free_dentry_set.exit.i.i_crit_edge

for.inc.i.i.i.exfat_free_dentry_set.exit.i.i_crit_edge: ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %exfat_free_dentry_set.exit.i.i

for.inc.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i.i

exfat_free_dentry_set.exit.i.i:                   ; preds = %for.inc.i.i.i.exfat_free_dentry_set.exit.i.i_crit_edge, %if.end.i21.i.i.exfat_free_dentry_set.exit.i.i_crit_edge
  call void @kfree(ptr noundef nonnull %call.i.i98) #12
  br label %exfat_get_uniname_from_ext_entry.exit.i

exfat_get_uniname_from_ext_entry.exit.i:          ; preds = %exfat_free_dentry_set.exit.i.i, %if.end92.i.exfat_get_uniname_from_ext_entry.exit.i_crit_edge
  %149 = ptrtoint ptr %namebuf to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %namebuf, align 8
  %151 = ptrtoint ptr %lfnbuf_len.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %lfnbuf_len.i, align 4
  %call112.i = call i32 @exfat_utf16_to_nls(ptr noundef %43, ptr noundef nonnull %uni_name.i, ptr noundef %150, i32 noundef %152) #12
  %153 = ptrtoint ptr %bh.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %bh.i, align 4
  %tobool.not.i262.i = icmp eq ptr %154, null
  br i1 %tobool.not.i262.i, label %exfat_get_uniname_from_ext_entry.exit.i.brelse.exit265.i_crit_edge, label %if.then.i263.i

exfat_get_uniname_from_ext_entry.exit.i.brelse.exit265.i_crit_edge: ; preds = %exfat_get_uniname_from_ext_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %brelse.exit265.i

if.then.i263.i:                                   ; preds = %exfat_get_uniname_from_ext_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @__brelse(ptr noundef nonnull %154) #12
  br label %brelse.exit265.i

brelse.exit265.i:                                 ; preds = %if.then.i263.i, %exfat_get_uniname_from_ext_entry.exit.i.brelse.exit265.i_crit_edge
  %add113.i = add i32 %i.0297.i, 1
  %call114.i = call ptr @exfat_get_dentry(ptr noundef %43, ptr noundef nonnull %clu.i, i32 noundef %add113.i, ptr noundef nonnull %bh.i) #12
  %tobool115.not.i = icmp eq ptr %call114.i, null
  br i1 %tobool115.not.i, label %brelse.exit265.i.if.then24_crit_edge, label %if.end117.i

brelse.exit265.i.if.then24_crit_edge:             ; preds = %brelse.exit265.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then24

if.end117.i:                                      ; preds = %brelse.exit265.i
  %conv95.i = zext i8 %93 to i32
  %valid_size.i = getelementptr inbounds %struct.exfat_dentry, ptr %call114.i, i32 0, i32 1, i32 0, i32 4
  %155 = ptrtoint ptr %valid_size.i to i32
  call void @__asan_loadN_noabort(i32 %155, i32 8)
  %156 = load i64, ptr %valid_size.i, align 1
  %157 = call i64 @llvm.bswap.i64(i64 %156) #12
  %158 = ptrtoint ptr %size119.i to i32
  call void @__asan_store8_noabort(i32 %158)
  store i64 %157, ptr %size119.i, align 8
  %159 = ptrtoint ptr %entry120.i to i32
  call void @__asan_store4_noabort(i32 %159)
  store i32 %dentry.1298.i, ptr %entry120.i, align 4
  %160 = ptrtoint ptr %bh.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %bh.i, align 4
  %tobool.not.i266.i = icmp eq ptr %161, null
  br i1 %tobool.not.i266.i, label %if.end117.i.brelse.exit269.i_crit_edge, label %if.then.i267.i

if.end117.i.brelse.exit269.i_crit_edge:           ; preds = %if.end117.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %brelse.exit269.i

if.then.i267.i:                                   ; preds = %if.end117.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @__brelse(ptr noundef nonnull %161) #12
  br label %brelse.exit269.i

brelse.exit269.i:                                 ; preds = %if.then.i267.i, %if.end117.i.brelse.exit269.i_crit_edge
  %shr121.i = lshr i32 %dentry.1298.i, %sub.i.i
  %162 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %162)
  store i32 %shr121.i, ptr %36, align 4
  %163 = ptrtoint ptr %clu.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %clu.i, align 4
  %165 = ptrtoint ptr %hint_bmap.i to i32
  call void @__asan_store4_noabort(i32 %165)
  store i32 %164, ptr %hint_bmap.i, align 4
  %add126.i = add i32 %dentry.1298.i, 1
  %add127.i = add i32 %add126.i, %conv95.i
  br label %if.end30

for.end.i:                                        ; preds = %brelse.exit258.i.for.end.i_crit_edge, %if.then.i.i, %if.then84.i.for.end.i_crit_edge, %while.body72.i.for.end.i_crit_edge
  %dentry.1285.i = phi i32 [ %dentry.1298.i, %if.then.i.i ], [ %dentry.1298.i, %if.then84.i.for.end.i_crit_edge ], [ %dentry.0302.i, %while.body72.i.for.end.i_crit_edge ], [ %84, %brelse.exit258.i.for.end.i_crit_edge ]
  %166 = ptrtoint ptr %flags31.i to i32
  call void @__asan_load1_noabort(i32 %166)
  %167 = load i8, ptr %flags31.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %167)
  %cmp133.i = icmp eq i8 %167, 3
  br i1 %cmp133.i, label %if.then135.i, label %if.else146.i

if.then135.i:                                     ; preds = %for.end.i
  %168 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %size.i, align 4
  %dec137.i = add i32 %169, -1
  store i32 %dec137.i, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec137.i)
  %cmp138.not.i = icmp eq i32 %dec137.i, 0
  br i1 %cmp138.not.i, label %if.else143.i, label %if.then140.i

if.then140.i:                                     ; preds = %if.then135.i
  call void @__sanitizer_cov_trace_pc() #14
  %170 = ptrtoint ptr %clu.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %clu.i, align 4
  %inc142.i = add i32 %171, 1
  store i32 %inc142.i, ptr %clu.i, align 4
  br label %if.end153.i

if.else143.i:                                     ; preds = %if.then135.i
  call void @__sanitizer_cov_trace_pc() #14
  %172 = ptrtoint ptr %clu.i to i32
  call void @__asan_store4_noabort(i32 %172)
  store i32 -1, ptr %clu.i, align 4
  br label %if.end153.i

if.else146.i:                                     ; preds = %for.end.i
  %173 = ptrtoint ptr %clu.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %clu.i, align 4
  %call149.i = call i32 @exfat_ent_get(ptr noundef %43, i32 noundef %174, ptr noundef nonnull %clu.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call149.i)
  %tobool150.not.i = icmp eq i32 %call149.i, 0
  br i1 %tobool150.not.i, label %if.else146.i.if.end153.i_crit_edge, label %if.else146.i.if.then24_crit_edge

if.else146.i.if.then24_crit_edge:                 ; preds = %if.else146.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then24

if.else146.i.if.end153.i_crit_edge:               ; preds = %if.else146.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end153.i

if.end153.i:                                      ; preds = %if.else146.i.if.end153.i_crit_edge, %if.else143.i, %if.then140.i
  %175 = ptrtoint ptr %clu.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %clu.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %176)
  %cmp68.not.i = icmp ne i32 %176, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %dentry.1285.i, i32 %66)
  %cmp70.i = icmp ult i32 %dentry.1285.i, %66
  %or.cond.i = select i1 %cmp68.not.i, i1 %cmp70.i, i1 false
  br i1 %or.cond.i, label %if.end153.i.while.body72.i_crit_edge, label %if.end153.i.while.end154.i_crit_edge

if.end153.i.while.end154.i_crit_edge:             ; preds = %if.end153.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end154.i

if.end153.i.while.body72.i_crit_edge:             ; preds = %if.end153.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body72.i

while.end154.i:                                   ; preds = %if.end153.i.while.end154.i_crit_edge, %if.end65.i.while.end154.i_crit_edge
  %dentry.0.lcssa.i = phi i32 [ %conv.i, %if.end65.i.while.end154.i_crit_edge ], [ %dentry.1285.i, %if.end153.i.while.end154.i_crit_edge ]
  %177 = ptrtoint ptr %namebuf to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %namebuf, align 8
  %179 = ptrtoint ptr %178 to i32
  call void @__asan_store1_noabort(i32 %179)
  store i8 0, ptr %178, align 1
  br label %if.end30

if.then24:                                        ; preds = %if.else146.i.if.then24_crit_edge, %brelse.exit265.i.if.then24_crit_edge, %for.body.i.if.then24_crit_edge, %while.body.i.if.then24_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bh.i) #12
  call void @llvm.lifetime.end.p0(i64 520, ptr nonnull %uni_name.i) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %clu.i) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %dir.i) #12
  %s_blocksize_bits = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 2
  %180 = ptrtoint ptr %s_blocksize_bits to i32
  call void @__asan_load1_noabort(i32 %180)
  %181 = load i8, ptr %s_blocksize_bits, align 4
  %conv25 = zext i8 %181 to i32
  %shl = shl nuw i32 1, %conv25
  %conv26132 = zext i32 %shl to i64
  %add = add i64 %cpos.1, %conv26132
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 3
  %182 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %s_blocksize, align 16
  %neg = sub i32 0, %183
  %conv27 = zext i32 %neg to i64
  %and28 = and i64 %add, %conv27
  br label %end_of_dir

if.end30:                                         ; preds = %while.end154.i, %brelse.exit269.i
  %dentry.0.lcssa.sink.i = phi i32 [ %dentry.0.lcssa.i, %while.end154.i ], [ %add127.i, %brelse.exit269.i ]
  %shl157.i = shl i32 %dentry.0.lcssa.sink.i, 5
  %conv158.i = zext i32 %shl157.i to i64
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bh.i) #12
  call void @llvm.lifetime.end.p0(i64 520, ptr nonnull %uni_name.i) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %clu.i) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %dir.i) #12
  %184 = ptrtoint ptr %namebuf to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %namebuf, align 8
  %186 = ptrtoint ptr %185 to i32
  call void @__asan_load1_noabort(i32 %186)
  %187 = load i8, ptr %185, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %187)
  %tobool31.not = icmp eq i8 %187, 0
  br i1 %tobool31.not, label %if.end30.end_of_dir_crit_edge, label %if.end33

if.end30.end_of_dir_crit_edge:                    ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #14
  br label %end_of_dir

if.end33:                                         ; preds = %if.end30
  %188 = ptrtoint ptr %start_clu.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %start_clu.i, align 8
  %conv34 = zext i32 %189 to i64
  %shl35 = shl nuw i64 %conv34, 32
  %190 = ptrtoint ptr %entry120.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %entry120.i, align 4
  %conv38 = zext i32 %191 to i64
  %or = or i64 %shl35, %conv38
  %call39 = call ptr @exfat_iget(ptr noundef %5, i64 noundef %or) #12
  %tobool40.not = icmp eq ptr %call39, null
  br i1 %tobool40.not, label %if.else, label %if.then41

if.then41:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #14
  %i_ino = getelementptr inbounds %struct.inode, ptr %call39, i32 0, i32 11
  %192 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %i_ino, align 8
  call void @iput(ptr noundef nonnull %call39) #12
  br label %if.end43

if.else:                                          ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #14
  %call42 = call i32 @iunique(ptr noundef %5, i32 noundef 1) #12
  br label %if.end43

if.end43:                                         ; preds = %if.else, %if.then41
  %inum.0 = phi i32 [ %193, %if.then41 ], [ %call42, %if.else ]
  %194 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %s_fs_info.i, align 16
  %s_lock45 = getelementptr inbounds %struct.exfat_sb_info, ptr %195, i32 0, i32 21
  call void @mutex_unlock(ptr noundef %s_lock45) #12
  %196 = ptrtoint ptr %namebuf to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %namebuf, align 8
  %call48 = call i32 @strlen(ptr noundef %197) #15
  %conv49 = zext i32 %inum.0 to i64
  %198 = ptrtoint ptr %attr97.i to i32
  call void @__asan_load2_noabort(i32 %198)
  %199 = load i16, ptr %attr97.i, align 2
  %200 = and i16 %199, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %200)
  %tobool52.not = icmp eq i16 %200, 0
  %cond = select i1 %tobool52.not, i32 8, i32 4
  %201 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %ctx, align 8
  %203 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %203)
  %204 = load i64, ptr %pos, align 8
  %call.i103 = call i32 %202(ptr noundef %ctx, ptr noundef %197, i32 noundef %call48, i64 noundef %204, i64 noundef %conv49, i32 noundef %cond) #12
  %cmp.i = icmp eq i32 %call.i103, 0
  br i1 %cmp.i, label %if.end55, label %if.end43.out_unlocked_crit_edge

if.end43.out_unlocked_crit_edge:                  ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_unlocked

if.end55:                                         ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #14
  %205 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %s_fs_info.i, align 16
  %s_lock57 = getelementptr inbounds %struct.exfat_sb_info, ptr %206, i32 0, i32 21
  call void @mutex_lock_nested(ptr noundef %s_lock57, i32 noundef 0) #12
  %207 = ptrtoint ptr %pos to i32
  call void @__asan_store8_noabort(i32 %207)
  store i64 %conv158.i, ptr %pos, align 8
  br label %get_new

end_of_dir:                                       ; preds = %if.end30.end_of_dir_crit_edge, %if.then24, %exfat_readdir.exit.thread129, %land.lhs.true.end_of_dir_crit_edge
  %cpos.3 = phi i64 [ %and28, %if.then24 ], [ %cpos.1, %exfat_readdir.exit.thread129 ], [ %cpos.1, %land.lhs.true.end_of_dir_crit_edge ], [ %conv158.i, %if.end30.end_of_dir_crit_edge ]
  %err.1 = phi i32 [ -5, %if.then24 ], [ -5, %exfat_readdir.exit.thread129 ], [ 0, %land.lhs.true.end_of_dir_crit_edge ], [ 0, %if.end30.end_of_dir_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %cpos.3)
  %tobool59.not = icmp ne i64 %cpos.3, 0
  %brmerge = or i1 %cmp116122, %tobool59.not
  %spec.select = select i1 %brmerge, i64 %cpos.3, i64 2
  %208 = ptrtoint ptr %pos to i32
  call void @__asan_store8_noabort(i32 %208)
  store i64 %spec.select, ptr %pos, align 8
  br label %unlock

unlock:                                           ; preds = %end_of_dir, %if.end7.unlock_crit_edge, %if.end5.unlock_crit_edge, %if.then6.i.unlock_crit_edge, %if.then.i.unlock_crit_edge
  %err.2 = phi i32 [ %err.1, %end_of_dir ], [ -2, %if.end5.unlock_crit_edge ], [ 0, %if.then.i.unlock_crit_edge ], [ 0, %if.then6.i.unlock_crit_edge ], [ -12, %if.end7.unlock_crit_edge ]
  %209 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %s_fs_info.i, align 16
  %s_lock66 = getelementptr inbounds %struct.exfat_sb_info, ptr %210, i32 0, i32 21
  call void @mutex_unlock(ptr noundef %s_lock66) #12
  br label %out_unlocked

out_unlocked:                                     ; preds = %unlock, %if.end43.out_unlocked_crit_edge
  %err.3 = phi i32 [ %err.2, %unlock ], [ 0, %if.end43.out_unlocked_crit_edge ]
  %211 = ptrtoint ptr %namebuf to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %namebuf, align 8
  %tobool.not.i106 = icmp eq ptr %212, null
  br i1 %tobool.not.i106, label %out_unlocked.exfat_free_namebuf.exit_crit_edge, label %if.end.i107

out_unlocked.exfat_free_namebuf.exit_crit_edge:   ; preds = %out_unlocked
  call void @__sanitizer_cov_trace_pc() #14
  br label %exfat_free_namebuf.exit

if.end.i107:                                      ; preds = %out_unlocked
  call void @__sanitizer_cov_trace_pc() #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @names_cachep to i32))
  %213 = load ptr, ptr @names_cachep, align 4
  call void @kmem_cache_free(ptr noundef %213, ptr noundef nonnull %212) #12
  br label %exfat_free_namebuf.exit

exfat_free_namebuf.exit:                          ; preds = %if.end.i107, %out_unlocked.exfat_free_namebuf.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %de) #12
  ret i32 %err.3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @exfat_ioctl(ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @exfat_file_fsync(ptr noundef, i64 noundef, i64 noundef, i32 noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @exfat_alloc_new_dir(ptr noundef %inode, ptr noundef %clu) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @exfat_chain_set(ptr noundef %clu, i32 noundef -1, i32 noundef 0, i8 noundef zeroext 3) #12
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_flags = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %s_flags, align 4
  %and = and i32 %3, 144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.rhs, label %entry.lor.end_crit_edge

entry.lor.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.end

lor.rhs:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %i_flags = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 4
  %4 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %i_flags, align 4
  %and1 = and i32 %5, 65
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2 = icmp ne i32 %and1, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry.lor.end_crit_edge
  %6 = phi i1 [ true, %entry.lor.end_crit_edge ], [ %tobool2, %lor.rhs ]
  %call = tail call i32 @exfat_alloc_cluster(ptr noundef %inode, i32 noundef 1, ptr noundef %clu, i1 noundef zeroext %6) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool3.not = icmp eq i32 %call, 0
  br i1 %tobool3.not, label %if.end, label %lor.end.cleanup_crit_edge

lor.end.cleanup_crit_edge:                        ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #14
  %7 = ptrtoint ptr %clu to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %clu, align 4
  %call4 = tail call i32 @exfat_zeroed_cluster(ptr noundef %inode, i32 noundef %8) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.end ], [ %call, %lor.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @exfat_chain_set(ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @exfat_alloc_cluster(ptr noundef, i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @exfat_zeroed_cluster(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @exfat_calc_num_entries(ptr nocapture noundef readonly %p_uniname) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %name_len = getelementptr inbounds %struct.exfat_uni_name, ptr %p_uniname, i32 0, i32 2
  %0 = ptrtoint ptr %name_len to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %name_len, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp = icmp eq i8 %1, 0
  %conv = zext i8 %1 to i16
  %sub = add nsw i16 %conv, -1
  %div3 = sdiv i16 %sub, 15
  %narrow = add nuw nsw i16 %div3, 3
  %2 = zext i16 %narrow to i32
  %retval.0 = select i1 %cmp, i32 -22, i32 %2
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @exfat_get_entry_type(ptr nocapture noundef readonly %ep) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ep to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %ep, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp = icmp eq i8 %1, 0
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %1)
  %cmp4 = icmp sgt i8 %1, -1
  br i1 %cmp4, label %if.end.return_crit_edge, label %if.end7

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %1)
  %cmp10 = icmp eq i8 %1, -128
  br i1 %cmp10, label %if.end7.return_crit_edge, label %if.end13

if.end7.return_crit_edge:                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end13:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_const_cmp1(i8 -96, i8 %1)
  %cmp16 = icmp ult i8 %1, -96
  br i1 %cmp16, label %if.then18, label %if.end46

if.then18:                                        ; preds = %if.end13
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.10)
  switch i8 %1, label %if.end45 [
    i8 -127, label %if.then18.return_crit_edge
    i8 -126, label %if.then29
    i8 -125, label %if.then35
    i8 -123, label %if.then41
  ]

if.then18.return_crit_edge:                       ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.then29:                                        ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.then35:                                        ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.then41:                                        ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #14
  %attr = getelementptr inbounds %struct.exfat_dentry, ptr %ep, i32 0, i32 1, i32 0, i32 2
  %3 = ptrtoint ptr %attr to i32
  call void @__asan_loadN_noabort(i32 %3, i32 2)
  %4 = load i16, ptr %attr, align 1
  %5 = and i16 %4, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool.not = icmp eq i16 %5, 0
  %. = select i1 %tobool.not, i32 287, i32 260
  br label %return

if.end45:                                         ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end46:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_const_cmp1(i8 -64, i8 %1)
  %cmp49 = icmp ult i8 %1, -64
  br i1 %cmp49, label %if.then51, label %if.end70

if.then51:                                        ; preds = %if.end46
  %switch.tableidx = add i8 %1, 96
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %switch.tableidx)
  %6 = icmp ult i8 %switch.tableidx, 3
  br i1 %6, label %switch.lookup, label %if.then51.return_crit_edge

if.then51.return_crit_edge:                       ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end70:                                         ; preds = %if.end46
  call void @__sanitizer_cov_trace_const_cmp1(i8 -32, i8 %1)
  %cmp73 = icmp ult i8 %1, -32
  br i1 %cmp73, label %if.then75, label %if.end70.return_crit_edge

if.end70.return_crit_edge:                        ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.then75:                                        ; preds = %if.end70
  %switch.tableidx112 = add i8 %1, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %switch.tableidx112)
  %7 = icmp ult i8 %switch.tableidx112, 3
  br i1 %7, label %switch.lookup111, label %if.then75.return_crit_edge

if.then75.return_crit_edge:                       ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

switch.lookup:                                    ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #14
  %switch.idx.cast = zext i8 %switch.tableidx to i32
  %switch.offset = add nuw nsw i32 %switch.idx.cast, 1025
  br label %return

switch.lookup111:                                 ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #14
  %switch.idx.cast113 = zext i8 %switch.tableidx112 to i32
  %switch.offset114 = add nuw nsw i32 %switch.idx.cast113, 513
  br label %return

return:                                           ; preds = %switch.lookup111, %switch.lookup, %if.then75.return_crit_edge, %if.end70.return_crit_edge, %if.then51.return_crit_edge, %if.end45, %if.then41, %if.then35, %if.then29, %if.then18.return_crit_edge, %if.end7.return_crit_edge, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 258, %if.then29 ], [ 259, %if.then35 ], [ 256, %if.end45 ], [ 0, %entry.return_crit_edge ], [ 1, %if.end.return_crit_edge ], [ 2, %if.end7.return_crit_edge ], [ 257, %if.then18.return_crit_edge ], [ %., %if.then41 ], [ 2048, %if.end70.return_crit_edge ], [ %switch.offset, %switch.lookup ], [ 1024, %if.then51.return_crit_edge ], [ %switch.offset114, %switch.lookup111 ], [ 512, %if.then75.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @exfat_init_dir_entry(ptr noundef %inode, ptr nocapture noundef readonly %p_dir, i32 noundef %entry1, i32 noundef %type, i32 noundef %start_clu, i64 noundef %size) local_unnamed_addr #1 align 64 {
entry:
  %ts = alloca %struct.timespec64, align 8
  %bh = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ts) #12
  %4 = call ptr @memset(ptr %ts, i32 255, i32 16)
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %ts, ptr noundef %inode) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bh) #12
  %5 = ptrtoint ptr %bh to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr inttoptr (i32 -1 to ptr), ptr %bh, align 4, !annotation !28
  %call2 = call ptr @exfat_get_dentry(ptr noundef %1, ptr noundef %p_dir, i32 noundef %entry1, ptr noundef nonnull %bh)
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.11)
  switch i32 %type, label %if.end.exfat_set_entry_type.exit_crit_edge [
    i32 0, label %if.then.i
    i32 1, label %if.then3.i
    i32 513, label %if.then9.i
    i32 514, label %if.then14.i
    i32 257, label %if.then19.i
    i32 258, label %if.then24.i
    i32 259, label %if.then29.i
    i32 260, label %if.then34.i
    i32 287, label %if.then39.i
  ]

if.end.exfat_set_entry_type.exit_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %exfat_set_entry_type.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %7 = ptrtoint ptr %call2 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %call2, align 1
  br label %exfat_set_entry_type.exit

if.then3.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %8 = ptrtoint ptr %call2 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %call2, align 1
  %10 = and i8 %9, 127
  store i8 %10, ptr %call2, align 1
  br label %exfat_set_entry_type.exit

if.then9.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %11 = ptrtoint ptr %call2 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 -64, ptr %call2, align 1
  br label %exfat_set_entry_type.exit

if.then14.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %12 = ptrtoint ptr %call2 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 -63, ptr %call2, align 1
  br label %exfat_set_entry_type.exit

if.then19.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %13 = ptrtoint ptr %call2 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 -127, ptr %call2, align 1
  br label %exfat_set_entry_type.exit

if.then24.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %14 = ptrtoint ptr %call2 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 -126, ptr %call2, align 1
  br label %exfat_set_entry_type.exit

if.then29.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %15 = ptrtoint ptr %call2 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 -125, ptr %call2, align 1
  br label %exfat_set_entry_type.exit

if.then34.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %16 = ptrtoint ptr %call2 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 -123, ptr %call2, align 1
  %attr.i = getelementptr inbounds %struct.exfat_dentry, ptr %call2, i32 0, i32 1, i32 0, i32 2
  %17 = ptrtoint ptr %attr.i to i32
  call void @__asan_storeN_noabort(i32 %17, i32 2)
  store i16 4096, ptr %attr.i, align 1
  br label %exfat_set_entry_type.exit

if.then39.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %18 = ptrtoint ptr %call2 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 -123, ptr %call2, align 1
  %attr42.i = getelementptr inbounds %struct.exfat_dentry, ptr %call2, i32 0, i32 1, i32 0, i32 2
  %19 = ptrtoint ptr %attr42.i to i32
  call void @__asan_storeN_noabort(i32 %19, i32 2)
  store i16 8192, ptr %attr42.i, align 1
  br label %exfat_set_entry_type.exit

exfat_set_entry_type.exit:                        ; preds = %if.then39.i, %if.then34.i, %if.then29.i, %if.then24.i, %if.then19.i, %if.then14.i, %if.then9.i, %if.then3.i, %if.then.i, %if.end.exfat_set_entry_type.exit_crit_edge
  %create_tz = getelementptr inbounds %struct.exfat_dentry, ptr %call2, i32 0, i32 1, i32 0, i32 12
  %create_time = getelementptr inbounds %struct.exfat_dentry, ptr %call2, i32 0, i32 1, i32 0, i32 4
  %create_date = getelementptr inbounds %struct.exfat_dentry, ptr %call2, i32 0, i32 1, i32 0, i32 5
  %create_time_cs = getelementptr inbounds %struct.exfat_dentry, ptr %call2, i32 0, i32 1, i32 0, i32 10
  call void @exfat_set_entry_time(ptr noundef %3, ptr noundef nonnull %ts, ptr noundef %create_tz, ptr noundef %create_time, ptr noundef %create_date, ptr noundef %create_time_cs) #12
  %modify_tz = getelementptr inbounds %struct.exfat_dentry, ptr %call2, i32 0, i32 1, i32 0, i32 13
  %modify_time = getelementptr inbounds %struct.exfat_dentry, ptr %call2, i32 0, i32 1, i32 0, i32 6
  %modify_date = getelementptr inbounds %struct.exfat_dentry, ptr %call2, i32 0, i32 1, i32 0, i32 7
  %modify_time_cs = getelementptr inbounds %struct.exfat_dentry, ptr %call2, i32 0, i32 1, i32 0, i32 11
  call void @exfat_set_entry_time(ptr noundef %3, ptr noundef nonnull %ts, ptr noundef %modify_tz, ptr noundef %modify_time, ptr noundef %modify_date, ptr noundef %modify_time_cs) #12
  %access_tz = getelementptr inbounds %struct.exfat_dentry, ptr %call2, i32 0, i32 1, i32 0, i32 14
  %access_time = getelementptr inbounds %struct.exfat_dentry, ptr %call2, i32 0, i32 1, i32 0, i32 8
  %access_date = getelementptr inbounds %struct.exfat_dentry, ptr %call2, i32 0, i32 1, i32 0, i32 9
  call void @exfat_set_entry_time(ptr noundef %3, ptr noundef nonnull %ts, ptr noundef %access_tz, ptr noundef %access_time, ptr noundef %access_date, ptr noundef null) #12
  %20 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bh, align 4
  %22 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %i_sb, align 4
  %s_flags = getelementptr inbounds %struct.super_block, ptr %23, i32 0, i32 10
  %24 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %s_flags, align 4
  %and = and i32 %25, 144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool14.not = icmp eq i32 %and, 0
  br i1 %tobool14.not, label %lor.rhs, label %exfat_set_entry_type.exit.lor.end_crit_edge

exfat_set_entry_type.exit.lor.end_crit_edge:      ; preds = %exfat_set_entry_type.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.end

lor.rhs:                                          ; preds = %exfat_set_entry_type.exit
  call void @__sanitizer_cov_trace_pc() #14
  %i_flags = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 4
  %26 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %i_flags, align 4
  %and15 = and i32 %27, 65
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16 = icmp ne i32 %and15, 0
  %phi.cast = zext i1 %tobool16 to i32
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %exfat_set_entry_type.exit.lor.end_crit_edge
  %28 = phi i32 [ 1, %exfat_set_entry_type.exit.lor.end_crit_edge ], [ %phi.cast, %lor.rhs ]
  call void @exfat_update_bh(ptr noundef %21, i32 noundef %28) #12
  %tobool.not.i = icmp eq ptr %21, null
  br i1 %tobool.not.i, label %lor.end.brelse.exit_crit_edge, label %if.then.i62

lor.end.brelse.exit_crit_edge:                    ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %brelse.exit

if.then.i62:                                      ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #14
  call void @__brelse(ptr noundef nonnull %21) #12
  br label %brelse.exit

brelse.exit:                                      ; preds = %if.then.i62, %lor.end.brelse.exit_crit_edge
  %add = add i32 %entry1, 1
  %call17 = call ptr @exfat_get_dentry(ptr noundef %1, ptr noundef %p_dir, i32 noundef %add, ptr noundef nonnull %bh)
  %tobool18.not = icmp eq ptr %call17, null
  br i1 %tobool18.not, label %brelse.exit.cleanup_crit_edge, label %if.end20

brelse.exit.cleanup_crit_edge:                    ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end20:                                         ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 287, i32 %type)
  %cmp = icmp eq i32 %type, 287
  %conv = select i1 %cmp, i8 1, i8 3
  %29 = ptrtoint ptr %call17 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 -64, ptr %call17, align 1
  %dentry.i = getelementptr inbounds %struct.exfat_dentry, ptr %call17, i32 0, i32 1
  %30 = ptrtoint ptr %dentry.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %conv, ptr %dentry.i, align 1
  %31 = call i32 @llvm.bswap.i32(i32 %start_clu) #12
  %start_clu3.i = getelementptr inbounds %struct.exfat_dentry, ptr %call17, i32 0, i32 1, i32 0, i32 10
  %32 = ptrtoint ptr %start_clu3.i to i32
  call void @__asan_storeN_noabort(i32 %32, i32 4)
  store i32 %31, ptr %start_clu3.i, align 1
  %33 = call i64 @llvm.bswap.i64(i64 %size) #12
  %valid_size.i = getelementptr inbounds %struct.exfat_dentry, ptr %call17, i32 0, i32 1, i32 0, i32 4
  %34 = ptrtoint ptr %valid_size.i to i32
  call void @__asan_storeN_noabort(i32 %34, i32 8)
  store i64 %33, ptr %valid_size.i, align 1
  %size6.i = getelementptr inbounds %struct.exfat_dentry, ptr %call17, i32 0, i32 1, i32 0, i32 14
  %35 = ptrtoint ptr %size6.i to i32
  call void @__asan_storeN_noabort(i32 %35, i32 8)
  store i64 %33, ptr %size6.i, align 1
  %36 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %bh, align 4
  %38 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %i_sb, align 4
  %s_flags22 = getelementptr inbounds %struct.super_block, ptr %39, i32 0, i32 10
  %40 = ptrtoint ptr %s_flags22 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %s_flags22, align 4
  %and23 = and i32 %41, 144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  br i1 %tobool24.not, label %lor.rhs25, label %if.end20.lor.end29_crit_edge

if.end20.lor.end29_crit_edge:                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.end29

lor.rhs25:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #14
  %i_flags26 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 4
  %42 = ptrtoint ptr %i_flags26 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %i_flags26, align 4
  %and27 = and i32 %43, 65
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28 = icmp ne i32 %and27, 0
  %phi.cast61 = zext i1 %tobool28 to i32
  br label %lor.end29

lor.end29:                                        ; preds = %lor.rhs25, %if.end20.lor.end29_crit_edge
  %44 = phi i32 [ 1, %if.end20.lor.end29_crit_edge ], [ %phi.cast61, %lor.rhs25 ]
  call void @exfat_update_bh(ptr noundef %37, i32 noundef %44) #12
  %tobool.not.i63 = icmp eq ptr %37, null
  br i1 %tobool.not.i63, label %lor.end29.cleanup_crit_edge, label %if.then.i64

lor.end29.cleanup_crit_edge:                      ; preds = %lor.end29
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then.i64:                                      ; preds = %lor.end29
  call void @__sanitizer_cov_trace_pc() #14
  call void @__brelse(ptr noundef nonnull %37) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then.i64, %lor.end29.cleanup_crit_edge, %brelse.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %entry.cleanup_crit_edge ], [ -5, %brelse.exit.cleanup_crit_edge ], [ 0, %lor.end29.cleanup_crit_edge ], [ 0, %if.then.i64 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bh) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ts) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @current_time(ptr sret(%struct.timespec64) align 8, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @exfat_get_dentry(ptr noundef %sb, ptr nocapture noundef readonly %p_dir, i32 noundef %entry1, ptr nocapture noundef writeonly %bh) local_unnamed_addr #1 align 64 {
entry:
  %cur_clu.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %p_dir to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %p_dir, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -64735, i32 %1)
  %cmp = icmp eq i32 %1, -64735
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ptr, ...) @exfat_msg(ptr noundef %sb, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i.i, align 16
  %shl.i = shl i32 %entry1, 5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cur_clu.i.i) #12
  %cluster_size_bits.i.i = getelementptr inbounds %struct.exfat_sb_info, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %cluster_size_bits.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cluster_size_bits.i.i, align 8
  %shr.i.i = lshr i32 %shl.i, %5
  %6 = ptrtoint ptr %cur_clu.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %1, ptr %cur_clu.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.exfat_chain, ptr %p_dir, i32 0, i32 2
  %7 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %flags.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %8)
  %cmp.i.i = icmp eq i8 %8, 3
  br i1 %cmp.i.i, label %if.then.i.i, label %while.cond.preheader.i.i

while.cond.preheader.i.i:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr.i.i)
  %cmp2.not22.i.i = icmp eq i32 %shr.i.i, 0
  br i1 %cmp2.not22.i.i, label %while.cond.preheader.i.i.if.end3_crit_edge, label %while.cond.preheader.i.i.while.body.i.i_crit_edge

while.cond.preheader.i.i.while.body.i.i_crit_edge: ; preds = %while.cond.preheader.i.i
  br label %while.body.i.i

while.cond.preheader.i.i.if.end3_crit_edge:       ; preds = %while.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end3

if.then.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %add.i.i = add i32 %shr.i.i, %1
  %9 = ptrtoint ptr %cur_clu.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %add.i.i, ptr %cur_clu.i.i, align 4
  br label %if.end3

while.cond.i.i:                                   ; preds = %if.end.i.i
  %dec.i.i = add i32 %clu_offset.023.i.i, -1
  %cmp2.not.i.i = icmp eq i32 %dec.i.i, 0
  br i1 %cmp2.not.i.i, label %while.cond.i.i.if.end3_crit_edge, label %while.cond.i.i.while.body.i.i_crit_edge

while.cond.i.i.while.body.i.i_crit_edge:          ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i.i

while.cond.i.i.if.end3_crit_edge:                 ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end3

while.body.i.i:                                   ; preds = %while.cond.i.i.while.body.i.i_crit_edge, %while.cond.preheader.i.i.while.body.i.i_crit_edge
  %clu_offset.023.i.i = phi i32 [ %dec.i.i, %while.cond.i.i.while.body.i.i_crit_edge ], [ %shr.i.i, %while.cond.preheader.i.i.while.body.i.i_crit_edge ]
  %10 = ptrtoint ptr %cur_clu.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cur_clu.i.i, align 4
  %call4.i.i = call i32 @exfat_ent_get(ptr noundef %sb, i32 noundef %11, ptr noundef nonnull %cur_clu.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %tobool.not.i.i = icmp eq i32 %call4.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %while.body.i.i.exfat_find_location.exit_crit_edge

while.body.i.i.exfat_find_location.exit_crit_edge: ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %exfat_find_location.exit

if.end.i.i:                                       ; preds = %while.body.i.i
  %12 = ptrtoint ptr %cur_clu.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cur_clu.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %13)
  %cmp6.i.i = icmp eq i32 %13, -1
  br i1 %cmp6.i.i, label %if.then8.i.i, label %while.cond.i.i

if.then8.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %14 = ptrtoint ptr %p_dir to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %p_dir, align 4
  %shr10.i.i = and i32 %entry1, 134217727
  call void (ptr, i32, ptr, ...) @__exfat_fs_error(ptr noundef %sb, i32 noundef 1, ptr noundef nonnull @.str.7, i32 noundef %15, i32 noundef %shr10.i.i) #16
  br label %exfat_find_location.exit

exfat_find_location.exit:                         ; preds = %if.then8.i.i, %while.body.i.i.exfat_find_location.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cur_clu.i.i) #12
  br label %cleanup

if.end3:                                          ; preds = %while.cond.i.i.if.end3_crit_edge, %if.then.i.i, %while.cond.preheader.i.i.if.end3_crit_edge
  %16 = ptrtoint ptr %cur_clu.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %cur_clu.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cur_clu.i.i) #12
  %cluster_size.i = getelementptr inbounds %struct.exfat_sb_info, ptr %3, i32 0, i32 2
  %18 = ptrtoint ptr %cluster_size.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %cluster_size.i, align 4
  %sub.i = add i32 %19, -1
  %and.i = and i32 %sub.i, %shl.i
  %s_blocksize.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 3
  %20 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %s_blocksize.i, align 16
  %sub3.i = add i32 %21, -1
  %and4.i = and i32 %and.i, %sub3.i
  %s_blocksize_bits.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 2
  %22 = ptrtoint ptr %s_blocksize_bits.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %s_blocksize_bits.i, align 4
  %conv.i = zext i8 %23 to i32
  %shr.i = lshr i32 %and.i, %conv.i
  %conv5.i = zext i32 %shr.i to i64
  %sub.i.i = add i32 %17, -2
  %conv.i.i = zext i32 %sub.i.i to i64
  %sect_per_clus_bits.i.i = getelementptr inbounds %struct.exfat_sb_info, ptr %3, i32 0, i32 5
  %24 = ptrtoint ptr %sect_per_clus_bits.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %sect_per_clus_bits.i.i, align 8
  %sh_prom.i.i = zext i32 %25 to i64
  %shl.i.i = shl i64 %conv.i.i, %sh_prom.i.i
  %data_start_sector.i.i = getelementptr inbounds %struct.exfat_sb_info, ptr %3, i32 0, i32 8
  %26 = ptrtoint ptr %data_start_sector.i.i to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %data_start_sector.i.i, align 8
  %add.i19.i = add i64 %27, %conv5.i
  %add.i = add i64 %add.i19.i, %shl.i.i
  %28 = ptrtoint ptr %p_dir to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %p_dir, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp5.not = icmp ne i32 %29, 0
  %and = and i32 %entry1, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp eq i32 %and, 0
  %or.cond = and i1 %tobool6.not, %cmp5.not
  br i1 %or.cond, label %if.then7, label %if.end3.if.end9_crit_edge

if.end3.if.end9_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9

if.then7:                                         ; preds = %if.end3
  %30 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %s_fs_info.i.i, align 16
  %32 = ptrtoint ptr %s_blocksize_bits.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %s_blocksize_bits.i, align 4
  %conv.i26 = zext i8 %33 to i32
  %shr.i27 = lshr i32 131072, %conv.i26
  %shr3.i = lshr i32 4096, %conv.i26
  %sect_per_clus.i = getelementptr inbounds %struct.exfat_sb_info, ptr %31, i32 0, i32 4
  %34 = ptrtoint ptr %sect_per_clus.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %sect_per_clus.i, align 4
  %36 = call i32 @llvm.umax.i32(i32 %35, i32 %shr3.i) #12
  %37 = call i32 @llvm.umin.i32(i32 %36, i32 %shr.i27) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %35)
  %cmp13.i = icmp eq i32 %35, 1
  br i1 %cmp13.i, label %if.then7.if.end9_crit_edge, label %if.end.i28

if.then7.if.end9_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9

if.end.i28:                                       ; preds = %if.then7
  %data_start_sector.i = getelementptr inbounds %struct.exfat_sb_info, ptr %31, i32 0, i32 8
  %38 = ptrtoint ptr %data_start_sector.i to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %data_start_sector.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i, i64 %39)
  %cmp15.i = icmp ult i64 %add.i, %39
  br i1 %cmp15.i, label %if.then17.i, label %if.end19.i

if.then17.i:                                      ; preds = %if.end.i28
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ptr, ...) @exfat_msg(ptr noundef %sb, ptr noundef nonnull @.str, ptr noundef nonnull @.str.6, i64 noundef %add.i, i64 noundef %39) #16
  br label %if.end9

if.end19.i:                                       ; preds = %if.end.i28
  %sub.i29 = sub i64 %add.i, %39
  %sub21.i = add nsw i32 %37, -1
  %conv22.i = zext i32 %sub21.i to i64
  %and.i30 = and i64 %sub.i29, %conv22.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i30)
  %tobool.not.i = icmp eq i64 %and.i30, 0
  %spec.select.i = select i1 %tobool.not.i, i32 %37, i32 %shr3.i
  %s_bdev.i.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 26
  %40 = ptrtoint ptr %s_bdev.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %s_bdev.i.i, align 4
  %42 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %s_blocksize.i, align 16
  %call.i.i = call ptr @__find_get_block(ptr noundef %41, i64 noundef %add.i, i32 noundef %43) #12
  %tobool26.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool26.not.i, label %if.end19.i.if.then29.i_crit_edge, label %lor.lhs.false.i

if.end19.i.if.then29.i_crit_edge:                 ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then29.i

lor.lhs.false.i:                                  ; preds = %if.end19.i
  %44 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile i32, ptr %call.i.i, align 4
  %and1.i.i.i = and i32 %45, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool28.not.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool28.not.i, label %lor.lhs.false.i.if.then29.i_crit_edge, label %lor.lhs.false.i.if.then.i.i32_crit_edge

lor.lhs.false.i.if.then.i.i32_crit_edge:          ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i.i32

lor.lhs.false.i.if.then29.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then29.i

if.then29.i:                                      ; preds = %lor.lhs.false.i.if.then29.i_crit_edge, %if.end19.i.if.then29.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select.i)
  %cmp303.not.i = icmp eq i32 %spec.select.i, 0
  br i1 %cmp303.not.i, label %if.then29.i.if.end33.i_crit_edge, label %if.then29.i.for.body.i_crit_edge

if.then29.i.for.body.i_crit_edge:                 ; preds = %if.then29.i
  br label %for.body.i

if.then29.i.if.end33.i_crit_edge:                 ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end33.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then29.i.for.body.i_crit_edge
  %i.04.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.then29.i.for.body.i_crit_edge ]
  %conv32.i = zext i32 %i.04.i to i64
  %add.i31 = add i64 %add.i, %conv32.i
  %46 = ptrtoint ptr %s_bdev.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %s_bdev.i.i, align 4
  %48 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %s_blocksize.i, align 16
  call void @__breadahead(ptr noundef %47, i64 noundef %add.i31, i32 noundef %49) #12
  %inc.i = add nuw nsw i32 %i.04.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %spec.select.i
  br i1 %exitcond.not.i, label %for.body.i.if.end33.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.body.i.if.end33.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end33.i

if.end33.i:                                       ; preds = %for.body.i.if.end33.i_crit_edge, %if.then29.i.if.end33.i_crit_edge
  br i1 %tobool26.not.i, label %if.end33.i.if.end9_crit_edge, label %if.end33.i.if.then.i.i32_crit_edge

if.end33.i.if.then.i.i32_crit_edge:               ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i.i32

if.end33.i.if.end9_crit_edge:                     ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9

if.then.i.i32:                                    ; preds = %if.end33.i.if.then.i.i32_crit_edge, %lor.lhs.false.i.if.then.i.i32_crit_edge
  call void @__brelse(ptr noundef nonnull %call.i.i) #12
  br label %if.end9

if.end9:                                          ; preds = %if.then.i.i32, %if.end33.i.if.end9_crit_edge, %if.then17.i, %if.then7.if.end9_crit_edge, %if.end3.if.end9_crit_edge
  %s_bdev.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 26
  %50 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %s_bdev.i, align 4
  %52 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %s_blocksize.i, align 16
  %call.i = call ptr @__bread_gfp(ptr noundef %51, i64 noundef %add.i, i32 noundef %53, i32 noundef 8) #12
  %54 = ptrtoint ptr %bh to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %call.i, ptr %bh, align 4
  %tobool11.not = icmp eq ptr %call.i, null
  br i1 %tobool11.not, label %if.end9.cleanup_crit_edge, label %if.end13

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end13:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %call.i, i32 0, i32 5
  %55 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %b_data, align 4
  %add.ptr = getelementptr i8, ptr %56, i32 %and4.i
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.end9.cleanup_crit_edge, %exfat_find_location.exit, %if.then
  %retval.0 = phi ptr [ null, %if.then ], [ %add.ptr, %if.end13 ], [ null, %exfat_find_location.exit ], [ null, %if.end9.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @exfat_set_entry_time(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @exfat_update_bh(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @exfat_update_dir_chksum(ptr nocapture noundef readonly %inode, ptr nocapture noundef readonly %p_dir, i32 noundef %entry1) local_unnamed_addr #1 align 64 {
entry:
  %fbh = alloca ptr, align 4
  %bh = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fbh) #12
  %2 = ptrtoint ptr %fbh to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %fbh, align 4, !annotation !28
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bh) #12
  %3 = ptrtoint ptr %bh to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr inttoptr (i32 -1 to ptr), ptr %bh, align 4, !annotation !28
  %call = call ptr @exfat_get_dentry(ptr noundef %1, ptr noundef %p_dir, i32 noundef %entry1, ptr noundef nonnull %fbh)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %dentry = getelementptr inbounds %struct.exfat_dentry, ptr %call, i32 0, i32 1
  %4 = ptrtoint ptr %dentry to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %dentry, align 1
  %call2 = tail call zeroext i16 @exfat_calc_chksum16(ptr noundef nonnull %call, i32 noundef 32, i16 noundef zeroext 0, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp.not39 = icmp eq i8 %5, 0
  br i1 %cmp.not39, label %if.end.for.end_crit_edge, label %for.body.preheader

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.preheader:                               ; preds = %if.end
  %conv = zext i8 %5 to i32
  br label %for.body

for.body:                                         ; preds = %brelse.exit.for.body_crit_edge, %for.body.preheader
  %chksum.041 = phi i16 [ %call9, %brelse.exit.for.body_crit_edge ], [ %call2, %for.body.preheader ]
  %i.040 = phi i32 [ %inc, %brelse.exit.for.body_crit_edge ], [ 1, %for.body.preheader ]
  %add4 = add i32 %i.040, %entry1
  %call5 = call ptr @exfat_get_dentry(ptr noundef %1, ptr noundef %p_dir, i32 noundef %add4, ptr noundef nonnull %bh)
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %for.body.release_fbh_crit_edge, label %if.end8

for.body.release_fbh_crit_edge:                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %release_fbh

if.end8:                                          ; preds = %for.body
  %call9 = tail call zeroext i16 @exfat_calc_chksum16(ptr noundef nonnull %call5, i32 noundef 32, i16 noundef zeroext %chksum.041, i32 noundef 2) #12
  %6 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bh, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %if.end8.brelse.exit_crit_edge, label %if.then.i

if.end8.brelse.exit_crit_edge:                    ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %brelse.exit

if.then.i:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__brelse(ptr noundef nonnull %7) #12
  br label %brelse.exit

brelse.exit:                                      ; preds = %if.then.i, %if.end8.brelse.exit_crit_edge
  %inc = add nuw nsw i32 %i.040, 1
  %exitcond = icmp eq i32 %i.040, %conv
  br i1 %exitcond, label %brelse.exit.for.end_crit_edge, label %brelse.exit.for.body_crit_edge

brelse.exit.for.body_crit_edge:                   ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

brelse.exit.for.end_crit_edge:                    ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %brelse.exit.for.end_crit_edge, %if.end.for.end_crit_edge
  %chksum.0.lcssa = phi i16 [ %call2, %if.end.for.end_crit_edge ], [ %call9, %brelse.exit.for.end_crit_edge ]
  %8 = tail call i16 @llvm.bswap.i16(i16 %chksum.0.lcssa)
  %checksum = getelementptr inbounds %struct.exfat_dentry, ptr %call, i32 0, i32 1, i32 0, i32 1
  %9 = ptrtoint ptr %checksum to i32
  call void @__asan_storeN_noabort(i32 %9, i32 2)
  store i16 %8, ptr %checksum, align 1
  %10 = ptrtoint ptr %fbh to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %fbh, align 4
  %12 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %i_sb, align 4
  %s_flags = getelementptr inbounds %struct.super_block, ptr %13, i32 0, i32 10
  %14 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %s_flags, align 4
  %and = and i32 %15, 144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool12.not = icmp eq i32 %and, 0
  br i1 %tobool12.not, label %lor.rhs, label %for.end.lor.end_crit_edge

for.end.lor.end_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.end

lor.rhs:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  %i_flags = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 4
  %16 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %i_flags, align 4
  %and13 = and i32 %17, 65
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14 = icmp ne i32 %and13, 0
  %phi.cast = zext i1 %tobool14 to i32
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %for.end.lor.end_crit_edge
  %18 = phi i32 [ 1, %for.end.lor.end_crit_edge ], [ %phi.cast, %lor.rhs ]
  tail call void @exfat_update_bh(ptr noundef %11, i32 noundef %18) #12
  br label %release_fbh

release_fbh:                                      ; preds = %lor.end, %for.body.release_fbh_crit_edge
  %ret.0 = phi i32 [ 0, %lor.end ], [ -5, %for.body.release_fbh_crit_edge ]
  %19 = ptrtoint ptr %fbh to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %fbh, align 4
  %tobool.not.i35 = icmp eq ptr %20, null
  br i1 %tobool.not.i35, label %release_fbh.cleanup_crit_edge, label %if.then.i36

release_fbh.cleanup_crit_edge:                    ; preds = %release_fbh
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then.i36:                                      ; preds = %release_fbh
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__brelse(ptr noundef nonnull %20) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then.i36, %release_fbh.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %entry.cleanup_crit_edge ], [ %ret.0, %release_fbh.cleanup_crit_edge ], [ %ret.0, %if.then.i36 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bh) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fbh) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @exfat_calc_chksum16(ptr noundef, i32 noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @exfat_init_ext_entry(ptr nocapture noundef readonly %inode, ptr nocapture noundef readonly %p_dir, i32 noundef %entry1, i32 noundef %num_entries, ptr nocapture noundef readonly %p_uniname) local_unnamed_addr #1 align 64 {
entry:
  %bh = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bh) #12
  %2 = ptrtoint ptr %bh to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %bh, align 4, !annotation !28
  %s_flags = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 10
  %3 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %s_flags, align 4
  %and = and i32 %4, 144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.rhs, label %entry.lor.end_crit_edge

entry.lor.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.end

lor.rhs:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %i_flags = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 4
  %5 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %i_flags, align 4
  %and3 = and i32 %6, 65
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4 = icmp ne i32 %and3, 0
  %phi.cast = zext i1 %tobool4 to i32
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry.lor.end_crit_edge
  %7 = phi i32 [ 1, %entry.lor.end_crit_edge ], [ %phi.cast, %lor.rhs ]
  %call = call ptr @exfat_get_dentry(ptr noundef %1, ptr noundef %p_dir, i32 noundef %entry1, ptr noundef nonnull %bh)
  %tobool5.not = icmp eq ptr %call, null
  br i1 %tobool5.not, label %lor.end.cleanup_crit_edge, label %if.end

lor.end.cleanup_crit_edge:                        ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %lor.end
  %8 = trunc i32 %num_entries to i8
  %conv = add i8 %8, -1
  %dentry = getelementptr inbounds %struct.exfat_dentry, ptr %call, i32 0, i32 1
  %9 = ptrtoint ptr %dentry to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv, ptr %dentry, align 1
  %10 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bh, align 4
  tail call void @exfat_update_bh(ptr noundef %11, i32 noundef %7) #12
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %if.end.brelse.exit_crit_edge, label %if.then.i

if.end.brelse.exit_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %brelse.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__brelse(ptr noundef nonnull %11) #12
  br label %brelse.exit

brelse.exit:                                      ; preds = %if.then.i, %if.end.brelse.exit_crit_edge
  %add = add i32 %entry1, 1
  %call6 = call ptr @exfat_get_dentry(ptr noundef %1, ptr noundef %p_dir, i32 noundef %add, ptr noundef nonnull %bh)
  %tobool7.not = icmp eq ptr %call6, null
  br i1 %tobool7.not, label %brelse.exit.cleanup_crit_edge, label %if.end9

brelse.exit.cleanup_crit_edge:                    ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end9:                                          ; preds = %brelse.exit
  %name_len = getelementptr inbounds %struct.exfat_uni_name, ptr %p_uniname, i32 0, i32 2
  %12 = ptrtoint ptr %name_len to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %name_len, align 2
  %dentry10 = getelementptr inbounds %struct.exfat_dentry, ptr %call6, i32 0, i32 1
  %name_len11 = getelementptr inbounds %struct.anon.79, ptr %dentry10, i32 0, i32 2
  %14 = ptrtoint ptr %name_len11 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %name_len11, align 1
  %name_hash = getelementptr inbounds %struct.exfat_uni_name, ptr %p_uniname, i32 0, i32 1
  %15 = ptrtoint ptr %name_hash to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %name_hash, align 2
  %17 = tail call i16 @llvm.bswap.i16(i16 %16)
  %name_hash13 = getelementptr inbounds %struct.exfat_dentry, ptr %call6, i32 0, i32 1, i32 0, i32 2
  %18 = ptrtoint ptr %name_hash13 to i32
  call void @__asan_storeN_noabort(i32 %18, i32 2)
  store i16 %17, ptr %name_hash13, align 1
  %19 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %bh, align 4
  tail call void @exfat_update_bh(ptr noundef %20, i32 noundef %7) #12
  %tobool.not.i51 = icmp eq ptr %20, null
  br i1 %tobool.not.i51, label %if.end9.brelse.exit53_crit_edge, label %if.then.i52

if.end9.brelse.exit53_crit_edge:                  ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %brelse.exit53

if.then.i52:                                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__brelse(ptr noundef nonnull %20) #12
  br label %brelse.exit53

brelse.exit53:                                    ; preds = %if.then.i52, %if.end9.brelse.exit53_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %num_entries)
  %cmp58 = icmp sgt i32 %num_entries, 2
  br i1 %cmp58, label %brelse.exit53.for.body_crit_edge, label %brelse.exit53.for.end_crit_edge

brelse.exit53.for.end_crit_edge:                  ; preds = %brelse.exit53
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

brelse.exit53.for.body_crit_edge:                 ; preds = %brelse.exit53
  br label %for.body

for.body:                                         ; preds = %brelse.exit57.for.body_crit_edge, %brelse.exit53.for.body_crit_edge
  %uniname.060 = phi ptr [ %add.ptr, %brelse.exit57.for.body_crit_edge ], [ %p_uniname, %brelse.exit53.for.body_crit_edge ]
  %i.059 = phi i32 [ %inc, %brelse.exit57.for.body_crit_edge ], [ 2, %brelse.exit53.for.body_crit_edge ]
  %add15 = add i32 %i.059, %entry1
  %call16 = call ptr @exfat_get_dentry(ptr noundef %1, ptr noundef %p_dir, i32 noundef %add15, ptr noundef nonnull %bh)
  %tobool17.not = icmp eq ptr %call16, null
  br i1 %tobool17.not, label %for.body.cleanup_crit_edge, label %if.end19

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end19:                                         ; preds = %for.body
  %21 = ptrtoint ptr %call16 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 -63, ptr %call16, align 1
  %dentry.i = getelementptr inbounds %struct.exfat_dentry, ptr %call16, i32 0, i32 1
  %22 = ptrtoint ptr %dentry.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %dentry.i, align 1
  %unicode_0_14.i = getelementptr inbounds %struct.exfat_dentry, ptr %call16, i32 0, i32 1, i32 0, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end19
  %i.016.i = phi i32 [ 0, %if.end19 ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %uniname.addr.015.i = phi ptr [ %uniname.060, %if.end19 ], [ %uniname.addr.1.i, %for.body.i.for.body.i_crit_edge ]
  %23 = ptrtoint ptr %uniname.addr.015.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %uniname.addr.015.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %24)
  %cmp1.not.i = icmp eq i16 %24, 0
  %25 = tail call i16 @llvm.bswap.i16(i16 %24) #12
  %.sink = select i1 %cmp1.not.i, i16 0, i16 %25
  %not.cmp1.not.i = xor i1 %cmp1.not.i, true
  %uniname.addr.1.i.idx = zext i1 %not.cmp1.not.i to i32
  %uniname.addr.1.i = getelementptr i16, ptr %uniname.addr.015.i, i32 %uniname.addr.1.i.idx
  %26 = getelementptr [15 x i16], ptr %unicode_0_14.i, i32 0, i32 %i.016.i
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_storeN_noabort(i32 %27, i32 2)
  store i16 %.sink, ptr %26, align 1
  %inc.i = add nuw nsw i32 %i.016.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 15
  br i1 %exitcond.not.i, label %exfat_init_name_entry.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

exfat_init_name_entry.exit:                       ; preds = %for.body.i
  %28 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %bh, align 4
  tail call void @exfat_update_bh(ptr noundef %29, i32 noundef %7) #12
  %tobool.not.i55 = icmp eq ptr %29, null
  br i1 %tobool.not.i55, label %exfat_init_name_entry.exit.brelse.exit57_crit_edge, label %if.then.i56

exfat_init_name_entry.exit.brelse.exit57_crit_edge: ; preds = %exfat_init_name_entry.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %brelse.exit57

if.then.i56:                                      ; preds = %exfat_init_name_entry.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__brelse(ptr noundef nonnull %29) #12
  br label %brelse.exit57

brelse.exit57:                                    ; preds = %if.then.i56, %exfat_init_name_entry.exit.brelse.exit57_crit_edge
  %add.ptr = getelementptr i16, ptr %uniname.060, i32 15
  %inc = add nuw nsw i32 %i.059, 1
  %exitcond.not = icmp eq i32 %inc, %num_entries
  br i1 %exitcond.not, label %brelse.exit57.for.end_crit_edge, label %brelse.exit57.for.body_crit_edge

brelse.exit57.for.body_crit_edge:                 ; preds = %brelse.exit57
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

brelse.exit57.for.end_crit_edge:                  ; preds = %brelse.exit57
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %brelse.exit57.for.end_crit_edge, %brelse.exit53.for.end_crit_edge
  %call20 = tail call i32 @exfat_update_dir_chksum(ptr noundef %inode, ptr noundef %p_dir, i32 noundef %entry1)
  br label %cleanup

cleanup:                                          ; preds = %for.end, %for.body.cleanup_crit_edge, %brelse.exit.cleanup_crit_edge, %lor.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end ], [ -5, %lor.end.cleanup_crit_edge ], [ -5, %brelse.exit.cleanup_crit_edge ], [ -5, %for.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bh) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @exfat_remove_entries(ptr nocapture noundef readonly %inode, ptr nocapture noundef readonly %p_dir, i32 noundef %entry1, i32 noundef %order, i32 noundef %num_entries) local_unnamed_addr #1 align 64 {
entry:
  %bh = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bh) #12
  %2 = ptrtoint ptr %bh to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %bh, align 4, !annotation !28
  call void @__sanitizer_cov_trace_cmp4(i32 %order, i32 %num_entries)
  %cmp14 = icmp slt i32 %order, %num_entries
  br i1 %cmp14, label %for.body.lr.ph, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %i_flags = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %brelse.exit.for.body_crit_edge, %for.body.lr.ph
  %i.015 = phi i32 [ %order, %for.body.lr.ph ], [ %inc, %brelse.exit.for.body_crit_edge ]
  %add = add i32 %i.015, %entry1
  %call = call ptr @exfat_get_dentry(ptr noundef %1, ptr noundef %p_dir, i32 noundef %add, ptr noundef nonnull %bh)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %for.body.cleanup_crit_edge, label %if.end

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %for.body
  %3 = ptrtoint ptr %call to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %call, align 1
  %5 = and i8 %4, 127
  store i8 %5, ptr %call, align 1
  %6 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bh, align 4
  %8 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %i_sb, align 4
  %s_flags = getelementptr inbounds %struct.super_block, ptr %9, i32 0, i32 10
  %10 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %s_flags, align 4
  %and = and i32 %11, 144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %lor.rhs, label %if.end.lor.end_crit_edge

if.end.lor.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.end

lor.rhs:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %12 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %i_flags, align 4
  %and4 = and i32 %13, 65
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5 = icmp ne i32 %and4, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.end.lor.end_crit_edge
  %14 = phi i1 [ true, %if.end.lor.end_crit_edge ], [ %tobool5, %lor.rhs ]
  %lor.ext = zext i1 %14 to i32
  tail call void @exfat_update_bh(ptr noundef %7, i32 noundef %lor.ext) #12
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %lor.end.brelse.exit_crit_edge, label %if.then.i

lor.end.brelse.exit_crit_edge:                    ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %brelse.exit

if.then.i:                                        ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__brelse(ptr noundef nonnull %7) #12
  br label %brelse.exit

brelse.exit:                                      ; preds = %if.then.i, %lor.end.brelse.exit_crit_edge
  %inc = add i32 %i.015, 1
  %exitcond.not = icmp eq i32 %inc, %num_entries
  br i1 %exitcond.not, label %brelse.exit.cleanup_crit_edge, label %brelse.exit.for.body_crit_edge

brelse.exit.for.body_crit_edge:                   ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

brelse.exit.cleanup_crit_edge:                    ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup:                                          ; preds = %brelse.exit.cleanup_crit_edge, %for.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %brelse.exit.cleanup_crit_edge ], [ -5, %for.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bh) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @exfat_update_dir_chksum_with_entry_set(ptr nocapture noundef %es) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %num_entries = getelementptr inbounds %struct.exfat_entry_set_cache, ptr %es, i32 0, i32 5
  %0 = ptrtoint ptr %num_entries to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_entries, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp20.not = icmp eq i32 %1, 0
  br i1 %cmp20.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %start_off.i = getelementptr inbounds %struct.exfat_entry_set_cache, ptr %es, i32 0, i32 2
  %2 = ptrtoint ptr %start_off.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %start_off.i, align 4
  %4 = ptrtoint ptr %es to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %es, align 4
  %s_blocksize_bits.i.peel = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %s_blocksize_bits.i.peel to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %s_blocksize_bits.i.peel, align 4
  %conv.i.peel = zext i8 %7 to i32
  %shr.i.peel = ashr i32 %3, %conv.i.peel
  %arrayidx.i.peel = getelementptr %struct.exfat_entry_set_cache, ptr %es, i32 0, i32 4, i32 %shr.i.peel
  %8 = ptrtoint ptr %arrayidx.i.peel to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i.peel, align 4
  %b_data.i.peel = getelementptr inbounds %struct.buffer_head, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %b_data.i.peel to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %b_data.i.peel, align 4
  %s_blocksize.i.peel = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 3
  %12 = ptrtoint ptr %s_blocksize.i.peel to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %s_blocksize.i.peel, align 16
  %sub.i.peel = add i32 %13, -1
  %and.i.peel = and i32 %sub.i.peel, %3
  %add.ptr.i.peel = getelementptr i8, ptr %11, i32 %and.i.peel
  %call1.peel = tail call zeroext i16 @exfat_calc_chksum16(ptr noundef %add.ptr.i.peel, i32 noundef 32, i16 noundef zeroext 0, i32 noundef 0) #12
  %14 = ptrtoint ptr %num_entries to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num_entries, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %15)
  %cmp.peel = icmp ugt i32 %15, 1
  br i1 %cmp.peel, label %for.body.lr.ph.for.body_crit_edge, label %for.body.lr.ph.for.end_crit_edge

for.body.lr.ph.for.end_crit_edge:                 ; preds = %for.body.lr.ph
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph.for.body_crit_edge:                ; preds = %for.body.lr.ph
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph.for.body_crit_edge
  %chksum.023 = phi i16 [ %call1, %for.body.for.body_crit_edge ], [ %call1.peel, %for.body.lr.ph.for.body_crit_edge ]
  %i.022 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 1, %for.body.lr.ph.for.body_crit_edge ]
  %16 = ptrtoint ptr %start_off.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %start_off.i, align 4
  %mul.i = shl i32 %i.022, 5
  %add.i = add i32 %17, %mul.i
  %18 = ptrtoint ptr %es to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %es, align 4
  %s_blocksize_bits.i = getelementptr inbounds %struct.super_block, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %s_blocksize_bits.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %s_blocksize_bits.i, align 4
  %conv.i = zext i8 %21 to i32
  %shr.i = ashr i32 %add.i, %conv.i
  %arrayidx.i = getelementptr %struct.exfat_entry_set_cache, ptr %es, i32 0, i32 4, i32 %shr.i
  %22 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx.i, align 4
  %b_data.i = getelementptr inbounds %struct.buffer_head, ptr %23, i32 0, i32 5
  %24 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %b_data.i, align 4
  %s_blocksize.i = getelementptr inbounds %struct.super_block, ptr %19, i32 0, i32 3
  %26 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %s_blocksize.i, align 16
  %sub.i = add i32 %27, -1
  %and.i = and i32 %sub.i, %add.i
  %add.ptr.i = getelementptr i8, ptr %25, i32 %and.i
  %call1 = tail call zeroext i16 @exfat_calc_chksum16(ptr noundef %add.ptr.i, i32 noundef 32, i16 noundef zeroext %chksum.023, i32 noundef 2) #12
  %inc = add nuw i32 %i.022, 1
  %28 = ptrtoint ptr %num_entries to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %num_entries, align 4
  %cmp = icmp ult i32 %inc, %29
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge, !llvm.loop !31

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.body.lr.ph.for.end_crit_edge, %entry.for.end_crit_edge
  %chksum.0.lcssa = phi i16 [ 0, %entry.for.end_crit_edge ], [ %call1.peel, %for.body.lr.ph.for.end_crit_edge ], [ %call1, %for.body.for.end_crit_edge ]
  %start_off.i10 = getelementptr inbounds %struct.exfat_entry_set_cache, ptr %es, i32 0, i32 2
  %30 = ptrtoint ptr %start_off.i10 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %start_off.i10, align 4
  %32 = ptrtoint ptr %es to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %es, align 4
  %s_blocksize_bits.i11 = getelementptr inbounds %struct.super_block, ptr %33, i32 0, i32 2
  %34 = ptrtoint ptr %s_blocksize_bits.i11 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %s_blocksize_bits.i11, align 4
  %conv.i12 = zext i8 %35 to i32
  %shr.i13 = ashr i32 %31, %conv.i12
  %arrayidx.i14 = getelementptr %struct.exfat_entry_set_cache, ptr %es, i32 0, i32 4, i32 %shr.i13
  %36 = ptrtoint ptr %arrayidx.i14 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx.i14, align 4
  %b_data.i15 = getelementptr inbounds %struct.buffer_head, ptr %37, i32 0, i32 5
  %38 = ptrtoint ptr %b_data.i15 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %b_data.i15, align 4
  %s_blocksize.i16 = getelementptr inbounds %struct.super_block, ptr %33, i32 0, i32 3
  %40 = ptrtoint ptr %s_blocksize.i16 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %s_blocksize.i16, align 16
  %sub.i17 = add i32 %41, -1
  %and.i18 = and i32 %sub.i17, %31
  %add.ptr.i19 = getelementptr i8, ptr %39, i32 %and.i18
  %42 = tail call i16 @llvm.bswap.i16(i16 %chksum.0.lcssa)
  %checksum = getelementptr inbounds %struct.exfat_dentry, ptr %add.ptr.i19, i32 0, i32 1, i32 0, i32 1
  %43 = ptrtoint ptr %checksum to i32
  call void @__asan_storeN_noabort(i32 %43, i32 2)
  store i16 %42, ptr %checksum, align 1
  %modified = getelementptr inbounds %struct.exfat_entry_set_cache, ptr %es, i32 0, i32 1
  %44 = ptrtoint ptr %modified to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 1, ptr %modified, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @exfat_get_dentry_cached(ptr nocapture noundef readonly %es, i32 noundef %num) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %start_off = getelementptr inbounds %struct.exfat_entry_set_cache, ptr %es, i32 0, i32 2
  %0 = ptrtoint ptr %start_off to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %start_off, align 4
  %mul = shl i32 %num, 5
  %add = add i32 %1, %mul
  %2 = ptrtoint ptr %es to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %es, align 4
  %s_blocksize_bits = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %s_blocksize_bits to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %s_blocksize_bits, align 4
  %conv = zext i8 %5 to i32
  %shr = ashr i32 %add, %conv
  %arrayidx = getelementptr %struct.exfat_entry_set_cache, ptr %es, i32 0, i32 4, i32 %shr
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %b_data, align 4
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 3
  %10 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %s_blocksize, align 16
  %sub = add i32 %11, -1
  %and = and i32 %sub, %add
  %add.ptr = getelementptr i8, ptr %9, i32 %and
  ret ptr %add.ptr
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @exfat_free_dentry_set(ptr noundef %es, i32 noundef %sync) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %modified = getelementptr inbounds %struct.exfat_entry_set_cache, ptr %es, i32 0, i32 1
  %0 = ptrtoint ptr %modified to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %modified, align 4, !range !30
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %bh = getelementptr inbounds %struct.exfat_entry_set_cache, ptr %es, i32 0, i32 4
  %num_bh = getelementptr inbounds %struct.exfat_entry_set_cache, ptr %es, i32 0, i32 3
  %2 = ptrtoint ptr %num_bh to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_bh, align 4
  %call = tail call i32 @exfat_update_bhs(ptr noundef %bh, i32 noundef %3, i32 noundef %sync) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %err.0 = phi i32 [ %call, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %num_bh1 = getelementptr inbounds %struct.exfat_entry_set_cache, ptr %es, i32 0, i32 3
  %4 = ptrtoint ptr %num_bh1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_bh1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp20 = icmp sgt i32 %5, 0
  br i1 %cmp20, label %for.body.lr.ph, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %tobool2.not = icmp eq i32 %err.0, 0
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.021 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx6 = getelementptr %struct.exfat_entry_set_cache, ptr %es, i32 0, i32 4, i32 %i.021
  %6 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx6, align 4
  %tobool.not.i18 = icmp eq ptr %7, null
  br i1 %tobool2.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %for.body
  br i1 %tobool.not.i18, label %if.then3.for.inc_crit_edge, label %if.then.i

if.then3.for.inc_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then.i:                                        ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__bforget(ptr noundef nonnull %7) #12
  br label %for.inc

if.else:                                          ; preds = %for.body
  br i1 %tobool.not.i18, label %if.else.for.inc_crit_edge, label %if.then.i19

if.else.for.inc_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then.i19:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__brelse(ptr noundef nonnull %7) #12
  br label %for.inc

for.inc:                                          ; preds = %if.then.i19, %if.else.for.inc_crit_edge, %if.then.i, %if.then3.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.021, 1
  %8 = ptrtoint ptr %num_bh1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_bh1, align 4
  %cmp = icmp slt i32 %inc, %9
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end.for.end_crit_edge
  tail call void @kfree(ptr noundef %es) #12
  ret i32 %err.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @exfat_update_bhs(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #0

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @exfat_msg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @exfat_get_dentry_set(ptr noundef %sb, ptr nocapture noundef readonly %p_dir, i32 noundef %entry1, i32 noundef %type) local_unnamed_addr #1 align 64 {
entry:
  %cur_clu.i = alloca i32, align 4
  %clu = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %clu) #12
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  %2 = ptrtoint ptr %p_dir to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %p_dir, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -64735, i32 %3)
  %cmp = icmp eq i32 %3, -64735
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ptr, ...) @exfat_msg(ptr noundef %sb, ptr noundef nonnull @.str, ptr noundef nonnull @.str.2) #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %shl = shl i32 %entry1, 5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cur_clu.i) #12
  %cluster_size_bits.i = getelementptr inbounds %struct.exfat_sb_info, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %cluster_size_bits.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cluster_size_bits.i, align 8
  %shr.i = lshr i32 %shl, %5
  %6 = ptrtoint ptr %cur_clu.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %3, ptr %cur_clu.i, align 4
  %flags.i = getelementptr inbounds %struct.exfat_chain, ptr %p_dir, i32 0, i32 2
  %7 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %flags.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %8)
  %cmp.i = icmp eq i8 %8, 3
  br i1 %cmp.i, label %if.then.i, label %while.cond.preheader.i

while.cond.preheader.i:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr.i)
  %cmp2.not22.i = icmp eq i32 %shr.i, 0
  br i1 %cmp2.not22.i, label %while.cond.preheader.i.if.end4_crit_edge, label %while.cond.preheader.i.while.body.i_crit_edge

while.cond.preheader.i.while.body.i_crit_edge:    ; preds = %while.cond.preheader.i
  br label %while.body.i

while.cond.preheader.i.if.end4_crit_edge:         ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %add.i = add i32 %shr.i, %3
  %9 = ptrtoint ptr %cur_clu.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %add.i, ptr %cur_clu.i, align 4
  br label %if.end4

while.cond.i:                                     ; preds = %if.end.i
  %dec.i = add i32 %clu_offset.023.i, -1
  %cmp2.not.i = icmp eq i32 %dec.i, 0
  br i1 %cmp2.not.i, label %while.cond.i.if.end4_crit_edge, label %while.cond.i.while.body.i_crit_edge

while.cond.i.while.body.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i

while.cond.i.if.end4_crit_edge:                   ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4

while.body.i:                                     ; preds = %while.cond.i.while.body.i_crit_edge, %while.cond.preheader.i.while.body.i_crit_edge
  %clu_offset.023.i = phi i32 [ %dec.i, %while.cond.i.while.body.i_crit_edge ], [ %shr.i, %while.cond.preheader.i.while.body.i_crit_edge ]
  %10 = ptrtoint ptr %cur_clu.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cur_clu.i, align 4
  %call4.i = call i32 @exfat_ent_get(ptr noundef %sb, i32 noundef %11, ptr noundef nonnull %cur_clu.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %while.body.i.exfat_walk_fat_chain.exit.thread_crit_edge

while.body.i.exfat_walk_fat_chain.exit.thread_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %exfat_walk_fat_chain.exit.thread

if.end.i:                                         ; preds = %while.body.i
  %12 = ptrtoint ptr %cur_clu.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cur_clu.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %13)
  %cmp6.i = icmp eq i32 %13, -1
  br i1 %cmp6.i, label %if.then8.i, label %while.cond.i

if.then8.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %14 = ptrtoint ptr %p_dir to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %p_dir, align 4
  %shr10.i = and i32 %entry1, 134217727
  call void (ptr, i32, ptr, ...) @__exfat_fs_error(ptr noundef %sb, i32 noundef 1, ptr noundef nonnull @.str.7, i32 noundef %15, i32 noundef %shr10.i) #16
  br label %exfat_walk_fat_chain.exit.thread

exfat_walk_fat_chain.exit.thread:                 ; preds = %if.then8.i, %while.body.i.exfat_walk_fat_chain.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cur_clu.i) #12
  br label %cleanup

if.end4:                                          ; preds = %while.cond.i.if.end4_crit_edge, %if.then.i, %while.cond.preheader.i.if.end4_crit_edge
  %16 = ptrtoint ptr %cur_clu.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %cur_clu.i, align 4
  %18 = ptrtoint ptr %clu to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %clu, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cur_clu.i) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %19 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %19, i32 noundef 3520, i32 noundef 88) #17
  %tobool6.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool6.not, label %if.end4.cleanup_crit_edge, label %if.end8

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  %20 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %sb, ptr %call7.i.i, align 8
  %modified = getelementptr inbounds %struct.exfat_entry_set_cache, ptr %call7.i.i, i32 0, i32 1
  %21 = ptrtoint ptr %modified to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %modified, align 4
  %cluster_size = getelementptr inbounds %struct.exfat_sb_info, ptr %1, i32 0, i32 2
  %22 = ptrtoint ptr %cluster_size to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %cluster_size, align 4
  %sub = add i32 %23, -1
  %and = and i32 %sub, %shl
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 3
  %24 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %s_blocksize, align 16
  %sub10 = add i32 %25, -1
  %and11 = and i32 %and, %sub10
  %start_off = getelementptr inbounds %struct.exfat_entry_set_cache, ptr %call7.i.i, i32 0, i32 2
  %26 = ptrtoint ptr %start_off to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %and11, ptr %start_off, align 8
  %s_blocksize_bits = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 2
  %27 = ptrtoint ptr %s_blocksize_bits to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %s_blocksize_bits, align 4
  %conv = zext i8 %28 to i32
  %shr = lshr i32 %and, %conv
  %conv12 = zext i32 %shr to i64
  %29 = ptrtoint ptr %clu to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %clu, align 4
  %sub.i = add i32 %30, -2
  %conv.i = zext i32 %sub.i to i64
  %sect_per_clus_bits.i = getelementptr inbounds %struct.exfat_sb_info, ptr %1, i32 0, i32 5
  %31 = ptrtoint ptr %sect_per_clus_bits.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %sect_per_clus_bits.i, align 8
  %sh_prom.i = zext i32 %32 to i64
  %shl.i = shl i64 %conv.i, %sh_prom.i
  %data_start_sector.i = getelementptr inbounds %struct.exfat_sb_info, ptr %1, i32 0, i32 8
  %33 = ptrtoint ptr %data_start_sector.i to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %data_start_sector.i, align 8
  %add.i134 = add i64 %34, %conv12
  %add = add i64 %add.i134, %shl.i
  %s_bdev.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 26
  %35 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %s_bdev.i, align 4
  %call.i = call ptr @__bread_gfp(ptr noundef %36, i64 noundef %add, i32 noundef %25, i32 noundef 8) #12
  %tobool15.not = icmp eq ptr %call.i, null
  br i1 %tobool15.not, label %if.end8.free_es_crit_edge, label %if.end17

if.end8.free_es_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %free_es

if.end17:                                         ; preds = %if.end8
  %num_bh19 = getelementptr inbounds %struct.exfat_entry_set_cache, ptr %call7.i.i, i32 0, i32 3
  %37 = ptrtoint ptr %num_bh19 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %num_bh19, align 4
  %inc = add i32 %38, 1
  store i32 %inc, ptr %num_bh19, align 4
  %arrayidx = getelementptr %struct.exfat_entry_set_cache, ptr %call7.i.i, i32 0, i32 4, i32 %38
  %39 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call.i, ptr %arrayidx, align 4
  %40 = ptrtoint ptr %start_off to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %start_off, align 8
  %42 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %call7.i.i, align 8
  %s_blocksize_bits.i = getelementptr inbounds %struct.super_block, ptr %43, i32 0, i32 2
  %44 = ptrtoint ptr %s_blocksize_bits.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %s_blocksize_bits.i, align 4
  %conv.i135 = zext i8 %45 to i32
  %shr.i136 = ashr i32 %41, %conv.i135
  %arrayidx.i = getelementptr %struct.exfat_entry_set_cache, ptr %call7.i.i, i32 0, i32 4, i32 %shr.i136
  %46 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx.i, align 4
  %b_data.i = getelementptr inbounds %struct.buffer_head, ptr %47, i32 0, i32 5
  %48 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %b_data.i, align 4
  %s_blocksize.i137 = getelementptr inbounds %struct.super_block, ptr %43, i32 0, i32 3
  %50 = ptrtoint ptr %s_blocksize.i137 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %s_blocksize.i137, align 16
  %sub.i138 = add i32 %51, -1
  %and.i = and i32 %sub.i138, %41
  %add.ptr.i = getelementptr i8, ptr %49, i32 %and.i
  %52 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %add.ptr.i, align 1
  %.fr = freeze i8 %53
  call void @__sanitizer_cov_trace_const_cmp1(i8 -123, i8 %.fr)
  %cond261 = icmp eq i8 %.fr, -123
  br i1 %cond261, label %if.end24, label %if.end17.free_es_crit_edge

if.end17.free_es_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  br label %free_es

if.end24:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %type)
  %cmp25 = icmp eq i32 %type, 0
  br i1 %cmp25, label %cond.true, label %if.end24.cond.end_crit_edge

if.end24.cond.end_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

cond.true:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #14
  %dentry = getelementptr inbounds %struct.exfat_dentry, ptr %add.ptr.i, i32 0, i32 1
  %54 = ptrtoint ptr %dentry to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %dentry, align 1
  %conv27 = zext i8 %55 to i32
  %add28 = add nuw nsw i32 %conv27, 1
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end24.cond.end_crit_edge
  %cond = phi i32 [ %add28, %cond.true ], [ %type, %if.end24.cond.end_crit_edge ]
  %num_entries29 = getelementptr inbounds %struct.exfat_entry_set_cache, ptr %call7.i.i, i32 0, i32 5
  %56 = ptrtoint ptr %num_entries29 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %cond, ptr %num_entries29, align 4
  %mul = shl i32 %cond, 5
  %add30 = add i32 %and11, -1
  %sub31 = add i32 %add30, %mul
  %57 = ptrtoint ptr %s_blocksize_bits to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %s_blocksize_bits, align 4
  %conv33 = zext i8 %58 to i32
  %shr34 = lshr i32 %sub31, %conv33
  %add35 = add i32 %shr34, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %add35)
  %cmp36263 = icmp sgt i32 %add35, 1
  br i1 %cmp36263, label %cond.end.for.body_crit_edge, label %cond.end.for.cond63.preheader_crit_edge

cond.end.for.cond63.preheader_crit_edge:          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond63.preheader

cond.end.for.body_crit_edge:                      ; preds = %cond.end
  br label %for.body

for.cond63.preheader:                             ; preds = %if.end57.for.cond63.preheader_crit_edge, %cond.end.for.cond63.preheader_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %cond)
  %cmp64266 = icmp sgt i32 %cond, 1
  br i1 %cmp64266, label %for.body66.lr.ph, label %for.cond63.preheader.cleanup_crit_edge

for.cond63.preheader.cleanup_crit_edge:           ; preds = %for.cond63.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body66.lr.ph:                                 ; preds = %for.cond63.preheader
  %59 = ptrtoint ptr %start_off to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %start_off, align 8
  %61 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %call7.i.i, align 8
  %s_blocksize_bits.i167 = getelementptr inbounds %struct.super_block, ptr %62, i32 0, i32 2
  %63 = ptrtoint ptr %s_blocksize_bits.i167 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %s_blocksize_bits.i167, align 4
  %conv.i168 = zext i8 %64 to i32
  %s_blocksize.i172 = getelementptr inbounds %struct.super_block, ptr %62, i32 0, i32 3
  %65 = ptrtoint ptr %s_blocksize.i172 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %s_blocksize.i172, align 16
  %sub.i173 = add i32 %66, -1
  br label %for.body66

for.body:                                         ; preds = %if.end57.for.body_crit_edge, %cond.end.for.body_crit_edge
  %sec.0265 = phi i64 [ %sec.1, %if.end57.for.body_crit_edge ], [ %add, %cond.end.for.body_crit_edge ]
  %i.0264 = phi i32 [ %inc62, %if.end57.for.body_crit_edge ], [ 1, %cond.end.for.body_crit_edge ]
  %67 = ptrtoint ptr %data_start_sector.i to i32
  call void @__asan_load8_noabort(i32 %67)
  %68 = load i64, ptr %data_start_sector.i, align 8
  %sub.i149 = add i64 %sec.0265, 1
  %add.i150 = sub i64 %sub.i149, %68
  %69 = ptrtoint ptr %sect_per_clus_bits.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %sect_per_clus_bits.i, align 8
  %notmask.i = shl nsw i32 -1, %70
  %sub1.i = xor i32 %notmask.i, -1
  %conv.i152 = sext i32 %sub1.i to i64
  %and.i153 = and i64 %add.i150, %conv.i152
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i153)
  %cmp.i154 = icmp eq i64 %and.i153, 0
  br i1 %cmp.i154, label %if.then39, label %for.body.if.end53_crit_edge

for.body.if.end53_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end53

if.then39:                                        ; preds = %for.body
  %71 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %flags.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %72)
  %cmp41 = icmp eq i8 %72, 3
  %73 = ptrtoint ptr %clu to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %clu, align 4
  br i1 %cmp41, label %if.then43, label %if.else

if.then43:                                        ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #14
  %inc44 = add i32 %74, 1
  %75 = ptrtoint ptr %clu to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %inc44, ptr %clu, align 4
  br label %if.end49

if.else:                                          ; preds = %if.then39
  %call45 = call i32 @exfat_ent_get(ptr noundef %sb, i32 noundef %74, ptr noundef nonnull %clu) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.else.if.end49_crit_edge, label %if.else.free_es_crit_edge

if.else.free_es_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %free_es

if.else.if.end49_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end49

if.end49:                                         ; preds = %if.else.if.end49_crit_edge, %if.then43
  %76 = ptrtoint ptr %clu to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %clu, align 4
  %sub.i155 = add i32 %77, -2
  %conv.i156 = zext i32 %sub.i155 to i64
  %78 = ptrtoint ptr %sect_per_clus_bits.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %sect_per_clus_bits.i, align 8
  %sh_prom.i158 = zext i32 %79 to i64
  %shl.i159 = shl i64 %conv.i156, %sh_prom.i158
  %80 = ptrtoint ptr %data_start_sector.i to i32
  call void @__asan_load8_noabort(i32 %80)
  %81 = load i64, ptr %data_start_sector.i, align 8
  %add.i161 = add i64 %shl.i159, %81
  br label %if.end53

if.end53:                                         ; preds = %if.end49, %for.body.if.end53_crit_edge
  %sec.1 = phi i64 [ %add.i161, %if.end49 ], [ %sub.i149, %for.body.if.end53_crit_edge ]
  %82 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %s_bdev.i, align 4
  %84 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %s_blocksize, align 16
  %call.i164 = call ptr @__bread_gfp(ptr noundef %83, i64 noundef %sec.1, i32 noundef %85, i32 noundef 8) #12
  %tobool55.not = icmp eq ptr %call.i164, null
  br i1 %tobool55.not, label %if.end53.free_es_crit_edge, label %if.end57

if.end53.free_es_crit_edge:                       ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #14
  br label %free_es

if.end57:                                         ; preds = %if.end53
  %86 = ptrtoint ptr %num_bh19 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %num_bh19, align 4
  %inc60 = add i32 %87, 1
  store i32 %inc60, ptr %num_bh19, align 4
  %arrayidx61 = getelementptr %struct.exfat_entry_set_cache, ptr %call7.i.i, i32 0, i32 4, i32 %87
  %88 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %call.i164, ptr %arrayidx61, align 4
  %inc62 = add nuw nsw i32 %i.0264, 1
  %exitcond.not = icmp eq i32 %i.0264, %shr34
  br i1 %exitcond.not, label %if.end57.for.cond63.preheader_crit_edge, label %if.end57.for.body_crit_edge

if.end57.for.body_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

if.end57.for.cond63.preheader_crit_edge:          ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond63.preheader

for.body66:                                       ; preds = %for.inc72.for.body66_crit_edge, %for.body66.lr.ph
  %i.1268 = phi i32 [ 1, %for.body66.lr.ph ], [ %inc73, %for.inc72.for.body66_crit_edge ]
  %mode.2267 = phi i32 [ 1, %for.body66.lr.ph ], [ %mode.4255, %for.inc72.for.body66_crit_edge ]
  %mul.i = shl i32 %i.1268, 5
  %add.i166 = add i32 %60, %mul.i
  %shr.i169 = ashr i32 %add.i166, %conv.i168
  %arrayidx.i170 = getelementptr %struct.exfat_entry_set_cache, ptr %call7.i.i, i32 0, i32 4, i32 %shr.i169
  %89 = ptrtoint ptr %arrayidx.i170 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %arrayidx.i170, align 4
  %b_data.i171 = getelementptr inbounds %struct.buffer_head, ptr %90, i32 0, i32 5
  %91 = ptrtoint ptr %b_data.i171 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %b_data.i171, align 4
  %and.i174 = and i32 %sub.i173, %add.i166
  %add.ptr.i175 = getelementptr i8, ptr %92, i32 %and.i174
  %93 = ptrtoint ptr %add.ptr.i175 to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %add.ptr.i175, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %94)
  %cmp4.i177 = icmp sgt i8 %94, -1
  br i1 %cmp4.i177, label %for.body66.free_es_crit_edge, label %if.end7.i180

for.body66.free_es_crit_edge:                     ; preds = %for.body66
  call void @__sanitizer_cov_trace_pc() #14
  br label %free_es

if.end7.i180:                                     ; preds = %for.body66
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %94)
  %cmp10.i179 = icmp eq i8 %94, -128
  br i1 %cmp10.i179, label %if.end7.i180.if.end.i206_crit_edge, label %if.end13.i182

if.end7.i180.if.end.i206_crit_edge:               ; preds = %if.end7.i180
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i206

if.end13.i182:                                    ; preds = %if.end7.i180
  call void @__sanitizer_cov_trace_const_cmp1(i8 -96, i8 %94)
  %cmp16.i181 = icmp ult i8 %94, -96
  br i1 %cmp16.i181, label %if.then18.i183, label %if.end46.i192

if.then18.i183:                                   ; preds = %if.end13.i182
  %95 = zext i8 %94 to i64
  call void @__sanitizer_cov_trace_switch(i64 %95, ptr @__sancov_gen_cov_switch_values.12)
  switch i8 %94, label %if.end45.i190 [
    i8 -127, label %if.then18.i183.if.end.i206_crit_edge
    i8 -126, label %if.then29.i184
    i8 -125, label %if.then35.i185
    i8 -123, label %if.then41.i189
  ]

if.then18.i183.if.end.i206_crit_edge:             ; preds = %if.then18.i183
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i206

if.then29.i184:                                   ; preds = %if.then18.i183
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i206

if.then35.i185:                                   ; preds = %if.then18.i183
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i206

if.then41.i189:                                   ; preds = %if.then18.i183
  call void @__sanitizer_cov_trace_pc() #14
  %attr.i186 = getelementptr inbounds %struct.exfat_dentry, ptr %add.ptr.i175, i32 0, i32 1, i32 0, i32 2
  %96 = ptrtoint ptr %attr.i186 to i32
  call void @__asan_loadN_noabort(i32 %96, i32 2)
  %97 = load i16, ptr %attr.i186, align 1
  %98 = and i16 %97, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %98)
  %tobool.not.i187 = icmp eq i16 %98, 0
  %..i188 = select i1 %tobool.not.i187, i32 287, i32 260
  br label %if.end.i206

if.end45.i190:                                    ; preds = %if.then18.i183
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i206

if.end46.i192:                                    ; preds = %if.end13.i182
  call void @__sanitizer_cov_trace_const_cmp1(i8 -64, i8 %94)
  %cmp49.i191 = icmp ult i8 %94, -64
  br i1 %cmp49.i191, label %if.then51.i193, label %if.end70.i198

if.then51.i193:                                   ; preds = %if.end46.i192
  %switch.tableidx = add i8 %94, 96
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %switch.tableidx)
  %99 = icmp ult i8 %switch.tableidx, 3
  br i1 %99, label %switch.lookup, label %if.then51.i193.if.end.i206_crit_edge

if.then51.i193.if.end.i206_crit_edge:             ; preds = %if.then51.i193
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i206

if.end70.i198:                                    ; preds = %if.end46.i192
  call void @__sanitizer_cov_trace_const_cmp1(i8 -32, i8 %94)
  %cmp73.i197 = icmp ult i8 %94, -32
  br i1 %cmp73.i197, label %if.then75.i199, label %if.end70.i198.if.end.i206_crit_edge

if.end70.i198.if.end.i206_crit_edge:              ; preds = %if.end70.i198
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i206

if.then75.i199:                                   ; preds = %if.end70.i198
  %switch.tableidx274 = add i8 %94, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %switch.tableidx274)
  %100 = icmp ult i8 %switch.tableidx274, 3
  br i1 %100, label %switch.lookup273, label %if.then75.i199.if.end.i206_crit_edge

if.then75.i199.if.end.i206_crit_edge:             ; preds = %if.then75.i199
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i206

switch.lookup:                                    ; preds = %if.then51.i193
  call void @__sanitizer_cov_trace_pc() #14
  %switch.idx.cast = zext i8 %switch.tableidx to i32
  %switch.offset = add nuw nsw i32 %switch.idx.cast, 1025
  br label %if.end.i206

switch.lookup273:                                 ; preds = %if.then75.i199
  call void @__sanitizer_cov_trace_pc() #14
  %switch.idx.cast275 = zext i8 %switch.tableidx274 to i32
  %switch.offset276 = add nuw nsw i32 %switch.idx.cast275, 513
  br label %if.end.i206

if.end.i206:                                      ; preds = %switch.lookup273, %switch.lookup, %if.then75.i199.if.end.i206_crit_edge, %if.end70.i198.if.end.i206_crit_edge, %if.then51.i193.if.end.i206_crit_edge, %if.end45.i190, %if.then41.i189, %if.then35.i185, %if.then29.i184, %if.then18.i183.if.end.i206_crit_edge, %if.end7.i180.if.end.i206_crit_edge
  %retval.0.i203.ph = phi i32 [ 2048, %if.end70.i198.if.end.i206_crit_edge ], [ %..i188, %if.then41.i189 ], [ 257, %if.then18.i183.if.end.i206_crit_edge ], [ 2, %if.end7.i180.if.end.i206_crit_edge ], [ 256, %if.end45.i190 ], [ 259, %if.then35.i185 ], [ 258, %if.then29.i184 ], [ %switch.offset, %switch.lookup ], [ 1024, %if.then51.i193.if.end.i206_crit_edge ], [ %switch.offset276, %switch.lookup273 ], [ 512, %if.then75.i199.if.end.i206_crit_edge ]
  %101 = zext i32 %mode.2267 to i64
  call void @__sanitizer_cov_trace_switch(i64 %101, ptr @__sancov_gen_cov_switch_values.13)
  switch i32 %mode.2267, label %land.end.i228 [
    i32 4, label %sw.bb23.i223
    i32 1, label %sw.bb6.i210
    i32 2, label %sw.bb10.i213
    i32 3, label %sw.bb14.i215
  ]

sw.bb6.i210:                                      ; preds = %if.end.i206
  call void @__sanitizer_cov_trace_const_cmp4(i32 513, i32 %retval.0.i203.ph)
  %cmp7.not.i209 = icmp eq i32 %retval.0.i203.ph, 513
  br i1 %cmp7.not.i209, label %sw.bb6.i210.for.inc72_crit_edge, label %sw.bb6.i210.free_es_crit_edge

sw.bb6.i210.free_es_crit_edge:                    ; preds = %sw.bb6.i210
  call void @__sanitizer_cov_trace_pc() #14
  br label %free_es

sw.bb6.i210.for.inc72_crit_edge:                  ; preds = %sw.bb6.i210
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc72

sw.bb10.i213:                                     ; preds = %if.end.i206
  call void @__sanitizer_cov_trace_const_cmp4(i32 514, i32 %retval.0.i203.ph)
  %cmp11.not.i212 = icmp eq i32 %retval.0.i203.ph, 514
  br i1 %cmp11.not.i212, label %sw.bb10.i213.for.inc72_crit_edge, label %sw.bb10.i213.free_es_crit_edge

sw.bb10.i213.free_es_crit_edge:                   ; preds = %sw.bb10.i213
  call void @__sanitizer_cov_trace_pc() #14
  br label %free_es

sw.bb10.i213.for.inc72_crit_edge:                 ; preds = %sw.bb10.i213
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc72

sw.bb14.i215:                                     ; preds = %if.end.i206
  %102 = zext i32 %retval.0.i203.ph to i64
  call void @__sanitizer_cov_trace_switch(i64 %102, ptr @__sancov_gen_cov_switch_values.14)
  switch i32 %retval.0.i203.ph, label %if.then19.i218 [
    i32 513, label %sw.bb14.i215.free_es_crit_edge
    i32 514, label %sw.bb14.i215.for.inc72_crit_edge
  ]

sw.bb14.i215.for.inc72_crit_edge:                 ; preds = %sw.bb14.i215
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc72

sw.bb14.i215.free_es_crit_edge:                   ; preds = %sw.bb14.i215
  call void @__sanitizer_cov_trace_pc() #14
  br label %free_es

if.then19.i218:                                   ; preds = %sw.bb14.i215
  %and.i216 = and i32 %retval.0.i203.ph, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i216)
  %tobool.not.i217 = icmp eq i32 %and.i216, 0
  br i1 %tobool.not.i217, label %if.then19.i218.free_es_crit_edge, label %if.then19.i218.for.inc72_crit_edge

if.then19.i218.for.inc72_crit_edge:               ; preds = %if.then19.i218
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc72

if.then19.i218.free_es_crit_edge:                 ; preds = %if.then19.i218
  call void @__sanitizer_cov_trace_pc() #14
  br label %free_es

sw.bb23.i223:                                     ; preds = %if.end.i206
  %103 = add nsw i32 %retval.0.i203.ph, -515
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %103)
  %switch86.i222 = icmp ult i32 %103, -2
  %and29.i224 = and i32 %retval.0.i203.ph, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29.i224)
  %cmp30.not.not.i225 = icmp ne i32 %and29.i224, 0
  %or.cond260 = and i1 %switch86.i222, %cmp30.not.not.i225
  br i1 %or.cond260, label %sw.bb23.i223.for.inc72_crit_edge, label %sw.bb23.i223.free_es_crit_edge

sw.bb23.i223.free_es_crit_edge:                   ; preds = %sw.bb23.i223
  call void @__sanitizer_cov_trace_pc() #14
  br label %free_es

sw.bb23.i223.for.inc72_crit_edge:                 ; preds = %sw.bb23.i223
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc72

land.end.i228:                                    ; preds = %if.end.i206
  %.b85.i227 = load i1, ptr @exfat_validate_entry.__already_done, align 1
  br i1 %.b85.i227, label %land.end.i228.free_es_crit_edge, label %if.then38.i229, !prof !33

land.end.i228.free_es_crit_edge:                  ; preds = %land.end.i228
  call void @__sanitizer_cov_trace_pc() #14
  br label %free_es

if.then38.i229:                                   ; preds = %land.end.i228
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @exfat_validate_entry.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 786, i32 noundef 9, ptr noundef null) #12
  br label %free_es

for.inc72:                                        ; preds = %sw.bb23.i223.for.inc72_crit_edge, %if.then19.i218.for.inc72_crit_edge, %sw.bb14.i215.for.inc72_crit_edge, %sw.bb10.i213.for.inc72_crit_edge, %sw.bb6.i210.for.inc72_crit_edge
  %mode.4255 = phi i32 [ 2, %sw.bb6.i210.for.inc72_crit_edge ], [ 3, %sw.bb10.i213.for.inc72_crit_edge ], [ 3, %sw.bb14.i215.for.inc72_crit_edge ], [ 4, %if.then19.i218.for.inc72_crit_edge ], [ 4, %sw.bb23.i223.for.inc72_crit_edge ]
  %inc73 = add nuw nsw i32 %i.1268, 1
  %exitcond270.not = icmp eq i32 %inc73, %cond
  br i1 %exitcond270.not, label %for.inc72.cleanup_crit_edge, label %for.inc72.for.body66_crit_edge

for.inc72.for.body66_crit_edge:                   ; preds = %for.inc72
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body66

for.inc72.cleanup_crit_edge:                      ; preds = %for.inc72
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

free_es:                                          ; preds = %if.then38.i229, %land.end.i228.free_es_crit_edge, %sw.bb23.i223.free_es_crit_edge, %if.then19.i218.free_es_crit_edge, %sw.bb14.i215.free_es_crit_edge, %sw.bb10.i213.free_es_crit_edge, %sw.bb6.i210.free_es_crit_edge, %for.body66.free_es_crit_edge, %if.end53.free_es_crit_edge, %if.else.free_es_crit_edge, %if.end17.free_es_crit_edge, %if.end8.free_es_crit_edge
  %104 = ptrtoint ptr %modified to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %modified, align 4, !range !30
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %105)
  %tobool.not.i232 = icmp eq i8 %105, 0
  br i1 %tobool.not.i232, label %free_es.if.end.i235_crit_edge, label %if.then.i234

free_es.if.end.i235_crit_edge:                    ; preds = %free_es
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i235

if.then.i234:                                     ; preds = %free_es
  call void @__sanitizer_cov_trace_pc() #14
  %bh.i = getelementptr inbounds %struct.exfat_entry_set_cache, ptr %call7.i.i, i32 0, i32 4
  %num_bh.i = getelementptr inbounds %struct.exfat_entry_set_cache, ptr %call7.i.i, i32 0, i32 3
  %106 = ptrtoint ptr %num_bh.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %num_bh.i, align 4
  %call.i233 = call i32 @exfat_update_bhs(ptr noundef %bh.i, i32 noundef %107, i32 noundef 0) #12
  br label %if.end.i235

if.end.i235:                                      ; preds = %if.then.i234, %free_es.if.end.i235_crit_edge
  %err.0.i = phi i32 [ %call.i233, %if.then.i234 ], [ 0, %free_es.if.end.i235_crit_edge ]
  %num_bh1.i = getelementptr inbounds %struct.exfat_entry_set_cache, ptr %call7.i.i, i32 0, i32 3
  %108 = ptrtoint ptr %num_bh1.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %num_bh1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %109)
  %cmp20.i = icmp sgt i32 %109, 0
  br i1 %cmp20.i, label %for.body.lr.ph.i, label %if.end.i235.exfat_free_dentry_set.exit_crit_edge

if.end.i235.exfat_free_dentry_set.exit_crit_edge: ; preds = %if.end.i235
  call void @__sanitizer_cov_trace_pc() #14
  br label %exfat_free_dentry_set.exit

for.body.lr.ph.i:                                 ; preds = %if.end.i235
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0.i)
  %tobool2.not.i = icmp eq i32 %err.0.i, 0
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.021.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx6.i = getelementptr %struct.exfat_entry_set_cache, ptr %call7.i.i, i32 0, i32 4, i32 %i.021.i
  %110 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %arrayidx6.i, align 4
  %tobool.not.i18.i = icmp eq ptr %111, null
  br i1 %tobool2.not.i, label %if.else.i, label %if.then3.i

if.then3.i:                                       ; preds = %for.body.i
  br i1 %tobool.not.i18.i, label %if.then3.i.for.inc.i_crit_edge, label %if.then.i.i

if.then3.i.for.inc.i_crit_edge:                   ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.then.i.i:                                      ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @__bforget(ptr noundef nonnull %111) #12
  br label %for.inc.i

if.else.i:                                        ; preds = %for.body.i
  br i1 %tobool.not.i18.i, label %if.else.i.for.inc.i_crit_edge, label %if.then.i19.i

if.else.i.for.inc.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.then.i19.i:                                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @__brelse(ptr noundef nonnull %111) #12
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i19.i, %if.else.i.for.inc.i_crit_edge, %if.then.i.i, %if.then3.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.021.i, 1
  %112 = ptrtoint ptr %num_bh1.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %num_bh1.i, align 4
  %cmp.i236 = icmp slt i32 %inc.i, %113
  br i1 %cmp.i236, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.exfat_free_dentry_set.exit_crit_edge

for.inc.i.exfat_free_dentry_set.exit_crit_edge:   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %exfat_free_dentry_set.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

exfat_free_dentry_set.exit:                       ; preds = %for.inc.i.exfat_free_dentry_set.exit_crit_edge, %if.end.i235.exfat_free_dentry_set.exit_crit_edge
  call void @kfree(ptr noundef nonnull %call7.i.i) #12
  br label %cleanup

cleanup:                                          ; preds = %exfat_free_dentry_set.exit, %for.inc72.cleanup_crit_edge, %for.cond63.preheader.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %exfat_walk_fat_chain.exit.thread, %if.then
  %retval.0 = phi ptr [ null, %if.then ], [ null, %exfat_free_dentry_set.exit ], [ null, %if.end4.cleanup_crit_edge ], [ null, %exfat_walk_fat_chain.exit.thread ], [ %call7.i.i, %for.cond63.preheader.cleanup_crit_edge ], [ %call7.i.i, %for.inc72.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %clu) #12
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @exfat_ent_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @exfat_find_dir_entry(ptr noundef %sb, ptr nocapture noundef %ei, ptr noundef %p_dir, ptr noundef %p_uniname, i32 noundef %num_entries, i32 noundef %type, ptr nocapture noundef writeonly %hint_opt) local_unnamed_addr #1 align 64 {
entry:
  %clu = alloca %struct.exfat_chain, align 4
  %candi_empty = alloca %struct.exfat_hint_femp, align 4
  %bh = alloca ptr, align 4
  %entry_uniname = alloca [16 x i16], align 2
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %clu) #12
  %0 = call ptr @memset(ptr %clu, i32 255, i32 12)
  %hint_stat1 = getelementptr inbounds %struct.exfat_inode_info, ptr %ei, i32 0, i32 8
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %candi_empty) #12
  %1 = getelementptr inbounds i8, ptr %candi_empty, i32 4
  %2 = call ptr @memset(ptr %1, i32 255, i32 16)
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %3 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %s_fs_info.i, align 16
  %dentries_per_clu2 = getelementptr inbounds %struct.exfat_sb_info, ptr %4, i32 0, i32 11
  %5 = ptrtoint ptr %dentries_per_clu2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %dentries_per_clu2, align 8
  call void @exfat_chain_dup(ptr noundef nonnull %clu, ptr noundef %p_dir) #12
  %7 = getelementptr inbounds %struct.exfat_inode_info, ptr %ei, i32 0, i32 8, i32 1
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %10 = ptrtoint ptr %hint_stat1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %hint_stat1, align 4
  %12 = ptrtoint ptr %clu to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %clu, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %sub = add i32 %6, -1
  %name_hash96 = getelementptr inbounds %struct.exfat_uni_name, ptr %p_uniname, i32 0, i32 1
  %name_len102 = getelementptr inbounds %struct.exfat_uni_name, ptr %p_uniname, i32 0, i32 2
  %13 = getelementptr inbounds %struct.exfat_hint, ptr %hint_opt, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095, i32 %type)
  %cmp79 = icmp eq i32 %type, 4095
  %cur = getelementptr inbounds %struct.exfat_hint_femp, ptr %candi_empty, i32 0, i32 2
  %size = getelementptr inbounds %struct.exfat_chain, ptr %clu, i32 0, i32 1
  %flags = getelementptr inbounds %struct.exfat_chain, ptr %clu, i32 0, i32 2
  %count = getelementptr inbounds %struct.exfat_hint_femp, ptr %candi_empty, i32 0, i32 1
  %hint_femp = getelementptr inbounds %struct.exfat_inode_info, ptr %ei, i32 0, i32 9
  %14 = ptrtoint ptr %clu to i32
  call void @__asan_load4_noabort(i32 %14)
  %.pr531 = load i32, ptr %clu, align 4
  br label %rewind4

rewind4:                                          ; preds = %if.then190, %if.end
  %15 = phi i32 [ %86, %if.then190 ], [ %.pr531, %if.end ]
  %tobool187.not = phi i1 [ true, %if.then190 ], [ false, %if.end ]
  %dentry.1 = phi i32 [ 0, %if.then190 ], [ %9, %if.end ]
  %num_ext.0 = phi i32 [ %num_ext.5, %if.then190 ], [ 0, %if.end ]
  %name_len.0 = phi i32 [ %name_len.7, %if.then190 ], [ 0, %if.end ]
  %uniname.0 = phi ptr [ %uniname.6, %if.then190 ], [ null, %if.end ]
  %16 = ptrtoint ptr %candi_empty to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -1, ptr %candi_empty, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %15)
  %cmp.not497 = icmp eq i32 %15, -1
  br i1 %cmp.not497, label %rewind4.not_found_crit_edge, label %rewind4.while.body_crit_edge

rewind4.while.body_crit_edge:                     ; preds = %rewind4
  br label %while.body

rewind4.not_found_crit_edge:                      ; preds = %rewind4
  call void @__sanitizer_cov_trace_pc() #14
  br label %not_found

while.body:                                       ; preds = %if.end186.while.body_crit_edge, %rewind4.while.body_crit_edge
  %uniname.1504 = phi ptr [ %uniname.2.lcssa, %if.end186.while.body_crit_edge ], [ %uniname.0, %rewind4.while.body_crit_edge ]
  %num_empty.1503 = phi i32 [ %num_empty.2.lcssa, %if.end186.while.body_crit_edge ], [ 0, %rewind4.while.body_crit_edge ]
  %name_len.1502 = phi i32 [ %name_len.2.lcssa, %if.end186.while.body_crit_edge ], [ %name_len.0, %rewind4.while.body_crit_edge ]
  %step.0501 = phi i32 [ %step.1.lcssa, %if.end186.while.body_crit_edge ], [ 0, %rewind4.while.body_crit_edge ]
  %order.0500 = phi i32 [ %order.1.lcssa, %if.end186.while.body_crit_edge ], [ 0, %rewind4.while.body_crit_edge ]
  %num_ext.1499 = phi i32 [ %num_ext.2.lcssa, %if.end186.while.body_crit_edge ], [ %num_ext.0, %rewind4.while.body_crit_edge ]
  %dentry.2498 = phi i32 [ %dentry.3.lcssa, %if.end186.while.body_crit_edge ], [ %dentry.1, %rewind4.while.body_crit_edge ]
  %and = and i32 %dentry.2498, %sub
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %6)
  %cmp6474 = icmp slt i32 %and, %6
  br i1 %cmp6474, label %while.body.for.body_crit_edge, label %while.body.for.end_crit_edge

while.body.for.end_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

while.body.for.body_crit_edge:                    ; preds = %while.body
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %while.body.for.body_crit_edge
  %i.0490 = phi i32 [ %inc163, %for.inc.for.body_crit_edge ], [ %and, %while.body.for.body_crit_edge ]
  %uniname.2488 = phi ptr [ %uniname.5382, %for.inc.for.body_crit_edge ], [ %uniname.1504, %while.body.for.body_crit_edge ]
  %num_empty.2487 = phi i32 [ %num_empty.3381, %for.inc.for.body_crit_edge ], [ %num_empty.1503, %while.body.for.body_crit_edge ]
  %name_len.2486 = phi i32 [ %name_len.6380, %for.inc.for.body_crit_edge ], [ %name_len.1502, %while.body.for.body_crit_edge ]
  %step.1485 = phi i32 [ %step.7379, %for.inc.for.body_crit_edge ], [ %step.0501, %while.body.for.body_crit_edge ]
  %order.1484 = phi i32 [ %order.5378, %for.inc.for.body_crit_edge ], [ %order.0500, %while.body.for.body_crit_edge ]
  %num_ext.2481 = phi i32 [ %num_ext.4377, %for.inc.for.body_crit_edge ], [ %num_ext.1499, %while.body.for.body_crit_edge ]
  %dentry.3475 = phi i32 [ %inc164, %for.inc.for.body_crit_edge ], [ %dentry.2498, %while.body.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bh) #12
  %17 = ptrtoint ptr %bh to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr inttoptr (i32 -1 to ptr), ptr %bh, align 4, !annotation !28
  call void @__sanitizer_cov_trace_cmp4(i32 %dentry.3475, i32 %9)
  %cmp8 = icmp eq i32 %dentry.3475, %9
  %or.cond = select i1 %tobool187.not, i1 %cmp8, i1 false
  br i1 %or.cond, label %for.body.cleanup161.thread386_crit_edge, label %if.end10

for.body.cleanup161.thread386_crit_edge:          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup161.thread386

if.end10:                                         ; preds = %for.body
  %call11 = call ptr @exfat_get_dentry(ptr noundef %sb, ptr noundef nonnull %clu, i32 noundef %i.0490, ptr noundef nonnull %bh)
  %tobool12.not = icmp eq ptr %call11, null
  br i1 %tobool12.not, label %cleanup161.thread394, label %if.end14

cleanup161.thread394:                             ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bh) #12
  br label %cleanup240

if.end14:                                         ; preds = %if.end10
  %18 = ptrtoint ptr %call11 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %call11, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %cmp.i = icmp eq i8 %19, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %19)
  %cmp4.i = icmp sgt i8 %19, -1
  br i1 %cmp4.i, label %if.then18, label %if.end7.i

if.end7.i:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %19)
  %cmp10.i = icmp eq i8 %19, -128
  br i1 %cmp10.i, label %if.end7.i.if.end111_crit_edge, label %if.end13.i

if.end7.i.if.end111_crit_edge:                    ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end111

if.end13.i:                                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 -96, i8 %19)
  %cmp16.i = icmp ult i8 %19, -96
  br i1 %cmp16.i, label %if.then18.i, label %if.end46.i

if.then18.i:                                      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 -123, i8 %19)
  %cond = icmp eq i8 %19, -123
  br i1 %cond, label %if.then41.i, label %if.then18.i.if.end111_crit_edge

if.then18.i.if.end111_crit_edge:                  ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end111

if.then41.i:                                      ; preds = %if.then18.i
  %attr.i = getelementptr inbounds %struct.exfat_dentry, ptr %call11, i32 0, i32 1, i32 0, i32 2
  %20 = ptrtoint ptr %attr.i to i32
  call void @__asan_loadN_noabort(i32 %20, i32 2)
  %21 = load i16, ptr %attr.i, align 1
  %22 = and i16 %21, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %22)
  %tobool.not.i = icmp eq i16 %22, 0
  %spec.select = select i1 %tobool.not.i, i32 287, i32 260
  %23 = ptrtoint ptr %candi_empty to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 -1, ptr %candi_empty, align 4
  %24 = ptrtoint ptr %clu to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %clu, align 4
  %26 = ptrtoint ptr %hint_opt to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %hint_opt, align 4
  %27 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %i.0490, ptr %13, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select, i32 %type)
  %cmp81 = icmp eq i32 %spec.select, %type
  %or.cond333 = select i1 %cmp79, i1 true, i1 %cmp81
  br i1 %or.cond333, label %if.then82, label %if.then41.i.if.end85_crit_edge

if.then41.i.if.end85_crit_edge:                   ; preds = %if.then41.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end85

if.end46.i:                                       ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 -64, i8 %19)
  %cmp49.i = icmp ult i8 %19, -64
  br i1 %cmp49.i, label %if.end46.i.if.end111_crit_edge, label %if.end70.i

if.end46.i.if.end111_crit_edge:                   ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end111

if.end70.i:                                       ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 -32, i8 %19)
  %cmp73.i = icmp ult i8 %19, -32
  br i1 %cmp73.i, label %if.then75.i, label %if.end70.i.if.end111_crit_edge

if.end70.i.if.end111_crit_edge:                   ; preds = %if.end70.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end111

if.then75.i:                                      ; preds = %if.end70.i
  %28 = zext i8 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.15)
  switch i8 %19, label %if.end93.i [
    i8 -64, label %if.then89
    i8 -63, label %if.then75.i.if.end111_crit_edge
    i8 -62, label %if.then92.i
  ]

if.then75.i.if.end111_crit_edge:                  ; preds = %if.then75.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end111

if.then92.i:                                      ; preds = %if.then75.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end111

if.end93.i:                                       ; preds = %if.then75.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end111

if.then18:                                        ; preds = %if.end14
  %inc = add i32 %num_empty.2487, 1
  %29 = ptrtoint ptr %candi_empty to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %candi_empty, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %30)
  %cmp20 = icmp eq i32 %30, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_empty.2487)
  %cmp22 = icmp eq i32 %num_empty.2487, 0
  %or.cond331 = select i1 %cmp20, i1 %cmp22, i1 false
  br i1 %or.cond331, label %if.then23, label %if.then18.if.end25_crit_edge

if.then18.if.end25_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end25

if.then23:                                        ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #14
  %31 = ptrtoint ptr %clu to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %clu, align 4
  %33 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %size, align 4
  %35 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %flags, align 4
  call void @exfat_chain_set(ptr noundef %cur, i32 noundef %32, i32 noundef %34, i8 noundef zeroext %36) #12
  br label %if.end25

if.end25:                                         ; preds = %if.then23, %if.then18.if.end25_crit_edge
  %37 = ptrtoint ptr %candi_empty to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %candi_empty, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %38)
  %cmp27 = icmp ne i32 %38, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %num_entries)
  %cmp29.not = icmp slt i32 %inc, %num_entries
  %or.cond332 = select i1 %cmp27, i1 true, i1 %cmp29.not
  br i1 %or.cond332, label %if.end25.if.end67_crit_edge, label %if.then30

if.end25.if.end67_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end67

if.then30:                                        ; preds = %if.end25
  %sub32 = sub i32 %dentry.3475, %num_empty.2487
  %39 = ptrtoint ptr %candi_empty to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %sub32, ptr %candi_empty, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub32)
  %cmp35 = icmp slt i32 %sub32, 0
  br i1 %cmp35, label %do.end, label %if.then30.if.end50_crit_edge, !prof !34

if.then30.if.end50_crit_edge:                     ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end50

do.end:                                           ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 976, i32 noundef 9, ptr noundef null) #12
  br label %if.end50

if.end50:                                         ; preds = %do.end, %if.then30.if.end50_crit_edge
  %40 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %inc, ptr %count, align 4
  %41 = ptrtoint ptr %hint_femp to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %hint_femp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %42)
  %cmp58 = icmp eq i32 %42, -1
  br i1 %cmp58, label %if.end50.if.then64_crit_edge, label %lor.lhs.false59

if.end50.if.then64_crit_edge:                     ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then64

lor.lhs.false59:                                  ; preds = %if.end50
  %43 = ptrtoint ptr %candi_empty to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %candi_empty, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %44, i32 %42)
  %cmp63.not = icmp sgt i32 %44, %42
  br i1 %cmp63.not, label %lor.lhs.false59.if.end67_crit_edge, label %lor.lhs.false59.if.then64_crit_edge

lor.lhs.false59.if.then64_crit_edge:              ; preds = %lor.lhs.false59
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then64

lor.lhs.false59.if.end67_crit_edge:               ; preds = %lor.lhs.false59
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end67

if.then64:                                        ; preds = %lor.lhs.false59.if.then64_crit_edge, %if.end50.if.then64_crit_edge
  %45 = call ptr @memcpy(ptr %hint_femp, ptr %candi_empty, i32 20)
  br label %if.end67

if.end67:                                         ; preds = %if.then64, %lor.lhs.false59.if.end67_crit_edge, %if.end25.if.end67_crit_edge
  %46 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %bh, align 4
  %tobool.not.i339 = icmp eq ptr %47, null
  br i1 %tobool.not.i339, label %if.end67.brelse.exit_crit_edge, label %if.then.i

if.end67.brelse.exit_crit_edge:                   ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #14
  br label %brelse.exit

if.then.i:                                        ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #14
  call void @__brelse(ptr noundef nonnull %47) #12
  br label %brelse.exit

brelse.exit:                                      ; preds = %if.then.i, %if.end67.brelse.exit_crit_edge
  br i1 %cmp.i, label %brelse.exit.cleanup161.thread386_crit_edge, label %brelse.exit.cleanup161.thread_crit_edge

brelse.exit.cleanup161.thread_crit_edge:          ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup161.thread

brelse.exit.cleanup161.thread386_crit_edge:       ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup161.thread386

if.then82:                                        ; preds = %if.then41.i
  call void @__sanitizer_cov_trace_pc() #14
  %dentry83 = getelementptr inbounds %struct.exfat_dentry, ptr %call11, i32 0, i32 1
  %48 = ptrtoint ptr %dentry83 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %dentry83, align 1
  %conv = zext i8 %49 to i32
  br label %if.end85

if.end85:                                         ; preds = %if.then82, %if.then41.i.if.end85_crit_edge
  %num_ext.3 = phi i32 [ %conv, %if.then82 ], [ %num_ext.2481, %if.then41.i.if.end85_crit_edge ]
  %step.2 = phi i32 [ 1, %if.then82 ], [ 0, %if.then41.i.if.end85_crit_edge ]
  %50 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %bh, align 4
  %tobool.not.i341 = icmp eq ptr %51, null
  br i1 %tobool.not.i341, label %if.end85.cleanup161.thread_crit_edge, label %if.end85.cleanup161.thread.sink.split_crit_edge

if.end85.cleanup161.thread.sink.split_crit_edge:  ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup161.thread.sink.split

if.end85.cleanup161.thread_crit_edge:             ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup161.thread

if.then89:                                        ; preds = %if.then75.i
  %52 = ptrtoint ptr %candi_empty to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 -1, ptr %candi_empty, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %step.1485)
  %cmp90.not = icmp eq i32 %step.1485, 1
  br i1 %cmp90.not, label %if.end93, label %if.then92

if.then92:                                        ; preds = %if.then89
  %53 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %bh, align 4
  %tobool.not.i345 = icmp eq ptr %54, null
  br i1 %tobool.not.i345, label %if.then92.cleanup161.thread_crit_edge, label %if.then92.cleanup161.thread.sink.split_crit_edge

if.then92.cleanup161.thread.sink.split_crit_edge: ; preds = %if.then92
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup161.thread.sink.split

if.then92.cleanup161.thread_crit_edge:            ; preds = %if.then92
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup161.thread

if.end93:                                         ; preds = %if.then89
  %name_hash95 = getelementptr inbounds %struct.exfat_dentry, ptr %call11, i32 0, i32 1, i32 0, i32 2
  %55 = ptrtoint ptr %name_hash95 to i32
  call void @__asan_loadN_noabort(i32 %55, i32 2)
  %56 = load i16, ptr %name_hash95, align 1
  %57 = call i16 @llvm.bswap.i16(i16 %56)
  %58 = ptrtoint ptr %name_hash96 to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %name_hash96, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %59, i16 %57)
  %cmp99 = icmp eq i16 %59, %57
  br i1 %cmp99, label %land.lhs.true101, label %if.end93.if.end110_crit_edge

if.end93.if.end110_crit_edge:                     ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end110

land.lhs.true101:                                 ; preds = %if.end93
  %dentry94 = getelementptr inbounds %struct.exfat_dentry, ptr %call11, i32 0, i32 1
  %60 = ptrtoint ptr %name_len102 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %name_len102, align 2
  %name_len105 = getelementptr inbounds %struct.anon.79, ptr %dentry94, i32 0, i32 2
  %62 = ptrtoint ptr %name_len105 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %name_len105, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %61, i8 %63)
  %cmp107 = icmp eq i8 %61, %63
  br i1 %cmp107, label %if.then109, label %land.lhs.true101.if.end110_crit_edge

land.lhs.true101.if.end110_crit_edge:             ; preds = %land.lhs.true101
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end110

if.then109:                                       ; preds = %land.lhs.true101
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end110

if.end110:                                        ; preds = %if.then109, %land.lhs.true101.if.end110_crit_edge, %if.end93.if.end110_crit_edge
  %order.2 = phi i32 [ 1, %if.then109 ], [ %order.1484, %land.lhs.true101.if.end110_crit_edge ], [ %order.1484, %if.end93.if.end110_crit_edge ]
  %step.3 = phi i32 [ 2, %if.then109 ], [ 0, %land.lhs.true101.if.end110_crit_edge ], [ 0, %if.end93.if.end110_crit_edge ]
  %name_len.3 = phi i32 [ 0, %if.then109 ], [ %name_len.2486, %land.lhs.true101.if.end110_crit_edge ], [ %name_len.2486, %if.end93.if.end110_crit_edge ]
  %64 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %bh, align 4
  %tobool.not.i349 = icmp eq ptr %65, null
  br i1 %tobool.not.i349, label %if.end110.cleanup161.thread_crit_edge, label %if.end110.cleanup161.thread.sink.split_crit_edge

if.end110.cleanup161.thread.sink.split_crit_edge: ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup161.thread.sink.split

if.end110.cleanup161.thread_crit_edge:            ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup161.thread

if.end111:                                        ; preds = %if.end93.i, %if.then92.i, %if.then75.i.if.end111_crit_edge, %if.end70.i.if.end111_crit_edge, %if.end46.i.if.end111_crit_edge, %if.then18.i.if.end111_crit_edge, %if.end7.i.if.end111_crit_edge
  %cmp112 = phi i1 [ true, %if.then75.i.if.end111_crit_edge ], [ false, %if.end70.i.if.end111_crit_edge ], [ false, %if.end7.i.if.end111_crit_edge ], [ false, %if.end93.i ], [ false, %if.then92.i ], [ false, %if.then18.i.if.end111_crit_edge ], [ false, %if.end46.i.if.end111_crit_edge ]
  %tobool149.not = phi i1 [ true, %if.then75.i.if.end111_crit_edge ], [ true, %if.end70.i.if.end111_crit_edge ], [ false, %if.end7.i.if.end111_crit_edge ], [ true, %if.end93.i ], [ true, %if.then92.i ], [ false, %if.then18.i.if.end111_crit_edge ], [ false, %if.end46.i.if.end111_crit_edge ]
  %66 = ptrtoint ptr %candi_empty to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 -1, ptr %candi_empty, align 4
  %67 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %bh, align 4
  %tobool.not.i353 = icmp eq ptr %68, null
  br i1 %tobool.not.i353, label %if.end111.brelse.exit356_crit_edge, label %if.then.i354

if.end111.brelse.exit356_crit_edge:               ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #14
  br label %brelse.exit356

if.then.i354:                                     ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #14
  call void @__brelse(ptr noundef nonnull %68) #12
  br label %brelse.exit356

brelse.exit356:                                   ; preds = %if.then.i354, %if.end111.brelse.exit356_crit_edge
  br i1 %cmp112, label %if.then114, label %if.end147

if.then114:                                       ; preds = %brelse.exit356
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %entry_uniname) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %step.1485)
  %cmp115.not = icmp eq i32 %step.1485, 2
  %69 = call ptr @memset(ptr %entry_uniname, i32 255, i32 32)
  br i1 %cmp115.not, label %if.end118, label %if.then114.cleanup161.thread412_crit_edge

if.then114.cleanup161.thread412_crit_edge:        ; preds = %if.then114
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup161.thread412

if.end118:                                        ; preds = %if.then114
  %inc119 = add i32 %order.1484, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %inc119)
  %cmp120 = icmp eq i32 %inc119, 2
  %add.ptr = getelementptr i16, ptr %uniname.2488, i32 15
  %uniname.3 = select i1 %cmp120, ptr %p_uniname, ptr %add.ptr
  %call125 = call fastcc i32 @exfat_extract_uni_name(ptr noundef nonnull %call11, ptr noundef nonnull %entry_uniname)
  %add = add i32 %call125, %name_len.2486
  %add.ptr126 = getelementptr i16, ptr %uniname.3, i32 %call125
  %70 = ptrtoint ptr %add.ptr126 to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %add.ptr126, align 2
  store i16 0, ptr %add.ptr126, align 2
  %call129 = call i32 @exfat_uniname_ncmp(ptr noundef %sb, ptr noundef %uniname.3, ptr noundef nonnull %entry_uniname, i32 noundef %call125) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call129)
  %tobool130.not = icmp eq i32 %call129, 0
  br i1 %tobool130.not, label %if.else132, label %if.end118.if.end143_crit_edge

if.end118.if.end143_crit_edge:                    ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end143

if.else132:                                       ; preds = %if.end118
  %72 = ptrtoint ptr %name_len102 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %name_len102, align 2
  %conv134 = zext i8 %73 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %conv134)
  %cmp135 = icmp eq i32 %add, %conv134
  br i1 %cmp135, label %if.then137, label %if.else132.if.end143_crit_edge

if.else132.if.end143_crit_edge:                   ; preds = %if.else132
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end143

if.then137:                                       ; preds = %if.else132
  call void @__sanitizer_cov_trace_cmp4(i32 %inc119, i32 %num_ext.2481)
  %cmp138 = icmp eq i32 %inc119, %num_ext.2481
  br i1 %cmp138, label %cleanup161, label %if.then137.if.end143_crit_edge

if.then137.if.end143_crit_edge:                   ; preds = %if.then137
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end143

if.end143:                                        ; preds = %if.then137.if.end143_crit_edge, %if.else132.if.end143_crit_edge, %if.end118.if.end143_crit_edge
  %step.5 = phi i32 [ 2, %if.else132.if.end143_crit_edge ], [ 0, %if.end118.if.end143_crit_edge ], [ 3, %if.then137.if.end143_crit_edge ]
  %74 = ptrtoint ptr %add.ptr126 to i32
  call void @__asan_store2_noabort(i32 %74)
  store i16 %71, ptr %add.ptr126, align 2
  br label %cleanup161.thread412

if.end147:                                        ; preds = %brelse.exit356
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %step.1485)
  %cmp151 = icmp eq i32 %step.1485, 3
  %or.cond334 = select i1 %tobool149.not, i1 %cmp151, i1 false
  br i1 %or.cond334, label %if.then153, label %if.end147.cleanup161.thread_crit_edge

if.end147.cleanup161.thread_crit_edge:            ; preds = %if.end147
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup161.thread

if.then153:                                       ; preds = %if.end147
  %inc154 = add i32 %order.1484, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc154, i32 %num_ext.2481)
  %cmp155 = icmp eq i32 %inc154, %num_ext.2481
  br i1 %cmp155, label %cleanup161.thread402, label %if.then153.cleanup161.thread_crit_edge

if.then153.cleanup161.thread_crit_edge:           ; preds = %if.then153
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup161.thread

cleanup161.thread402:                             ; preds = %if.then153
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bh) #12
  br label %found

cleanup161.thread.sink.split:                     ; preds = %if.end110.cleanup161.thread.sink.split_crit_edge, %if.then92.cleanup161.thread.sink.split_crit_edge, %if.end85.cleanup161.thread.sink.split_crit_edge
  %.sink = phi ptr [ %51, %if.end85.cleanup161.thread.sink.split_crit_edge ], [ %54, %if.then92.cleanup161.thread.sink.split_crit_edge ], [ %65, %if.end110.cleanup161.thread.sink.split_crit_edge ]
  %num_ext.4.ph.ph = phi i32 [ %num_ext.3, %if.end85.cleanup161.thread.sink.split_crit_edge ], [ %num_ext.2481, %if.then92.cleanup161.thread.sink.split_crit_edge ], [ %num_ext.2481, %if.end110.cleanup161.thread.sink.split_crit_edge ]
  %order.5.ph.ph = phi i32 [ %order.1484, %if.end85.cleanup161.thread.sink.split_crit_edge ], [ %order.1484, %if.then92.cleanup161.thread.sink.split_crit_edge ], [ %order.2, %if.end110.cleanup161.thread.sink.split_crit_edge ]
  %step.7.ph.ph = phi i32 [ %step.2, %if.end85.cleanup161.thread.sink.split_crit_edge ], [ 0, %if.then92.cleanup161.thread.sink.split_crit_edge ], [ %step.3, %if.end110.cleanup161.thread.sink.split_crit_edge ]
  %name_len.6.ph.ph = phi i32 [ %name_len.2486, %if.end85.cleanup161.thread.sink.split_crit_edge ], [ %name_len.2486, %if.then92.cleanup161.thread.sink.split_crit_edge ], [ %name_len.3, %if.end110.cleanup161.thread.sink.split_crit_edge ]
  call void @__brelse(ptr noundef nonnull %.sink) #12
  br label %cleanup161.thread

cleanup161.thread:                                ; preds = %cleanup161.thread.sink.split, %if.then153.cleanup161.thread_crit_edge, %if.end147.cleanup161.thread_crit_edge, %if.end110.cleanup161.thread_crit_edge, %if.then92.cleanup161.thread_crit_edge, %if.end85.cleanup161.thread_crit_edge, %brelse.exit.cleanup161.thread_crit_edge
  %num_ext.4.ph = phi i32 [ %num_ext.2481, %if.end110.cleanup161.thread_crit_edge ], [ %num_ext.2481, %if.then92.cleanup161.thread_crit_edge ], [ %num_ext.3, %if.end85.cleanup161.thread_crit_edge ], [ %num_ext.2481, %if.end147.cleanup161.thread_crit_edge ], [ %num_ext.2481, %if.then153.cleanup161.thread_crit_edge ], [ %num_ext.2481, %brelse.exit.cleanup161.thread_crit_edge ], [ %num_ext.4.ph.ph, %cleanup161.thread.sink.split ]
  %order.5.ph = phi i32 [ %order.2, %if.end110.cleanup161.thread_crit_edge ], [ %order.1484, %if.then92.cleanup161.thread_crit_edge ], [ %order.1484, %if.end85.cleanup161.thread_crit_edge ], [ %order.1484, %if.end147.cleanup161.thread_crit_edge ], [ %inc154, %if.then153.cleanup161.thread_crit_edge ], [ %order.1484, %brelse.exit.cleanup161.thread_crit_edge ], [ %order.5.ph.ph, %cleanup161.thread.sink.split ]
  %step.7.ph = phi i32 [ %step.3, %if.end110.cleanup161.thread_crit_edge ], [ 0, %if.then92.cleanup161.thread_crit_edge ], [ %step.2, %if.end85.cleanup161.thread_crit_edge ], [ 0, %if.end147.cleanup161.thread_crit_edge ], [ 3, %if.then153.cleanup161.thread_crit_edge ], [ 0, %brelse.exit.cleanup161.thread_crit_edge ], [ %step.7.ph.ph, %cleanup161.thread.sink.split ]
  %name_len.6.ph = phi i32 [ %name_len.3, %if.end110.cleanup161.thread_crit_edge ], [ %name_len.2486, %if.then92.cleanup161.thread_crit_edge ], [ %name_len.2486, %if.end85.cleanup161.thread_crit_edge ], [ %name_len.2486, %if.end147.cleanup161.thread_crit_edge ], [ %name_len.2486, %if.then153.cleanup161.thread_crit_edge ], [ %name_len.2486, %brelse.exit.cleanup161.thread_crit_edge ], [ %name_len.6.ph.ph, %cleanup161.thread.sink.split ]
  %num_empty.3.ph = phi i32 [ 0, %if.end110.cleanup161.thread_crit_edge ], [ 0, %if.then92.cleanup161.thread_crit_edge ], [ 0, %if.end85.cleanup161.thread_crit_edge ], [ 0, %if.end147.cleanup161.thread_crit_edge ], [ 0, %if.then153.cleanup161.thread_crit_edge ], [ %inc, %brelse.exit.cleanup161.thread_crit_edge ], [ 0, %cleanup161.thread.sink.split ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bh) #12
  br label %for.inc

cleanup161.thread386:                             ; preds = %brelse.exit.cleanup161.thread386_crit_edge, %for.body.cleanup161.thread386_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bh) #12
  br label %not_found

cleanup161.thread412:                             ; preds = %if.end143, %if.then114.cleanup161.thread412_crit_edge
  %order.4.ph = phi i32 [ %order.1484, %if.then114.cleanup161.thread412_crit_edge ], [ %inc119, %if.end143 ]
  %step.6.ph = phi i32 [ 0, %if.then114.cleanup161.thread412_crit_edge ], [ %step.5, %if.end143 ]
  %name_len.5.ph = phi i32 [ %name_len.2486, %if.then114.cleanup161.thread412_crit_edge ], [ %add, %if.end143 ]
  %uniname.4.ph = phi ptr [ %uniname.2488, %if.then114.cleanup161.thread412_crit_edge ], [ %uniname.3, %if.end143 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %entry_uniname) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bh) #12
  br label %for.inc

cleanup161:                                       ; preds = %if.then137
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %entry_uniname) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bh) #12
  br label %found

for.inc:                                          ; preds = %cleanup161.thread412, %cleanup161.thread
  %uniname.5382 = phi ptr [ %uniname.2488, %cleanup161.thread ], [ %uniname.4.ph, %cleanup161.thread412 ]
  %num_empty.3381 = phi i32 [ %num_empty.3.ph, %cleanup161.thread ], [ 0, %cleanup161.thread412 ]
  %name_len.6380 = phi i32 [ %name_len.6.ph, %cleanup161.thread ], [ %name_len.5.ph, %cleanup161.thread412 ]
  %step.7379 = phi i32 [ %step.7.ph, %cleanup161.thread ], [ %step.6.ph, %cleanup161.thread412 ]
  %order.5378 = phi i32 [ %order.5.ph, %cleanup161.thread ], [ %order.4.ph, %cleanup161.thread412 ]
  %num_ext.4377 = phi i32 [ %num_ext.4.ph, %cleanup161.thread ], [ %num_ext.2481, %cleanup161.thread412 ]
  %inc163 = add i32 %i.0490, 1
  %inc164 = add i32 %dentry.3475, 1
  %exitcond.not = icmp eq i32 %inc163, %6
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %while.body.for.end_crit_edge
  %dentry.3.lcssa = phi i32 [ %dentry.2498, %while.body.for.end_crit_edge ], [ %inc164, %for.inc.for.end_crit_edge ]
  %num_ext.2.lcssa = phi i32 [ %num_ext.1499, %while.body.for.end_crit_edge ], [ %num_ext.4377, %for.inc.for.end_crit_edge ]
  %order.1.lcssa = phi i32 [ %order.0500, %while.body.for.end_crit_edge ], [ %order.5378, %for.inc.for.end_crit_edge ]
  %step.1.lcssa = phi i32 [ %step.0501, %while.body.for.end_crit_edge ], [ %step.7379, %for.inc.for.end_crit_edge ]
  %name_len.2.lcssa = phi i32 [ %name_len.1502, %while.body.for.end_crit_edge ], [ %name_len.6380, %for.inc.for.end_crit_edge ]
  %num_empty.2.lcssa = phi i32 [ %num_empty.1503, %while.body.for.end_crit_edge ], [ %num_empty.3381, %for.inc.for.end_crit_edge ]
  %uniname.2.lcssa = phi ptr [ %uniname.1504, %while.body.for.end_crit_edge ], [ %uniname.5382, %for.inc.for.end_crit_edge ]
  %75 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %flags, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %76)
  %cmp167 = icmp eq i8 %76, 3
  br i1 %cmp167, label %if.then169, label %if.else179

if.then169:                                       ; preds = %for.end
  %77 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %size, align 4
  %dec = add i32 %78, -1
  store i32 %dec, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp171.not = icmp eq i32 %dec, 0
  br i1 %cmp171.not, label %if.then169.not_found_crit_edge, label %if.then173

if.then169.not_found_crit_edge:                   ; preds = %if.then169
  call void @__sanitizer_cov_trace_pc() #14
  br label %not_found

if.then173:                                       ; preds = %if.then169
  call void @__sanitizer_cov_trace_pc() #14
  %79 = ptrtoint ptr %clu to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %clu, align 4
  %inc175 = add i32 %80, 1
  store i32 %inc175, ptr %clu, align 4
  br label %if.end186

if.else179:                                       ; preds = %for.end
  %81 = ptrtoint ptr %clu to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %clu, align 4
  %call182 = call i32 @exfat_ent_get(ptr noundef %sb, i32 noundef %82, ptr noundef nonnull %clu) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call182)
  %tobool183.not = icmp eq i32 %call182, 0
  br i1 %tobool183.not, label %if.end186thread-pre-split, label %if.else179.cleanup240_crit_edge

if.else179.cleanup240_crit_edge:                  ; preds = %if.else179
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup240

if.end186thread-pre-split:                        ; preds = %if.else179
  call void @__sanitizer_cov_trace_pc() #14
  %83 = ptrtoint ptr %clu to i32
  call void @__asan_load4_noabort(i32 %83)
  %.pr532 = load i32, ptr %clu, align 4
  br label %if.end186

if.end186:                                        ; preds = %if.end186thread-pre-split, %if.then173
  %84 = phi i32 [ %.pr532, %if.end186thread-pre-split ], [ %inc175, %if.then173 ]
  %cmp.not = icmp eq i32 %84, -1
  br i1 %cmp.not, label %if.end186.not_found_crit_edge, label %if.end186.while.body_crit_edge

if.end186.while.body_crit_edge:                   ; preds = %if.end186
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

if.end186.not_found_crit_edge:                    ; preds = %if.end186
  call void @__sanitizer_cov_trace_pc() #14
  br label %not_found

not_found:                                        ; preds = %if.end186.not_found_crit_edge, %if.then169.not_found_crit_edge, %cleanup161.thread386, %rewind4.not_found_crit_edge
  %num_ext.5 = phi i32 [ %num_ext.2481, %cleanup161.thread386 ], [ %num_ext.0, %rewind4.not_found_crit_edge ], [ %num_ext.2.lcssa, %if.then169.not_found_crit_edge ], [ %num_ext.2.lcssa, %if.end186.not_found_crit_edge ]
  %name_len.7 = phi i32 [ %name_len.2486, %cleanup161.thread386 ], [ %name_len.0, %rewind4.not_found_crit_edge ], [ %name_len.2.lcssa, %if.then169.not_found_crit_edge ], [ %name_len.2.lcssa, %if.end186.not_found_crit_edge ]
  %uniname.6 = phi ptr [ %uniname.2488, %cleanup161.thread386 ], [ %uniname.0, %rewind4.not_found_crit_edge ], [ %uniname.2.lcssa, %if.then169.not_found_crit_edge ], [ %uniname.2.lcssa, %if.end186.not_found_crit_edge ]
  %or.cond337 = select i1 %tobool187.not, i1 true, i1 %tobool.not
  %85 = ptrtoint ptr %p_dir to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %p_dir, align 4
  br i1 %or.cond337, label %if.end194, label %if.then190

if.then190:                                       ; preds = %not_found
  call void @__sanitizer_cov_trace_pc() #14
  %87 = ptrtoint ptr %clu to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %86, ptr %clu, align 4
  br label %rewind4

if.end194:                                        ; preds = %not_found
  call void @__sanitizer_cov_trace_pc() #14
  %88 = ptrtoint ptr %hint_stat1 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %86, ptr %hint_stat1, align 4
  %89 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 0, ptr %7, align 4
  br label %cleanup240

found:                                            ; preds = %cleanup161, %cleanup161.thread402
  %add197 = add i32 %dentry.3475, 1
  %and199 = and i32 %add197, %sub
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and199)
  %tobool200.not = icmp eq i32 %and199, 0
  br i1 %tobool200.not, label %if.then201, label %found.if.end235_crit_edge

found.if.end235_crit_edge:                        ; preds = %found
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end235

if.then201:                                       ; preds = %found
  %90 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %flags, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %91)
  %cmp204 = icmp eq i8 %91, 3
  br i1 %cmp204, label %if.then206, label %if.else217

if.then206:                                       ; preds = %if.then201
  %92 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %size, align 4
  %dec208 = add i32 %93, -1
  store i32 %dec208, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec208)
  %cmp209.not = icmp eq i32 %dec208, 0
  br i1 %cmp209.not, label %lor.lhs.false223.thread, label %if.then211

if.then211:                                       ; preds = %if.then206
  call void @__sanitizer_cov_trace_pc() #14
  %94 = ptrtoint ptr %clu to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %clu, align 4
  %inc213 = add i32 %95, 1
  store i32 %inc213, ptr %clu, align 4
  br label %lor.lhs.false223

lor.lhs.false223.thread:                          ; preds = %if.then206
  call void @__sanitizer_cov_trace_pc() #14
  %96 = ptrtoint ptr %clu to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 -1, ptr %clu, align 4
  br label %cleanup232

if.else217:                                       ; preds = %if.then201
  %97 = ptrtoint ptr %clu to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %clu, align 4
  %call220 = call i32 @exfat_ent_get(ptr noundef %sb, i32 noundef %98, ptr noundef nonnull %clu) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call220)
  %phi.cmp = icmp eq i32 %call220, 0
  br i1 %phi.cmp, label %lor.lhs.false223thread-pre-split, label %if.else217.cleanup232_crit_edge

if.else217.cleanup232_crit_edge:                  ; preds = %if.else217
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup232

lor.lhs.false223thread-pre-split:                 ; preds = %if.else217
  call void @__sanitizer_cov_trace_pc() #14
  %99 = ptrtoint ptr %clu to i32
  call void @__asan_load4_noabort(i32 %99)
  %.pr = load i32, ptr %clu, align 4
  br label %lor.lhs.false223

lor.lhs.false223:                                 ; preds = %lor.lhs.false223thread-pre-split, %if.then211
  %100 = phi i32 [ %.pr, %lor.lhs.false223thread-pre-split ], [ %inc213, %if.then211 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %100)
  %cmp225 = icmp eq i32 %100, -1
  br i1 %cmp225, label %lor.lhs.false223.cleanup232_crit_edge, label %lor.lhs.false223.if.end235_crit_edge

lor.lhs.false223.if.end235_crit_edge:             ; preds = %lor.lhs.false223
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end235

lor.lhs.false223.cleanup232_crit_edge:            ; preds = %lor.lhs.false223
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup232

cleanup232:                                       ; preds = %lor.lhs.false223.cleanup232_crit_edge, %if.else217.cleanup232_crit_edge, %lor.lhs.false223.thread
  %101 = ptrtoint ptr %p_dir to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %p_dir, align 4
  %103 = ptrtoint ptr %hint_stat1 to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %102, ptr %hint_stat1, align 4
  %104 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 0, ptr %7, align 4
  %sub230 = sub i32 %dentry.3475, %num_ext.2481
  br label %cleanup240

if.end235:                                        ; preds = %lor.lhs.false223.if.end235_crit_edge, %found.if.end235_crit_edge
  %105 = ptrtoint ptr %clu to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %clu, align 4
  %107 = ptrtoint ptr %hint_stat1 to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %106, ptr %hint_stat1, align 4
  %108 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %add197, ptr %7, align 4
  %sub239 = sub i32 %dentry.3475, %num_ext.2481
  br label %cleanup240

cleanup240:                                       ; preds = %if.end235, %cleanup232, %if.end194, %if.else179.cleanup240_crit_edge, %cleanup161.thread394
  %retval.6 = phi i32 [ %sub239, %if.end235 ], [ %sub230, %cleanup232 ], [ -2, %if.end194 ], [ -5, %cleanup161.thread394 ], [ -5, %if.else179.cleanup240_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %candi_empty) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %clu) #12
  ret i32 %retval.6
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @exfat_chain_dup(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @exfat_extract_uni_name(ptr nocapture noundef readonly %ep, ptr nocapture noundef writeonly %uniname) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %unicode_0_14 = getelementptr inbounds %struct.exfat_dentry, ptr %ep, i32 0, i32 1, i32 0, i32 1
  %0 = ptrtoint ptr %unicode_0_14 to i32
  call void @__asan_loadN_noabort(i32 %0, i32 2)
  %1 = load i16, ptr %unicode_0_14, align 1
  %2 = tail call i16 @llvm.bswap.i16(i16 %1)
  %3 = ptrtoint ptr %uniname to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 %2, ptr %uniname, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %cmp1 = icmp eq i16 %1, 0
  br i1 %cmp1, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %incdec.ptr = getelementptr i16, ptr %uniname, i32 1
  %arrayidx.1 = getelementptr %struct.exfat_dentry, ptr %ep, i32 0, i32 1, i32 0, i32 2
  %4 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_loadN_noabort(i32 %4, i32 2)
  %5 = load i16, ptr %arrayidx.1, align 1
  %6 = tail call i16 @llvm.bswap.i16(i16 %5)
  %7 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %6, ptr %incdec.ptr, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %cmp1.1 = icmp eq i16 %5, 0
  br i1 %cmp1.1, label %if.end.cleanup_crit_edge, label %if.end.1

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.1:                                         ; preds = %if.end
  %incdec.ptr.1 = getelementptr i16, ptr %uniname, i32 2
  %arrayidx.2 = getelementptr %struct.exfat_dentry, ptr %ep, i32 0, i32 1, i32 0, i32 3
  %8 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_loadN_noabort(i32 %8, i32 2)
  %9 = load i16, ptr %arrayidx.2, align 1
  %10 = tail call i16 @llvm.bswap.i16(i16 %9)
  %11 = ptrtoint ptr %incdec.ptr.1 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %10, ptr %incdec.ptr.1, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %cmp1.2 = icmp eq i16 %9, 0
  br i1 %cmp1.2, label %if.end.1.cleanup_crit_edge, label %if.end.2

if.end.1.cleanup_crit_edge:                       ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.2:                                         ; preds = %if.end.1
  %incdec.ptr.2 = getelementptr i16, ptr %uniname, i32 3
  %arrayidx.3 = getelementptr %struct.exfat_dentry, ptr %ep, i32 0, i32 1, i32 0, i32 4
  %12 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_loadN_noabort(i32 %12, i32 2)
  %13 = load i16, ptr %arrayidx.3, align 1
  %14 = tail call i16 @llvm.bswap.i16(i16 %13)
  %15 = ptrtoint ptr %incdec.ptr.2 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %14, ptr %incdec.ptr.2, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %cmp1.3 = icmp eq i16 %13, 0
  br i1 %cmp1.3, label %if.end.2.cleanup_crit_edge, label %if.end.3

if.end.2.cleanup_crit_edge:                       ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.3:                                         ; preds = %if.end.2
  %incdec.ptr.3 = getelementptr i16, ptr %uniname, i32 4
  %arrayidx.4 = getelementptr %struct.exfat_dentry, ptr %ep, i32 0, i32 1, i32 0, i32 5
  %16 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_loadN_noabort(i32 %16, i32 2)
  %17 = load i16, ptr %arrayidx.4, align 1
  %18 = tail call i16 @llvm.bswap.i16(i16 %17)
  %19 = ptrtoint ptr %incdec.ptr.3 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %18, ptr %incdec.ptr.3, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %cmp1.4 = icmp eq i16 %17, 0
  br i1 %cmp1.4, label %if.end.3.cleanup_crit_edge, label %if.end.4

if.end.3.cleanup_crit_edge:                       ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.4:                                         ; preds = %if.end.3
  %incdec.ptr.4 = getelementptr i16, ptr %uniname, i32 5
  %arrayidx.5 = getelementptr %struct.exfat_dentry, ptr %ep, i32 0, i32 1, i32 0, i32 6
  %20 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_loadN_noabort(i32 %20, i32 2)
  %21 = load i16, ptr %arrayidx.5, align 1
  %22 = tail call i16 @llvm.bswap.i16(i16 %21)
  %23 = ptrtoint ptr %incdec.ptr.4 to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %22, ptr %incdec.ptr.4, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %21)
  %cmp1.5 = icmp eq i16 %21, 0
  br i1 %cmp1.5, label %if.end.4.cleanup_crit_edge, label %if.end.5

if.end.4.cleanup_crit_edge:                       ; preds = %if.end.4
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.5:                                         ; preds = %if.end.4
  %incdec.ptr.5 = getelementptr i16, ptr %uniname, i32 6
  %arrayidx.6 = getelementptr %struct.exfat_dentry, ptr %ep, i32 0, i32 1, i32 0, i32 7
  %24 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_loadN_noabort(i32 %24, i32 2)
  %25 = load i16, ptr %arrayidx.6, align 1
  %26 = tail call i16 @llvm.bswap.i16(i16 %25)
  %27 = ptrtoint ptr %incdec.ptr.5 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %26, ptr %incdec.ptr.5, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %25)
  %cmp1.6 = icmp eq i16 %25, 0
  br i1 %cmp1.6, label %if.end.5.cleanup_crit_edge, label %if.end.6

if.end.5.cleanup_crit_edge:                       ; preds = %if.end.5
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.6:                                         ; preds = %if.end.5
  %incdec.ptr.6 = getelementptr i16, ptr %uniname, i32 7
  %arrayidx.7 = getelementptr %struct.exfat_dentry, ptr %ep, i32 0, i32 1, i32 0, i32 8
  %28 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_loadN_noabort(i32 %28, i32 2)
  %29 = load i16, ptr %arrayidx.7, align 1
  %30 = tail call i16 @llvm.bswap.i16(i16 %29)
  %31 = ptrtoint ptr %incdec.ptr.6 to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %30, ptr %incdec.ptr.6, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %29)
  %cmp1.7 = icmp eq i16 %29, 0
  br i1 %cmp1.7, label %if.end.6.cleanup_crit_edge, label %if.end.7

if.end.6.cleanup_crit_edge:                       ; preds = %if.end.6
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.7:                                         ; preds = %if.end.6
  %incdec.ptr.7 = getelementptr i16, ptr %uniname, i32 8
  %arrayidx.8 = getelementptr %struct.exfat_dentry, ptr %ep, i32 0, i32 1, i32 0, i32 9
  %32 = ptrtoint ptr %arrayidx.8 to i32
  call void @__asan_loadN_noabort(i32 %32, i32 2)
  %33 = load i16, ptr %arrayidx.8, align 1
  %34 = tail call i16 @llvm.bswap.i16(i16 %33)
  %35 = ptrtoint ptr %incdec.ptr.7 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %34, ptr %incdec.ptr.7, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %33)
  %cmp1.8 = icmp eq i16 %33, 0
  br i1 %cmp1.8, label %if.end.7.cleanup_crit_edge, label %if.end.8

if.end.7.cleanup_crit_edge:                       ; preds = %if.end.7
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.8:                                         ; preds = %if.end.7
  %incdec.ptr.8 = getelementptr i16, ptr %uniname, i32 9
  %arrayidx.9 = getelementptr %struct.exfat_dentry, ptr %ep, i32 0, i32 1, i32 0, i32 10
  %36 = ptrtoint ptr %arrayidx.9 to i32
  call void @__asan_loadN_noabort(i32 %36, i32 2)
  %37 = load i16, ptr %arrayidx.9, align 1
  %38 = tail call i16 @llvm.bswap.i16(i16 %37)
  %39 = ptrtoint ptr %incdec.ptr.8 to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %38, ptr %incdec.ptr.8, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %37)
  %cmp1.9 = icmp eq i16 %37, 0
  br i1 %cmp1.9, label %if.end.8.cleanup_crit_edge, label %if.end.9

if.end.8.cleanup_crit_edge:                       ; preds = %if.end.8
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.9:                                         ; preds = %if.end.8
  %incdec.ptr.9 = getelementptr i16, ptr %uniname, i32 10
  %arrayidx.10 = getelementptr %struct.exfat_dentry, ptr %ep, i32 0, i32 1, i32 0, i32 12
  %40 = ptrtoint ptr %arrayidx.10 to i32
  call void @__asan_loadN_noabort(i32 %40, i32 2)
  %41 = load i16, ptr %arrayidx.10, align 1
  %42 = tail call i16 @llvm.bswap.i16(i16 %41)
  %43 = ptrtoint ptr %incdec.ptr.9 to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %42, ptr %incdec.ptr.9, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %41)
  %cmp1.10 = icmp eq i16 %41, 0
  br i1 %cmp1.10, label %if.end.9.cleanup_crit_edge, label %if.end.10

if.end.9.cleanup_crit_edge:                       ; preds = %if.end.9
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.10:                                        ; preds = %if.end.9
  %incdec.ptr.10 = getelementptr i16, ptr %uniname, i32 11
  %arrayidx.11 = getelementptr %struct.exfat_dentry, ptr %ep, i32 0, i32 1, i32 0, i32 14
  %44 = ptrtoint ptr %arrayidx.11 to i32
  call void @__asan_loadN_noabort(i32 %44, i32 2)
  %45 = load i16, ptr %arrayidx.11, align 1
  %46 = tail call i16 @llvm.bswap.i16(i16 %45)
  %47 = ptrtoint ptr %incdec.ptr.10 to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %46, ptr %incdec.ptr.10, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %45)
  %cmp1.11 = icmp eq i16 %45, 0
  br i1 %cmp1.11, label %if.end.10.cleanup_crit_edge, label %if.end.11

if.end.10.cleanup_crit_edge:                      ; preds = %if.end.10
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.11:                                        ; preds = %if.end.10
  %incdec.ptr.11 = getelementptr i16, ptr %uniname, i32 12
  %arrayidx.12 = getelementptr %struct.exfat_dentry, ptr %ep, i32 0, i32 1, i32 0, i32 15, i32 1
  %48 = ptrtoint ptr %arrayidx.12 to i32
  call void @__asan_loadN_noabort(i32 %48, i32 2)
  %49 = load i16, ptr %arrayidx.12, align 1
  %50 = tail call i16 @llvm.bswap.i16(i16 %49)
  %51 = ptrtoint ptr %incdec.ptr.11 to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 %50, ptr %incdec.ptr.11, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %49)
  %cmp1.12 = icmp eq i16 %49, 0
  br i1 %cmp1.12, label %if.end.11.cleanup_crit_edge, label %if.end.12

if.end.11.cleanup_crit_edge:                      ; preds = %if.end.11
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.12:                                        ; preds = %if.end.11
  %incdec.ptr.12 = getelementptr i16, ptr %uniname, i32 13
  %arrayidx.13 = getelementptr %struct.exfat_dentry, ptr %ep, i32 0, i32 1, i32 0, i32 15, i32 3
  %52 = ptrtoint ptr %arrayidx.13 to i32
  call void @__asan_loadN_noabort(i32 %52, i32 2)
  %53 = load i16, ptr %arrayidx.13, align 1
  %54 = tail call i16 @llvm.bswap.i16(i16 %53)
  %55 = ptrtoint ptr %incdec.ptr.12 to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 %54, ptr %incdec.ptr.12, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %53)
  %cmp1.13 = icmp eq i16 %53, 0
  br i1 %cmp1.13, label %if.end.12.cleanup_crit_edge, label %if.end.13

if.end.12.cleanup_crit_edge:                      ; preds = %if.end.12
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.13:                                        ; preds = %if.end.12
  %incdec.ptr.13 = getelementptr i16, ptr %uniname, i32 14
  %arrayidx.14 = getelementptr %struct.exfat_dentry, ptr %ep, i32 0, i32 1, i32 0, i32 15, i32 5
  %56 = ptrtoint ptr %arrayidx.14 to i32
  call void @__asan_loadN_noabort(i32 %56, i32 2)
  %57 = load i16, ptr %arrayidx.14, align 1
  %58 = tail call i16 @llvm.bswap.i16(i16 %57)
  %59 = ptrtoint ptr %incdec.ptr.13 to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 %58, ptr %incdec.ptr.13, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %57)
  %cmp1.14 = icmp eq i16 %57, 0
  br i1 %cmp1.14, label %if.end.13.cleanup_crit_edge, label %if.end.14

if.end.13.cleanup_crit_edge:                      ; preds = %if.end.13
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.14:                                        ; preds = %if.end.13
  call void @__sanitizer_cov_trace_pc() #14
  %incdec.ptr.14 = getelementptr i16, ptr %uniname, i32 15
  %60 = ptrtoint ptr %incdec.ptr.14 to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 0, ptr %incdec.ptr.14, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end.14, %if.end.13.cleanup_crit_edge, %if.end.12.cleanup_crit_edge, %if.end.11.cleanup_crit_edge, %if.end.10.cleanup_crit_edge, %if.end.9.cleanup_crit_edge, %if.end.8.cleanup_crit_edge, %if.end.7.cleanup_crit_edge, %if.end.6.cleanup_crit_edge, %if.end.5.cleanup_crit_edge, %if.end.4.cleanup_crit_edge, %if.end.3.cleanup_crit_edge, %if.end.2.cleanup_crit_edge, %if.end.1.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %len.013 = phi i32 [ 15, %if.end.14 ], [ 0, %entry.cleanup_crit_edge ], [ 1, %if.end.cleanup_crit_edge ], [ 2, %if.end.1.cleanup_crit_edge ], [ 3, %if.end.2.cleanup_crit_edge ], [ 4, %if.end.3.cleanup_crit_edge ], [ 5, %if.end.4.cleanup_crit_edge ], [ 6, %if.end.5.cleanup_crit_edge ], [ 7, %if.end.6.cleanup_crit_edge ], [ 8, %if.end.7.cleanup_crit_edge ], [ 9, %if.end.8.cleanup_crit_edge ], [ 10, %if.end.9.cleanup_crit_edge ], [ 11, %if.end.10.cleanup_crit_edge ], [ 12, %if.end.11.cleanup_crit_edge ], [ 13, %if.end.12.cleanup_crit_edge ], [ 14, %if.end.13.cleanup_crit_edge ]
  ret i32 %len.013
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @exfat_uniname_ncmp(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @exfat_count_ext_entries(ptr noundef %sb, ptr nocapture noundef readonly %p_dir, i32 noundef %entry1, ptr nocapture noundef readonly %ep) local_unnamed_addr #1 align 64 {
entry:
  %bh = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bh) #12
  %0 = ptrtoint ptr %bh to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %bh, align 4, !annotation !28
  %dentry = getelementptr inbounds %struct.exfat_dentry, ptr %ep, i32 0, i32 1
  %1 = ptrtoint ptr %dentry to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %dentry, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %cmp27.not = icmp eq i8 %2, 0
  br i1 %cmp27.not, label %entry.cleanup_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body:                                         ; preds = %if.then8.for.body_crit_edge, %entry.for.body_crit_edge
  %entry.addr.030.in = phi i32 [ %entry.addr.030, %if.then8.for.body_crit_edge ], [ %entry1, %entry.for.body_crit_edge ]
  %count.029 = phi i32 [ %inc9, %if.then8.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %entry.addr.030 = add i32 %entry.addr.030.in, 1
  %call = call ptr @exfat_get_dentry(ptr noundef %sb, ptr noundef %p_dir, i32 noundef %entry.addr.030, ptr noundef nonnull %bh)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %for.body.cleanup_crit_edge, label %if.end

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %for.body
  %3 = ptrtoint ptr %call to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %call, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %cmp.i = icmp eq i8 %4, 0
  br i1 %cmp.i, label %if.end.exfat_get_entry_type.exit_crit_edge, label %if.end.i

if.end.exfat_get_entry_type.exit_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %exfat_get_entry_type.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %4)
  %cmp4.i = icmp sgt i8 %4, -1
  br i1 %cmp4.i, label %if.end.i.exfat_get_entry_type.exit_crit_edge, label %if.end7.i

if.end.i.exfat_get_entry_type.exit_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %exfat_get_entry_type.exit

if.end7.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %4)
  %cmp10.i = icmp eq i8 %4, -128
  br i1 %cmp10.i, label %if.end7.i.exfat_get_entry_type.exit_crit_edge, label %if.end13.i

if.end7.i.exfat_get_entry_type.exit_crit_edge:    ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %exfat_get_entry_type.exit

if.end13.i:                                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 -96, i8 %4)
  %cmp16.i = icmp ult i8 %4, -96
  br i1 %cmp16.i, label %if.then18.i, label %if.end46.i

if.then18.i:                                      ; preds = %if.end13.i
  %5 = zext i8 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.16)
  switch i8 %4, label %if.end45.i [
    i8 -127, label %if.then18.i.exfat_get_entry_type.exit_crit_edge
    i8 -126, label %if.then29.i
    i8 -125, label %if.then35.i
    i8 -123, label %if.then41.i
  ]

if.then18.i.exfat_get_entry_type.exit_crit_edge:  ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %exfat_get_entry_type.exit

if.then29.i:                                      ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %exfat_get_entry_type.exit

if.then35.i:                                      ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %exfat_get_entry_type.exit

if.then41.i:                                      ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #14
  %attr.i = getelementptr inbounds %struct.exfat_dentry, ptr %call, i32 0, i32 1, i32 0, i32 2
  %6 = ptrtoint ptr %attr.i to i32
  call void @__asan_loadN_noabort(i32 %6, i32 2)
  %7 = load i16, ptr %attr.i, align 1
  %8 = and i16 %7, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %tobool.not.i = icmp eq i16 %8, 0
  %..i = select i1 %tobool.not.i, i32 287, i32 260
  br label %exfat_get_entry_type.exit

if.end45.i:                                       ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %exfat_get_entry_type.exit

if.end46.i:                                       ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 -64, i8 %4)
  %cmp49.i = icmp ult i8 %4, -64
  br i1 %cmp49.i, label %if.then51.i, label %if.end70.i

if.then51.i:                                      ; preds = %if.end46.i
  %switch.tableidx = add i8 %4, 96
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %switch.tableidx)
  %9 = icmp ult i8 %switch.tableidx, 3
  br i1 %9, label %switch.lookup, label %if.then51.i.exfat_get_entry_type.exit_crit_edge

if.then51.i.exfat_get_entry_type.exit_crit_edge:  ; preds = %if.then51.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %exfat_get_entry_type.exit

if.end70.i:                                       ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 -32, i8 %4)
  %cmp73.i = icmp ult i8 %4, -32
  br i1 %cmp73.i, label %if.then75.i, label %if.end70.i.exfat_get_entry_type.exit_crit_edge

if.end70.i.exfat_get_entry_type.exit_crit_edge:   ; preds = %if.end70.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %exfat_get_entry_type.exit

if.then75.i:                                      ; preds = %if.end70.i
  %switch.tableidx34 = add i8 %4, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %switch.tableidx34)
  %10 = icmp ult i8 %switch.tableidx34, 3
  br i1 %10, label %switch.lookup33, label %if.then75.i.exfat_get_entry_type.exit_crit_edge

if.then75.i.exfat_get_entry_type.exit_crit_edge:  ; preds = %if.then75.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %exfat_get_entry_type.exit

switch.lookup:                                    ; preds = %if.then51.i
  call void @__sanitizer_cov_trace_pc() #14
  %switch.idx.cast = zext i8 %switch.tableidx to i32
  %switch.offset = add nuw nsw i32 %switch.idx.cast, 1025
  br label %exfat_get_entry_type.exit

switch.lookup33:                                  ; preds = %if.then75.i
  call void @__sanitizer_cov_trace_pc() #14
  %switch.idx.cast35 = zext i8 %switch.tableidx34 to i32
  %switch.offset36 = add nuw nsw i32 %switch.idx.cast35, 513
  br label %exfat_get_entry_type.exit

exfat_get_entry_type.exit:                        ; preds = %switch.lookup33, %switch.lookup, %if.then75.i.exfat_get_entry_type.exit_crit_edge, %if.end70.i.exfat_get_entry_type.exit_crit_edge, %if.then51.i.exfat_get_entry_type.exit_crit_edge, %if.end45.i, %if.then41.i, %if.then35.i, %if.then29.i, %if.then18.i.exfat_get_entry_type.exit_crit_edge, %if.end7.i.exfat_get_entry_type.exit_crit_edge, %if.end.i.exfat_get_entry_type.exit_crit_edge, %if.end.exfat_get_entry_type.exit_crit_edge
  %retval.0.i = phi i32 [ 258, %if.then29.i ], [ 259, %if.then35.i ], [ 256, %if.end45.i ], [ 0, %if.end.exfat_get_entry_type.exit_crit_edge ], [ 1, %if.end.i.exfat_get_entry_type.exit_crit_edge ], [ 2, %if.end7.i.exfat_get_entry_type.exit_crit_edge ], [ 257, %if.then18.i.exfat_get_entry_type.exit_crit_edge ], [ %..i, %if.then41.i ], [ 2048, %if.end70.i.exfat_get_entry_type.exit_crit_edge ], [ %switch.offset, %switch.lookup ], [ 1024, %if.then51.i.exfat_get_entry_type.exit_crit_edge ], [ %switch.offset36, %switch.lookup33 ], [ 512, %if.then75.i.exfat_get_entry_type.exit_crit_edge ]
  %11 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %bh, align 4
  %tobool.not.i23 = icmp eq ptr %12, null
  br i1 %tobool.not.i23, label %exfat_get_entry_type.exit.brelse.exit_crit_edge, label %if.then.i

exfat_get_entry_type.exit.brelse.exit_crit_edge:  ; preds = %exfat_get_entry_type.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %brelse.exit

if.then.i:                                        ; preds = %exfat_get_entry_type.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__brelse(ptr noundef nonnull %12) #12
  br label %brelse.exit

brelse.exit:                                      ; preds = %if.then.i, %exfat_get_entry_type.exit.brelse.exit_crit_edge
  %call3.off = add nsw i32 %retval.0.i, -513
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call3.off)
  %switch = icmp ult i32 %call3.off, 2
  br i1 %switch, label %if.then8, label %brelse.exit.cleanup_crit_edge

brelse.exit.cleanup_crit_edge:                    ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then8:                                         ; preds = %brelse.exit
  %inc9 = add nuw nsw i32 %count.029, 1
  %13 = ptrtoint ptr %dentry to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %dentry, align 1
  %conv = zext i8 %14 to i32
  %cmp = icmp ult i32 %inc9, %conv
  br i1 %cmp, label %if.then8.for.body_crit_edge, label %if.then8.cleanup_crit_edge

if.then8.cleanup_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then8.for.body_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

cleanup:                                          ; preds = %if.then8.cleanup_crit_edge, %brelse.exit.cleanup_crit_edge, %for.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %count.029, %brelse.exit.cleanup_crit_edge ], [ %inc9, %if.then8.cleanup_crit_edge ], [ -5, %for.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bh) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @exfat_count_dir_entries(ptr noundef %sb, ptr noundef %p_dir) local_unnamed_addr #1 align 64 {
entry:
  %clu = alloca %struct.exfat_chain, align 4
  %bh = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %clu) #12
  %0 = call ptr @memset(ptr %clu, i32 255, i32 12)
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %1 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %s_fs_info.i, align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bh) #12
  %3 = ptrtoint ptr %bh to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr inttoptr (i32 -1 to ptr), ptr %bh, align 4, !annotation !28
  %dentries_per_clu1 = getelementptr inbounds %struct.exfat_sb_info, ptr %2, i32 0, i32 11
  %4 = ptrtoint ptr %dentries_per_clu1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dentries_per_clu1, align 8
  call void @exfat_chain_dup(ptr noundef nonnull %clu, ptr noundef %p_dir) #12
  %6 = ptrtoint ptr %clu to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %clu, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %7)
  %cmp.not53 = icmp eq i32 %7, -1
  br i1 %cmp.not53, label %entry.cleanup_crit_edge, label %for.cond.preheader.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.cond.preheader.lr.ph:                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp250 = icmp sgt i32 %5, 0
  %flags = getelementptr inbounds %struct.exfat_chain, ptr %clu, i32 0, i32 2
  %size = getelementptr inbounds %struct.exfat_chain, ptr %clu, i32 0, i32 1
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end29.for.cond.preheader_crit_edge, %for.cond.preheader.lr.ph
  %count.054 = phi i32 [ 0, %for.cond.preheader.lr.ph ], [ %count.1.lcssa, %if.end29.for.cond.preheader_crit_edge ]
  br i1 %cmp250, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %count.152 = phi i32 [ %count.2, %for.inc.for.body_crit_edge ], [ %count.054, %for.cond.preheader.for.body_crit_edge ]
  %i.051 = phi i32 [ %inc11, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %call3 = call ptr @exfat_get_dentry(ptr noundef %sb, ptr noundef nonnull %clu, i32 noundef %i.051, ptr noundef nonnull %bh)
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %for.body.cleanup_crit_edge, label %if.end

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %for.body
  %8 = ptrtoint ptr %call3 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %call3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp.i = icmp eq i8 %9, 0
  br i1 %cmp.i, label %if.end.exfat_get_entry_type.exit_crit_edge, label %if.end.i

if.end.exfat_get_entry_type.exit_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %exfat_get_entry_type.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %9)
  %cmp4.i = icmp sgt i8 %9, -1
  br i1 %cmp4.i, label %if.end.i.exfat_get_entry_type.exit_crit_edge, label %if.end7.i

if.end.i.exfat_get_entry_type.exit_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %exfat_get_entry_type.exit

if.end7.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %9)
  %cmp10.i = icmp eq i8 %9, -128
  br i1 %cmp10.i, label %if.end7.i.exfat_get_entry_type.exit_crit_edge, label %if.end13.i

if.end7.i.exfat_get_entry_type.exit_crit_edge:    ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %exfat_get_entry_type.exit

if.end13.i:                                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 -96, i8 %9)
  %cmp16.i = icmp ult i8 %9, -96
  br i1 %cmp16.i, label %if.then18.i, label %if.end46.i

if.then18.i:                                      ; preds = %if.end13.i
  %10 = zext i8 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.17)
  switch i8 %9, label %if.end45.i [
    i8 -127, label %if.then18.i.exfat_get_entry_type.exit_crit_edge
    i8 -126, label %if.then29.i
    i8 -125, label %if.then35.i
    i8 -123, label %if.then41.i
  ]

if.then18.i.exfat_get_entry_type.exit_crit_edge:  ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %exfat_get_entry_type.exit

if.then29.i:                                      ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %exfat_get_entry_type.exit

if.then35.i:                                      ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %exfat_get_entry_type.exit

if.then41.i:                                      ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #14
  %attr.i = getelementptr inbounds %struct.exfat_dentry, ptr %call3, i32 0, i32 1, i32 0, i32 2
  %11 = ptrtoint ptr %attr.i to i32
  call void @__asan_loadN_noabort(i32 %11, i32 2)
  %12 = load i16, ptr %attr.i, align 1
  %13 = and i16 %12, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %tobool.not.i = icmp eq i16 %13, 0
  %..i = select i1 %tobool.not.i, i32 287, i32 260
  br label %exfat_get_entry_type.exit

if.end45.i:                                       ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %exfat_get_entry_type.exit

if.end46.i:                                       ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 -64, i8 %9)
  %cmp49.i = icmp ult i8 %9, -64
  br i1 %cmp49.i, label %if.then51.i, label %if.end70.i

if.then51.i:                                      ; preds = %if.end46.i
  %switch.tableidx = add i8 %9, 96
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %switch.tableidx)
  %14 = icmp ult i8 %switch.tableidx, 3
  br i1 %14, label %switch.lookup, label %if.then51.i.exfat_get_entry_type.exit_crit_edge

if.then51.i.exfat_get_entry_type.exit_crit_edge:  ; preds = %if.then51.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %exfat_get_entry_type.exit

if.end70.i:                                       ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 -32, i8 %9)
  %cmp73.i = icmp ult i8 %9, -32
  br i1 %cmp73.i, label %if.then75.i, label %if.end70.i.exfat_get_entry_type.exit_crit_edge

if.end70.i.exfat_get_entry_type.exit_crit_edge:   ; preds = %if.end70.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %exfat_get_entry_type.exit

if.then75.i:                                      ; preds = %if.end70.i
  %switch.tableidx66 = add i8 %9, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %switch.tableidx66)
  %15 = icmp ult i8 %switch.tableidx66, 3
  br i1 %15, label %switch.lookup65, label %if.then75.i.exfat_get_entry_type.exit_crit_edge

if.then75.i.exfat_get_entry_type.exit_crit_edge:  ; preds = %if.then75.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %exfat_get_entry_type.exit

switch.lookup:                                    ; preds = %if.then51.i
  call void @__sanitizer_cov_trace_pc() #14
  %switch.idx.cast = zext i8 %switch.tableidx to i32
  %switch.offset = add nuw nsw i32 %switch.idx.cast, 1025
  br label %exfat_get_entry_type.exit

switch.lookup65:                                  ; preds = %if.then75.i
  call void @__sanitizer_cov_trace_pc() #14
  %switch.idx.cast67 = zext i8 %switch.tableidx66 to i32
  %switch.offset68 = add nuw nsw i32 %switch.idx.cast67, 513
  br label %exfat_get_entry_type.exit

exfat_get_entry_type.exit:                        ; preds = %switch.lookup65, %switch.lookup, %if.then75.i.exfat_get_entry_type.exit_crit_edge, %if.end70.i.exfat_get_entry_type.exit_crit_edge, %if.then51.i.exfat_get_entry_type.exit_crit_edge, %if.end45.i, %if.then41.i, %if.then35.i, %if.then29.i, %if.then18.i.exfat_get_entry_type.exit_crit_edge, %if.end7.i.exfat_get_entry_type.exit_crit_edge, %if.end.i.exfat_get_entry_type.exit_crit_edge, %if.end.exfat_get_entry_type.exit_crit_edge
  %retval.0.i = phi i32 [ 258, %if.then29.i ], [ 259, %if.then35.i ], [ 256, %if.end45.i ], [ 0, %if.end.exfat_get_entry_type.exit_crit_edge ], [ 1, %if.end.i.exfat_get_entry_type.exit_crit_edge ], [ 2, %if.end7.i.exfat_get_entry_type.exit_crit_edge ], [ 257, %if.then18.i.exfat_get_entry_type.exit_crit_edge ], [ %..i, %if.then41.i ], [ 2048, %if.end70.i.exfat_get_entry_type.exit_crit_edge ], [ %switch.offset, %switch.lookup ], [ 1024, %if.then51.i.exfat_get_entry_type.exit_crit_edge ], [ %switch.offset68, %switch.lookup65 ], [ 512, %if.then75.i.exfat_get_entry_type.exit_crit_edge ]
  %16 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bh, align 4
  %tobool.not.i45 = icmp eq ptr %17, null
  br i1 %tobool.not.i45, label %exfat_get_entry_type.exit.brelse.exit_crit_edge, label %if.then.i

exfat_get_entry_type.exit.brelse.exit_crit_edge:  ; preds = %exfat_get_entry_type.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %brelse.exit

if.then.i:                                        ; preds = %exfat_get_entry_type.exit
  call void @__sanitizer_cov_trace_pc() #14
  call void @__brelse(ptr noundef nonnull %17) #12
  br label %brelse.exit

brelse.exit:                                      ; preds = %if.then.i, %exfat_get_entry_type.exit.brelse.exit_crit_edge
  %18 = zext i32 %retval.0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.18)
  switch i32 %retval.0.i, label %brelse.exit.for.inc_crit_edge [
    i32 0, label %brelse.exit.cleanup_crit_edge
    i32 260, label %if.end10
  ]

brelse.exit.cleanup_crit_edge:                    ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

brelse.exit.for.inc_crit_edge:                    ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end10:                                         ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #14
  %inc = add i32 %count.152, 1
  br label %for.inc

for.inc:                                          ; preds = %if.end10, %brelse.exit.for.inc_crit_edge
  %count.2 = phi i32 [ %inc, %if.end10 ], [ %count.152, %brelse.exit.for.inc_crit_edge ]
  %inc11 = add nuw nsw i32 %i.051, 1
  %exitcond.not = icmp eq i32 %inc11, %5
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %count.1.lcssa = phi i32 [ %count.054, %for.cond.preheader.for.end_crit_edge ], [ %count.2, %for.inc.for.end_crit_edge ]
  %19 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %flags, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %20)
  %cmp12 = icmp eq i8 %20, 3
  br i1 %cmp12, label %if.then14, label %if.else22

if.then14:                                        ; preds = %for.end
  %21 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %size, align 4
  %dec = add i32 %22, -1
  store i32 %dec, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp15.not = icmp eq i32 %dec, 0
  br i1 %cmp15.not, label %if.then14.cleanup_crit_edge, label %if.then17

if.then14.cleanup_crit_edge:                      ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then17:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #14
  %23 = ptrtoint ptr %clu to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %clu, align 4
  %inc19 = add i32 %24, 1
  store i32 %inc19, ptr %clu, align 4
  br label %if.end29

if.else22:                                        ; preds = %for.end
  %25 = ptrtoint ptr %clu to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %clu, align 4
  %call25 = call i32 @exfat_ent_get(ptr noundef %sb, i32 noundef %26, ptr noundef nonnull %clu) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end29thread-pre-split, label %if.else22.cleanup_crit_edge

if.else22.cleanup_crit_edge:                      ; preds = %if.else22
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end29thread-pre-split:                         ; preds = %if.else22
  call void @__sanitizer_cov_trace_pc() #14
  %27 = ptrtoint ptr %clu to i32
  call void @__asan_load4_noabort(i32 %27)
  %.pr = load i32, ptr %clu, align 4
  br label %if.end29

if.end29:                                         ; preds = %if.end29thread-pre-split, %if.then17
  %28 = phi i32 [ %.pr, %if.end29thread-pre-split ], [ %inc19, %if.then17 ]
  %cmp.not = icmp eq i32 %28, -1
  br i1 %cmp.not, label %if.end29.cleanup_crit_edge, label %if.end29.for.cond.preheader_crit_edge

if.end29.for.cond.preheader_crit_edge:            ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.preheader

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup:                                          ; preds = %if.end29.cleanup_crit_edge, %if.else22.cleanup_crit_edge, %if.then14.cleanup_crit_edge, %brelse.exit.cleanup_crit_edge, %for.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %count.152, %brelse.exit.cleanup_crit_edge ], [ -5, %for.body.cleanup_crit_edge ], [ %count.1.lcssa, %if.then14.cleanup_crit_edge ], [ -5, %if.else22.cleanup_crit_edge ], [ %count.1.lcssa, %if.end29.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bh) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %clu) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i64 @i_size_read(ptr noundef %inode) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %i_size_seqcount = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23
  %dep_map.c48.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23, i32 1
  %i_size18 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  br label %do.body

do.body:                                          ; preds = %while.end.do.body_crit_edge, %entry
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #12, !srcloc !35
  %and.i.i = and i32 %0, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %do.body24.critedge.i

if.then.i:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @trace_hardirqs_off() #12
  %1 = tail call ptr @llvm.returnaddress(i32 0) #12
  %2 = ptrtoint ptr %1 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %2) #12
  tail call void @lock_release(ptr noundef %dep_map.c48.i, i32 noundef %2) #12
  tail call void @trace_hardirqs_on() #12
  br label %do.body24.i

do.body24.critedge.i:                             ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %3 = tail call ptr @llvm.returnaddress(i32 0) #12
  %4 = ptrtoint ptr %3 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %4) #12
  tail call void @lock_release(ptr noundef %dep_map.c48.i, i32 noundef %4) #12
  br label %do.body24.i

do.body24.i:                                      ; preds = %do.body24.critedge.i, %if.then.i
  %5 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #12, !srcloc !36
  %and.i.i.i = and i32 %5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool32.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool32.not.i, label %if.then36.i, label %do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge, !prof !34

do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge: ; preds = %do.body24.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %seqcount_lockdep_reader_access.exit

if.then36.i:                                      ; preds = %do.body24.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @warn_bogus_irq_restore() #12
  br label %seqcount_lockdep_reader_access.exit

seqcount_lockdep_reader_access.exit:              ; preds = %if.then36.i, %do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #12, !srcloc !37
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

do.end:                                           ; preds = %do.end.do.end_crit_edge, %seqcount_lockdep_reader_access.exit.do.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !38
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #12, !srcloc !39
  %8 = ptrtoint ptr %i_size_seqcount to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %i_size_seqcount, align 4
  %and = and i32 %9, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.end.while.end_crit_edge, label %do.end.do.end_crit_edge

do.end.do.end_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

do.end.while.end_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.end:                                        ; preds = %do.end.while.end_crit_edge, %seqcount_lockdep_reader_access.exit.while.end_crit_edge
  %.lcssa = phi i32 [ %7, %seqcount_lockdep_reader_access.exit.while.end_crit_edge ], [ %9, %do.end.while.end_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !40
  %10 = ptrtoint ptr %i_size18 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %i_size18, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !41
  %12 = ptrtoint ptr %i_size_seqcount to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %i_size_seqcount, align 4
  %cmp.i.i.not = icmp eq i32 %13, %.lcssa
  br i1 %cmp.i.i.not, label %do.end24, label %while.end.do.body_crit_edge

while.end.do.body_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

do.end24:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  ret i64 %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @exfat_iget(ptr noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @iput(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iunique(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #0

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @exfat_get_entry_time(ptr noundef, ptr noundef, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @exfat_utf16_to_nls(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__brelse(ptr noundef) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__bforget(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__find_get_block(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__breadahead(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__bread_gfp(ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @__exfat_fs_error(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

attributes #0 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #11 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { nobuiltin }
attributes #16 = { cold nounwind }
attributes #17 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !11, !13, !15, !17}
!llvm.module.flags = !{!19, !20, !21, !22, !23, !24, !25, !26}
!llvm.ident = !{!27}

!0 = !{ptr @exfat_dir_operations, !1, !"exfat_dir_operations", i1 false, i1 false}
!1 = !{!"../fs/exfat/dir.c", i32 307, i32 30}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../fs/exfat/dir.c", i32 722, i32 3}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../fs/exfat/dir.c", i32 829, i32 3}
!7 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../fs/exfat/dir.c", i32 976, i32 6}
!9 = !{ptr @.str.4, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../include/linux/fs.h", i32 3566, i32 25}
!11 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../include/linux/fs.h", i32 3571, i32 25}
!13 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../fs/exfat/dir.c", i32 694, i32 3}
!15 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../fs/exfat/dir.c", i32 640, i32 5}
!17 = distinct !{null, !18, !"__already_done", i1 false, i1 false}
!18 = !{!"../fs/exfat/dir.c", i32 786, i32 3}
!19 = !{i32 1, !"wchar_size", i32 2}
!20 = !{i32 1, !"min_enum_size", i32 4}
!21 = !{i32 8, !"branch-target-enforcement", i32 0}
!22 = !{i32 8, !"sign-return-address", i32 0}
!23 = !{i32 8, !"sign-return-address-all", i32 0}
!24 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!25 = !{i32 7, !"uwtable", i32 1}
!26 = !{i32 7, !"frame-pointer", i32 2}
!27 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!28 = !{!"auto-init"}
!29 = !{i32 0, i32 33}
!30 = !{i8 0, i8 2}
!31 = distinct !{!31, !32}
!32 = !{!"llvm.loop.peeled.count", i32 1}
!33 = !{!"branch_weights", i32 2000, i32 1}
!34 = !{!"branch_weights", i32 1, i32 2000}
!35 = !{i64 1012088, i64 1012149}
!36 = !{i64 1014820}
!37 = !{i64 1015105}
!38 = !{i64 2153025492}
!39 = !{i64 2153025334}
!40 = !{i64 2153025662}
!41 = !{i64 2149786807}
