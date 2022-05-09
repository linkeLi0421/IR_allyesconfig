; ModuleID = '/llk/IR_all_yes/fs/coda/dir.c_pt.bc'
source_filename = "../fs/coda/dir.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.dentry_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [76 x i8] }
%struct.inode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [36 x i8] }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.76, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.77, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.78, ptr, %struct.address_space, %struct.list_head, %union.anon.79, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.76 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.hlist_node = type { ptr, ptr }
%union.anon.77 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%struct.atomic_t = type { i32 }
%union.anon.78 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.79 = type { ptr }
%struct.coda_vattr = type { i32, i16, i16, i32, i32, i32, i64, i32, %struct.coda_timespec, %struct.coda_timespec, %struct.coda_timespec, i32, i32, i64, i64, i64 }
%struct.coda_timespec = type { i64, i32 }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.74, %struct.list_head, %struct.list_head, %union.anon.75 }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.14, ptr }
%union.anon.14 = type { i64 }
%struct.lockref = type { %union.anon.16 }
%union.anon.16 = type { %struct.anon.17 }
%struct.anon.17 = type { %struct.spinlock, i32 }
%union.anon.74 = type { %struct.list_head }
%union.anon.75 = type { %struct.hlist_node }
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
%struct.CodaFid = type { [4 x i32] }
%struct.coda_file_info = type { i32, ptr, i32, i8 }
%struct.file = type { %union.anon.31, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.31 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.dir_context = type { ptr, i64 }
%struct.venus_dirent = type { i32, i16, i8, i8, [256 x i8] }

@coda_revalidate_inode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 551, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\014coda: inode %ld, fid %s changed type!\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"coda_revalidate_inode\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"fs/coda/dir.c\00", [18 x i8] zeroinitializer }, align 32
@coda_revalidate_inode._entry_ptr = internal global ptr @coda_revalidate_inode._entry, section ".printk_index", align 4
@coda_dentry_operations = dso_local local_unnamed_addr constant %struct.dentry_operations { ptr @coda_dentry_revalidate, ptr null, ptr null, ptr null, ptr @coda_dentry_delete, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [76 x i8] undef }, align 128
@coda_dir_inode_operations = dso_local local_unnamed_addr constant %struct.inode_operations { ptr @coda_lookup, ptr null, ptr @coda_permission, ptr null, ptr null, ptr @coda_create, ptr @coda_link, ptr @coda_unlink, ptr @coda_symlink, ptr @coda_mkdir, ptr @coda_rmdir, ptr @coda_return_EIO, ptr @coda_rename, ptr @coda_setattr, ptr @coda_getattr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [36 x i8] undef }, align 128
@coda_dir_operations = dso_local constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @generic_read_dir, ptr null, ptr null, ptr null, ptr null, ptr @coda_readdir, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @coda_open, ptr null, ptr @coda_release, ptr @coda_fsync, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@coda_lookup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 51, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013coda: name too long: lookup, %s %zu\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"coda_lookup\00", [20 x i8] zeroinitializer }, align 32
@coda_lookup._entry_ptr = internal global ptr @coda_lookup._entry, section ".printk_index", align 4
@coda_venus_readdir._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 378, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013coda: %s: read dir %s failed %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"coda_venus_readdir\00", [45 x i8] zeroinitializer }, align 32
@coda_venus_readdir._entry_ptr = internal global ptr @coda_venus_readdir._entry, section ".printk_index", align 4
@coda_venus_readdir._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.6, ptr @.str.2, i32 386, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013coda: %s: short read on %s\0A\00", [34 x i8] zeroinitializer }, align 32
@coda_venus_readdir._entry_ptr.9 = internal global ptr @coda_venus_readdir._entry.7, section ".printk_index", align 4
@coda_venus_readdir._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.6, ptr @.str.2, i32 393, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\013coda: %s: invalid dir %s\0A\00", [36 x i8] zeroinitializer }, align 32
@coda_venus_readdir._entry_ptr.12 = internal global ptr @coda_venus_readdir._entry.10, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.13 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c".\00", [30 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"..\00", [29 x i8] zeroinitializer }, align 32
@switch.table.coda_readdir = internal constant { [14 x i32], [40 x i8] } { [14 x i32] [i32 1, i32 2, i32 0, i32 4, i32 0, i32 6, i32 0, i32 8, i32 0, i32 10, i32 0, i32 12, i32 0, i32 14], [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 64, i64 0, i64 1]
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 550, i32 4 }
@___asan_gen_.27 = private unnamed_addr constant [20 x i8] c"coda_dir_operations\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 588, i32 30 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 50, i32 3 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 377, i32 4 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 385, i32 4 }
@___asan_gen_.54 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.58 = private constant [17 x i8] c"../fs/coda/dir.c\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 392, i32 4 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 3566, i32 25 }
@___asan_gen_.63 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.64 = private unnamed_addr constant [22 x i8] c"../include/linux/fs.h\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 3571, i32 25 }
@___asan_gen_.66 = private unnamed_addr constant [26 x i8] c"switch.table.coda_readdir\00", align 1
@llvm.compiler.used = appending global [23 x ptr] [ptr @coda_lookup._entry, ptr @coda_lookup._entry_ptr, ptr @coda_revalidate_inode._entry, ptr @coda_revalidate_inode._entry_ptr, ptr @coda_venus_readdir._entry, ptr @coda_venus_readdir._entry.10, ptr @coda_venus_readdir._entry.7, ptr @coda_venus_readdir._entry_ptr, ptr @coda_venus_readdir._entry_ptr.12, ptr @coda_venus_readdir._entry_ptr.9, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @coda_dir_operations, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @switch.table.coda_readdir], section "llvm.metadata"
@0 = internal global [18 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coda_revalidate_inode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coda_dir_operations to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coda_lookup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coda_venus_readdir._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coda_venus_readdir._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coda_venus_readdir._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.coda_readdir to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @coda_permission(ptr nocapture readnone %mnt_userns, ptr noundef %inode, i32 noundef %mask) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %mask, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %and1 = and i32 %mask, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %and5 = and i32 %mask, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %if.end4.if.end8_crit_edge, label %land.lhs.true

if.end4.if.end8_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

land.lhs.true:                                    ; preds = %if.end4
  %0 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %inode, align 8
  %conv.i = zext i16 %1 to i32
  %and.i = and i32 %conv.i, 73
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp ne i32 %and.i, 0
  %and3.i = and i32 %conv.i, 61440
  call void @__sanitizer_cov_trace_const_cmp4(i32 16384, i32 %and3.i)
  %cmp.i = icmp eq i32 %and3.i, 16384
  %2 = or i1 %tobool.not.i, %cmp.i
  br i1 %2, label %land.lhs.true.if.end8_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true.if.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

if.end8:                                          ; preds = %land.lhs.true.if.end8_crit_edge, %if.end4.if.end8_crit_edge
  %call9 = tail call i32 @coda_cache_check(ptr noundef %inode, i32 noundef %and1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %3 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %i_sb, align 4
  %add.ptr.i.i = getelementptr i8, ptr %inode, i32 -80
  %call14 = tail call i32 @venus_access(ptr noundef %4, ptr noundef %add.ptr.i.i, i32 noundef %and1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.then16, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then16:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @coda_cache_enter(ptr noundef %inode, i32 noundef %and1) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then16, %if.end12.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -10, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ -13, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.end8.cleanup_crit_edge ], [ 0, %if.then16 ], [ %call14, %if.end12.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @coda_cache_check(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @venus_access(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @coda_cache_enter(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @coda_revalidate_inode(ptr noundef %inode) local_unnamed_addr #0 align 64 {
entry:
  %attr = alloca %struct.coda_vattr, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %attr) #7
  %0 = call ptr @memset(ptr %attr, i32 255, i32 120)
  %add.ptr.i = getelementptr i8, ptr %inode, i32 -80
  %c_flags = getelementptr i8, ptr %inode, i32 -64
  %1 = ptrtoint ptr %c_flags to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %c_flags, align 8
  %3 = and i16 %2, 11
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool2.not = icmp eq i16 %3, 0
  br i1 %tobool2.not, label %entry.cleanup_crit_edge, label %if.then3

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then3:                                         ; preds = %entry
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %4 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_sb, align 4
  %call4 = call i32 @venus_getattr(ptr noundef %5, ptr noundef %add.ptr.i, ptr noundef nonnull %attr) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %if.then3.cleanup_crit_edge

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7:                                          ; preds = %if.then3
  %6 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %inode, align 8
  %i_ino = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %8 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %i_ino, align 8
  call void @coda_vattr_to_iattr(ptr noundef %inode, ptr noundef nonnull %attr) #7
  %10 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %inode, align 8
  %12 = xor i16 %11, %7
  call void @__sanitizer_cov_trace_const_cmp2(i16 4096, i16 %12)
  %cmp.not = icmp ult i16 %12, 4096
  br i1 %cmp.not, label %if.end7.if.end19_crit_edge, label %do.end

if.end7.if.end19_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

do.end:                                           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %i_ino, align 8
  %call17 = call ptr @coda_f2s(ptr noundef %add.ptr.i) #7
  %call18 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %14, ptr noundef %call17) #10
  br label %if.end19

if.end19:                                         ; preds = %do.end, %if.end7.if.end19_crit_edge
  %15 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %i_ino, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %9)
  %cmp21.not = icmp eq i32 %16, %9
  br i1 %cmp21.not, label %if.end24, label %if.end19.cleanup_crit_edge

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end24:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  call void @coda_flag_inode_children(ptr noundef %inode, i32 noundef 2) #7
  %c_lock = getelementptr i8, ptr %inode, i32 -44
  call void @_raw_spin_lock(ptr noundef %c_lock) #7
  %17 = ptrtoint ptr %c_flags to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %c_flags, align 8
  %19 = and i16 %18, -12
  store i16 %19, ptr %c_flags, align 8
  call void @_raw_spin_unlock(ptr noundef %c_lock) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %if.end19.cleanup_crit_edge, %if.then3.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ -5, %if.then3.cleanup_crit_edge ], [ -5, %if.end19.cleanup_crit_edge ], [ 0, %if.end24 ]
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %attr) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @venus_getattr(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @coda_vattr_to_iattr(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @coda_f2s(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @coda_flag_inode_children(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @coda_dentry_revalidate(ptr noundef %de, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %flags, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %de, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode.i, align 8
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %lor.lhs.false

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb.i, align 4
  %s_root.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 13
  %4 = ptrtoint ptr %s_root.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_root.i, align 64
  %d_inode.i40 = getelementptr inbounds %struct.dentry, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %d_inode.i40 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %d_inode.i40, align 8
  %cmp.i = icmp eq ptr %7, %1
  br i1 %cmp.i, label %lor.lhs.false.cleanup_crit_edge, label %if.end4

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %lor.lhs.false
  %call5 = tail call zeroext i1 @is_bad_inode(ptr noundef nonnull %1) #7
  br i1 %call5, label %if.end4.cleanup_crit_edge, label %if.end7

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7:                                          ; preds = %if.end4
  %8 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %d_inode.i, align 8
  %c_flags = getelementptr i8, ptr %9, i32 -64
  %10 = ptrtoint ptr %c_flags to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %c_flags, align 8
  %12 = and i16 %11, 10
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %tobool11.not = icmp eq i16 %12, 0
  br i1 %tobool11.not, label %if.end7.cleanup_crit_edge, label %if.end13

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end13:                                         ; preds = %if.end7
  tail call void @shrink_dcache_parent(ptr noundef %de) #7
  %13 = ptrtoint ptr %c_flags to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %c_flags, align 8
  %15 = and i16 %14, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %tobool17.not = icmp eq i16 %15, 0
  br i1 %tobool17.not, label %if.end13.if.end19_crit_edge, label %if.then18

if.end13.if.end19_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

if.then18:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @coda_flag_inode_children(ptr noundef nonnull %1, i32 noundef 2) #7
  br label %if.end19

if.end19:                                         ; preds = %if.then18, %if.end13.if.end19_crit_edge
  %count.i = getelementptr inbounds %struct.dentry, ptr %de, i32 0, i32 7, i32 0, i32 0, i32 1
  %16 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %17)
  %cmp = icmp ugt i32 %17, 1
  br i1 %cmp, label %if.end19.cleanup_crit_edge, label %if.end23

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end23:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  %c_lock = getelementptr i8, ptr %9, i32 -44
  tail call void @_raw_spin_lock(ptr noundef %c_lock) #7
  %18 = ptrtoint ptr %c_flags to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %c_flags, align 8
  %20 = and i16 %19, -12
  store i16 %20, ptr %c_flags, align 8
  tail call void @_raw_spin_unlock(ptr noundef %c_lock) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %if.end19.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -10, %entry.cleanup_crit_edge ], [ 0, %if.end4.cleanup_crit_edge ], [ 0, %if.end23 ], [ 1, %if.end19.cleanup_crit_edge ], [ 1, %if.end7.cleanup_crit_edge ], [ 1, %if.end.cleanup_crit_edge ], [ 1, %lor.lhs.false.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @coda_dentry_delete(ptr nocapture noundef readonly %dentry) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode.i, align 8
  %cmp.i = icmp eq ptr %1, null
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %call2 = tail call zeroext i1 @is_bad_inode(ptr noundef nonnull %1) #7
  br i1 %call2, label %lor.lhs.false.cleanup_crit_edge, label %if.end4

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  %c_flags = getelementptr i8, ptr %1, i32 -64
  %2 = ptrtoint ptr %c_flags to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %c_flags, align 8
  %4 = lshr i16 %3, 3
  %.lobit = and i16 %4, 1
  %5 = zext i16 %.lobit to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 1, %lor.lhs.false.cleanup_crit_edge ], [ %5, %if.end4 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @coda_lookup(ptr noundef %dir, ptr noundef %entry1, i32 noundef %flags) #0 align 64 {
entry:
  %type = alloca i32, align 4
  %fid = alloca %struct.CodaFid, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %d_name = getelementptr inbounds %struct.dentry, ptr %entry1, i32 0, i32 4
  %name2 = getelementptr inbounds %struct.dentry, ptr %entry1, i32 0, i32 4, i32 1
  %2 = ptrtoint ptr %name2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %name2, align 8
  %4 = ptrtoint ptr %d_name to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %d_name, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %type) #7
  %6 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %5)
  %cmp = icmp ugt i32 %5, 255
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i.i = getelementptr i8, ptr %dir, i32 -80
  %call1.i = tail call ptr @coda_f2s(ptr noundef %add.ptr.i.i) #7
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef %call1.i, i32 noundef %5) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %s_root.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 13
  %7 = ptrtoint ptr %s_root.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %s_root.i, align 64
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %8, i32 0, i32 5
  %9 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %d_inode.i, align 8
  %cmp.i = icmp eq ptr %10, %dir
  br i1 %cmp.i, label %land.lhs.true, label %if.end.if.else_crit_edge

if.end.if.else_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

land.lhs.true:                                    ; preds = %if.end
  %call7 = tail call i32 @coda_iscontrol(ptr noundef %3, i32 noundef %5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool.not = icmp eq i32 %call7, 0
  br i1 %tobool.not, label %land.lhs.true.if.else_crit_edge, label %if.then8

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

if.then8:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %call9 = tail call ptr @coda_cnode_makectl(ptr noundef %1) #7
  %11 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -2147483648, ptr %type, align 4
  br label %if.end15

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end.if.else_crit_edge
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %fid) #7
  %12 = call ptr @memset(ptr %fid, i32 0, i32 16)
  %add.ptr.i.i45 = getelementptr i8, ptr %dir, i32 -80
  %call11 = call i32 @venus_lookup(ptr noundef %1, ptr noundef %add.ptr.i.i45, ptr noundef %3, i32 noundef %5, ptr noundef nonnull %type, ptr noundef nonnull %fid) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %call13 = call ptr @coda_cnode_make(ptr noundef nonnull %fid, ptr noundef %1) #7
  br label %cond.end

cond.false:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %13 = inttoptr i32 %call11 to ptr
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %call13, %cond.true ], [ %13, %cond.false ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %fid) #7
  br label %if.end15

if.end15:                                         ; preds = %cond.end, %if.then8
  %inode.0 = phi ptr [ %call9, %if.then8 ], [ %cond, %cond.end ]
  %cmp.i46 = icmp ugt ptr %inode.0, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i46, label %if.end15.if.end20_crit_edge, label %land.lhs.true17

if.end15.if.end20_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20

land.lhs.true17:                                  ; preds = %if.end15
  %14 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %15)
  %tobool18.not = icmp sgt i32 %15, -1
  %tobool.not.i = icmp eq ptr %inode.0, null
  %or.cond = select i1 %tobool18.not, i1 true, i1 %tobool.not.i
  br i1 %or.cond, label %land.lhs.true17.if.end20_crit_edge, label %if.end.i

