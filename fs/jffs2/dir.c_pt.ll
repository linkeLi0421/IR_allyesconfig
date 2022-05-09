; ModuleID = '/llk/IR_all_yes/fs/jffs2/dir.c_pt.bc'
source_filename = "../fs/jffs2/dir.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.inode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [36 x i8] }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.address_space_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.file = type { %union.anon, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
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
%struct.dir_context = type { ptr, i64 }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.74, %struct.list_head, %struct.list_head, %union.anon.75 }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.3, ptr }
%union.anon.3 = type { i64 }
%struct.lockref = type { %union.anon.72 }
%union.anon.72 = type { %struct.anon.73 }
%struct.anon.73 = type { %struct.spinlock, i32 }
%union.anon.74 = type { %struct.list_head }
%union.anon.75 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.66, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.67, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.68, ptr, %struct.address_space, %struct.list_head, %union.anon.71, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.66 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.67 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.68 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.71 = type { ptr }
%struct.jffs2_full_dirent = type { %union.anon.76, ptr, i32, i32, i32, i8, [0 x i8] }
%union.anon.76 = type { ptr }
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
%struct.jffs2_raw_inode = type { %struct.jint16_t, %struct.jint16_t, %struct.jint32_t, %struct.jint32_t, %struct.jint32_t, %struct.jint32_t, %struct.jmode_t, %struct.jint16_t, %struct.jint16_t, %struct.jint32_t, %struct.jint32_t, %struct.jint32_t, %struct.jint32_t, %struct.jint32_t, %struct.jint32_t, %struct.jint32_t, i8, i8, %struct.jint16_t, %struct.jint32_t, %struct.jint32_t, [0 x i8] }
%struct.jmode_t = type { i32 }
%struct.jint16_t = type { i16 }
%struct.jint32_t = type { i32 }
%struct.jffs2_inode_cache = type { ptr, ptr, i8, i8, i16, i32, ptr, ptr, i32 }
%struct.jffs2_raw_dirent = type { %struct.jint16_t, %struct.jint16_t, %struct.jint32_t, %struct.jint32_t, %struct.jint32_t, %struct.jint32_t, %struct.jint32_t, %struct.jint32_t, i8, i8, [2 x i8], %struct.jint32_t, %struct.jint32_t, [0 x i8] }
%union.jffs2_device_node = type { %struct.jint32_t }
%struct.jffs2_inode_info = type { %struct.mutex, i32, %struct.rb_root, ptr, ptr, ptr, ptr, i16, i8, %struct.inode }

@jffs2_dir_operations = dso_local constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @generic_read_dir, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @jffs2_readdir, ptr null, ptr @jffs2_ioctl, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr @jffs2_fsync, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@jffs2_dir_inode_operations = dso_local constant %struct.inode_operations { ptr @jffs2_lookup, ptr null, ptr null, ptr @jffs2_get_acl, ptr null, ptr @jffs2_create, ptr @jffs2_link, ptr @jffs2_unlink, ptr @jffs2_symlink, ptr @jffs2_mkdir, ptr @jffs2_rmdir, ptr @jffs2_mknod, ptr @jffs2_rename, ptr @jffs2_setattr, ptr null, ptr @jffs2_listxattr, ptr null, ptr null, ptr null, ptr null, ptr @jffs2_set_acl, ptr null, ptr null, [36 x i8] undef }, align 128
@jffs2_lookup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 114, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\014jffs2: iget() failed for ino #%u\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"jffs2_lookup\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"fs/jffs2/dir.c\00", [17 x i8] zeroinitializer }, align 32
@jffs2_lookup._entry_ptr = internal global ptr @jffs2_lookup._entry, section ".printk_index", align 4
@.str.3 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c".\00", [30 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"..\00", [29 x i8] zeroinitializer }, align 32
@jffs2_file_inode_operations = external dso_local constant %struct.inode_operations, align 128
@jffs2_file_operations = external dso_local constant %struct.file_operations, align 4
@jffs2_file_address_operations = external dso_local constant %struct.address_space_operations, align 4
@jffs2_symlink_inode_operations = external dso_local constant %struct.inode_operations, align 128
@jffs2_symlink._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 356, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\014jffs2: Can't allocate %d bytes of memory\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"jffs2_symlink\00", [18 x i8] zeroinitializer }, align 32
@jffs2_symlink._entry_ptr = internal global ptr @jffs2_symlink._entry, section ".printk_index", align 4
@jffs2_rename._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.2, i32 858, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"\015jffs2: %s(): Link succeeded, unlink failed (err %d). You now have a hard link\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"jffs2_rename\00", [19 x i8] zeroinitializer }, align 32
@jffs2_rename._entry_ptr = internal global ptr @jffs2_rename._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 64, i64 0, i64 1]
@__sancov_gen_cov_switch_values.9 = internal global [4 x i64] [i64 2, i64 16, i64 8192, i64 24576]
@___asan_gen_.10 = private unnamed_addr constant [21 x i8] c"jffs2_dir_operations\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 44, i32 30 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 114, i32 4 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 3566, i32 25 }
@___asan_gen_.29 = private unnamed_addr constant [22 x i8] c"../include/linux/fs.h\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 3571, i32 25 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 356, i32 3 }
@___asan_gen_.40 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.46 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.47 = private constant [18 x i8] c"../fs/jffs2/dir.c\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 857, i32 3 }
@llvm.compiler.used = appending global [16 x ptr] [ptr @jffs2_lookup._entry, ptr @jffs2_lookup._entry_ptr, ptr @jffs2_rename._entry, ptr @jffs2_rename._entry_ptr, ptr @jffs2_symlink._entry, ptr @jffs2_symlink._entry_ptr, ptr @jffs2_dir_operations, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8], section "llvm.metadata"
@0 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jffs2_dir_operations to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jffs2_lookup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jffs2_symlink._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jffs2_rename._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_file_llseek(ptr noundef, i64 noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_read_dir(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @jffs2_readdir(ptr nocapture noundef readonly %file, ptr noundef %ctx) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 -120
  %pos.i = getelementptr inbounds %struct.dir_context, ptr %ctx, i32 0, i32 1
  %2 = ptrtoint ptr %pos.i to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %pos.i, align 8
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values)
  switch i64 %3, label %entry.if.end_crit_edge [
    i64 0, label %if.then.i
    i64 1, label %entry.if.then6.i_crit_edge
  ]

entry.if.then6.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then6.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then.i:                                        ; preds = %entry
  %4 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ctx, align 8
  %dentry.i.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %dentry.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dentry.i.i, align 4
  %d_inode.i.i = getelementptr inbounds %struct.dentry, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %d_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %d_inode.i.i, align 8
  %i_ino.i.i = getelementptr inbounds %struct.inode, ptr %9, i32 0, i32 11
  %10 = ptrtoint ptr %i_ino.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %i_ino.i.i, align 8
  %conv.i.i = zext i32 %11 to i64
  %call.i.i = tail call i32 %5(ptr noundef %ctx, ptr noundef nonnull @.str.3, i32 noundef 1, i64 noundef 0, i64 noundef %conv.i.i, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.end3.thread.i, label %if.then.i.cleanup_crit_edge

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3.thread.i:                                 ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %pos.i to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 1, ptr %pos.i, align 8
  br label %if.then6.i

if.then6.i:                                       ; preds = %if.end3.thread.i, %entry.if.then6.i_crit_edge
  %13 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ctx, align 8
  %dentry.i19.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 1, i32 1
  %15 = ptrtoint ptr %dentry.i19.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dentry.i19.i, align 4
  %d_lockref.i.i.i = getelementptr inbounds %struct.dentry, ptr %16, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %d_lockref.i.i.i) #7
  %d_parent.i.i.i = getelementptr inbounds %struct.dentry, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %d_parent.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %d_parent.i.i.i, align 8
  %d_inode.i.i.i = getelementptr inbounds %struct.dentry, ptr %18, i32 0, i32 5
  %19 = ptrtoint ptr %d_inode.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %d_inode.i.i.i, align 8
  %i_ino.i.i.i = getelementptr inbounds %struct.inode, ptr %20, i32 0, i32 11
  %21 = ptrtoint ptr %i_ino.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %i_ino.i.i.i, align 8
  tail call void @_raw_spin_unlock(ptr noundef %d_lockref.i.i.i) #7
  %conv.i20.i = zext i32 %22 to i64
  %call1.i.i = tail call i32 %14(ptr noundef %ctx, ptr noundef nonnull @.str.4, i32 noundef 2, i64 noundef 1, i64 noundef %conv.i20.i, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp.i21.i = icmp eq i32 %call1.i.i, 0
  br i1 %cmp.i21.i, label %if.end9.i, label %if.then6.i.cleanup_crit_edge

if.then6.i.cleanup_crit_edge:                     ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end9.i:                                        ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #9
  %23 = ptrtoint ptr %pos.i to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 2, ptr %pos.i, align 8
  br label %if.end

if.end:                                           ; preds = %if.end9.i, %entry.if.end_crit_edge
  tail call void @mutex_lock_nested(ptr noundef %add.ptr, i32 noundef 0) #7
  %dents = getelementptr i8, ptr %1, i32 -16
  %24 = ptrtoint ptr %dents to i32
  call void @__asan_load4_noabort(i32 %24)
  %fd.051 = load ptr, ptr %dents, align 4
  %tobool.not52 = icmp eq ptr %fd.051, null
  br i1 %tobool.not52, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end.for.body_crit_edge
  %fd.054 = phi ptr [ %fd.0, %for.inc.for.body_crit_edge ], [ %fd.051, %if.end.for.body_crit_edge ]
  %curofs.053 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 1, %if.end.for.body_crit_edge ]
  %inc = add i32 %curofs.053, 1
  %conv = zext i32 %inc to i64
  %25 = ptrtoint ptr %pos.i to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %pos.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %26, i64 %conv)
  %cmp = icmp sgt i64 %26, %conv
  br i1 %cmp, label %for.body.for.inc_crit_edge, label %if.end7

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end7:                                          ; preds = %for.body
  %ino = getelementptr inbounds %struct.jffs2_full_dirent, ptr %fd.054, i32 0, i32 3
  %27 = ptrtoint ptr %ino to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %ino, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool8.not = icmp eq i32 %28, 0
  br i1 %tobool8.not, label %if.end7.for.inc.sink.split_crit_edge, label %do.end18

if.end7.for.inc.sink.split_crit_edge:             ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.sink.split

do.end18:                                         ; preds = %if.end7
  %name = getelementptr inbounds %struct.jffs2_full_dirent, ptr %fd.054, i32 0, i32 6
  %call21 = tail call i32 @strlen(ptr noundef %name) #10
  %conv23 = zext i32 %28 to i64
  %type = getelementptr inbounds %struct.jffs2_full_dirent, ptr %fd.054, i32 0, i32 5
  %29 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %type, align 4
  %conv24 = zext i8 %30 to i32
  %31 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ctx, align 8
  %call.i = tail call i32 %32(ptr noundef %ctx, ptr noundef %name, i32 noundef %call21, i64 noundef %26, i64 noundef %conv23, i32 noundef %conv24) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %if.end27, label %do.end18.for.end_crit_edge

do.end18.for.end_crit_edge:                       ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.end27:                                         ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #9
  %33 = ptrtoint ptr %pos.i to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %pos.i, align 8
  br label %for.inc.sink.split