land.lhs.true17.if.end20_crit_edge:               ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20

if.end.i:                                         ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #9
  %c_lock.i = getelementptr i8, ptr %inode.0, i32 -44
  call void @_raw_spin_lock(ptr noundef %c_lock.i) #7
  %c_flags.i = getelementptr i8, ptr %inode.0, i32 -64
  %16 = ptrtoint ptr %c_flags.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %c_flags.i, align 8
  %conv1.i = or i16 %17, 9
  store i16 %conv1.i, ptr %c_flags.i, align 8
  call void @_raw_spin_unlock(ptr noundef %c_lock.i) #7
  br label %if.end20

if.end20:                                         ; preds = %if.end.i, %land.lhs.true17.if.end20_crit_edge, %if.end15.if.end20_crit_edge
  %cmp22 = icmp eq ptr %inode.0, inttoptr (i32 -2 to ptr)
  %spec.select = select i1 %cmp22, ptr null, ptr %inode.0
  %call25 = call ptr @d_splice_alias(ptr noundef %spec.select, ptr noundef %entry1) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %do.end
  %retval.0 = phi ptr [ inttoptr (i32 -36 to ptr), %do.end ], [ %call25, %if.end20 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %type) #7
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @coda_create(ptr nocapture noundef readnone %mnt_userns, ptr noundef %dir, ptr noundef %de, i16 noundef zeroext %mode, i1 noundef zeroext %excl) #0 align 64 {
entry:
  %tmp.i = alloca %struct.timespec64, align 8
  %newfid = alloca %struct.CodaFid, align 4
  %attrs = alloca %struct.coda_vattr, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %d_name = getelementptr inbounds %struct.dentry, ptr %de, i32 0, i32 4
  %name1 = getelementptr inbounds %struct.dentry, ptr %de, i32 0, i32 4, i32 1
  %0 = ptrtoint ptr %name1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %name1, align 8
  %2 = ptrtoint ptr %d_name to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %d_name, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %newfid) #7
  %4 = call ptr @memset(ptr %newfid, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %attrs) #7
  %5 = call ptr @memset(ptr %attrs, i32 255, i32 120)
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  %6 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i_sb.i, align 4
  %s_root.i = getelementptr inbounds %struct.super_block, ptr %7, i32 0, i32 13
  %8 = ptrtoint ptr %s_root.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %s_root.i, align 64
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %d_inode.i, align 8
  %cmp.i = icmp eq ptr %11, %dir
  br i1 %cmp.i, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %call3 = tail call i32 @coda_iscontrol(ptr noundef %1, i32 noundef %3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %12 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %i_sb.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %dir, i32 -80
  %conv = zext i16 %mode to i32
  %call5 = call i32 @venus_create(ptr noundef %13, ptr noundef %add.ptr.i.i, ptr noundef %1, i32 noundef %3, i32 noundef 0, i32 noundef %conv, ptr noundef nonnull %newfid, ptr noundef nonnull %attrs) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.end.err_out_crit_edge

if.end.err_out_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_out

if.end8:                                          ; preds = %if.end
  %14 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %i_sb.i, align 4
  %call10 = call ptr @coda_iget(ptr noundef %15, ptr noundef nonnull %newfid, ptr noundef nonnull %attrs) #7
  %cmp.i32 = icmp ugt ptr %call10, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i32, label %if.then12, label %if.end14

if.then12:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %call10 to i32
  br label %err_out

if.end14:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  %i_mtime.i = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 16
  %i_ctime.i = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp.i) #7
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp.i, ptr noundef %dir) #7
  %17 = call ptr @memcpy(ptr %i_ctime.i, ptr %tmp.i, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp.i) #7
  %18 = call ptr @memcpy(ptr %i_mtime.i, ptr %i_ctime.i, i32 16)
  call void @d_instantiate(ptr noundef %de, ptr noundef %call10) #7
  br label %cleanup

err_out:                                          ; preds = %if.then12, %if.end.err_out_crit_edge
  %error.0 = phi i32 [ %call5, %if.end.err_out_crit_edge ], [ %16, %if.then12 ]
  call void @d_drop(ptr noundef %de) #7
  br label %cleanup

cleanup:                                          ; preds = %err_out, %if.end14, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ %error.0, %err_out ], [ 0, %if.end14 ], [ -1, %land.lhs.true.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %attrs) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %newfid) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @coda_link(ptr nocapture noundef readonly %source_de, ptr noundef %dir_inode, ptr noundef %de) #0 align 64 {
entry:
  %tmp.i = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %source_de, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode.i, align 8
  %d_name = getelementptr inbounds %struct.dentry, ptr %de, i32 0, i32 4
  %name1 = getelementptr inbounds %struct.dentry, ptr %de, i32 0, i32 4, i32 1
  %2 = ptrtoint ptr %name1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %name1, align 8
  %4 = ptrtoint ptr %d_name to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %d_name, align 8
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %dir_inode, i32 0, i32 8
  %6 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i_sb.i, align 4
  %s_root.i = getelementptr inbounds %struct.super_block, ptr %7, i32 0, i32 13
  %8 = ptrtoint ptr %s_root.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %s_root.i, align 64
  %d_inode.i27 = getelementptr inbounds %struct.dentry, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %d_inode.i27 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %d_inode.i27, align 8
  %cmp.i = icmp eq ptr %11, %dir_inode
  br i1 %cmp.i, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %call5 = tail call i32 @coda_iscontrol(ptr noundef %3, i32 noundef %5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %12 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %i_sb.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 -80
  %add.ptr.i.i28 = getelementptr i8, ptr %dir_inode, i32 -80
  %call8 = tail call i32 @venus_link(ptr noundef %13, ptr noundef %add.ptr.i.i, ptr noundef %add.ptr.i.i28, ptr noundef %3, i32 noundef %5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %if.then10

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @d_drop(ptr noundef %de) #7
  br label %cleanup

if.end11:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %i_mtime.i = getelementptr inbounds %struct.inode, ptr %dir_inode, i32 0, i32 16
  %i_ctime.i = getelementptr inbounds %struct.inode, ptr %dir_inode, i32 0, i32 17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp.i) #7
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp.i, ptr noundef %dir_inode) #7
  %14 = call ptr @memcpy(ptr %i_ctime.i, ptr %tmp.i, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp.i) #7
  %15 = call ptr @memcpy(ptr %i_mtime.i, ptr %i_ctime.i, i32 16)
  call void @ihold(ptr noundef %1) #7
  call void @d_instantiate(ptr noundef %de, ptr noundef %1) #7
  call void @inc_nlink(ptr noundef %1) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.then10, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ %call8, %if.then10 ], [ 0, %if.end11 ], [ -1, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @coda_unlink(ptr noundef %dir, ptr nocapture noundef readonly %de) #0 align 64 {
entry:
  %tmp.i = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %d_name = getelementptr inbounds %struct.dentry, ptr %de, i32 0, i32 4
  %name1 = getelementptr inbounds %struct.dentry, ptr %de, i32 0, i32 4, i32 1
  %0 = ptrtoint ptr %name1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %name1, align 8
  %2 = ptrtoint ptr %d_name to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %d_name, align 8
  %i_sb = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  %4 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_sb, align 4
  %add.ptr.i.i = getelementptr i8, ptr %dir, i32 -80
  %call4 = tail call i32 @venus_remove(ptr noundef %5, ptr noundef %add.ptr.i.i, ptr noundef %1, i32 noundef %3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %i_mtime.i = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 16
  %i_ctime.i = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp.i) #7
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp.i, ptr noundef %dir) #7
  %6 = call ptr @memcpy(ptr %i_ctime.i, ptr %tmp.i, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp.i) #7
  %7 = call ptr @memcpy(ptr %i_mtime.i, ptr %i_ctime.i, i32 16)
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %de, i32 0, i32 5
  %8 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %d_inode.i, align 8
  call void @drop_nlink(ptr noundef %9) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 %call4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @coda_symlink(ptr nocapture noundef readnone %mnt_userns, ptr noundef %dir_inode, ptr noundef %de, ptr noundef %symname) #0 align 64 {