for.inc.sink.split:                               ; preds = %if.end27, %if.end7.for.inc.sink.split_crit_edge
  %.sink = phi i64 [ %34, %if.end27 ], [ %26, %if.end7.for.inc.sink.split_crit_edge ]
  %inc29 = add i64 %.sink, 1
  %35 = ptrtoint ptr %pos.i to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 %inc29, ptr %pos.i, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.inc.sink.split, %for.body.for.inc_crit_edge
  %next = getelementptr inbounds %struct.jffs2_full_dirent, ptr %fd.054, i32 0, i32 1
  %36 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %36)
  %fd.0 = load ptr, ptr %next, align 4
  %tobool.not = icmp eq ptr %fd.0, null
  br i1 %tobool.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %do.end18.for.end_crit_edge, %if.end.for.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %add.ptr) #7
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then6.i.cleanup_crit_edge, %if.then.i.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jffs2_ioctl(ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jffs2_fsync(ptr noundef, i64 noundef, i64 noundef, i32 noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @jffs2_lookup(ptr noundef %dir_i, ptr noundef %target, i32 noundef %flags) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %d_name = getelementptr inbounds %struct.dentry, ptr %target, i32 0, i32 4
  %0 = ptrtoint ptr %d_name to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %d_name, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 254, i32 %1)
  %cmp = icmp ugt i32 %1, 254
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr i8, ptr %dir_i, i32 -120
  %name = getelementptr inbounds %struct.dentry, ptr %target, i32 0, i32 4, i32 1
  %2 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %name, align 8
  %call4 = tail call i32 @full_name_hash(ptr noundef null, ptr noundef %3, i32 noundef %1) #11
  tail call void @mutex_lock_nested(ptr noundef %add.ptr, i32 noundef 0) #7
  %dents = getelementptr i8, ptr %dir_i, i32 -16
  %4 = ptrtoint ptr %dents to i32
  call void @__asan_load4_noabort(i32 %4)
  %fd_list.079 = load ptr, ptr %dents, align 4
  %tobool.not80 = icmp eq ptr %fd_list.079, null
  br i1 %tobool.not80, label %if.end.if.end32.thread_crit_edge, label %if.end.land.rhs_crit_edge

if.end.land.rhs_crit_edge:                        ; preds = %if.end
  br label %land.rhs

if.end.if.end32.thread_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32.thread

land.rhs:                                         ; preds = %for.inc.land.rhs_crit_edge, %if.end.land.rhs_crit_edge
  %fd_list.083 = phi ptr [ %fd_list.0, %for.inc.land.rhs_crit_edge ], [ %fd_list.079, %if.end.land.rhs_crit_edge ]
  %fd.081 = phi ptr [ %fd.1, %for.inc.land.rhs_crit_edge ], [ null, %if.end.land.rhs_crit_edge ]
  %nhash5 = getelementptr inbounds %struct.jffs2_full_dirent, ptr %fd_list.083, i32 0, i32 4
  %5 = ptrtoint ptr %nhash5 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %nhash5, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %call4)
  %cmp6.not = icmp ugt i32 %6, %call4
  br i1 %cmp6.not, label %land.rhs.for.end_crit_edge, label %for.body

land.rhs.for.end_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %land.rhs
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %call4)
  %cmp8 = icmp eq i32 %6, %call4
  br i1 %cmp8, label %land.lhs.true, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %tobool9.not = icmp eq ptr %fd.081, null
  br i1 %tobool9.not, label %land.lhs.true.land.lhs.true12_crit_edge, label %lor.lhs.false

land.lhs.true.land.lhs.true12_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true12

lor.lhs.false:                                    ; preds = %land.lhs.true
  %version = getelementptr inbounds %struct.jffs2_full_dirent, ptr %fd_list.083, i32 0, i32 2
  %7 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %version, align 4
  %version10 = getelementptr inbounds %struct.jffs2_full_dirent, ptr %fd.081, i32 0, i32 2
  %9 = ptrtoint ptr %version10 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %version10, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %10)
  %cmp11 = icmp ugt i32 %8, %10
  br i1 %cmp11, label %lor.lhs.false.land.lhs.true12_crit_edge, label %lor.lhs.false.for.inc_crit_edge

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

lor.lhs.false.land.lhs.true12_crit_edge:          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true12

land.lhs.true12:                                  ; preds = %lor.lhs.false.land.lhs.true12_crit_edge, %land.lhs.true.land.lhs.true12_crit_edge
  %name13 = getelementptr inbounds %struct.jffs2_full_dirent, ptr %fd_list.083, i32 0, i32 6
  %call14 = tail call i32 @strlen(ptr noundef %name13) #10
  %11 = ptrtoint ptr %d_name to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %d_name, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %call14, i32 %12)
  %cmp17 = icmp eq i32 %call14, %12
  br i1 %cmp17, label %land.lhs.true18, label %land.lhs.true12.for.inc_crit_edge

land.lhs.true12.for.inc_crit_edge:                ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

land.lhs.true18:                                  ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %name, align 8
  %call25 = tail call i32 @strncmp(ptr noundef %name13, ptr noundef %14, i32 noundef %call14)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  %spec.select = select i1 %tobool26.not, ptr %fd_list.083, ptr %fd.081
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true18, %land.lhs.true12.for.inc_crit_edge, %lor.lhs.false.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %fd.1 = phi ptr [ %fd.081, %land.lhs.true12.for.inc_crit_edge ], [ %fd.081, %lor.lhs.false.for.inc_crit_edge ], [ %fd.081, %for.body.for.inc_crit_edge ], [ %spec.select, %land.lhs.true18 ]
  %next = getelementptr inbounds %struct.jffs2_full_dirent, ptr %fd_list.083, i32 0, i32 1
  %15 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %15)
  %fd_list.0 = load ptr, ptr %next, align 4
  %tobool.not = icmp eq ptr %fd_list.0, null
  br i1 %tobool.not, label %for.inc.for.end_crit_edge, label %for.inc.land.rhs_crit_edge

for.inc.land.rhs_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %land.rhs.for.end_crit_edge
  %fd.0.lcssa = phi ptr [ %fd.081, %land.rhs.for.end_crit_edge ], [ %fd.1, %for.inc.for.end_crit_edge ]
  %tobool29.not = icmp eq ptr %fd.0.lcssa, null
  br i1 %tobool29.not, label %for.end.if.end32.thread_crit_edge, label %if.end32

for.end.if.end32.thread_crit_edge:                ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32.thread

if.end32.thread:                                  ; preds = %for.end.if.end32.thread_crit_edge, %if.end.if.end32.thread_crit_edge
  tail call void @mutex_unlock(ptr noundef %add.ptr) #7
  br label %if.end45

if.end32:                                         ; preds = %for.end
  %ino31 = getelementptr inbounds %struct.jffs2_full_dirent, ptr %fd.0.lcssa, i32 0, i32 3
  %16 = ptrtoint ptr %ino31 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ino31, align 4
  tail call void @mutex_unlock(ptr noundef %add.ptr) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool34.not = icmp eq i32 %17, 0
  br i1 %tobool34.not, label %if.end32.if.end45_crit_edge, label %if.then35

if.end32.if.end45_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end45

if.then35:                                        ; preds = %if.end32
  %i_sb = getelementptr inbounds %struct.inode, ptr %dir_i, i32 0, i32 8
  %18 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %i_sb, align 4
  %call36 = tail call ptr @jffs2_iget(ptr noundef %19, i32 noundef %17) #7
  %cmp.i = icmp ugt ptr %call36, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end41, label %if.then35.if.end45_crit_edge

if.then35.if.end45_crit_edge:                     ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end45

do.end41:                                         ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #9
  %call43 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %17) #12
  br label %if.end45