entry:
  %tmp.i = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %d_name = getelementptr inbounds %struct.dentry, ptr %de, i32 0, i32 4
  %name1 = getelementptr inbounds %struct.dentry, ptr %de, i32 0, i32 4, i32 1
  %0 = ptrtoint ptr %name1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %name1, align 8
  %2 = ptrtoint ptr %d_name to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %d_name, align 8
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %dir_inode, i32 0, i32 8
  %4 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_sb.i, align 4
  %s_root.i = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 13
  %6 = ptrtoint ptr %s_root.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s_root.i, align 64
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %d_inode.i, align 8
  %cmp.i = icmp eq ptr %9, %dir_inode
  br i1 %cmp.i, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %call4 = tail call i32 @coda_iscontrol(ptr noundef %1, i32 noundef %3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %call5 = tail call i32 @strlen(ptr noundef %symname) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %call5)
  %cmp = icmp sgt i32 %call5, 1024
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7:                                          ; preds = %if.end
  tail call void @d_drop(ptr noundef %de) #7
  %10 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %i_sb.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %dir_inode, i32 -80
  %call9 = tail call i32 @venus_symlink(ptr noundef %11, ptr noundef %add.ptr.i.i, ptr noundef %1, i32 noundef %3, ptr noundef %symname, i32 noundef %call5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.then11, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then11:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  %i_mtime.i = getelementptr inbounds %struct.inode, ptr %dir_inode, i32 0, i32 16
  %i_ctime.i = getelementptr inbounds %struct.inode, ptr %dir_inode, i32 0, i32 17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp.i) #7
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp.i, ptr noundef %dir_inode) #7
  %12 = call ptr @memcpy(ptr %i_ctime.i, ptr %tmp.i, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp.i) #7
  %13 = call ptr @memcpy(ptr %i_mtime.i, ptr %i_ctime.i, i32 16)
  br label %cleanup

cleanup:                                          ; preds = %if.then11, %if.end7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %land.lhs.true.cleanup_crit_edge ], [ -36, %if.end.cleanup_crit_edge ], [ 0, %if.then11 ], [ %call9, %if.end7.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @coda_mkdir(ptr nocapture noundef readnone %mnt_userns, ptr noundef %dir, ptr noundef %de, i16 noundef zeroext %mode) #0 align 64 {
entry:
  %tmp.i = alloca %struct.timespec64, align 8
  %attrs = alloca %struct.coda_vattr, align 8
  %newfid = alloca %struct.CodaFid, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %attrs) #7
  %0 = call ptr @memset(ptr %attrs, i32 255, i32 120)
  %d_name = getelementptr inbounds %struct.dentry, ptr %de, i32 0, i32 4
  %name1 = getelementptr inbounds %struct.dentry, ptr %de, i32 0, i32 4, i32 1
  %1 = ptrtoint ptr %name1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %name1, align 8
  %3 = ptrtoint ptr %d_name to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %d_name, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %newfid) #7
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  %5 = call ptr @memset(ptr %newfid, i32 255, i32 16)
  %6 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i_sb.i, align 4
  %s_root.i = getelementptr inbounds %struct.super_block, ptr %7, i32 0, i32 13
  %8 = ptrtoint ptr %s_root.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %s_root.i, align 64
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %d_inode.i, align 8
  %cmp.i = icmp eq ptr %11, %dir
  br i1 %cmp.i, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %call4 = tail call i32 @coda_iscontrol(ptr noundef %2, i32 noundef %4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %va_mode = getelementptr inbounds %struct.coda_vattr, ptr %attrs, i32 0, i32 1
  %12 = ptrtoint ptr %va_mode to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %mode, ptr %va_mode, align 4
  %13 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %i_sb.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %dir, i32 -80
  %call6 = call i32 @venus_mkdir(ptr noundef %14, ptr noundef %add.ptr.i.i, ptr noundef %2, i32 noundef %4, ptr noundef nonnull %newfid, ptr noundef nonnull %attrs) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %if.end.err_out_crit_edge

if.end.err_out_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_out

if.end9:                                          ; preds = %if.end
  %15 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %i_sb.i, align 4
  %call11 = call ptr @coda_iget(ptr noundef %16, ptr noundef nonnull %newfid, ptr noundef nonnull %attrs) #7
  %cmp.i34 = icmp ugt ptr %call11, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i34, label %if.then13, label %if.end15

if.then13:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  %17 = ptrtoint ptr %call11 to i32
  br label %err_out

if.end15:                                         ; preds = %if.end9
  %18 = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 12
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %18, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %20)
  %cmp.i35 = icmp ugt i32 %20, 1
  br i1 %cmp.i35, label %if.then.i, label %if.end15.coda_dir_inc_nlink.exit_crit_edge

if.end15.coda_dir_inc_nlink.exit_crit_edge:       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %coda_dir_inc_nlink.exit

if.then.i:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  call void @inc_nlink(ptr noundef %dir) #7
  br label %coda_dir_inc_nlink.exit

coda_dir_inc_nlink.exit:                          ; preds = %if.then.i, %if.end15.coda_dir_inc_nlink.exit_crit_edge
  %i_mtime.i = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 16
  %i_ctime.i = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp.i) #7
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp.i, ptr noundef %dir) #7
  %21 = call ptr @memcpy(ptr %i_ctime.i, ptr %tmp.i, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp.i) #7
  %22 = call ptr @memcpy(ptr %i_mtime.i, ptr %i_ctime.i, i32 16)
  call void @d_instantiate(ptr noundef %de, ptr noundef %call11) #7
  br label %cleanup

err_out:                                          ; preds = %if.then13, %if.end.err_out_crit_edge
  %error.0 = phi i32 [ %call6, %if.end.err_out_crit_edge ], [ %17, %if.then13 ]
  call void @d_drop(ptr noundef %de) #7
  br label %cleanup