if.end45:                                         ; preds = %do.end41, %if.then35.if.end45_crit_edge, %if.end32.if.end45_crit_edge, %if.end32.thread
  %inode.0 = phi ptr [ %call36, %do.end41 ], [ %call36, %if.then35.if.end45_crit_edge ], [ null, %if.end32.if.end45_crit_edge ], [ null, %if.end32.thread ]
  %call46 = tail call ptr @d_splice_alias(ptr noundef %inode.0, ptr noundef %target) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end45, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call46, %if.end45 ], [ inttoptr (i32 -36 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @jffs2_get_acl(ptr noundef, i32 noundef, i1 noundef zeroext) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @jffs2_create(ptr nocapture noundef readnone %mnt_userns, ptr noundef %dir_i, ptr noundef %dentry, i16 noundef zeroext %mode, i1 noundef zeroext %excl) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @jffs2_alloc_raw_inode() #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %i_sb = getelementptr inbounds %struct.inode, ptr %dir_i, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info, align 16
  %call1 = tail call ptr @jffs2_new_inode(ptr noundef %dir_i, i16 noundef zeroext %mode, ptr noundef nonnull %call) #7
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end6, label %if.end8

do.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @jffs2_free_raw_inode(ptr noundef nonnull %call) #7
  %4 = ptrtoint ptr %call1 to i32
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %i_op = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 7
  %5 = ptrtoint ptr %i_op to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @jffs2_file_inode_operations, ptr %i_op, align 8
  %6 = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 44
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @jffs2_file_operations, ptr %6, align 8
  %i_mapping = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 9
  %8 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %i_mapping, align 8
  %a_ops = getelementptr inbounds %struct.address_space, ptr %9, i32 0, i32 9
  %10 = ptrtoint ptr %a_ops to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @jffs2_file_address_operations, ptr %a_ops, align 4
  %11 = load ptr, ptr %i_mapping, align 8
  %nrpages = getelementptr inbounds %struct.address_space, ptr %11, i32 0, i32 7
  %12 = ptrtoint ptr %nrpages to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %nrpages, align 4
  %add.ptr = getelementptr i8, ptr %call1, i32 -120
  %add.ptr12 = getelementptr i8, ptr %dir_i, i32 -120
  tail call void @mutex_unlock(ptr noundef %add.ptr) #7
  %d_name = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4
  %call13 = tail call i32 @jffs2_do_create(ptr noundef %3, ptr noundef %add.ptr12, ptr noundef %add.ptr, ptr noundef nonnull %call, ptr noundef %d_name) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %fail

if.end16:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  %i_mtime = getelementptr inbounds %struct.inode, ptr %dir_i, i32 0, i32 16
  %i_ctime = getelementptr inbounds %struct.inode, ptr %dir_i, i32 0, i32 17
  %ctime = getelementptr inbounds %struct.jffs2_raw_inode, ptr %call, i32 0, i32 12
  %13 = ptrtoint ptr %ctime to i32
  call void @__asan_loadN_noabort(i32 %13, i32 4)
  %14 = load i32, ptr %ctime, align 1
  %conv = zext i32 %14 to i64
  %15 = ptrtoint ptr %i_ctime to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %conv, ptr %i_ctime, align 8
  %.compoundliteral.sroa.2.0.i_ctime.sroa_idx = getelementptr inbounds %struct.inode, ptr %dir_i, i32 0, i32 17, i32 1
  %16 = ptrtoint ptr %.compoundliteral.sroa.2.0.i_ctime.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %.compoundliteral.sroa.2.0.i_ctime.sroa_idx, align 8
  %17 = call ptr @memcpy(ptr %i_mtime, ptr %i_ctime, i32 16)
  tail call void @jffs2_free_raw_inode(ptr noundef nonnull %call) #7
  tail call void @d_instantiate_new(ptr noundef %dentry, ptr noundef %call1) #7
  br label %cleanup

fail:                                             ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @iget_failed(ptr noundef %call1) #7
  tail call void @jffs2_free_raw_inode(ptr noundef nonnull %call) #7
  br label %cleanup

cleanup:                                          ; preds = %fail, %if.end16, %do.end6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %4, %do.end6 ], [ %call13, %fail ], [ 0, %if.end16 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @jffs2_link(ptr nocapture noundef readonly %old_dentry, ptr noundef %dir_i, ptr noundef %dentry) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %d_sb = getelementptr inbounds %struct.dentry, ptr %old_dentry, i32 0, i32 9
  %0 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info, align 16
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %old_dentry, i32 0, i32 5
  %4 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %d_inode.i, align 8
  %add.ptr = getelementptr i8, ptr %5, i32 -120
  %add.ptr3 = getelementptr i8, ptr %dir_i, i32 -120
  %inocache = getelementptr i8, ptr %5, i32 -8
  %6 = ptrtoint ptr %inocache to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %inocache, align 8
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = ptrtoint ptr %old_dentry to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %old_dentry, align 8
  %10 = and i32 %9, 6291456
  call void @__sanitizer_cov_trace_const_cmp4(i32 2097152, i32 %10)
  %11 = icmp eq i32 %10, 2097152
  br i1 %11, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %12 = ptrtoint ptr %5 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %5, align 8
  %14 = lshr i16 %13, 12
  %conv8 = trunc i16 %14 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv8)
  %tobool9.not = icmp eq i8 %conv8, 0
  %spec.store.select = select i1 %tobool9.not, i8 8, i8 %conv8
  %call12 = tail call i64 @ktime_get_real_seconds() #7
  %15 = tail call i64 @llvm.smax.i64(i64 %call12, i64 0)
  %16 = tail call i64 @llvm.umin.i64(i64 %15, i64 4294967295)
  %17 = trunc i64 %16 to i32
  %18 = ptrtoint ptr %inocache to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %inocache, align 8
  %ino = getelementptr inbounds %struct.jffs2_inode_cache, ptr %19, i32 0, i32 5
  %20 = ptrtoint ptr %ino to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %ino, align 4
  %d_name = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4
  %name = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4, i32 1
  %22 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %name, align 8
  %24 = ptrtoint ptr %d_name to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %d_name, align 8
  %call25 = tail call i32 @jffs2_do_link(ptr noundef %3, ptr noundef %add.ptr3, i32 noundef %21, i8 noundef zeroext %spec.store.select, ptr noundef %23, i32 noundef %25, i32 noundef %17) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.then27, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then27:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @mutex_lock_nested(ptr noundef %add.ptr, i32 noundef 0) #7
  %26 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %d_inode.i, align 8
  %28 = ptrtoint ptr %inocache to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %inocache, align 8
  %pino_nlink = getelementptr inbounds %struct.jffs2_inode_cache, ptr %29, i32 0, i32 8
  %30 = ptrtoint ptr %pino_nlink to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %pino_nlink, align 4
  %inc = add i32 %31, 1
  store i32 %inc, ptr %pino_nlink, align 4
  tail call void @set_nlink(ptr noundef %27, i32 noundef %inc) #7
  tail call void @mutex_unlock(ptr noundef %add.ptr) #7
  %32 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %d_inode.i, align 8
  tail call void @d_instantiate(ptr noundef %dentry, ptr noundef %33) #7
  %i_mtime = getelementptr inbounds %struct.inode, ptr %dir_i, i32 0, i32 16
  %i_ctime = getelementptr inbounds %struct.inode, ptr %dir_i, i32 0, i32 17
  %34 = ptrtoint ptr %i_ctime to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 %16, ptr %i_ctime, align 8
  %.compoundliteral.sroa.2.0.i_ctime.sroa_idx = getelementptr inbounds %struct.inode, ptr %dir_i, i32 0, i32 17, i32 1
  %35 = ptrtoint ptr %.compoundliteral.sroa.2.0.i_ctime.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %.compoundliteral.sroa.2.0.i_ctime.sroa_idx, align 8
  %36 = call ptr @memcpy(ptr %i_mtime, ptr %i_ctime, i32 16)
  %37 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %d_inode.i, align 8
  tail call void @ihold(ptr noundef %38) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then27, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %entry.cleanup_crit_edge ], [ -1, %if.end.cleanup_crit_edge ], [ 0, %if.then27 ], [ %call25, %if.end6.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @jffs2_unlink(ptr noundef %dir_i, ptr nocapture noundef readonly %dentry) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %dir_i, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info, align 16
  %add.ptr = getelementptr i8, ptr %dir_i, i32 -120
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %4 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %d_inode.i, align 8
  %add.ptr3 = getelementptr i8, ptr %5, i32 -120
  %call4 = tail call i64 @ktime_get_real_seconds() #7
  %6 = tail call i64 @llvm.smax.i64(i64 %call4, i64 0)
  %7 = tail call i64 @llvm.umin.i64(i64 %6, i64 4294967295)
  %8 = trunc i64 %7 to i32
  %d_name = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4
  %name = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4, i32 1
  %9 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %name, align 8
  %11 = ptrtoint ptr %d_name to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %d_name, align 8
  %call13 = tail call i32 @jffs2_do_unlink(ptr noundef %3, ptr noundef %add.ptr, ptr noundef %10, i32 noundef %12, ptr noundef %add.ptr3, i32 noundef %8) #7
  %inocache = getelementptr i8, ptr %5, i32 -8
  %13 = ptrtoint ptr %inocache to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %inocache, align 8
  %tobool.not = icmp eq ptr %14, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %d_inode.i, align 8
  %pino_nlink = getelementptr inbounds %struct.jffs2_inode_cache, ptr %14, i32 0, i32 8
  %17 = ptrtoint ptr %pino_nlink to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %pino_nlink, align 4
  tail call void @set_nlink(ptr noundef %16, i32 noundef %18) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool16.not = icmp eq i32 %call13, 0
  br i1 %tobool16.not, label %if.then17, label %if.end.if.end19_crit_edge

if.end.if.end19_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

if.then17:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %i_mtime = getelementptr inbounds %struct.inode, ptr %dir_i, i32 0, i32 16
  %i_ctime = getelementptr inbounds %struct.inode, ptr %dir_i, i32 0, i32 17
  %19 = ptrtoint ptr %i_ctime to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %7, ptr %i_ctime, align 8
  %.compoundliteral.sroa.2.0.i_ctime.sroa_idx = getelementptr inbounds %struct.inode, ptr %dir_i, i32 0, i32 17, i32 1
  %20 = ptrtoint ptr %.compoundliteral.sroa.2.0.i_ctime.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %.compoundliteral.sroa.2.0.i_ctime.sroa_idx, align 8
  %21 = call ptr @memcpy(ptr %i_mtime, ptr %i_ctime, i32 16)
  br label %if.end19

if.end19:                                         ; preds = %if.then17, %if.end.if.end19_crit_edge
  ret i32 %call13
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @jffs2_symlink(ptr nocapture noundef readnone %mnt_userns, ptr noundef %dir_i, ptr noundef %dentry, ptr noundef %target) #1 align 64 {
entry:
  %alloclen = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %alloclen) #7
  %0 = ptrtoint ptr %alloclen to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %alloclen, align 4, !annotation !33
  %call = tail call i32 @strlen(ptr noundef %target) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 254, i32 %call)
  %cmp = icmp sgt i32 %call, 254
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @jffs2_alloc_raw_inode() #7
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %i_sb = getelementptr inbounds %struct.inode, ptr %dir_i, i32 0, i32 8
  %1 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %i_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %2, i32 0, i32 33
  %3 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %s_fs_info, align 16
  %d_name = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4
  %5 = ptrtoint ptr %d_name to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %d_name, align 8
  %add = add nsw i32 %call, 68
  %call4 = call i32 @jffs2_reserve_space(ptr noundef %4, i32 noundef %add, ptr noundef nonnull %alloclen, i32 noundef 0, i32 noundef 18) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %if.then6

if.then6:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  call void @jffs2_free_raw_inode(ptr noundef nonnull %call1) #7
  br label %cleanup

if.end7:                                          ; preds = %if.end3
  %call8 = call ptr @jffs2_new_inode(ptr noundef %dir_i, i16 noundef zeroext -24065, ptr noundef nonnull %call1) #7
  %cmp.i = icmp ugt ptr %call8, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then10, label %if.end12

if.then10:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  call void @jffs2_free_raw_inode(ptr noundef nonnull %call1) #7
  call void @jffs2_complete_reservation(ptr noundef %4) #7
  %7 = ptrtoint ptr %call8 to i32
  br label %cleanup

if.end12:                                         ; preds = %if.end7
  %i_op = getelementptr inbounds %struct.inode, ptr %call8, i32 0, i32 7
  %8 = ptrtoint ptr %i_op to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @jffs2_symlink_inode_operations, ptr %i_op, align 8
  %add.ptr = getelementptr i8, ptr %call8, i32 -120
  %conv = sext i32 %call to i64
  %i_size = getelementptr inbounds %struct.inode, ptr %call8, i32 0, i32 14
  %9 = ptrtoint ptr %i_size to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %conv, ptr %i_size, align 8
  %isize = getelementptr inbounds %struct.jffs2_raw_inode, ptr %call1, i32 0, i32 9
  %dsize = getelementptr inbounds %struct.jffs2_raw_inode, ptr %call1, i32 0, i32 15
  %csize = getelementptr inbounds %struct.jffs2_raw_inode, ptr %call1, i32 0, i32 14
  %10 = ptrtoint ptr %csize to i32
  call void @__asan_storeN_noabort(i32 %10, i32 4)
  store i32 %call, ptr %csize, align 1
  %11 = ptrtoint ptr %dsize to i32
  call void @__asan_storeN_noabort(i32 %11, i32 4)
  store i32 %call, ptr %dsize, align 1
  %12 = ptrtoint ptr %isize to i32
  call void @__asan_storeN_noabort(i32 %12, i32 4)
  store i32 %call, ptr %isize, align 1
  %totlen = getelementptr inbounds %struct.jffs2_raw_inode, ptr %call1, i32 0, i32 2
  %13 = load i64, ptr %i_size, align 8
  %14 = trunc i64 %13 to i32
  %conv19 = add i32 %14, 68
  %15 = ptrtoint ptr %totlen to i32
  call void @__asan_storeN_noabort(i32 %15, i32 4)
  store i32 %conv19, ptr %totlen, align 1
  %hdr_crc = getelementptr inbounds %struct.jffs2_raw_inode, ptr %call1, i32 0, i32 3
  %call22 = call i32 @crc32_le(i32 noundef 0, ptr noundef nonnull %call1, i32 noundef 8) #11
  %16 = ptrtoint ptr %hdr_crc to i32
  call void @__asan_storeN_noabort(i32 %16, i32 4)
  store i32 %call22, ptr %hdr_crc, align 1
  %compr = getelementptr inbounds %struct.jffs2_raw_inode, ptr %call1, i32 0, i32 16
  %17 = ptrtoint ptr %compr to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %compr, align 1
  %data_crc = getelementptr inbounds %struct.jffs2_raw_inode, ptr %call1, i32 0, i32 19
  %call25 = call i32 @crc32_le(i32 noundef 0, ptr noundef %target, i32 noundef %call) #11
  %18 = ptrtoint ptr %data_crc to i32
  call void @__asan_storeN_noabort(i32 %18, i32 4)
  store i32 %call25, ptr %data_crc, align 1
  %node_crc = getelementptr inbounds %struct.jffs2_raw_inode, ptr %call1, i32 0, i32 20
  %call28 = call i32 @crc32_le(i32 noundef 0, ptr noundef nonnull %call1, i32 noundef 60) #11
  %19 = ptrtoint ptr %node_crc to i32
  call void @__asan_storeN_noabort(i32 %19, i32 4)
  store i32 %call28, ptr %node_crc, align 1
  %call29 = call ptr @jffs2_write_dnode(ptr noundef %4, ptr noundef %add.ptr, ptr noundef nonnull %call1, ptr noundef %target, i32 noundef %call, i32 noundef 0) #7
  call void @jffs2_free_raw_inode(ptr noundef nonnull %call1) #7
  %cmp.i243 = icmp ugt ptr %call29, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i243, label %if.then31, label %if.end33

if.then31:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  call void @mutex_unlock(ptr noundef %add.ptr) #7
  call void @jffs2_complete_reservation(ptr noundef %4) #7
  %20 = ptrtoint ptr %call29 to i32
  br label %fail

if.end33:                                         ; preds = %if.end12
  %add34 = add nsw i32 %call, 1
  %call35 = call ptr @kmemdup(ptr noundef %target, i32 noundef %add34, i32 noundef 3264) #7
  %target36 = getelementptr i8, ptr %call8, i32 -12
  %21 = ptrtoint ptr %target36 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call35, ptr %target36, align 4
  %tobool38.not = icmp eq ptr %call35, null
  br i1 %tobool38.not, label %do.end, label %if.end44

do.end:                                           ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #9
  %call42 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %add34) #12
  call void @mutex_unlock(ptr noundef %add.ptr) #7
  call void @jffs2_complete_reservation(ptr noundef %4) #7
  br label %fail