cleanup:                                          ; preds = %err_out, %coda_dir_inc_nlink.exit, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ %error.0, %err_out ], [ 0, %coda_dir_inc_nlink.exit ], [ -1, %land.lhs.true.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %newfid) #7
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %attrs) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @coda_rmdir(ptr noundef %dir, ptr nocapture noundef readonly %de) #0 align 64 {
entry:
  %tmp.i = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %d_name = getelementptr inbounds %struct.dentry, ptr %de, i32 0, i32 4
  %name1 = getelementptr inbounds %struct.dentry, ptr %de, i32 0, i32 4, i32 1
  %0 = ptrtoint ptr %name1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %name1, align 8
  %2 = ptrtoint ptr %d_name to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %d_name, align 8
  %i_sb = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  %4 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_sb, align 4
  %add.ptr.i.i = getelementptr i8, ptr %dir, i32 -80
  %call4 = tail call i32 @venus_rmdir(ptr noundef %5, ptr noundef %add.ptr.i.i, ptr noundef %1, i32 noundef %3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end8_crit_edge

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

if.then:                                          ; preds = %entry
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %de, i32 0, i32 5
  %6 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %d_inode.i, align 8
  %cmp.i.not = icmp eq ptr %7, null
  br i1 %cmp.i.not, label %if.then.if.end_crit_edge, label %if.then6

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then6:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clear_nlink(ptr noundef nonnull %7) #7
  br label %if.end

if.end:                                           ; preds = %if.then6, %if.then.if.end_crit_edge
  %8 = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 12
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %10)
  %cmp.i17 = icmp ugt i32 %10, 2
  br i1 %cmp.i17, label %if.then.i, label %if.end.coda_dir_drop_nlink.exit_crit_edge

if.end.coda_dir_drop_nlink.exit_crit_edge:        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %coda_dir_drop_nlink.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @drop_nlink(ptr noundef %dir) #7
  br label %coda_dir_drop_nlink.exit

coda_dir_drop_nlink.exit:                         ; preds = %if.then.i, %if.end.coda_dir_drop_nlink.exit_crit_edge
  %i_mtime.i = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 16
  %i_ctime.i = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp.i) #7
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp.i, ptr noundef %dir) #7
  %11 = call ptr @memcpy(ptr %i_ctime.i, ptr %tmp.i, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp.i) #7
  %12 = call ptr @memcpy(ptr %i_mtime.i, ptr %i_ctime.i, i32 16)
  br label %if.end8

if.end8:                                          ; preds = %coda_dir_drop_nlink.exit, %entry.if.end8_crit_edge
  ret i32 %call4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @coda_return_EIO() #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @coda_rename(ptr nocapture noundef readnone %mnt_userns, ptr noundef %old_dir, ptr nocapture noundef readonly %old_dentry, ptr noundef %new_dir, ptr nocapture noundef readonly %new_dentry, i32 noundef %flags) #0 align 64 {
entry:
  %tmp.i38 = alloca %struct.timespec64, align 8
  %tmp.i = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %flags)
  %tobool.not = icmp eq i32 %flags, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %d_name1 = getelementptr inbounds %struct.dentry, ptr %new_dentry, i32 0, i32 4
  %0 = ptrtoint ptr %d_name1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %d_name1, align 8
  %d_name = getelementptr inbounds %struct.dentry, ptr %old_dentry, i32 0, i32 4
  %2 = ptrtoint ptr %d_name to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %d_name, align 8
  %name2 = getelementptr inbounds %struct.dentry, ptr %new_dentry, i32 0, i32 4, i32 1
  %4 = ptrtoint ptr %name2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %name2, align 8
  %name = getelementptr inbounds %struct.dentry, ptr %old_dentry, i32 0, i32 4, i32 1
  %6 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %name, align 8
  %i_sb = getelementptr inbounds %struct.inode, ptr %old_dir, i32 0, i32 8
  %8 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %i_sb, align 4
  %add.ptr.i.i = getelementptr i8, ptr %old_dir, i32 -80
  %add.ptr.i.i33 = getelementptr i8, ptr %new_dir, i32 -80
  %call7 = tail call i32 @venus_rename(ptr noundef %9, ptr noundef %add.ptr.i.i, ptr noundef %add.ptr.i.i33, i32 noundef %3, i32 noundef %1, ptr noundef %7, ptr noundef %5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.then9, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then9:                                         ; preds = %if.end
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %new_dentry, i32 0, i32 5
  %10 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %d_inode.i, align 8
  %cmp.i.not = icmp eq ptr %11, null
  br i1 %cmp.i.not, label %if.then9.if.end16_crit_edge, label %if.then11

if.then9.if.end16_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16

if.then11:                                        ; preds = %if.then9
  %12 = ptrtoint ptr %new_dentry to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %new_dentry, align 8
  %14 = and i32 %13, 6291456
  call void @__sanitizer_cov_trace_const_cmp4(i32 2097152, i32 %14)
  %15 = icmp eq i32 %14, 2097152
  br i1 %15, label %if.then13, label %if.then11.if.end14_crit_edge

if.then11.if.end14_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

if.then13:                                        ; preds = %if.then11
  %16 = getelementptr inbounds %struct.inode, ptr %old_dir, i32 0, i32 12
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %16, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %18)
  %cmp.i34 = icmp ugt i32 %18, 2
  br i1 %cmp.i34, label %if.then.i, label %if.then13.coda_dir_drop_nlink.exit_crit_edge

if.then13.coda_dir_drop_nlink.exit_crit_edge:     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #9
  br label %coda_dir_drop_nlink.exit

if.then.i:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @drop_nlink(ptr noundef %old_dir) #7
  br label %coda_dir_drop_nlink.exit

coda_dir_drop_nlink.exit:                         ; preds = %if.then.i, %if.then13.coda_dir_drop_nlink.exit_crit_edge
  %19 = getelementptr inbounds %struct.inode, ptr %new_dir, i32 0, i32 12
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %19, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %21)
  %cmp.i35 = icmp ugt i32 %21, 1
  br i1 %cmp.i35, label %if.then.i36, label %coda_dir_drop_nlink.exit.if.end14_crit_edge

coda_dir_drop_nlink.exit.if.end14_crit_edge:      ; preds = %coda_dir_drop_nlink.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

if.then.i36:                                      ; preds = %coda_dir_drop_nlink.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @inc_nlink(ptr noundef %new_dir) #7
  br label %if.end14

if.end14:                                         ; preds = %if.then.i36, %coda_dir_drop_nlink.exit.if.end14_crit_edge, %if.then11.if.end14_crit_edge
  %22 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %d_inode.i, align 8
  %tobool.not.i = icmp eq ptr %23, null
  br i1 %tobool.not.i, label %if.end14.if.end16_crit_edge, label %if.end.i

if.end14.if.end16_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16

if.end.i:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  %c_lock.i = getelementptr i8, ptr %23, i32 -44
  tail call void @_raw_spin_lock(ptr noundef %c_lock.i) #7
  %c_flags.i = getelementptr i8, ptr %23, i32 -64
  %24 = ptrtoint ptr %c_flags.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %c_flags.i, align 8
  %conv1.i = or i16 %25, 1
  store i16 %conv1.i, ptr %c_flags.i, align 8
  tail call void @_raw_spin_unlock(ptr noundef %c_lock.i) #7
  br label %if.end16