if.end44:                                         ; preds = %if.end33
  %22 = getelementptr inbounds %struct.inode, ptr %call8, i32 0, i32 48
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call35, ptr %22, align 4
  %metadata = getelementptr i8, ptr %call8, i32 -20
  %24 = ptrtoint ptr %metadata to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call29, ptr %metadata, align 4
  call void @mutex_unlock(ptr noundef %add.ptr) #7
  call void @jffs2_complete_reservation(ptr noundef %4) #7
  %call51 = call i32 @jffs2_init_security(ptr noundef %call8, ptr noundef %dir_i, ptr noundef %d_name) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %if.end54, label %if.end44.fail_crit_edge

if.end44.fail_crit_edge:                          ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #9
  br label %fail

if.end54:                                         ; preds = %if.end44
  %call55 = call i32 @jffs2_init_acl_post(ptr noundef %call8) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %if.end58, label %if.end54.fail_crit_edge

if.end54.fail_crit_edge:                          ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #9
  br label %fail

if.end58:                                         ; preds = %if.end54
  %add59 = add i32 %6, 40
  %add60 = add i32 %6, 24
  %call61 = call i32 @jffs2_reserve_space(ptr noundef %4, i32 noundef %add59, ptr noundef nonnull %alloclen, i32 noundef 0, i32 noundef %add60) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %if.end64, label %if.end58.fail_crit_edge

if.end58.fail_crit_edge:                          ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #9
  br label %fail

if.end64:                                         ; preds = %if.end58
  %call65 = call ptr @jffs2_alloc_raw_dirent() #7
  %tobool66.not = icmp eq ptr %call65, null
  br i1 %tobool66.not, label %if.then67, label %if.end68

if.then67:                                        ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #9
  call void @jffs2_complete_reservation(ptr noundef %4) #7
  br label %fail

if.end68:                                         ; preds = %if.end64
  %add.ptr71 = getelementptr i8, ptr %dir_i, i32 -120
  call void @mutex_lock_nested(ptr noundef %add.ptr71, i32 noundef 0) #7
  %25 = ptrtoint ptr %call65 to i32
  call void @__asan_storeN_noabort(i32 %25, i32 2)
  store i16 6533, ptr %call65, align 1
  %nodetype = getelementptr inbounds %struct.jffs2_raw_dirent, ptr %call65, i32 0, i32 1
  %26 = ptrtoint ptr %nodetype to i32
  call void @__asan_storeN_noabort(i32 %26, i32 2)
  store i16 -8191, ptr %nodetype, align 1
  %totlen76 = getelementptr inbounds %struct.jffs2_raw_dirent, ptr %call65, i32 0, i32 2
  %27 = ptrtoint ptr %totlen76 to i32
  call void @__asan_storeN_noabort(i32 %27, i32 4)
  store i32 %add59, ptr %totlen76, align 1
  %hdr_crc80 = getelementptr inbounds %struct.jffs2_raw_dirent, ptr %call65, i32 0, i32 3
  %call83 = call i32 @crc32_le(i32 noundef 0, ptr noundef nonnull %call65, i32 noundef 8) #11
  %28 = ptrtoint ptr %hdr_crc80 to i32
  call void @__asan_storeN_noabort(i32 %28, i32 4)
  store i32 %call83, ptr %hdr_crc80, align 1
  %pino = getelementptr inbounds %struct.jffs2_raw_dirent, ptr %call65, i32 0, i32 4
  %i_ino = getelementptr inbounds %struct.inode, ptr %dir_i, i32 0, i32 11
  %29 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %i_ino, align 8
  %31 = ptrtoint ptr %pino to i32
  call void @__asan_storeN_noabort(i32 %31, i32 4)
  store i32 %30, ptr %pino, align 1
  %version = getelementptr inbounds %struct.jffs2_raw_dirent, ptr %call65, i32 0, i32 5
  %highest_version = getelementptr i8, ptr %dir_i, i32 -28
  %32 = ptrtoint ptr %highest_version to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %highest_version, align 4
  %inc = add i32 %33, 1
  store i32 %inc, ptr %highest_version, align 4
  %34 = ptrtoint ptr %version to i32
  call void @__asan_storeN_noabort(i32 %34, i32 4)
  store i32 %inc, ptr %version, align 1
  %ino = getelementptr inbounds %struct.jffs2_raw_dirent, ptr %call65, i32 0, i32 6
  %i_ino90 = getelementptr inbounds %struct.inode, ptr %call8, i32 0, i32 11
  %35 = ptrtoint ptr %i_ino90 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %i_ino90, align 8
  %37 = ptrtoint ptr %ino to i32
  call void @__asan_storeN_noabort(i32 %37, i32 4)
  store i32 %36, ptr %ino, align 1
  %mctime = getelementptr inbounds %struct.jffs2_raw_dirent, ptr %call65, i32 0, i32 7
  %call93 = call i64 @ktime_get_real_seconds() #7
  %38 = call i64 @llvm.smax.i64(i64 %call93, i64 0)
  %39 = call i64 @llvm.umin.i64(i64 %38, i64 4294967295)
  %40 = trunc i64 %39 to i32
  %41 = ptrtoint ptr %mctime to i32
  call void @__asan_storeN_noabort(i32 %41, i32 4)
  store i32 %40, ptr %mctime, align 1
  %conv105 = trunc i32 %6 to i8
  %nsize = getelementptr inbounds %struct.jffs2_raw_dirent, ptr %call65, i32 0, i32 8
  %42 = ptrtoint ptr %nsize to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %conv105, ptr %nsize, align 1
  %type = getelementptr inbounds %struct.jffs2_raw_dirent, ptr %call65, i32 0, i32 9
  %43 = ptrtoint ptr %type to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 10, ptr %type, align 1
  %node_crc106 = getelementptr inbounds %struct.jffs2_raw_dirent, ptr %call65, i32 0, i32 11
  %call109 = call i32 @crc32_le(i32 noundef 0, ptr noundef nonnull %call65, i32 noundef 32) #11
  %44 = ptrtoint ptr %node_crc106 to i32
  call void @__asan_storeN_noabort(i32 %44, i32 4)
  store i32 %call109, ptr %node_crc106, align 1
  %name_crc = getelementptr inbounds %struct.jffs2_raw_dirent, ptr %call65, i32 0, i32 12
  %name = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4, i32 1
  %45 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %name, align 8
  %call113 = call i32 @crc32_le(i32 noundef 0, ptr noundef %46, i32 noundef %6) #11
  %47 = ptrtoint ptr %name_crc to i32
  call void @__asan_storeN_noabort(i32 %47, i32 4)
  store i32 %call113, ptr %name_crc, align 1
  %48 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %name, align 8
  %call116 = call ptr @jffs2_write_dirent(ptr noundef %4, ptr noundef %add.ptr71, ptr noundef nonnull %call65, ptr noundef %49, i32 noundef %6, i32 noundef 0) #7
  %cmp.i244 = icmp ugt ptr %call116, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i244, label %if.then118, label %if.end121

if.then118:                                       ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #9
  call void @jffs2_complete_reservation(ptr noundef %4) #7
  call void @jffs2_free_raw_dirent(ptr noundef nonnull %call65) #7
  call void @mutex_unlock(ptr noundef %add.ptr71) #7
  %50 = ptrtoint ptr %call116 to i32
  br label %fail

if.end121:                                        ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #9
  %i_mtime = getelementptr inbounds %struct.inode, ptr %dir_i, i32 0, i32 16
  %i_ctime = getelementptr inbounds %struct.inode, ptr %dir_i, i32 0, i32 17
  %51 = ptrtoint ptr %mctime to i32
  call void @__asan_loadN_noabort(i32 %51, i32 4)
  %52 = load i32, ptr %mctime, align 1
  %conv125 = zext i32 %52 to i64
  %53 = ptrtoint ptr %i_ctime to i32
  call void @__asan_store8_noabort(i32 %53)
  store i64 %conv125, ptr %i_ctime, align 8
  %.compoundliteral122.sroa.2.0.i_ctime.sroa_idx = getelementptr inbounds %struct.inode, ptr %dir_i, i32 0, i32 17, i32 1
  %54 = ptrtoint ptr %.compoundliteral122.sroa.2.0.i_ctime.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 0, ptr %.compoundliteral122.sroa.2.0.i_ctime.sroa_idx, align 8
  %55 = call ptr @memcpy(ptr %i_mtime, ptr %i_ctime, i32 16)
  call void @jffs2_free_raw_dirent(ptr noundef nonnull %call65) #7
  %dents = getelementptr i8, ptr %dir_i, i32 -16
  call void @jffs2_add_fd_to_list(ptr noundef %4, ptr noundef %call116, ptr noundef %dents) #7
  call void @mutex_unlock(ptr noundef %add.ptr71) #7
  call void @jffs2_complete_reservation(ptr noundef %4) #7
  call void @d_instantiate_new(ptr noundef %dentry, ptr noundef %call8) #7
  br label %cleanup

fail:                                             ; preds = %if.then118, %if.then67, %if.end58.fail_crit_edge, %if.end54.fail_crit_edge, %if.end44.fail_crit_edge, %do.end, %if.then31
  %ret.0 = phi i32 [ %20, %if.then31 ], [ %call51, %if.end44.fail_crit_edge ], [ %call55, %if.end54.fail_crit_edge ], [ %call61, %if.end58.fail_crit_edge ], [ %50, %if.then118 ], [ -12, %if.then67 ], [ -12, %do.end ]
  call void @iget_failed(ptr noundef %call8) #7
  br label %cleanup

cleanup:                                          ; preds = %fail, %if.end121, %if.then10, %if.then6, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.then6 ], [ %7, %if.then10 ], [ %ret.0, %fail ], [ 0, %if.end121 ], [ -36, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %alloclen) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @jffs2_mkdir(ptr nocapture noundef readnone %mnt_userns, ptr noundef %dir_i, ptr noundef %dentry, i16 noundef zeroext %mode) #1 align 64 {
entry:
  %alloclen = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %alloclen) #7
  %0 = ptrtoint ptr %alloclen to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %alloclen, align 4, !annotation !33
  %1 = or i16 %mode, 16384
  %call = tail call ptr @jffs2_alloc_raw_inode() #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %i_sb = getelementptr inbounds %struct.inode, ptr %dir_i, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info, align 16
  %d_name = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4
  %6 = ptrtoint ptr %d_name to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %d_name, align 8
  %call2 = call i32 @jffs2_reserve_space(ptr noundef %5, i32 noundef 68, ptr noundef nonnull %alloclen, i32 noundef 0, i32 noundef 18) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.then4

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  call void @jffs2_free_raw_inode(ptr noundef nonnull %call) #7
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call6 = call ptr @jffs2_new_inode(ptr noundef %dir_i, i16 noundef zeroext %1, ptr noundef nonnull %call) #7
  %cmp.i = icmp ugt ptr %call6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then8, label %if.end10

if.then8:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  call void @jffs2_free_raw_inode(ptr noundef nonnull %call) #7
  call void @jffs2_complete_reservation(ptr noundef %5) #7
  %8 = ptrtoint ptr %call6 to i32
  br label %cleanup

if.end10:                                         ; preds = %if.end5
  %i_op = getelementptr inbounds %struct.inode, ptr %call6, i32 0, i32 7
  %9 = ptrtoint ptr %i_op to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @jffs2_dir_inode_operations, ptr %i_op, align 8
  %10 = getelementptr inbounds %struct.inode, ptr %call6, i32 0, i32 44
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @jffs2_dir_operations, ptr %10, align 8
  %add.ptr = getelementptr i8, ptr %call6, i32 -120
  call void @set_nlink(ptr noundef %call6, i32 noundef 2) #7
  %i_ino = getelementptr inbounds %struct.inode, ptr %dir_i, i32 0, i32 11
  %12 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %i_ino, align 8
  %inocache = getelementptr i8, ptr %call6, i32 -8
  %14 = ptrtoint ptr %inocache to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %inocache, align 8
  %pino_nlink = getelementptr inbounds %struct.jffs2_inode_cache, ptr %15, i32 0, i32 8
  %16 = ptrtoint ptr %pino_nlink to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %13, ptr %pino_nlink, align 4
  %data_crc = getelementptr inbounds %struct.jffs2_raw_inode, ptr %call, i32 0, i32 19
  %17 = ptrtoint ptr %data_crc to i32
  call void @__asan_storeN_noabort(i32 %17, i32 4)
  store i32 0, ptr %data_crc, align 1
  %node_crc = getelementptr inbounds %struct.jffs2_raw_inode, ptr %call, i32 0, i32 20
  %call13 = call i32 @crc32_le(i32 noundef 0, ptr noundef nonnull %call, i32 noundef 60) #11
  %18 = ptrtoint ptr %node_crc to i32
  call void @__asan_storeN_noabort(i32 %18, i32 4)
  store i32 %call13, ptr %node_crc, align 1
  %call14 = call ptr @jffs2_write_dnode(ptr noundef %5, ptr noundef %add.ptr, ptr noundef nonnull %call, ptr noundef null, i32 noundef 0, i32 noundef 0) #7
  call void @jffs2_free_raw_inode(ptr noundef nonnull %call) #7
  %cmp.i190 = icmp ugt ptr %call14, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i190, label %if.then16, label %if.end18

if.then16:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  call void @mutex_unlock(ptr noundef %add.ptr) #7
  call void @jffs2_complete_reservation(ptr noundef %5) #7
  %19 = ptrtoint ptr %call14 to i32
  br label %fail

if.end18:                                         ; preds = %if.end10
  %metadata = getelementptr i8, ptr %call6, i32 -20
  %20 = ptrtoint ptr %metadata to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call14, ptr %metadata, align 4
  call void @mutex_unlock(ptr noundef %add.ptr) #7
  call void @jffs2_complete_reservation(ptr noundef %5) #7
  %call21 = call i32 @jffs2_init_security(ptr noundef %call6, ptr noundef %dir_i, ptr noundef %d_name) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end24, label %if.end18.fail_crit_edge

if.end18.fail_crit_edge:                          ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %fail

if.end24:                                         ; preds = %if.end18
  %call25 = call i32 @jffs2_init_acl_post(ptr noundef %call6) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end28, label %if.end24.fail_crit_edge

if.end24.fail_crit_edge:                          ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  br label %fail

if.end28:                                         ; preds = %if.end24
  %add = add i32 %7, 40
  %add29 = add i32 %7, 24
  %call30 = call i32 @jffs2_reserve_space(ptr noundef %5, i32 noundef %add, ptr noundef nonnull %alloclen, i32 noundef 0, i32 noundef %add29) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.end33, label %if.end28.fail_crit_edge

if.end28.fail_crit_edge:                          ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  br label %fail

if.end33:                                         ; preds = %if.end28
  %call34 = call ptr @jffs2_alloc_raw_dirent() #7
  %tobool35.not = icmp eq ptr %call34, null
  br i1 %tobool35.not, label %if.then36, label %if.end37

if.then36:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #9
  call void @jffs2_complete_reservation(ptr noundef %5) #7
  br label %fail

if.end37:                                         ; preds = %if.end33
  %add.ptr40 = getelementptr i8, ptr %dir_i, i32 -120
  call void @mutex_lock_nested(ptr noundef %add.ptr40, i32 noundef 0) #7
  %21 = ptrtoint ptr %call34 to i32
  call void @__asan_storeN_noabort(i32 %21, i32 2)
  store i16 6533, ptr %call34, align 1
  %nodetype = getelementptr inbounds %struct.jffs2_raw_dirent, ptr %call34, i32 0, i32 1
  %22 = ptrtoint ptr %nodetype to i32
  call void @__asan_storeN_noabort(i32 %22, i32 2)
  store i16 -8191, ptr %nodetype, align 1
  %totlen = getelementptr inbounds %struct.jffs2_raw_dirent, ptr %call34, i32 0, i32 2
  %23 = ptrtoint ptr %totlen to i32
  call void @__asan_storeN_noabort(i32 %23, i32 4)
  store i32 %add, ptr %totlen, align 1
  %hdr_crc = getelementptr inbounds %struct.jffs2_raw_dirent, ptr %call34, i32 0, i32 3
  %call50 = call i32 @crc32_le(i32 noundef 0, ptr noundef nonnull %call34, i32 noundef 8) #11
  %24 = ptrtoint ptr %hdr_crc to i32
  call void @__asan_storeN_noabort(i32 %24, i32 4)
  store i32 %call50, ptr %hdr_crc, align 1
  %pino = getelementptr inbounds %struct.jffs2_raw_dirent, ptr %call34, i32 0, i32 4
  %25 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %i_ino, align 8
  %27 = ptrtoint ptr %pino to i32
  call void @__asan_storeN_noabort(i32 %27, i32 4)
  store i32 %26, ptr %pino, align 1
  %version = getelementptr inbounds %struct.jffs2_raw_dirent, ptr %call34, i32 0, i32 5
  %highest_version = getelementptr i8, ptr %dir_i, i32 -28
  %28 = ptrtoint ptr %highest_version to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %highest_version, align 4
  %inc = add i32 %29, 1
  store i32 %inc, ptr %highest_version, align 4
  %30 = ptrtoint ptr %version to i32
  call void @__asan_storeN_noabort(i32 %30, i32 4)
  store i32 %inc, ptr %version, align 1
  %ino = getelementptr inbounds %struct.jffs2_raw_dirent, ptr %call34, i32 0, i32 6
  %i_ino58 = getelementptr inbounds %struct.inode, ptr %call6, i32 0, i32 11
  %31 = ptrtoint ptr %i_ino58 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %i_ino58, align 8
  %33 = ptrtoint ptr %ino to i32
  call void @__asan_storeN_noabort(i32 %33, i32 4)
  store i32 %32, ptr %ino, align 1
  %mctime = getelementptr inbounds %struct.jffs2_raw_dirent, ptr %call34, i32 0, i32 7
  %call61 = call i64 @ktime_get_real_seconds() #7
  %34 = call i64 @llvm.smax.i64(i64 %call61, i64 0)
  %35 = call i64 @llvm.umin.i64(i64 %34, i64 4294967295)
  %36 = trunc i64 %35 to i32
  %37 = ptrtoint ptr %mctime to i32
  call void @__asan_storeN_noabort(i32 %37, i32 4)
  store i32 %36, ptr %mctime, align 1
  %conv72 = trunc i32 %7 to i8
  %nsize = getelementptr inbounds %struct.jffs2_raw_dirent, ptr %call34, i32 0, i32 8
  %38 = ptrtoint ptr %nsize to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %conv72, ptr %nsize, align 1
  %type = getelementptr inbounds %struct.jffs2_raw_dirent, ptr %call34, i32 0, i32 9
  %39 = ptrtoint ptr %type to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 4, ptr %type, align 1
  %node_crc73 = getelementptr inbounds %struct.jffs2_raw_dirent, ptr %call34, i32 0, i32 11
  %call76 = call i32 @crc32_le(i32 noundef 0, ptr noundef nonnull %call34, i32 noundef 32) #11
  %40 = ptrtoint ptr %node_crc73 to i32
  call void @__asan_storeN_noabort(i32 %40, i32 4)
  store i32 %call76, ptr %node_crc73, align 1
  %name_crc = getelementptr inbounds %struct.jffs2_raw_dirent, ptr %call34, i32 0, i32 12
  %name = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4, i32 1
  %41 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %name, align 8
  %call80 = call i32 @crc32_le(i32 noundef 0, ptr noundef %42, i32 noundef %7) #11
  %43 = ptrtoint ptr %name_crc to i32
  call void @__asan_storeN_noabort(i32 %43, i32 4)
  store i32 %call80, ptr %name_crc, align 1
  %44 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %name, align 8
  %call83 = call ptr @jffs2_write_dirent(ptr noundef %5, ptr noundef %add.ptr40, ptr noundef nonnull %call34, ptr noundef %45, i32 noundef %7, i32 noundef 0) #7
  %cmp.i191 = icmp ugt ptr %call83, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i191, label %if.then85, label %if.end88

if.then85:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  call void @jffs2_complete_reservation(ptr noundef %5) #7
  call void @jffs2_free_raw_dirent(ptr noundef nonnull %call34) #7
  call void @mutex_unlock(ptr noundef %add.ptr40) #7
  %46 = ptrtoint ptr %call83 to i32
  br label %fail

if.end88:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  %i_mtime = getelementptr inbounds %struct.inode, ptr %dir_i, i32 0, i32 16
  %i_ctime = getelementptr inbounds %struct.inode, ptr %dir_i, i32 0, i32 17
  %47 = ptrtoint ptr %mctime to i32
  call void @__asan_loadN_noabort(i32 %47, i32 4)
  %48 = load i32, ptr %mctime, align 1
  %conv92 = zext i32 %48 to i64
  %49 = ptrtoint ptr %i_ctime to i32
  call void @__asan_store8_noabort(i32 %49)
  store i64 %conv92, ptr %i_ctime, align 8
  %.compoundliteral89.sroa.2.0.i_ctime.sroa_idx = getelementptr inbounds %struct.inode, ptr %dir_i, i32 0, i32 17, i32 1
  %50 = ptrtoint ptr %.compoundliteral89.sroa.2.0.i_ctime.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 0, ptr %.compoundliteral89.sroa.2.0.i_ctime.sroa_idx, align 8
  %51 = call ptr @memcpy(ptr %i_mtime, ptr %i_ctime, i32 16)
  call void @inc_nlink(ptr noundef %dir_i) #7
  call void @jffs2_free_raw_dirent(ptr noundef nonnull %call34) #7
  %dents = getelementptr i8, ptr %dir_i, i32 -16
  call void @jffs2_add_fd_to_list(ptr noundef %5, ptr noundef %call83, ptr noundef %dents) #7
  call void @mutex_unlock(ptr noundef %add.ptr40) #7
  call void @jffs2_complete_reservation(ptr noundef %5) #7
  call void @d_instantiate_new(ptr noundef %dentry, ptr noundef %call6) #7
  br label %cleanup

fail:                                             ; preds = %if.then85, %if.then36, %if.end28.fail_crit_edge, %if.end24.fail_crit_edge, %if.end18.fail_crit_edge, %if.then16
  %ret.0 = phi i32 [ %19, %if.then16 ], [ %call21, %if.end18.fail_crit_edge ], [ %call25, %if.end24.fail_crit_edge ], [ %call30, %if.end28.fail_crit_edge ], [ %46, %if.then85 ], [ -12, %if.then36 ]
  call void @iget_failed(ptr noundef %call6) #7
  br label %cleanup