if.end16:                                         ; preds = %if.end.i, %if.end14.if.end16_crit_edge, %if.then9.if.end16_crit_edge
  %i_mtime.i = getelementptr inbounds %struct.inode, ptr %old_dir, i32 0, i32 16
  %i_ctime.i = getelementptr inbounds %struct.inode, ptr %old_dir, i32 0, i32 17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp.i) #7
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp.i, ptr noundef %old_dir) #7
  %26 = call ptr @memcpy(ptr %i_ctime.i, ptr %tmp.i, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp.i) #7
  %27 = call ptr @memcpy(ptr %i_mtime.i, ptr %i_ctime.i, i32 16)
  %i_mtime.i39 = getelementptr inbounds %struct.inode, ptr %new_dir, i32 0, i32 16
  %i_ctime.i40 = getelementptr inbounds %struct.inode, ptr %new_dir, i32 0, i32 17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp.i38) #7
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp.i38, ptr noundef %new_dir) #7
  %28 = call ptr @memcpy(ptr %i_ctime.i40, ptr %tmp.i38, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp.i38) #7
  %29 = call ptr @memcpy(ptr %i_mtime.i39, ptr %i_ctime.i40, i32 16)
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end16 ], [ %call7, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @coda_setattr(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @coda_getattr(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_file_llseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_read_dir(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @coda_readdir(ptr noundef %coda_file, ptr noundef %ctx) #0 align 64 {
entry:
  %pos.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @coda_ftoc(ptr noundef %coda_file) #7
  %cfi_container = getelementptr inbounds %struct.coda_file_info, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %cfi_container to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cfi_container, align 4
  %f_op = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %f_op to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %f_op, align 4
  %iterate = getelementptr inbounds %struct.file_operations, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %iterate to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %iterate, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %iterate_shared = getelementptr inbounds %struct.file_operations, ptr %3, i32 0, i32 8
  %6 = ptrtoint ptr %iterate_shared to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %iterate_shared, align 4
  %tobool2.not = icmp eq ptr %7, null
  br i1 %tobool2.not, label %if.end17, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %f_inode.i = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %f_inode.i, align 8
  %i_flags = getelementptr inbounds %struct.inode, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %i_flags, align 4
  %and = and i32 %11, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %if.then5, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then5:                                         ; preds = %if.then
  %iterate_shared7 = getelementptr inbounds %struct.file_operations, ptr %3, i32 0, i32 8
  %12 = ptrtoint ptr %iterate_shared7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %iterate_shared7, align 4
  %tobool8.not = icmp eq ptr %13, null
  %i_rwsem.i38 = getelementptr inbounds %struct.inode, ptr %9, i32 0, i32 25
  br i1 %tobool8.not, label %if.else, label %if.then9

if.then9:                                         ; preds = %if.then5
  tail call void @down_read(ptr noundef %i_rwsem.i38) #7
  %14 = ptrtoint ptr %f_op to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %f_op, align 4
  %iterate_shared11 = getelementptr inbounds %struct.file_operations, ptr %15, i32 0, i32 8
  %16 = ptrtoint ptr %iterate_shared11 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %iterate_shared11, align 4
  %call12 = tail call i32 %17(ptr noundef %1, ptr noundef %ctx) #7
  %f_flags.i = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 7
  %18 = ptrtoint ptr %f_flags.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %f_flags.i, align 4
  %and.i = and i32 %19, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.then9.file_accessed.exit_crit_edge

if.then9.file_accessed.exit_crit_edge:            ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #9
  br label %file_accessed.exit

if.then.i:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #9
  %f_path.i = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 1
  tail call void @touch_atime(ptr noundef %f_path.i) #7
  br label %file_accessed.exit

file_accessed.exit:                               ; preds = %if.then.i, %if.then9.file_accessed.exit_crit_edge
  tail call void @up_read(ptr noundef %i_rwsem.i38) #7
  br label %cleanup

if.else:                                          ; preds = %if.then5
  tail call void @down_write(ptr noundef %i_rwsem.i38) #7
  %20 = ptrtoint ptr %f_op to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %f_op, align 4
  %iterate14 = getelementptr inbounds %struct.file_operations, ptr %21, i32 0, i32 7
  %22 = ptrtoint ptr %iterate14 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %iterate14, align 4
  %call15 = tail call i32 %23(ptr noundef %1, ptr noundef %ctx) #7
  %f_flags.i39 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 7
  %24 = ptrtoint ptr %f_flags.i39 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %f_flags.i39, align 4
  %and.i40 = and i32 %25, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i40)
  %tobool.not.i41 = icmp eq i32 %and.i40, 0
  br i1 %tobool.not.i41, label %if.then.i43, label %if.else.file_accessed.exit44_crit_edge

if.else.file_accessed.exit44_crit_edge:           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %file_accessed.exit44

if.then.i43:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %f_path.i42 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 1
  tail call void @touch_atime(ptr noundef %f_path.i42) #7
  br label %file_accessed.exit44

file_accessed.exit44:                             ; preds = %if.then.i43, %if.else.file_accessed.exit44_crit_edge
  tail call void @up_write(ptr noundef %i_rwsem.i38) #7
  br label %cleanup

if.end17:                                         ; preds = %lor.lhs.false
  %call.i = tail call ptr @coda_ftoc(ptr noundef %coda_file) #7
  %cfi_container.i = getelementptr inbounds %struct.coda_file_info, ptr %call.i, i32 0, i32 1
  %26 = ptrtoint ptr %cfi_container.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %cfi_container.i, align 4
  %f_inode.i.i = getelementptr inbounds %struct.file, ptr %coda_file, i32 0, i32 2
  %28 = ptrtoint ptr %f_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %f_inode.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %29, i32 -80
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %30 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %30, i32 noundef 3264, i32 noundef 264) #12
  %tobool.not.i46 = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i46, label %if.end17.cleanup_crit_edge, label %if.end.i

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %if.end17
  %pos.i.i = getelementptr inbounds %struct.dir_context, ptr %ctx, i32 0, i32 1
  %31 = ptrtoint ptr %pos.i.i to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %pos.i.i, align 8
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values)
  switch i64 %32, label %if.end.i.dir_emit_dots.exit.i_crit_edge [
    i64 0, label %if.then.i.i
    i64 1, label %if.end.i.if.then6.i.i_crit_edge
  ]

if.end.i.if.then6.i.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then6.i.i

if.end.i.dir_emit_dots.exit.i_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dir_emit_dots.exit.i

if.then.i.i:                                      ; preds = %if.end.i
  %33 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ctx, align 8
  %dentry.i.i.i = getelementptr inbounds %struct.file, ptr %coda_file, i32 0, i32 1, i32 1
  %35 = ptrtoint ptr %dentry.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dentry.i.i.i, align 4
  %d_inode.i.i.i = getelementptr inbounds %struct.dentry, ptr %36, i32 0, i32 5
  %37 = ptrtoint ptr %d_inode.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %d_inode.i.i.i, align 8
  %i_ino.i.i.i = getelementptr inbounds %struct.inode, ptr %38, i32 0, i32 11
  %39 = ptrtoint ptr %i_ino.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %i_ino.i.i.i, align 8
  %conv.i.i.i = zext i32 %40 to i64
  %call.i.i.i = tail call i32 %34(ptr noundef %ctx, ptr noundef nonnull @.str.13, i32 noundef 1, i64 noundef 0, i64 noundef %conv.i.i.i, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.end3.thread.i.i, label %if.then.i.i.out.i_crit_edge

if.then.i.i.out.i_crit_edge:                      ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.i

if.end3.thread.i.i:                               ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %41 = ptrtoint ptr %pos.i.i to i32
  call void @__asan_store8_noabort(i32 %41)
  store i64 1, ptr %pos.i.i, align 8
  br label %if.then6.i.i

if.then6.i.i:                                     ; preds = %if.end3.thread.i.i, %if.end.i.if.then6.i.i_crit_edge
  %42 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ctx, align 8
  %dentry.i19.i.i = getelementptr inbounds %struct.file, ptr %coda_file, i32 0, i32 1, i32 1
  %44 = ptrtoint ptr %dentry.i19.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dentry.i19.i.i, align 4
  %d_lockref.i.i.i.i = getelementptr inbounds %struct.dentry, ptr %45, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %d_lockref.i.i.i.i) #7
  %d_parent.i.i.i.i = getelementptr inbounds %struct.dentry, ptr %45, i32 0, i32 3
  %46 = ptrtoint ptr %d_parent.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %d_parent.i.i.i.i, align 8
  %d_inode.i.i.i.i = getelementptr inbounds %struct.dentry, ptr %47, i32 0, i32 5
  %48 = ptrtoint ptr %d_inode.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %d_inode.i.i.i.i, align 8
  %i_ino.i.i.i.i = getelementptr inbounds %struct.inode, ptr %49, i32 0, i32 11
  %50 = ptrtoint ptr %i_ino.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %i_ino.i.i.i.i, align 8
  tail call void @_raw_spin_unlock(ptr noundef %d_lockref.i.i.i.i) #7
  %conv.i20.i.i = zext i32 %51 to i64
  %call1.i.i.i = tail call i32 %43(ptr noundef %ctx, ptr noundef nonnull @.str.14, i32 noundef 2, i64 noundef 1, i64 noundef %conv.i20.i.i, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %cmp.i21.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %cmp.i21.i.i, label %if.end9.i.i, label %if.then6.i.i.out.i_crit_edge

if.then6.i.i.out.i_crit_edge:                     ; preds = %if.then6.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.i

if.end9.i.i:                                      ; preds = %if.then6.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %52 = ptrtoint ptr %pos.i.i to i32
  call void @__asan_store8_noabort(i32 %52)
  store i64 2, ptr %pos.i.i, align 8
  br label %dir_emit_dots.exit.i

dir_emit_dots.exit.i:                             ; preds = %if.end9.i.i, %if.end.i.dir_emit_dots.exit.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pos.i) #7
  %53 = ptrtoint ptr %pos.i.i to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %pos.i.i, align 8
  %sub137.i = add i64 %54, -2
  %55 = ptrtoint ptr %pos.i to i32
  call void @__asan_store8_noabort(i32 %55)
  store i64 %sub137.i, ptr %pos.i, align 8
  %call8138.i = call i32 @kernel_read(ptr noundef %27, ptr noundef nonnull %call7.i.i, i32 noundef 264, ptr noundef nonnull %pos.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8138.i)
  %cmp139.i = icmp slt i32 %call8138.i, 0
  br i1 %cmp139.i, label %dir_emit_dots.exit.i.do.end.i_crit_edge, label %if.end12.lr.ph.i

dir_emit_dots.exit.i.do.end.i_crit_edge:          ; preds = %dir_emit_dots.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

if.end12.lr.ph.i:                                 ; preds = %dir_emit_dots.exit.i
  %d_namlen.i = getelementptr inbounds %struct.venus_dirent, ptr %call7.i.i, i32 0, i32 3
  %d_reclen.i = getelementptr inbounds %struct.venus_dirent, ptr %call7.i.i, i32 0, i32 1
  %d_name.i = getelementptr inbounds %struct.venus_dirent, ptr %call7.i.i, i32 0, i32 4
  %arrayidx55.i = getelementptr %struct.venus_dirent, ptr %call7.i.i, i32 0, i32 4, i32 1
  %d_type.i = getelementptr inbounds %struct.venus_dirent, ptr %call7.i.i, i32 0, i32 2
  br label %if.end12.i

do.end.i:                                         ; preds = %cleanup.i.do.end.i_crit_edge, %dir_emit_dots.exit.i.do.end.i_crit_edge
  %call8.lcssa.i = phi i32 [ %call8138.i, %dir_emit_dots.exit.i.do.end.i_crit_edge ], [ %call8.i, %cleanup.i.do.end.i_crit_edge ]
  %call10.i = call ptr @coda_f2s(ptr noundef %add.ptr.i.i) #7
  %call11.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, ptr noundef %call10.i, i32 noundef %call8.lcssa.i) #10
  br label %cleanup.thread.i