cleanup:                                          ; preds = %fail, %if.end88, %if.then8, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.then4 ], [ %8, %if.then8 ], [ %ret.0, %fail ], [ 0, %if.end88 ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %alloclen) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @jffs2_rmdir(ptr noundef %dir_i, ptr nocapture noundef readonly %dentry) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %dir_i, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info, align 16
  %add.ptr = getelementptr i8, ptr %dir_i, i32 -120
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %4 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %d_inode.i, align 8
  %add.ptr3 = getelementptr i8, ptr %5, i32 -120
  %call4 = tail call i64 @ktime_get_real_seconds() #7
  %6 = tail call i64 @llvm.smax.i64(i64 %call4, i64 0)
  %7 = tail call i64 @llvm.umin.i64(i64 %6, i64 4294967295)
  %8 = trunc i64 %7 to i32
  tail call void @mutex_lock_nested(ptr noundef %add.ptr3, i32 noundef 0) #7
  %dents = getelementptr i8, ptr %5, i32 -16
  %9 = ptrtoint ptr %dents to i32
  call void @__asan_load4_noabort(i32 %9)
  %fd.048 = load ptr, ptr %dents, align 4
  %tobool.not49 = icmp eq ptr %fd.048, null
  br i1 %tobool.not49, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.cond:                                         ; preds = %for.body
  %next = getelementptr inbounds %struct.jffs2_full_dirent, ptr %fd.050, i32 0, i32 1
  %10 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %10)
  %fd.0 = load ptr, ptr %next, align 4
  %tobool.not = icmp eq ptr %fd.0, null
  br i1 %tobool.not, label %for.cond.for.end_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %entry.for.body_crit_edge
  %fd.050 = phi ptr [ %fd.0, %for.cond.for.body_crit_edge ], [ %fd.048, %entry.for.body_crit_edge ]
  %ino = getelementptr inbounds %struct.jffs2_full_dirent, ptr %fd.050, i32 0, i32 3
  %11 = ptrtoint ptr %ino to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ino, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool12.not = icmp eq i32 %12, 0
  br i1 %tobool12.not, label %for.cond, label %if.then

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @mutex_unlock(ptr noundef %add.ptr3) #7
  br label %cleanup

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %add.ptr3) #7
  %d_name = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4
  %name = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4, i32 1
  %13 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %name, align 8
  %15 = ptrtoint ptr %d_name to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %d_name, align 8
  %call16 = tail call i32 @jffs2_do_unlink(ptr noundef %3, ptr noundef %add.ptr, ptr noundef %14, i32 noundef %16, ptr noundef %add.ptr3, i32 noundef %8) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.then18, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then18:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %i_mtime = getelementptr inbounds %struct.inode, ptr %dir_i, i32 0, i32 16
  %i_ctime = getelementptr inbounds %struct.inode, ptr %dir_i, i32 0, i32 17
  %17 = ptrtoint ptr %i_ctime to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %7, ptr %i_ctime, align 8
  %.compoundliteral.sroa.2.0.i_ctime.sroa_idx = getelementptr inbounds %struct.inode, ptr %dir_i, i32 0, i32 17, i32 1
  %18 = ptrtoint ptr %.compoundliteral.sroa.2.0.i_ctime.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %.compoundliteral.sroa.2.0.i_ctime.sroa_idx, align 8
  %19 = call ptr @memcpy(ptr %i_mtime, ptr %i_ctime, i32 16)
  %20 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %d_inode.i, align 8
  tail call void @clear_nlink(ptr noundef %21) #7
  tail call void @drop_nlink(ptr noundef %dir_i) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then18, %for.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ -39, %if.then ], [ 0, %if.then18 ], [ %call16, %for.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @jffs2_mknod(ptr nocapture noundef readnone %mnt_userns, ptr noundef %dir_i, ptr noundef %dentry, i16 noundef zeroext %mode, i32 noundef %rdev) #1 align 64 {
entry:
  %dev = alloca %union.jffs2_device_node, align 4
  %alloclen = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dev) #7
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %dev, align 4, !annotation !33
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %alloclen) #7
  %1 = ptrtoint ptr %alloclen to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %alloclen, align 4, !annotation !33
  %call = tail call ptr @jffs2_alloc_raw_inode() #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %i_sb = getelementptr inbounds %struct.inode, ptr %dir_i, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info, align 16
  %6 = and i16 %mode, -4096
  %7 = zext i16 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.9)
  switch i16 %6, label %if.end.if.end8_crit_edge [
    i16 24576, label %if.end.if.then6_crit_edge
    i16 8192, label %if.end.if.then6_crit_edge227
  ]

if.end.if.then6_crit_edge227:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then6

if.end.if.then6_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then6

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

if.then6:                                         ; preds = %if.end.if.then6_crit_edge, %if.end.if.then6_crit_edge227
  %8 = and i32 %rdev, -267387136
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #9
  %10 = lshr i32 %rdev, 12
  %shl.i.i = and i32 %10, 65280
  %or.i.i = or i32 %shl.i.i, %rdev
  %conv.i.i = trunc i32 %or.i.i to i16
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %conv.i.i, ptr %dev, align 4
  br label %if.end8

if.else.i:                                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #9
  %and1.i.i = and i32 %rdev, 255
  %12 = lshr i32 %rdev, 12
  %shl.i7.i = and i32 %12, 1048320
  %or.i8.i = or i32 %shl.i7.i, %and1.i.i
  %and2.i.i = shl i32 %rdev, 12
  %shl3.i.i = and i32 %and2.i.i, -1048576
  %or4.i.i = or i32 %or.i8.i, %shl3.i.i
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %or4.i.i, ptr %dev, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.else.i, %if.then.i, %if.end.if.end8_crit_edge
  %devlen.0 = phi i32 [ 0, %if.end.if.end8_crit_edge ], [ 2, %if.then.i ], [ 4, %if.else.i ]
  %d_name = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4
  %14 = ptrtoint ptr %d_name to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %d_name, align 8
  %add = add nuw nsw i32 %devlen.0, 68
  %call9 = call i32 @jffs2_reserve_space(ptr noundef %5, i32 noundef %add, ptr noundef nonnull %alloclen, i32 noundef 0, i32 noundef 18) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %if.then11

if.then11:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  call void @jffs2_free_raw_inode(ptr noundef nonnull %call) #7
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  %call13 = call ptr @jffs2_new_inode(ptr noundef %dir_i, i16 noundef zeroext %mode, ptr noundef nonnull %call) #7
  %cmp.i = icmp ugt ptr %call13, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then15, label %if.end17

if.then15:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  call void @jffs2_free_raw_inode(ptr noundef nonnull %call) #7
  call void @jffs2_complete_reservation(ptr noundef %5) #7
  %16 = ptrtoint ptr %call13 to i32
  br label %cleanup

if.end17:                                         ; preds = %if.end12
  %i_op = getelementptr inbounds %struct.inode, ptr %call13, i32 0, i32 7
  %17 = ptrtoint ptr %i_op to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @jffs2_file_inode_operations, ptr %i_op, align 8
  %18 = ptrtoint ptr %call13 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %call13, align 8
  call void @init_special_inode(ptr noundef %call13, i16 noundef zeroext %19, i32 noundef %rdev) #7
  %add.ptr = getelementptr i8, ptr %call13, i32 -120
  %dsize = getelementptr inbounds %struct.jffs2_raw_inode, ptr %call, i32 0, i32 15
  %csize = getelementptr inbounds %struct.jffs2_raw_inode, ptr %call, i32 0, i32 14
  %20 = ptrtoint ptr %csize to i32
  call void @__asan_storeN_noabort(i32 %20, i32 4)
  store i32 %devlen.0, ptr %csize, align 1
  %21 = ptrtoint ptr %dsize to i32
  call void @__asan_storeN_noabort(i32 %21, i32 4)
  store i32 %devlen.0, ptr %dsize, align 1
  %totlen = getelementptr inbounds %struct.jffs2_raw_inode, ptr %call, i32 0, i32 2
  %22 = ptrtoint ptr %totlen to i32
  call void @__asan_storeN_noabort(i32 %22, i32 4)
  store i32 %add, ptr %totlen, align 1
  %hdr_crc = getelementptr inbounds %struct.jffs2_raw_inode, ptr %call, i32 0, i32 3
  %call23 = call i32 @crc32_le(i32 noundef 0, ptr noundef nonnull %call, i32 noundef 8) #11
  %23 = ptrtoint ptr %hdr_crc to i32
  call void @__asan_storeN_noabort(i32 %23, i32 4)
  store i32 %call23, ptr %hdr_crc, align 1
  %compr = getelementptr inbounds %struct.jffs2_raw_inode, ptr %call, i32 0, i32 16
  %24 = ptrtoint ptr %compr to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %compr, align 1
  %data_crc = getelementptr inbounds %struct.jffs2_raw_inode, ptr %call, i32 0, i32 19
  %call26 = call i32 @crc32_le(i32 noundef 0, ptr noundef nonnull %dev, i32 noundef %devlen.0) #11
  %25 = ptrtoint ptr %data_crc to i32
  call void @__asan_storeN_noabort(i32 %25, i32 4)
  store i32 %call26, ptr %data_crc, align 1
  %node_crc = getelementptr inbounds %struct.jffs2_raw_inode, ptr %call, i32 0, i32 20
  %call29 = call i32 @crc32_le(i32 noundef 0, ptr noundef nonnull %call, i32 noundef 60) #11
  %26 = ptrtoint ptr %node_crc to i32
  call void @__asan_storeN_noabort(i32 %26, i32 4)
  store i32 %call29, ptr %node_crc, align 1
  %call30 = call ptr @jffs2_write_dnode(ptr noundef %5, ptr noundef %add.ptr, ptr noundef nonnull %call, ptr noundef nonnull %dev, i32 noundef %devlen.0, i32 noundef 0) #7
  call void @jffs2_free_raw_inode(ptr noundef nonnull %call) #7
  %cmp.i224 = icmp ugt ptr %call30, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i224, label %if.then32, label %if.end34

if.then32:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  call void @mutex_unlock(ptr noundef %add.ptr) #7
  call void @jffs2_complete_reservation(ptr noundef %5) #7
  %27 = ptrtoint ptr %call30 to i32
  br label %fail

if.end34:                                         ; preds = %if.end17
  %metadata = getelementptr i8, ptr %call13, i32 -20
  %28 = ptrtoint ptr %metadata to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call30, ptr %metadata, align 4
  call void @mutex_unlock(ptr noundef %add.ptr) #7
  call void @jffs2_complete_reservation(ptr noundef %5) #7
  %call37 = call i32 @jffs2_init_security(ptr noundef %call13, ptr noundef %dir_i, ptr noundef %d_name) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.end40, label %if.end34.fail_crit_edge

if.end34.fail_crit_edge:                          ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #9
  br label %fail

if.end40:                                         ; preds = %if.end34
  %call41 = call i32 @jffs2_init_acl_post(ptr noundef %call13) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %if.end44, label %if.end40.fail_crit_edge

if.end40.fail_crit_edge:                          ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #9
  br label %fail

if.end44:                                         ; preds = %if.end40
  %add45 = add i32 %15, 40
  %add46 = add i32 %15, 24
  %call47 = call i32 @jffs2_reserve_space(ptr noundef %5, i32 noundef %add45, ptr noundef nonnull %alloclen, i32 noundef 0, i32 noundef %add46) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %if.end50, label %if.end44.fail_crit_edge

if.end44.fail_crit_edge:                          ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #9
  br label %fail

if.end50:                                         ; preds = %if.end44
  %call51 = call ptr @jffs2_alloc_raw_dirent() #7
  %tobool52.not = icmp eq ptr %call51, null
  br i1 %tobool52.not, label %if.then53, label %if.end54

if.then53:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #9
  call void @jffs2_complete_reservation(ptr noundef %5) #7
  br label %fail