if.end12.i:                                       ; preds = %cleanup.i.if.end12.i_crit_edge, %if.end12.lr.ph.i
  %call8140.i = phi i32 [ %call8138.i, %if.end12.lr.ph.i ], [ %call8.i, %cleanup.i.if.end12.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8140.i)
  %cmp13.i = icmp eq i32 %call8140.i, 0
  br i1 %cmp13.i, label %if.end12.i.cleanup.thread.i_crit_edge, label %if.end15.i

if.end12.i.cleanup.thread.i_crit_edge:            ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.thread.i

if.end15.i:                                       ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %call8140.i)
  %cmp16.i = icmp ult i32 %call8140.i, 8
  br i1 %cmp16.i, label %if.end15.i.do.end22.i_crit_edge, label %lor.lhs.false.i

if.end15.i.do.end22.i_crit_edge:                  ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end22.i

lor.lhs.false.i:                                  ; preds = %if.end15.i
  %56 = ptrtoint ptr %d_namlen.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %d_namlen.i, align 1
  %conv.i = zext i8 %57 to i32
  %add.i = add nuw nsw i32 %conv.i, 8
  call void @__sanitizer_cov_trace_cmp4(i32 %call8140.i, i32 %add.i)
  %cmp17.i = icmp ult i32 %call8140.i, %add.i
  br i1 %cmp17.i, label %lor.lhs.false.i.do.end22.i_crit_edge, label %if.end27.i

lor.lhs.false.i.do.end22.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end22.i

do.end22.i:                                       ; preds = %lor.lhs.false.i.do.end22.i_crit_edge, %if.end15.i.do.end22.i_crit_edge
  %call25.i = call ptr @coda_f2s(ptr noundef %add.ptr.i.i) #7
  %call26.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.6, ptr noundef %call25.i) #10
  br label %cleanup.thread.i

if.end27.i:                                       ; preds = %lor.lhs.false.i
  %58 = ptrtoint ptr %d_reclen.i to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %d_reclen.i, align 4
  %conv28.i = zext i16 %59 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %conv28.i)
  %cmp32.i = icmp ugt i32 %add.i, %conv28.i
  br i1 %cmp32.i, label %do.end37.i, label %if.end42.i

do.end37.i:                                       ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #9
  %call40.i = call ptr @coda_f2s(ptr noundef %add.ptr.i.i) #7
  %call41.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.6, ptr noundef %call40.i) #10
  br label %cleanup.thread.i

if.end42.i:                                       ; preds = %if.end27.i
  %60 = ptrtoint ptr %d_name.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %d_name.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 46, i8 %61)
  %cmp48.i = icmp eq i8 %61, 46
  br i1 %cmp48.i, label %land.lhs.true.i, label %if.end42.i.if.end65.i_crit_edge

if.end42.i.if.end65.i_crit_edge:                  ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end65.i

land.lhs.true.i:                                  ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %57)
  %cmp51.i = icmp eq i8 %57, 1
  br i1 %cmp51.i, label %land.lhs.true.i.if.end65.thread.i_crit_edge, label %lor.lhs.false53.i

land.lhs.true.i.if.end65.thread.i_crit_edge:      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end65.thread.i

lor.lhs.false53.i:                                ; preds = %land.lhs.true.i
  %62 = ptrtoint ptr %arrayidx55.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %arrayidx55.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 46, i8 %63)
  %cmp57.i = icmp eq i8 %63, 46
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %57)
  %cmp61.i = icmp eq i8 %57, 2
  %or.cond.i = select i1 %cmp57.i, i1 %cmp61.i, i1 false
  br i1 %or.cond.i, label %lor.lhs.false53.i.if.end65.thread.i_crit_edge, label %lor.lhs.false53.i.if.end65.i_crit_edge

lor.lhs.false53.i.if.end65.i_crit_edge:           ; preds = %lor.lhs.false53.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end65.i

lor.lhs.false53.i.if.end65.thread.i_crit_edge:    ; preds = %lor.lhs.false53.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end65.thread.i

if.end65.thread.i:                                ; preds = %lor.lhs.false53.i.if.end65.thread.i_crit_edge, %land.lhs.true.i.if.end65.thread.i_crit_edge
  %64 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 0, ptr %call7.i.i, align 8
  br label %cleanup.i

if.end65.i:                                       ; preds = %lor.lhs.false53.i.if.end65.i_crit_edge, %if.end42.i.if.end65.i_crit_edge
  %65 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %call7.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %tobool67.not.i = icmp eq i32 %66, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %tobool70.not.i = icmp eq i8 %57, 0
  %or.cond125.i = select i1 %tobool67.not.i, i1 true, i1 %tobool70.not.i
  br i1 %or.cond125.i, label %if.end65.i.cleanup.i_crit_edge, label %if.then71.i

if.end65.i.cleanup.i_crit_edge:                   ; preds = %if.end65.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.i

if.then71.i:                                      ; preds = %if.end65.i
  %67 = ptrtoint ptr %d_type.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %d_type.i, align 2
  %switch.tableidx = add i8 %68, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 14, i8 %switch.tableidx)
  %69 = icmp ult i8 %switch.tableidx, 14
  br i1 %69, label %switch.lookup, label %if.then71.i.CDT2DT.exit.i_crit_edge

if.then71.i.CDT2DT.exit.i_crit_edge:              ; preds = %if.then71.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %CDT2DT.exit.i

switch.lookup:                                    ; preds = %if.then71.i
  call void @__sanitizer_cov_trace_pc() #9
  %70 = sext i8 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [14 x i32], ptr @switch.table.coda_readdir, i32 0, i32 %70
  %71 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %71)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %CDT2DT.exit.i

CDT2DT.exit.i:                                    ; preds = %switch.lookup, %if.then71.i.CDT2DT.exit.i_crit_edge
  %dt.0.i.i = phi i32 [ 0, %if.then71.i.CDT2DT.exit.i_crit_edge ], [ %switch.load, %switch.lookup ]
  %conv76.i = zext i32 %66 to i64
  %72 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %ctx, align 8
  %74 = ptrtoint ptr %pos.i.i to i32
  call void @__asan_load8_noabort(i32 %74)
  %75 = load i64, ptr %pos.i.i, align 8
  %call.i.i = call i32 %73(ptr noundef %ctx, ptr noundef %d_name.i, i32 noundef %conv.i, i64 noundef %75, i64 noundef %conv76.i, i32 noundef %dt.0.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.i.i, label %CDT2DT.exit.i.cleanup.i_crit_edge, label %CDT2DT.exit.i.cleanup.thread.i_crit_edge

CDT2DT.exit.i.cleanup.thread.i_crit_edge:         ; preds = %CDT2DT.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.thread.i

CDT2DT.exit.i.cleanup.i_crit_edge:                ; preds = %CDT2DT.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.i

cleanup.thread.i:                                 ; preds = %CDT2DT.exit.i.cleanup.thread.i_crit_edge, %do.end37.i, %do.end22.i, %if.end12.i.cleanup.thread.i_crit_edge, %do.end.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pos.i) #7
  br label %out.i

cleanup.i:                                        ; preds = %CDT2DT.exit.i.cleanup.i_crit_edge, %if.end65.i.cleanup.i_crit_edge, %if.end65.thread.i
  %76 = ptrtoint ptr %d_reclen.i to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %d_reclen.i, align 4
  %conv82.i = zext i16 %77 to i64
  %78 = ptrtoint ptr %pos.i.i to i32
  call void @__asan_load8_noabort(i32 %78)
  %79 = load i64, ptr %pos.i.i, align 8
  %add84.i = add i64 %79, %conv82.i
  store i64 %add84.i, ptr %pos.i.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pos.i) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pos.i) #7
  %sub.i = add i64 %add84.i, -2
  %80 = ptrtoint ptr %pos.i to i32
  call void @__asan_store8_noabort(i32 %80)
  store i64 %sub.i, ptr %pos.i, align 8
  %call8.i = call i32 @kernel_read(ptr noundef %27, ptr noundef nonnull %call7.i.i, i32 noundef 264, ptr noundef nonnull %pos.i) #7
  %cmp.i = icmp slt i32 %call8.i, 0
  br i1 %cmp.i, label %cleanup.i.do.end.i_crit_edge, label %cleanup.i.if.end12.i_crit_edge

cleanup.i.if.end12.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12.i

cleanup.i.do.end.i_crit_edge:                     ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

out.i:                                            ; preds = %cleanup.thread.i, %if.then6.i.i.out.i_crit_edge, %if.then.i.i.out.i_crit_edge
  call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %cleanup

cleanup:                                          ; preds = %out.i, %if.end17.cleanup_crit_edge, %file_accessed.exit44, %file_accessed.exit, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -2, %if.then.cleanup_crit_edge ], [ %call12, %file_accessed.exit ], [ %call15, %file_accessed.exit44 ], [ 0, %out.i ], [ -12, %if.end17.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @coda_open(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @coda_release(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @coda_fsync(ptr noundef, i64 noundef, i64 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_bad_inode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @shrink_dcache_parent(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @coda_iscontrol(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @coda_cnode_makectl(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @venus_lookup(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @coda_cnode_make(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_splice_alias(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @venus_create(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @coda_iget(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @d_instantiate(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @d_drop(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @current_time(ptr sret(%struct.timespec64) align 8, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @venus_link(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ihold(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @inc_nlink(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @venus_remove(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drop_nlink(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @venus_symlink(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @venus_mkdir(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @venus_rmdir(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clear_nlink(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @venus_rename(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @coda_ftoc(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @touch_atime(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kernel_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

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
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nobuiltin }
attributes #12 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10, !12, !14, !15, !16, !17, !19, !20, !21, !22, !24, !25, !26, !28, !29, !30, !32}
!llvm.module.flags = !{!34, !35, !36, !37, !38, !39, !40, !41}
!llvm.ident = !{!42}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/coda/dir.c", i32 550, i32 4}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @coda_revalidate_inode._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @coda_revalidate_inode._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @coda_dentry_operations, !7, !"coda_dentry_operations", i1 false, i1 false}
!7 = !{!"../fs/coda/dir.c", i32 568, i32 32}
!8 = !{ptr @coda_dir_inode_operations, !9, !"coda_dir_inode_operations", i1 false, i1 false}
!9 = !{!"../fs/coda/dir.c", i32 573, i32 31}
!10 = !{ptr @coda_dir_operations, !11, !"coda_dir_operations", i1 false, i1 false}
!11 = !{!"../fs/coda/dir.c", i32 588, i32 30}
!12 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../fs/coda/dir.c", i32 50, i32 3}
!14 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @coda_lookup._entry, !13, !"_entry", i1 false, i1 false}
!16 = !{ptr @coda_lookup._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../fs/coda/dir.c", i32 377, i32 4}
!19 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @coda_venus_readdir._entry, !18, !"_entry", i1 false, i1 false}
!21 = !{ptr @coda_venus_readdir._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../fs/coda/dir.c", i32 385, i32 4}
!24 = !{ptr @coda_venus_readdir._entry.7, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @coda_venus_readdir._entry_ptr.9, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.11, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../fs/coda/dir.c", i32 392, i32 4}
!28 = !{ptr @coda_venus_readdir._entry.10, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @coda_venus_readdir._entry_ptr.12, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.13, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../include/linux/fs.h", i32 3566, i32 25}
!32 = !{ptr @.str.14, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../include/linux/fs.h", i32 3571, i32 25}
!34 = !{i32 1, !"wchar_size", i32 2}
!35 = !{i32 1, !"min_enum_size", i32 4}
!36 = !{i32 8, !"branch-target-enforcement", i32 0}
!37 = !{i32 8, !"sign-return-address", i32 0}
!38 = !{i32 8, !"sign-return-address-all", i32 0}
!39 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!40 = !{i32 7, !"uwtable", i32 1}
!41 = !{i32 7, !"frame-pointer", i32 2}
!42 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