if.end54:                                         ; preds = %if.end50
  %add.ptr57 = getelementptr i8, ptr %dir_i, i32 -120
  call void @mutex_lock_nested(ptr noundef %add.ptr57, i32 noundef 0) #7
  %29 = ptrtoint ptr %call51 to i32
  call void @__asan_storeN_noabort(i32 %29, i32 2)
  store i16 6533, ptr %call51, align 1
  %nodetype = getelementptr inbounds %struct.jffs2_raw_dirent, ptr %call51, i32 0, i32 1
  %30 = ptrtoint ptr %nodetype to i32
  call void @__asan_storeN_noabort(i32 %30, i32 2)
  store i16 -8191, ptr %nodetype, align 1
  %totlen62 = getelementptr inbounds %struct.jffs2_raw_dirent, ptr %call51, i32 0, i32 2
  %31 = ptrtoint ptr %totlen62 to i32
  call void @__asan_storeN_noabort(i32 %31, i32 4)
  store i32 %add45, ptr %totlen62, align 1
  %hdr_crc66 = getelementptr inbounds %struct.jffs2_raw_dirent, ptr %call51, i32 0, i32 3
  %call69 = call i32 @crc32_le(i32 noundef 0, ptr noundef nonnull %call51, i32 noundef 8) #11
  %32 = ptrtoint ptr %hdr_crc66 to i32
  call void @__asan_storeN_noabort(i32 %32, i32 4)
  store i32 %call69, ptr %hdr_crc66, align 1
  %pino = getelementptr inbounds %struct.jffs2_raw_dirent, ptr %call51, i32 0, i32 4
  %i_ino = getelementptr inbounds %struct.inode, ptr %dir_i, i32 0, i32 11
  %33 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %i_ino, align 8
  %35 = ptrtoint ptr %pino to i32
  call void @__asan_storeN_noabort(i32 %35, i32 4)
  store i32 %34, ptr %pino, align 1
  %version = getelementptr inbounds %struct.jffs2_raw_dirent, ptr %call51, i32 0, i32 5
  %highest_version = getelementptr i8, ptr %dir_i, i32 -28
  %36 = ptrtoint ptr %highest_version to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %highest_version, align 4
  %inc = add i32 %37, 1
  store i32 %inc, ptr %highest_version, align 4
  %38 = ptrtoint ptr %version to i32
  call void @__asan_storeN_noabort(i32 %38, i32 4)
  store i32 %inc, ptr %version, align 1
  %ino = getelementptr inbounds %struct.jffs2_raw_dirent, ptr %call51, i32 0, i32 6
  %i_ino76 = getelementptr inbounds %struct.inode, ptr %call13, i32 0, i32 11
  %39 = ptrtoint ptr %i_ino76 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %i_ino76, align 8
  %41 = ptrtoint ptr %ino to i32
  call void @__asan_storeN_noabort(i32 %41, i32 4)
  store i32 %40, ptr %ino, align 1
  %mctime = getelementptr inbounds %struct.jffs2_raw_dirent, ptr %call51, i32 0, i32 7
  %call79 = call i64 @ktime_get_real_seconds() #7
  %42 = call i64 @llvm.smax.i64(i64 %call79, i64 0)
  %43 = call i64 @llvm.umin.i64(i64 %42, i64 4294967295)
  %44 = trunc i64 %43 to i32
  %45 = ptrtoint ptr %mctime to i32
  call void @__asan_storeN_noabort(i32 %45, i32 4)
  store i32 %44, ptr %mctime, align 1
  %conv91 = trunc i32 %15 to i8
  %nsize = getelementptr inbounds %struct.jffs2_raw_dirent, ptr %call51, i32 0, i32 8
  %46 = ptrtoint ptr %nsize to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %conv91, ptr %nsize, align 1
  %47 = lshr i16 %mode, 12
  %conv94 = trunc i16 %47 to i8
  %type = getelementptr inbounds %struct.jffs2_raw_dirent, ptr %call51, i32 0, i32 9
  %48 = ptrtoint ptr %type to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %conv94, ptr %type, align 1
  %node_crc95 = getelementptr inbounds %struct.jffs2_raw_dirent, ptr %call51, i32 0, i32 11
  %call98 = call i32 @crc32_le(i32 noundef 0, ptr noundef nonnull %call51, i32 noundef 32) #11
  %49 = ptrtoint ptr %node_crc95 to i32
  call void @__asan_storeN_noabort(i32 %49, i32 4)
  store i32 %call98, ptr %node_crc95, align 1
  %name_crc = getelementptr inbounds %struct.jffs2_raw_dirent, ptr %call51, i32 0, i32 12
  %name = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4, i32 1
  %50 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %name, align 8
  %call102 = call i32 @crc32_le(i32 noundef 0, ptr noundef %51, i32 noundef %15) #11
  %52 = ptrtoint ptr %name_crc to i32
  call void @__asan_storeN_noabort(i32 %52, i32 4)
  store i32 %call102, ptr %name_crc, align 1
  %53 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %name, align 8
  %call105 = call ptr @jffs2_write_dirent(ptr noundef %5, ptr noundef %add.ptr57, ptr noundef nonnull %call51, ptr noundef %54, i32 noundef %15, i32 noundef 0) #7
  %cmp.i225 = icmp ugt ptr %call105, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i225, label %if.then107, label %if.end110

if.then107:                                       ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #9
  call void @jffs2_complete_reservation(ptr noundef %5) #7
  call void @jffs2_free_raw_dirent(ptr noundef nonnull %call51) #7
  call void @mutex_unlock(ptr noundef %add.ptr57) #7
  %55 = ptrtoint ptr %call105 to i32
  br label %fail

if.end110:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #9
  %i_mtime = getelementptr inbounds %struct.inode, ptr %dir_i, i32 0, i32 16
  %i_ctime = getelementptr inbounds %struct.inode, ptr %dir_i, i32 0, i32 17
  %56 = ptrtoint ptr %mctime to i32
  call void @__asan_loadN_noabort(i32 %56, i32 4)
  %57 = load i32, ptr %mctime, align 1
  %conv114 = zext i32 %57 to i64
  %58 = ptrtoint ptr %i_ctime to i32
  call void @__asan_store8_noabort(i32 %58)
  store i64 %conv114, ptr %i_ctime, align 8
  %.compoundliteral111.sroa.2.0.i_ctime.sroa_idx = getelementptr inbounds %struct.inode, ptr %dir_i, i32 0, i32 17, i32 1
  %59 = ptrtoint ptr %.compoundliteral111.sroa.2.0.i_ctime.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 0, ptr %.compoundliteral111.sroa.2.0.i_ctime.sroa_idx, align 8
  %60 = call ptr @memcpy(ptr %i_mtime, ptr %i_ctime, i32 16)
  call void @jffs2_free_raw_dirent(ptr noundef nonnull %call51) #7
  %dents = getelementptr i8, ptr %dir_i, i32 -16
  call void @jffs2_add_fd_to_list(ptr noundef %5, ptr noundef %call105, ptr noundef %dents) #7
  call void @mutex_unlock(ptr noundef %add.ptr57) #7
  call void @jffs2_complete_reservation(ptr noundef %5) #7
  call void @d_instantiate_new(ptr noundef %dentry, ptr noundef %call13) #7
  br label %cleanup

fail:                                             ; preds = %if.then107, %if.then53, %if.end44.fail_crit_edge, %if.end40.fail_crit_edge, %if.end34.fail_crit_edge, %if.then32
  %ret.0 = phi i32 [ %27, %if.then32 ], [ %call37, %if.end34.fail_crit_edge ], [ %call41, %if.end40.fail_crit_edge ], [ %call47, %if.end44.fail_crit_edge ], [ %55, %if.then107 ], [ -12, %if.then53 ]
  call void @iget_failed(ptr noundef %call13) #7
  br label %cleanup

cleanup:                                          ; preds = %fail, %if.end110, %if.then15, %if.then11, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call9, %if.then11 ], [ %16, %if.then15 ], [ %ret.0, %fail ], [ 0, %if.end110 ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %alloclen) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dev) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @jffs2_rename(ptr nocapture noundef readnone %mnt_userns, ptr noundef %old_dir_i, ptr nocapture noundef readonly %old_dentry, ptr noundef %new_dir_i, ptr noundef %new_dentry, i32 noundef %flags) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %old_dir_i, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %flags)
  %tobool.not = icmp ult i32 %flags, 2
  br i1 %tobool.not, label %if.end, label %entry.cleanup105_crit_edge

entry.cleanup105_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup105

if.end:                                           ; preds = %entry
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %new_dentry, i32 0, i32 5
  %4 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %d_inode.i, align 8
  %cmp.i.not = icmp eq ptr %5, null
  br i1 %cmp.i.not, label %if.end.if.end12_crit_edge, label %if.then1

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

if.then1:                                         ; preds = %if.end
  %add.ptr = getelementptr i8, ptr %5, i32 -120
  %6 = ptrtoint ptr %new_dentry to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %new_dentry, align 8
  %8 = and i32 %7, 6291456
  call void @__sanitizer_cov_trace_const_cmp4(i32 2097152, i32 %8)
  %9 = icmp eq i32 %8, 2097152
  br i1 %9, label %if.then4, label %if.then1.if.end12_crit_edge

if.then1.if.end12_crit_edge:                      ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

if.then4:                                         ; preds = %if.then1
  tail call void @mutex_lock_nested(ptr noundef %add.ptr, i32 noundef 0) #7
  %dents = getelementptr i8, ptr %5, i32 -16
  %10 = ptrtoint ptr %dents to i32
  call void @__asan_load4_noabort(i32 %10)
  %fd.0176 = load ptr, ptr %dents, align 4
  %tobool5.not177 = icmp eq ptr %fd.0176, null
  br i1 %tobool5.not177, label %if.then4.for.end_crit_edge, label %if.then4.for.body_crit_edge

if.then4.for.body_crit_edge:                      ; preds = %if.then4
  br label %for.body

if.then4.for.end_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.cond:                                         ; preds = %for.body
  %next = getelementptr inbounds %struct.jffs2_full_dirent, ptr %fd.0178, i32 0, i32 1
  %11 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %11)
  %fd.0 = load ptr, ptr %next, align 4
  %tobool5.not = icmp eq ptr %fd.0, null
  br i1 %tobool5.not, label %for.cond.for.end_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %if.then4.for.body_crit_edge
  %fd.0178 = phi ptr [ %fd.0, %for.cond.for.body_crit_edge ], [ %fd.0176, %if.then4.for.body_crit_edge ]
  %ino = getelementptr inbounds %struct.jffs2_full_dirent, ptr %fd.0178, i32 0, i32 3
  %12 = ptrtoint ptr %ino to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ino, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool6.not = icmp eq i32 %13, 0
  br i1 %tobool6.not, label %for.cond, label %if.then7

if.then7:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @mutex_unlock(ptr noundef %add.ptr) #7
  br label %cleanup105

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %if.then4.for.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %add.ptr) #7
  br label %if.end12

if.end12:                                         ; preds = %for.end, %if.then1.if.end12_crit_edge, %if.end.if.end12_crit_edge
  %victim_f.0 = phi ptr [ %add.ptr, %if.then1.if.end12_crit_edge ], [ null, %if.end.if.end12_crit_edge ], [ %add.ptr, %for.end ]
  %d_inode.i166 = getelementptr inbounds %struct.dentry, ptr %old_dentry, i32 0, i32 5
  %14 = ptrtoint ptr %d_inode.i166 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %d_inode.i166, align 8
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %15, align 8
  %18 = lshr i16 %17, 12
  %conv15 = trunc i16 %18 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv15)
  %tobool16.not = icmp eq i8 %conv15, 0
  %spec.store.select = select i1 %tobool16.not, i8 8, i8 %conv15
  %call19 = tail call i64 @ktime_get_real_seconds() #7
  %19 = tail call i64 @llvm.smax.i64(i64 %call19, i64 0)
  %20 = tail call i64 @llvm.umin.i64(i64 %19, i64 4294967295)
  %21 = trunc i64 %20 to i32
  %add.ptr32 = getelementptr i8, ptr %new_dir_i, i32 -120
  %22 = ptrtoint ptr %d_inode.i166 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %d_inode.i166, align 8
  %i_ino = getelementptr inbounds %struct.inode, ptr %23, i32 0, i32 11
  %24 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %i_ino, align 8
  %d_name = getelementptr inbounds %struct.dentry, ptr %new_dentry, i32 0, i32 4
  %name = getelementptr inbounds %struct.dentry, ptr %new_dentry, i32 0, i32 4, i32 1
  %26 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %name, align 8
  %28 = ptrtoint ptr %d_name to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %d_name, align 8
  %call35 = tail call i32 @jffs2_do_link(ptr noundef %3, ptr noundef %add.ptr32, i32 noundef %25, i8 noundef zeroext %spec.store.select, ptr noundef %27, i32 noundef %29, i32 noundef %21) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.end38, label %if.end12.cleanup105_crit_edge

if.end12.cleanup105_crit_edge:                    ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup105

if.end38:                                         ; preds = %if.end12
  %tobool39.not = icmp eq ptr %victim_f.0, null
  br i1 %tobool39.not, label %if.end58, label %if.then40

if.then40:                                        ; preds = %if.end38
  %30 = ptrtoint ptr %new_dentry to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %new_dentry, align 8
  %32 = and i32 %31, 6291456
  call void @__sanitizer_cov_trace_const_cmp4(i32 2097152, i32 %32)
  %33 = icmp eq i32 %32, 2097152
  %34 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %d_inode.i, align 8
  br i1 %33, label %if.then42, label %if.else

if.then42:                                        ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clear_nlink(ptr noundef %35) #7
  br label %if.end45

if.else:                                          ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @drop_nlink(ptr noundef %35) #7
  br label %if.end45

if.end45:                                         ; preds = %if.else, %if.then42
  %inocache = getelementptr inbounds %struct.jffs2_inode_info, ptr %victim_f.0, i32 0, i32 6
  %36 = ptrtoint ptr %inocache to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %inocache, align 8
  %tobool46.not = icmp eq ptr %37, null
  br i1 %tobool46.not, label %if.end45.if.end63_crit_edge, label %if.then47

if.end45.if.end63_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end63

if.then47:                                        ; preds = %if.end45
  tail call void @mutex_lock_nested(ptr noundef nonnull %victim_f.0, i32 noundef 0) #7
  %38 = ptrtoint ptr %new_dentry to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %new_dentry, align 8
  %40 = and i32 %39, 6291456
  call void @__sanitizer_cov_trace_const_cmp4(i32 2097152, i32 %40)
  %41 = icmp eq i32 %40, 2097152
  %42 = ptrtoint ptr %inocache to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %inocache, align 8
  %pino_nlink = getelementptr inbounds %struct.jffs2_inode_cache, ptr %43, i32 0, i32 8
  br i1 %41, label %if.then47.if.end55_crit_edge, label %if.else52

if.then47.if.end55_crit_edge:                     ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end55

if.else52:                                        ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #9
  %44 = ptrtoint ptr %pino_nlink to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %pino_nlink, align 4
  %dec = add i32 %45, -1
  br label %if.end55

if.end55:                                         ; preds = %if.else52, %if.then47.if.end55_crit_edge
  %dec.sink = phi i32 [ %dec, %if.else52 ], [ 0, %if.then47.if.end55_crit_edge ]
  %46 = ptrtoint ptr %pino_nlink to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %dec.sink, ptr %pino_nlink, align 4
  tail call void @mutex_unlock(ptr noundef nonnull %victim_f.0) #7
  br label %if.end63

if.end58:                                         ; preds = %if.end38
  %47 = ptrtoint ptr %old_dentry to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %old_dentry, align 8
  %49 = and i32 %48, 6291456
  call void @__sanitizer_cov_trace_const_cmp4(i32 2097152, i32 %49)
  %.not = icmp eq i32 %49, 2097152
  br i1 %.not, label %if.then62, label %if.end58.if.end63_crit_edge

if.end58.if.end63_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end63

if.then62:                                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @inc_nlink(ptr noundef %new_dir_i) #7
  br label %if.end63

if.end63:                                         ; preds = %if.then62, %if.end58.if.end63_crit_edge, %if.end55, %if.end45.if.end63_crit_edge
  %add.ptr66 = getelementptr i8, ptr %old_dir_i, i32 -120
  %d_name67 = getelementptr inbounds %struct.dentry, ptr %old_dentry, i32 0, i32 4
  %name68 = getelementptr inbounds %struct.dentry, ptr %old_dentry, i32 0, i32 4, i32 1
  %50 = ptrtoint ptr %name68 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %name68, align 8
  %52 = ptrtoint ptr %d_name67 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %d_name67, align 8
  %call71 = tail call i32 @jffs2_do_unlink(ptr noundef %3, ptr noundef %add.ptr66, ptr noundef %51, i32 noundef %53, ptr noundef null, i32 noundef %21) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71)
  %tobool72.not = icmp eq i32 %call71, 0
  br i1 %tobool72.not, label %if.end93, label %if.then73

if.then73:                                        ; preds = %if.end63
  %54 = ptrtoint ptr %d_inode.i166 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %d_inode.i166, align 8
  %add.ptr77 = getelementptr i8, ptr %55, i32 -120
  tail call void @mutex_lock_nested(ptr noundef %add.ptr77, i32 noundef 0) #7
  %56 = ptrtoint ptr %d_inode.i166 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %d_inode.i166, align 8
  tail call void @inc_nlink(ptr noundef %57) #7
  %inocache80 = getelementptr i8, ptr %55, i32 -8
  %58 = ptrtoint ptr %inocache80 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %inocache80, align 8
  %tobool81.not = icmp eq ptr %59, null
  br i1 %tobool81.not, label %if.then73.if.end87_crit_edge, label %land.lhs.true82

if.then73.if.end87_crit_edge:                     ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end87

land.lhs.true82:                                  ; preds = %if.then73
  %60 = ptrtoint ptr %old_dentry to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %old_dentry, align 8
  %62 = and i32 %61, 6291456
  call void @__sanitizer_cov_trace_const_cmp4(i32 2097152, i32 %62)
  %63 = icmp eq i32 %62, 2097152
  br i1 %63, label %land.lhs.true82.if.end87_crit_edge, label %if.then84

land.lhs.true82.if.end87_crit_edge:               ; preds = %land.lhs.true82
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end87

if.then84:                                        ; preds = %land.lhs.true82
  call void @__sanitizer_cov_trace_pc() #9
  %pino_nlink86 = getelementptr inbounds %struct.jffs2_inode_cache, ptr %59, i32 0, i32 8
  %64 = ptrtoint ptr %pino_nlink86 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %pino_nlink86, align 4
  %inc = add i32 %65, 1
  store i32 %inc, ptr %pino_nlink86, align 4
  br label %if.end87

if.end87:                                         ; preds = %if.then84, %land.lhs.true82.if.end87_crit_edge, %if.then73.if.end87_crit_edge
  tail call void @mutex_unlock(ptr noundef %add.ptr77) #7
  %call90 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef %call71) #12
  tail call void @d_invalidate(ptr noundef %new_dentry) #7
  %i_mtime = getelementptr inbounds %struct.inode, ptr %new_dir_i, i32 0, i32 16
  %i_ctime = getelementptr inbounds %struct.inode, ptr %new_dir_i, i32 0, i32 17
  %66 = ptrtoint ptr %i_ctime to i32
  call void @__asan_store8_noabort(i32 %66)
  store i64 %20, ptr %i_ctime, align 8
  %.compoundliteral.sroa.2.0.i_ctime.sroa_idx = getelementptr inbounds %struct.inode, ptr %new_dir_i, i32 0, i32 17, i32 1
  %67 = ptrtoint ptr %.compoundliteral.sroa.2.0.i_ctime.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 0, ptr %.compoundliteral.sroa.2.0.i_ctime.sroa_idx, align 8
  %68 = call ptr @memcpy(ptr %i_mtime, ptr %i_ctime, i32 16)
  br label %cleanup105

if.end93:                                         ; preds = %if.end63
  %69 = ptrtoint ptr %old_dentry to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %old_dentry, align 8
  %71 = and i32 %70, 6291456
  call void @__sanitizer_cov_trace_const_cmp4(i32 2097152, i32 %71)
  %72 = icmp eq i32 %71, 2097152
  br i1 %72, label %if.then95, label %if.end93.if.end96_crit_edge

if.end93.if.end96_crit_edge:                      ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end96

if.then95:                                        ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @drop_nlink(ptr noundef %old_dir_i) #7
  br label %if.end96

if.end96:                                         ; preds = %if.then95, %if.end93.if.end96_crit_edge
  %i_mtime97 = getelementptr inbounds %struct.inode, ptr %new_dir_i, i32 0, i32 16
  %i_ctime98 = getelementptr inbounds %struct.inode, ptr %new_dir_i, i32 0, i32 17
  %i_mtime99 = getelementptr inbounds %struct.inode, ptr %old_dir_i, i32 0, i32 16
  %i_ctime100 = getelementptr inbounds %struct.inode, ptr %old_dir_i, i32 0, i32 17
  %73 = ptrtoint ptr %i_ctime100 to i32
  call void @__asan_store8_noabort(i32 %73)
  store i64 %20, ptr %i_ctime100, align 8
  %.compoundliteral101.sroa.2.0.i_ctime100.sroa_idx = getelementptr inbounds %struct.inode, ptr %old_dir_i, i32 0, i32 17, i32 1
  %74 = ptrtoint ptr %.compoundliteral101.sroa.2.0.i_ctime100.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 0, ptr %.compoundliteral101.sroa.2.0.i_ctime100.sroa_idx, align 8
  %75 = call ptr @memcpy(ptr %i_mtime99, ptr %i_ctime100, i32 16)
  %76 = call ptr @memmove(ptr %i_ctime98, ptr %i_ctime100, i32 16)
  %77 = call ptr @memcpy(ptr %i_mtime97, ptr %i_ctime98, i32 16)
  br label %cleanup105

cleanup105:                                       ; preds = %if.end96, %if.end87, %if.end12.cleanup105_crit_edge, %if.then7, %entry.cleanup105_crit_edge
  %retval.1 = phi i32 [ %call71, %if.end87 ], [ 0, %if.end96 ], [ -22, %entry.cleanup105_crit_edge ], [ -39, %if.then7 ], [ %call35, %if.end12.cleanup105_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jffs2_setattr(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jffs2_listxattr(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jffs2_set_acl(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @full_name_hash(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @jffs2_iget(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_splice_alias(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @jffs2_alloc_raw_inode() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @jffs2_new_inode(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @jffs2_free_raw_inode(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jffs2_do_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @d_instantiate_new(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @iget_failed(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_real_seconds() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jffs2_do_unlink(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_nlink(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jffs2_do_link(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @d_instantiate(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @ihold(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jffs2_reserve_space(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @jffs2_complete_reservation(ptr noundef) local_unnamed_addr #0

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @crc32_le(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @jffs2_write_dnode(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jffs2_init_security(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jffs2_init_acl_post(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @jffs2_alloc_raw_dirent() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @jffs2_write_dirent(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @jffs2_free_raw_dirent(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @jffs2_add_fd_to_list(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @inc_nlink(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @clear_nlink(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @drop_nlink(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_special_inode(ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @d_invalidate(ptr noundef) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smax.i64(i64, i64) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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

declare ptr @memmove(ptr, ptr, i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

attributes #0 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nobuiltin }
attributes #11 = { nounwind readonly willreturn }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !12, !14, !16, !17, !18, !19, !21, !22, !23}
!llvm.module.flags = !{!24, !25, !26, !27, !28, !29, !30, !31}
!llvm.ident = !{!32}

!0 = !{ptr @jffs2_dir_operations, !1, !"jffs2_dir_operations", i1 false, i1 false}
!1 = !{!"../fs/jffs2/dir.c", i32 44, i32 30}
!2 = !{ptr @jffs2_dir_inode_operations, !3, !"jffs2_dir_inode_operations", i1 false, i1 false}
!3 = !{!"../fs/jffs2/dir.c", i32 54, i32 31}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../fs/jffs2/dir.c", i32 114, i32 4}
!6 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @jffs2_lookup._entry, !5, !"_entry", i1 false, i1 false}
!9 = !{ptr @jffs2_lookup._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../include/linux/fs.h", i32 3566, i32 25}
!12 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../include/linux/fs.h", i32 3571, i32 25}
!14 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../fs/jffs2/dir.c", i32 356, i32 3}
!16 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @jffs2_symlink._entry, !15, !"_entry", i1 false, i1 false}
!18 = !{ptr @jffs2_symlink._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.7, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../fs/jffs2/dir.c", i32 857, i32 3}
!21 = !{ptr @.str.8, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @jffs2_rename._entry, !20, !"_entry", i1 false, i1 false}
!23 = !{ptr @jffs2_rename._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!24 = !{i32 1, !"wchar_size", i32 2}
!25 = !{i32 1, !"min_enum_size", i32 4}
!26 = !{i32 8, !"branch-target-enforcement", i32 0}
!27 = !{i32 8, !"sign-return-address", i32 0}
!28 = !{i32 8, !"sign-return-address-all", i32 0}
!29 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!30 = !{i32 7, !"uwtable", i32 1}
!31 = !{i32 7, !"frame-pointer", i32 2}
!32 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!33 = !{!"auto-init"}
