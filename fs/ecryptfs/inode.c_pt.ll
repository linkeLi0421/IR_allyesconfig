; ModuleID = '/llk/IR_all_yes/fs/ecryptfs/inode.c_pt.bc'
source_filename = "../fs/ecryptfs/inode.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i32, i8, %struct.list_head, ptr, %struct.rw_semaphore, ptr, %struct.work_struct, %struct.ctl_table_set, ptr, ptr, [16 x i32] }
%struct.uid_gid_map = type { i32, %union.anon.33 }
%union.anon.33 = type { [5 x %struct.uid_gid_extent] }
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
%struct.ctl_table_header = type { %union.anon.35, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.35 = type { %struct.anon.36 }
%struct.anon.36 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
%struct.inode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [36 x i8] }
%struct.xattr_handler = type { ptr, ptr, i32, ptr, ptr, ptr }
%struct.address_space_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.76, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.77, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.78, ptr, %struct.address_space, %struct.list_head, %union.anon.79, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.76 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
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
%struct.ecryptfs_inode_info = type { %struct.inode, ptr, %struct.mutex, %struct.atomic_t, ptr, %struct.ecryptfs_crypt_stat }
%struct.ecryptfs_crypt_stat = type { i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, [32 x i8], [64 x i8], [16 x i8], %struct.list_head, %struct.mutex, %struct.mutex, %struct.mutex }
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, ptr }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.74, %struct.list_head, %struct.list_head, %union.anon.75 }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.2, ptr }
%union.anon.2 = type { i64 }
%struct.lockref = type { %union.anon.4 }
%union.anon.4 = type { %struct.anon.5 }
%struct.anon.5 = type { %struct.spinlock, i32 }
%union.anon.74 = type { %struct.list_head }
%union.anon.75 = type { %struct.hlist_node }
%struct.path = type { ptr, ptr }
%struct.delayed_call = type { ptr, ptr }
%struct.ecryptfs_sb_info = type { ptr, %struct.ecryptfs_mount_crypt_stat }
%struct.ecryptfs_mount_crypt_stat = type { i32, %struct.list_head, %struct.mutex, i32, i32, [32 x i8], [32 x i8], [17 x i8] }
%struct.file = type { %union.anon.19, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.19 = type { %struct.callback_head }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.kstat = type { i32, i16, i32, i32, i64, i64, i64, i32, i32, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.timespec64, i64, i64 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.renamedata = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }

@.str = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\017%s: This is a directory\0A\00", [37 x i8] zeroinitializer }, align 32
@__func__.ecryptfs_initialize_file = private unnamed_addr constant [25 x i8] c"ecryptfs_initialize_file\00", align 1
@.str.1 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\017%s: Initializing crypto context\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013%s: Error creating new file context; rc = [%d]\0A\00", [46 x i8] zeroinitializer }, align 32
@ecryptfs_initialize_file._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @__func__.ecryptfs_initialize_file, ptr @.str.4, i32 234, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [95 x i8], [33 x i8] } { [95 x i8] c"\013%s: Error attempting to initialize the lower file for the dentry with name [%pd]; rc = [%d]\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"fs/ecryptfs/inode.c\00", [44 x i8] zeroinitializer }, align 32
@ecryptfs_initialize_file._entry_ptr = internal global ptr @ecryptfs_initialize_file._entry, section ".printk_index", align 4
@ecryptfs_initialize_file._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @__func__.ecryptfs_initialize_file, ptr @.str.4, i32 239, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013Error writing headers; rc = [%d]\0A\00", [60 x i8] zeroinitializer }, align 32
@ecryptfs_initialize_file._entry_ptr.7 = internal global ptr @ecryptfs_initialize_file._entry.5, section ".printk_index", align 4
@init_user_ns = external dso_local global %struct.user_namespace, align 4
@ecryptfs_symlink_iops = dso_local constant %struct.inode_operations { ptr null, ptr @ecryptfs_get_link, ptr @ecryptfs_permission, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ecryptfs_setattr, ptr @ecryptfs_getattr_link, ptr @ecryptfs_listxattr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [36 x i8] undef }, align 128
@ecryptfs_dir_iops = dso_local constant %struct.inode_operations { ptr @ecryptfs_lookup, ptr null, ptr @ecryptfs_permission, ptr null, ptr null, ptr @ecryptfs_create, ptr @ecryptfs_link, ptr @ecryptfs_unlink, ptr @ecryptfs_symlink, ptr @ecryptfs_mkdir, ptr @ecryptfs_rmdir, ptr @ecryptfs_mknod, ptr @ecryptfs_rename, ptr @ecryptfs_setattr, ptr null, ptr @ecryptfs_listxattr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ecryptfs_fileattr_set, ptr @ecryptfs_fileattr_get, [36 x i8] undef }, align 128
@ecryptfs_main_iops = dso_local constant %struct.inode_operations { ptr null, ptr null, ptr @ecryptfs_permission, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ecryptfs_setattr, ptr @ecryptfs_getattr, ptr @ecryptfs_listxattr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ecryptfs_fileattr_set, ptr @ecryptfs_fileattr_get, [36 x i8] undef }, align 128
@ecryptfs_xattr_handler = internal constant { %struct.xattr_handler, [40 x i8] } { %struct.xattr_handler { ptr null, ptr @.str.27, i32 0, ptr null, ptr @ecryptfs_xattr_get, ptr @ecryptfs_xattr_set }, [40 x i8] zeroinitializer }, align 32
@ecryptfs_xattr_handlers = dso_local global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @ecryptfs_xattr_handler, ptr null], [24 x i8] zeroinitializer }, align 32
@ecryptfs_aops = external dso_local constant %struct.address_space_operations, align 4
@ecryptfs_dir_fops = external dso_local constant %struct.file_operations, align 4
@ecryptfs_main_fops = external dso_local constant %struct.file_operations, align 4
@truncate_upper._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.4, i32 781, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [94 x i8], [34 x i8] } { [94 x i8] c"\013Error attempting to zero out the remainder of the end page on reducing truncate; rc = [%d]\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"truncate_upper\00", [17 x i8] zeroinitializer }, align 32
@truncate_upper._entry_ptr = internal global ptr @truncate_upper._entry, section ".printk_index", align 4
@truncate_upper._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.9, ptr @.str.4, i32 790, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\013Problem with ecryptfs_write_inode_size_to_metadata; rc = [%d]\0A\00", [63 x i8] zeroinitializer }, align 32
@truncate_upper._entry_ptr.12 = internal global ptr @truncate_upper._entry.10, section ".printk_index", align 4
@ecryptfs_setattr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.4, i32 929, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [153 x i8], [39 x i8] } { [153 x i8] c"\014Either the lower file is not in a valid eCryptfs format, or the key could not be retrieved. Plaintext passthrough mode is not enabled; returning -EIO\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ecryptfs_setattr\00", [47 x i8] zeroinitializer }, align 32
@ecryptfs_setattr._entry_ptr = internal global ptr @ecryptfs_setattr._entry, section ".printk_index", align 4
@ecryptfs_lookup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.4, i32 402, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\013%s: Error attempting to encrypt and encode filename; rc = [%d]\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ecryptfs_lookup\00", [16 x i8] zeroinitializer }, align 32
@ecryptfs_lookup._entry_ptr = internal global ptr @ecryptfs_lookup._entry, section ".printk_index", align 4
@.str.17 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\017%s: %s: lookup_one_len() returned [%ld] on lower_dentry = [%s]\0A\00", [62 x i8] zeroinitializer }, align 32
@ecryptfs_dentry_info_cache = external dso_local local_unnamed_addr global ptr, align 4
@ecryptfs_lookup_interpose._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.4, i32 355, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013%s: Error interposing; rc = [%ld]\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ecryptfs_lookup_interpose\00", [38 x i8] zeroinitializer }, align 32
@ecryptfs_lookup_interpose._entry_ptr = internal global ptr @ecryptfs_lookup_interpose._entry, section ".printk_index", align 4
@ecryptfs_i_size_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.20, ptr @.str.4, i32 293, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ecryptfs_i_size_read\00", [43 x i8] zeroinitializer }, align 32
@ecryptfs_i_size_read._entry_ptr = internal global ptr @ecryptfs_i_size_read._entry, section ".printk_index", align 4
@.str.21 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\014%s: Failed to create file inlower filesystem\0A\00", [48 x i8] zeroinitializer }, align 32
@__func__.ecryptfs_create = private unnamed_addr constant [16 x i8] c"ecryptfs_create\00", align 1
@ecryptfs_do_create._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.4, i32 185, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013%s: Failure to create dentry in lower fs; rc = [%d]\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ecryptfs_do_create\00", [45 x i8] zeroinitializer }, align 32
@ecryptfs_do_create._entry_ptr = internal global ptr @ecryptfs_do_create._entry, section ".printk_index", align 4
@ecryptfs_do_unlink._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.4, i32 144, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013Error in vfs_unlink; rc = [%d]\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ecryptfs_do_unlink\00", [45 x i8] zeroinitializer }, align 32
@ecryptfs_do_unlink._entry_ptr = internal global ptr @ecryptfs_do_unlink._entry, section ".printk_index", align 4
@__seqprop_assert.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@hardirqs_enabled = external dso_local global i32, section ".data..percpu", align 4
@.str.26 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/seqlock.h\00", [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 16384, i64 40960]
@__sancov_gen_cov_switch_values.28 = internal global [7 x i64] [i64 5, i64 4, i64 0, i64 5, i64 6, i64 8, i64 10]
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 218, i32 3 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 222, i32 2 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 225, i32 3 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 231, i32 3 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 239, i32 3 }
@___asan_gen_.53 = private unnamed_addr constant [23 x i8] c"ecryptfs_xattr_handler\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 1178, i32 35 }
@___asan_gen_.56 = private unnamed_addr constant [24 x i8] c"ecryptfs_xattr_handlers\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 1184, i32 29 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 779, i32 5 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 788, i32 4 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 925, i32 5 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 401, i32 4 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 410, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 354, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 290, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 264, i32 3 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 184, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 144, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant [27 x i8] c"../include/linux/seqlock.h\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 271, i32 2 }
@___asan_gen_.134 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.135 = private constant [23 x i8] c"../fs/ecryptfs/inode.c\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 1179, i32 12 }
@llvm.compiler.used = appending global [46 x ptr] [ptr @ecryptfs_do_create._entry, ptr @ecryptfs_do_create._entry_ptr, ptr @ecryptfs_do_unlink._entry, ptr @ecryptfs_do_unlink._entry_ptr, ptr @ecryptfs_i_size_read._entry, ptr @ecryptfs_i_size_read._entry_ptr, ptr @ecryptfs_initialize_file._entry, ptr @ecryptfs_initialize_file._entry.5, ptr @ecryptfs_initialize_file._entry_ptr, ptr @ecryptfs_initialize_file._entry_ptr.7, ptr @ecryptfs_lookup._entry, ptr @ecryptfs_lookup._entry_ptr, ptr @ecryptfs_lookup_interpose._entry, ptr @ecryptfs_lookup_interpose._entry_ptr, ptr @ecryptfs_setattr._entry, ptr @ecryptfs_setattr._entry_ptr, ptr @truncate_upper._entry, ptr @truncate_upper._entry.10, ptr @truncate_upper._entry_ptr, ptr @truncate_upper._entry_ptr.12, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @ecryptfs_xattr_handler, ptr @ecryptfs_xattr_handlers, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27], section "llvm.metadata"
@0 = internal global [36 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ecryptfs_initialize_file._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 95, i32 128, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ecryptfs_initialize_file._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ecryptfs_xattr_handler to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ecryptfs_xattr_handlers to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @truncate_upper._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 94, i32 128, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @truncate_upper._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ecryptfs_setattr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 153, i32 192, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ecryptfs_lookup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ecryptfs_lookup_interpose._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ecryptfs_i_size_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ecryptfs_do_create._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ecryptfs_do_unlink._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ecryptfs_get_inode(ptr noundef %lower_inode, ptr noundef %sb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %lower_inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i.i, align 16
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %cmp.not.i = icmp eq ptr %1, %5
  br i1 %cmp.not.i, label %if.end.i, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end.i:                                         ; preds = %entry
  %call2.i = tail call ptr @igrab(ptr noundef %lower_inode) #10
  %tobool.not.i = icmp eq ptr %call2.i, null
  br i1 %tobool.not.i, label %if.end.i.if.end_crit_edge, label %if.end5.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end5.i:                                        ; preds = %if.end.i
  %6 = ptrtoint ptr %lower_inode to i32
  %call6.i = tail call ptr @iget5_locked(ptr noundef %sb, i32 noundef %6, ptr noundef nonnull @ecryptfs_inode_test, ptr noundef nonnull @ecryptfs_inode_set, ptr noundef %lower_inode) #10
  %tobool7.not.i = icmp eq ptr %call6.i, null
  br i1 %tobool7.not.i, label %if.end5.i.cleanup.sink.split.i_crit_edge, label %if.end10.i

if.end5.i.cleanup.sink.split.i_crit_edge:         ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split.i

if.end10.i:                                       ; preds = %if.end5.i
  %i_state.i = getelementptr inbounds %struct.inode, ptr %call6.i, i32 0, i32 24
  %7 = ptrtoint ptr %i_state.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %i_state.i, align 8
  %and.i = and i32 %8, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool11.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool11.not.i, label %if.end10.i.cleanup.sink.split.i_crit_edge, label %if.end10.i.__ecryptfs_get_inode.exit_crit_edge

if.end10.i.__ecryptfs_get_inode.exit_crit_edge:   ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__ecryptfs_get_inode.exit

if.end10.i.cleanup.sink.split.i_crit_edge:        ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.end10.i.cleanup.sink.split.i_crit_edge, %if.end5.i.cleanup.sink.split.i_crit_edge
  %retval.0.ph.i = phi ptr [ inttoptr (i32 -13 to ptr), %if.end5.i.cleanup.sink.split.i_crit_edge ], [ %call6.i, %if.end10.i.cleanup.sink.split.i_crit_edge ]
  tail call void @iput(ptr noundef %lower_inode) #10
  br label %__ecryptfs_get_inode.exit

__ecryptfs_get_inode.exit:                        ; preds = %cleanup.sink.split.i, %if.end10.i.__ecryptfs_get_inode.exit_crit_edge
  %retval.0.i = phi ptr [ %call6.i, %if.end10.i.__ecryptfs_get_inode.exit_crit_edge ], [ %retval.0.ph.i, %cleanup.sink.split.i ]
  %cmp.i = icmp ugt ptr %retval.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %__ecryptfs_get_inode.exit.if.end_crit_edge, label %land.lhs.true

__ecryptfs_get_inode.exit.if.end_crit_edge:       ; preds = %__ecryptfs_get_inode.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %__ecryptfs_get_inode.exit
  %i_state = getelementptr inbounds %struct.inode, ptr %retval.0.i, i32 0, i32 24
  %9 = ptrtoint ptr %i_state to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %i_state, align 8
  %and = and i32 %10, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @unlock_new_inode(ptr noundef %retval.0.i) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %__ecryptfs_get_inode.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %retval.0.i7 = phi ptr [ %retval.0.i, %if.then ], [ %retval.0.i, %land.lhs.true.if.end_crit_edge ], [ %retval.0.i, %__ecryptfs_get_inode.exit.if.end_crit_edge ], [ inttoptr (i32 -116 to ptr), %if.end.i.if.end_crit_edge ], [ inttoptr (i32 -18 to ptr), %entry.if.end_crit_edge ]
  ret ptr %retval.0.i7
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_new_inode(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ecryptfs_initialize_file(ptr noundef %ecryptfs_dentry, ptr noundef %ecryptfs_inode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ecryptfs_inode to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %ecryptfs_inode, align 8
  %2 = and i16 %1, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %2)
  %cmp = icmp eq i16 %2, 16384
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %crypt_stat1 = getelementptr inbounds %struct.ecryptfs_inode_info, ptr %ecryptfs_inode, i32 0, i32 5
  tail call void (ptr, ...) @__ecryptfs_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.ecryptfs_initialize_file) #10
  %3 = ptrtoint ptr %crypt_stat1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %crypt_stat1, align 4
  %and3 = and i32 %4, -5
  store i32 %and3, ptr %crypt_stat1, align 4
  br label %out

if.end:                                           ; preds = %entry
  tail call void (ptr, ...) @__ecryptfs_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.ecryptfs_initialize_file) #10
  %call4 = tail call i32 @ecryptfs_new_file_context(ptr noundef %ecryptfs_inode) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.end6, label %if.then5

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ...) @__ecryptfs_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.ecryptfs_initialize_file, i32 noundef %call4) #10
  br label %out

if.end6:                                          ; preds = %if.end
  %call7 = tail call i32 @ecryptfs_get_lower_file(ptr noundef %ecryptfs_dentry, ptr noundef %ecryptfs_inode) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end11, label %do.end

do.end:                                           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.ecryptfs_initialize_file, ptr noundef %ecryptfs_dentry, i32 noundef %call7) #13
  br label %out

if.end11:                                         ; preds = %if.end6
  %call12 = tail call i32 @ecryptfs_write_metadata(ptr noundef %ecryptfs_dentry, ptr noundef %ecryptfs_inode) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end11.if.end20_crit_edge, label %do.end17

if.end11.if.end20_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

do.end17:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %call12) #13
  br label %if.end20

if.end20:                                         ; preds = %do.end17, %if.end11.if.end20_crit_edge
  tail call void @ecryptfs_put_lower_file(ptr noundef %ecryptfs_inode) #10
  br label %out

out:                                              ; preds = %if.end20, %do.end, %if.then5, %if.then
  %rc.0 = phi i32 [ 0, %if.then ], [ %call4, %if.then5 ], [ %call7, %do.end ], [ %call12, %if.end20 ]
  ret i32 %rc.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ecryptfs_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ecryptfs_new_file_context(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ecryptfs_get_lower_file(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ecryptfs_write_metadata(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ecryptfs_put_lower_file(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ecryptfs_truncate(ptr noundef %dentry, i64 noundef %new_length) local_unnamed_addr #0 align 64 {
entry:
  %ia = alloca %struct.iattr, align 8
  %lower_ia = alloca %struct.iattr, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %ia) #10
  %0 = call ptr @memset(ptr %ia, i32 0, i32 80)
  %1 = ptrtoint ptr %ia to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 8, ptr %ia, align 8
  %ia_size = getelementptr inbounds %struct.iattr, ptr %ia, i32 0, i32 4
  %2 = ptrtoint ptr %ia_size to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %new_length, ptr %ia_size, align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %lower_ia) #10
  %3 = call ptr @memset(ptr %lower_ia, i32 0, i32 80)
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %4 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %d_inode.i, align 8
  %call1 = tail call fastcc i32 @ecryptfs_inode_newsize_ok(ptr noundef %5, i64 noundef %new_length)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = call fastcc i32 @truncate_upper(ptr noundef %dentry, ptr noundef nonnull %ia, ptr noundef nonnull %lower_ia)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end
  %6 = ptrtoint ptr %lower_ia to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %lower_ia, align 8
  %and = and i32 %7, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %land.lhs.true.cleanup_crit_edge, label %if.then6

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then6:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %d_fsdata.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 11
  %8 = ptrtoint ptr %d_fsdata.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %d_fsdata.i, align 4
  %dentry1.i = getelementptr inbounds %struct.path, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %dentry1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dentry1.i, align 4
  %d_inode.i22 = getelementptr inbounds %struct.dentry, ptr %11, i32 0, i32 5
  %12 = ptrtoint ptr %d_inode.i22 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %d_inode.i22, align 8
  %i_rwsem.i = getelementptr inbounds %struct.inode, ptr %13, i32 0, i32 25
  tail call void @down_write(ptr noundef %i_rwsem.i) #10
  %call9 = call i32 @notify_change(ptr noundef nonnull @init_user_ns, ptr noundef %11, ptr noundef nonnull %lower_ia, ptr noundef null) #10
  %14 = ptrtoint ptr %d_inode.i22 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %d_inode.i22, align 8
  %i_rwsem.i24 = getelementptr inbounds %struct.inode, ptr %15, i32 0, i32 25
  call void @up_write(ptr noundef %i_rwsem.i24) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then6, %land.lhs.true.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %entry.cleanup_crit_edge ], [ %call2, %if.end.cleanup_crit_edge ], [ %call9, %if.then6 ], [ 0, %land.lhs.true.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %lower_ia) #10
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %ia) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ecryptfs_inode_newsize_ok(ptr noundef %inode, i64 noundef %offset) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %crypt_stat1 = getelementptr inbounds %struct.ecryptfs_inode_info, ptr %inode, i32 0, i32 5
  %call2 = tail call fastcc i64 @i_size_read(ptr noundef %inode)
  %0 = ptrtoint ptr %crypt_stat1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %crypt_stat1, align 4
  %and.i.i = and i32 %1, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %entry.ecryptfs_lower_header_size.exit.i_crit_edge

entry.ecryptfs_lower_header_size.exit.i_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %ecryptfs_lower_header_size.exit.i

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %metadata_size.i.i = getelementptr inbounds %struct.ecryptfs_inode_info, ptr %inode, i32 0, i32 5, i32 3
  %2 = ptrtoint ptr %metadata_size.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %metadata_size.i.i, align 4
  br label %ecryptfs_lower_header_size.exit.i

ecryptfs_lower_header_size.exit.i:                ; preds = %if.end.i.i, %entry.ecryptfs_lower_header_size.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %3, %if.end.i.i ], [ 0, %entry.ecryptfs_lower_header_size.exit.i_crit_edge ]
  %conv.i = zext i32 %retval.0.i.i to i64
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call2)
  %cmp.not.i = icmp eq i64 %call2, 0
  br i1 %cmp.not.i, label %ecryptfs_lower_header_size.exit.i.upper_size_to_lower_size.exit_crit_edge, label %if.then.i

ecryptfs_lower_header_size.exit.i.upper_size_to_lower_size.exit_crit_edge: ; preds = %ecryptfs_lower_header_size.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %upper_size_to_lower_size.exit

if.then.i:                                        ; preds = %ecryptfs_lower_header_size.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %extent_shift.i = getelementptr inbounds %struct.ecryptfs_inode_info, ptr %inode, i32 0, i32 5, i32 6
  %4 = ptrtoint ptr %extent_shift.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %extent_shift.i, align 4
  %sh_prom.i = zext i32 %5 to i64
  %shr.i = ashr i64 %call2, %sh_prom.i
  %extent_mask.i = getelementptr inbounds %struct.ecryptfs_inode_info, ptr %inode, i32 0, i32 5, i32 7
  %6 = ptrtoint ptr %extent_mask.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %extent_mask.i, align 4
  %neg.i = xor i32 %7, -1
  %conv2.i = zext i32 %neg.i to i64
  %and.i = and i64 %call2, %conv2.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.not.i = icmp ne i64 %and.i, 0
  %inc.i = zext i1 %tobool.not.i to i64
  %spec.select.i = add i64 %shr.i, %inc.i
  %extent_size.i = getelementptr inbounds %struct.ecryptfs_inode_info, ptr %inode, i32 0, i32 5, i32 4
  %8 = ptrtoint ptr %extent_size.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %extent_size.i, align 4
  %conv4.i = zext i32 %9 to i64
  %mul.i = mul i64 %spec.select.i, %conv4.i
  %add.i = add i64 %mul.i, %conv.i
  br label %upper_size_to_lower_size.exit

upper_size_to_lower_size.exit:                    ; preds = %if.then.i, %ecryptfs_lower_header_size.exit.i.upper_size_to_lower_size.exit_crit_edge
  %lower_size.0.i = phi i64 [ %add.i, %if.then.i ], [ %conv.i, %ecryptfs_lower_header_size.exit.i.upper_size_to_lower_size.exit_crit_edge ]
  br i1 %tobool.not.i.i, label %if.end.i.i15, label %upper_size_to_lower_size.exit.ecryptfs_lower_header_size.exit.i19_crit_edge

upper_size_to_lower_size.exit.ecryptfs_lower_header_size.exit.i19_crit_edge: ; preds = %upper_size_to_lower_size.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %ecryptfs_lower_header_size.exit.i19

if.end.i.i15:                                     ; preds = %upper_size_to_lower_size.exit
  call void @__sanitizer_cov_trace_pc() #12
  %metadata_size.i.i14 = getelementptr inbounds %struct.ecryptfs_inode_info, ptr %inode, i32 0, i32 5, i32 3
  %10 = ptrtoint ptr %metadata_size.i.i14 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %metadata_size.i.i14, align 4
  br label %ecryptfs_lower_header_size.exit.i19

ecryptfs_lower_header_size.exit.i19:              ; preds = %if.end.i.i15, %upper_size_to_lower_size.exit.ecryptfs_lower_header_size.exit.i19_crit_edge
  %retval.0.i.i16 = phi i32 [ %11, %if.end.i.i15 ], [ 0, %upper_size_to_lower_size.exit.ecryptfs_lower_header_size.exit.i19_crit_edge ]
  %conv.i17 = zext i32 %retval.0.i.i16 to i64
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %offset)
  %cmp.not.i18 = icmp eq i64 %offset, 0
  br i1 %cmp.not.i18, label %ecryptfs_lower_header_size.exit.i19.upper_size_to_lower_size.exit36_crit_edge, label %if.then.i34

ecryptfs_lower_header_size.exit.i19.upper_size_to_lower_size.exit36_crit_edge: ; preds = %ecryptfs_lower_header_size.exit.i19
  call void @__sanitizer_cov_trace_pc() #12
  br label %upper_size_to_lower_size.exit36

if.then.i34:                                      ; preds = %ecryptfs_lower_header_size.exit.i19
  call void @__sanitizer_cov_trace_pc() #12
  %extent_shift.i20 = getelementptr inbounds %struct.ecryptfs_inode_info, ptr %inode, i32 0, i32 5, i32 6
  %12 = ptrtoint ptr %extent_shift.i20 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %extent_shift.i20, align 4
  %sh_prom.i21 = zext i32 %13 to i64
  %shr.i22 = ashr i64 %offset, %sh_prom.i21
  %extent_mask.i23 = getelementptr inbounds %struct.ecryptfs_inode_info, ptr %inode, i32 0, i32 5, i32 7
  %14 = ptrtoint ptr %extent_mask.i23 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %extent_mask.i23, align 4
  %neg.i24 = xor i32 %15, -1
  %conv2.i25 = zext i32 %neg.i24 to i64
  %and.i26 = and i64 %conv2.i25, %offset
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i26)
  %tobool.not.i27 = icmp ne i64 %and.i26, 0
  %inc.i28 = zext i1 %tobool.not.i27 to i64
  %spec.select.i29 = add i64 %shr.i22, %inc.i28
  %extent_size.i30 = getelementptr inbounds %struct.ecryptfs_inode_info, ptr %inode, i32 0, i32 5, i32 4
  %16 = ptrtoint ptr %extent_size.i30 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %extent_size.i30, align 4
  %conv4.i31 = zext i32 %17 to i64
  %mul.i32 = mul i64 %spec.select.i29, %conv4.i31
  %add.i33 = add i64 %mul.i32, %conv.i17
  br label %upper_size_to_lower_size.exit36

upper_size_to_lower_size.exit36:                  ; preds = %if.then.i34, %ecryptfs_lower_header_size.exit.i19.upper_size_to_lower_size.exit36_crit_edge
  %lower_size.0.i35 = phi i64 [ %add.i33, %if.then.i34 ], [ %conv.i17, %ecryptfs_lower_header_size.exit.i19.upper_size_to_lower_size.exit36_crit_edge ]
  call void @__sanitizer_cov_trace_cmp8(i64 %lower_size.0.i35, i64 %lower_size.0.i)
  %cmp = icmp sgt i64 %lower_size.0.i35, %lower_size.0.i
  br i1 %cmp, label %if.then, label %upper_size_to_lower_size.exit36.cleanup_crit_edge

upper_size_to_lower_size.exit36.cleanup_crit_edge: ; preds = %upper_size_to_lower_size.exit36
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then:                                          ; preds = %upper_size_to_lower_size.exit36
  call void @__sanitizer_cov_trace_pc() #12
  %call5 = tail call i32 @inode_newsize_ok(ptr noundef %inode, i64 noundef %lower_size.0.i35) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then, %upper_size_to_lower_size.exit36.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %if.then ], [ 0, %upper_size_to_lower_size.exit36.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @truncate_upper(ptr noundef %dentry, ptr nocapture noundef readonly %ia, ptr nocapture noundef %lower_ia) unnamed_addr #0 align 64 {
entry:
  %zero = alloca [1 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode.i, align 8
  %call1 = tail call fastcc i64 @i_size_read(ptr noundef %1)
  %ia_size = getelementptr inbounds %struct.iattr, ptr %ia, i32 0, i32 4
  %2 = ptrtoint ptr %ia_size to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %ia_size, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %3, i64 %call1)
  %cmp = icmp eq i64 %3, %call1
  br i1 %cmp, label %if.then, label %if.end, !prof !84

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %lower_ia to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %lower_ia, align 8
  %and = and i32 %5, -9
  store i32 %and, ptr %lower_ia, align 8
  br label %cleanup68

if.end:                                           ; preds = %entry
  %call3 = tail call i32 @ecryptfs_get_lower_file(ptr noundef %dentry, ptr noundef %1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.cleanup68_crit_edge

if.end.cleanup68_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup68

if.end6:                                          ; preds = %if.end
  %6 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %d_inode.i, align 8
  %crypt_stat9 = getelementptr inbounds %struct.ecryptfs_inode_info, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %ia_size to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %ia_size, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %9, i64 %call1)
  %cmp11 = icmp sgt i64 %9, %call1
  br i1 %cmp11, label %if.then12, label %if.else

if.then12:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %zero) #10
  %10 = ptrtoint ptr %zero to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %zero, align 1
  %11 = ptrtoint ptr %lower_ia to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %lower_ia, align 8
  %and14 = and i32 %12, -9
  store i32 %and14, ptr %lower_ia, align 8
  %13 = ptrtoint ptr %ia_size to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %ia_size, align 8
  %sub = add i64 %14, -1
  %call16 = call i32 @ecryptfs_write(ptr noundef %1, ptr noundef nonnull %zero, i64 noundef %sub, i32 noundef 1) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %zero) #10
  br label %out

if.else:                                          ; preds = %if.end6
  %15 = trunc i64 %9 to i32
  %16 = and i32 %15, 4095
  %conv = sub nuw nsw i32 4096, %16
  %17 = ptrtoint ptr %crypt_stat9 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %crypt_stat9, align 4
  %and20 = and i32 %18, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %if.then22, label %if.end8.i.i

if.then22:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @truncate_setsize(ptr noundef %1, i64 noundef %9) #10
  %19 = ptrtoint ptr %ia_size to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %ia_size, align 8
  %ia_size25 = getelementptr inbounds %struct.iattr, ptr %lower_ia, i32 0, i32 4
  %21 = ptrtoint ptr %ia_size25 to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %20, ptr %ia_size25, align 8
  %22 = ptrtoint ptr %lower_ia to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %lower_ia, align 8
  %or = or i32 %23, 8
  store i32 %or, ptr %lower_ia, align 8
  br label %out

if.end8.i.i:                                      ; preds = %if.else
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %conv, i32 noundef 3520) #14
  %tobool31.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool31.not, label %if.end8.i.i.out_crit_edge, label %if.end33

if.end8.i.i.out_crit_edge:                        ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end33:                                         ; preds = %if.end8.i.i
  %24 = ptrtoint ptr %ia_size to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %ia_size, align 8
  %call35 = tail call i32 @ecryptfs_write(ptr noundef %1, ptr noundef nonnull %call9.i.i, i64 noundef %25, i32 noundef %conv) #10
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.end40, label %do.end

do.end:                                           ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #12
  %call38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, i32 noundef %call35) #13
  br label %out

if.end40:                                         ; preds = %if.end33
  %26 = ptrtoint ptr %ia_size to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %ia_size, align 8
  tail call void @truncate_setsize(ptr noundef %1, i64 noundef %27) #10
  %call42 = tail call i32 @ecryptfs_write_inode_size_to_metadata(ptr noundef %1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %if.end50, label %do.end47

do.end47:                                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #12
  %call49 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef %call42) #13
  br label %out

if.end50:                                         ; preds = %if.end40
  %28 = ptrtoint ptr %crypt_stat9 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %crypt_stat9, align 4
  %and.i.i = and i32 %29, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i114, label %if.end50.ecryptfs_lower_header_size.exit.i_crit_edge

if.end50.ecryptfs_lower_header_size.exit.i_crit_edge: ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #12
  br label %ecryptfs_lower_header_size.exit.i

if.end.i.i114:                                    ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #12
  %metadata_size.i.i = getelementptr inbounds %struct.ecryptfs_inode_info, ptr %7, i32 0, i32 5, i32 3
  %30 = ptrtoint ptr %metadata_size.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %metadata_size.i.i, align 4
  br label %ecryptfs_lower_header_size.exit.i

ecryptfs_lower_header_size.exit.i:                ; preds = %if.end.i.i114, %if.end50.ecryptfs_lower_header_size.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %31, %if.end.i.i114 ], [ 0, %if.end50.ecryptfs_lower_header_size.exit.i_crit_edge ]
  %conv.i = zext i32 %retval.0.i.i to i64
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call1)
  %cmp.not.i = icmp eq i64 %call1, 0
  br i1 %cmp.not.i, label %ecryptfs_lower_header_size.exit.i.upper_size_to_lower_size.exit_crit_edge, label %if.then.i

ecryptfs_lower_header_size.exit.i.upper_size_to_lower_size.exit_crit_edge: ; preds = %ecryptfs_lower_header_size.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %upper_size_to_lower_size.exit

if.then.i:                                        ; preds = %ecryptfs_lower_header_size.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %extent_shift.i = getelementptr inbounds %struct.ecryptfs_inode_info, ptr %7, i32 0, i32 5, i32 6
  %32 = ptrtoint ptr %extent_shift.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %extent_shift.i, align 4
  %sh_prom.i = zext i32 %33 to i64
  %shr.i = ashr i64 %call1, %sh_prom.i
  %extent_mask.i = getelementptr inbounds %struct.ecryptfs_inode_info, ptr %7, i32 0, i32 5, i32 7
  %34 = ptrtoint ptr %extent_mask.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %extent_mask.i, align 4
  %neg.i = xor i32 %35, -1
  %conv2.i = zext i32 %neg.i to i64
  %and.i = and i64 %call1, %conv2.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.not.i = icmp ne i64 %and.i, 0
  %inc.i = zext i1 %tobool.not.i to i64
  %spec.select.i = add i64 %shr.i, %inc.i
  %extent_size.i = getelementptr inbounds %struct.ecryptfs_inode_info, ptr %7, i32 0, i32 5, i32 4
  %36 = ptrtoint ptr %extent_size.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %extent_size.i, align 4
  %conv4.i = zext i32 %37 to i64
  %mul.i = mul i64 %spec.select.i, %conv4.i
  %add.i = add i64 %mul.i, %conv.i
  br label %upper_size_to_lower_size.exit

upper_size_to_lower_size.exit:                    ; preds = %if.then.i, %ecryptfs_lower_header_size.exit.i.upper_size_to_lower_size.exit_crit_edge
  %lower_size.0.i = phi i64 [ %add.i, %if.then.i ], [ %conv.i, %ecryptfs_lower_header_size.exit.i.upper_size_to_lower_size.exit_crit_edge ]
  %38 = ptrtoint ptr %ia_size to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %ia_size, align 8
  br i1 %tobool.not.i.i, label %if.end.i.i118, label %upper_size_to_lower_size.exit.ecryptfs_lower_header_size.exit.i122_crit_edge

upper_size_to_lower_size.exit.ecryptfs_lower_header_size.exit.i122_crit_edge: ; preds = %upper_size_to_lower_size.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %ecryptfs_lower_header_size.exit.i122

if.end.i.i118:                                    ; preds = %upper_size_to_lower_size.exit
  call void @__sanitizer_cov_trace_pc() #12
  %metadata_size.i.i117 = getelementptr inbounds %struct.ecryptfs_inode_info, ptr %7, i32 0, i32 5, i32 3
  %40 = ptrtoint ptr %metadata_size.i.i117 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %metadata_size.i.i117, align 4
  br label %ecryptfs_lower_header_size.exit.i122

ecryptfs_lower_header_size.exit.i122:             ; preds = %if.end.i.i118, %upper_size_to_lower_size.exit.ecryptfs_lower_header_size.exit.i122_crit_edge
  %retval.0.i.i119 = phi i32 [ %41, %if.end.i.i118 ], [ 0, %upper_size_to_lower_size.exit.ecryptfs_lower_header_size.exit.i122_crit_edge ]
  %conv.i120 = zext i32 %retval.0.i.i119 to i64
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %39)
  %cmp.not.i121 = icmp eq i64 %39, 0
  br i1 %cmp.not.i121, label %ecryptfs_lower_header_size.exit.i122.upper_size_to_lower_size.exit139_crit_edge, label %if.then.i137

ecryptfs_lower_header_size.exit.i122.upper_size_to_lower_size.exit139_crit_edge: ; preds = %ecryptfs_lower_header_size.exit.i122
  call void @__sanitizer_cov_trace_pc() #12
  br label %upper_size_to_lower_size.exit139

if.then.i137:                                     ; preds = %ecryptfs_lower_header_size.exit.i122
  call void @__sanitizer_cov_trace_pc() #12
  %extent_shift.i123 = getelementptr inbounds %struct.ecryptfs_inode_info, ptr %7, i32 0, i32 5, i32 6
  %42 = ptrtoint ptr %extent_shift.i123 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %extent_shift.i123, align 4
  %sh_prom.i124 = zext i32 %43 to i64
  %shr.i125 = ashr i64 %39, %sh_prom.i124
  %extent_mask.i126 = getelementptr inbounds %struct.ecryptfs_inode_info, ptr %7, i32 0, i32 5, i32 7
  %44 = ptrtoint ptr %extent_mask.i126 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %extent_mask.i126, align 4
  %neg.i127 = xor i32 %45, -1
  %conv2.i128 = zext i32 %neg.i127 to i64
  %and.i129 = and i64 %39, %conv2.i128
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i129)
  %tobool.not.i130 = icmp ne i64 %and.i129, 0
  %inc.i131 = zext i1 %tobool.not.i130 to i64
  %spec.select.i132 = add i64 %shr.i125, %inc.i131
  %extent_size.i133 = getelementptr inbounds %struct.ecryptfs_inode_info, ptr %7, i32 0, i32 5, i32 4
  %46 = ptrtoint ptr %extent_size.i133 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %extent_size.i133, align 4
  %conv4.i134 = zext i32 %47 to i64
  %mul.i135 = mul i64 %spec.select.i132, %conv4.i134
  %add.i136 = add i64 %mul.i135, %conv.i120
  br label %upper_size_to_lower_size.exit139

upper_size_to_lower_size.exit139:                 ; preds = %if.then.i137, %ecryptfs_lower_header_size.exit.i122.upper_size_to_lower_size.exit139_crit_edge
  %lower_size.0.i138 = phi i64 [ %add.i136, %if.then.i137 ], [ %conv.i120, %ecryptfs_lower_header_size.exit.i122.upper_size_to_lower_size.exit139_crit_edge ]
  call void @__sanitizer_cov_trace_cmp8(i64 %lower_size.0.i138, i64 %lower_size.0.i)
  %cmp54 = icmp slt i64 %lower_size.0.i138, %lower_size.0.i
  br i1 %cmp54, label %if.then56, label %if.else60

if.then56:                                        ; preds = %upper_size_to_lower_size.exit139
  call void @__sanitizer_cov_trace_pc() #12
  %ia_size57 = getelementptr inbounds %struct.iattr, ptr %lower_ia, i32 0, i32 4
  %48 = ptrtoint ptr %ia_size57 to i32
  call void @__asan_store8_noabort(i32 %48)
  store i64 %lower_size.0.i138, ptr %ia_size57, align 8
  %49 = ptrtoint ptr %lower_ia to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %lower_ia, align 8
  %or59 = or i32 %50, 8
  br label %if.end63

if.else60:                                        ; preds = %upper_size_to_lower_size.exit139
  call void @__sanitizer_cov_trace_pc() #12
  %51 = ptrtoint ptr %lower_ia to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %lower_ia, align 8
  %and62 = and i32 %52, -9
  br label %if.end63

if.end63:                                         ; preds = %if.else60, %if.then56
  %storemerge = phi i32 [ %and62, %if.else60 ], [ %or59, %if.then56 ]
  %53 = ptrtoint ptr %lower_ia to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %storemerge, ptr %lower_ia, align 8
  br label %out

out:                                              ; preds = %if.end63, %do.end47, %do.end, %if.end8.i.i.out_crit_edge, %if.then22, %if.then12
  %rc.2 = phi i32 [ %call16, %if.then12 ], [ %call42, %do.end47 ], [ 0, %if.end63 ], [ 0, %if.then22 ], [ -12, %if.end8.i.i.out_crit_edge ], [ %call35, %do.end ]
  call void @ecryptfs_put_lower_file(ptr noundef %1) #10
  br label %cleanup68

cleanup68:                                        ; preds = %out, %if.end.cleanup68_crit_edge, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %rc.2, %out ], [ %call3, %if.end.cleanup68_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @notify_change(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ecryptfs_setxattr(ptr nocapture noundef readonly %dentry, ptr noundef %inode, ptr noundef %name, ptr noundef %value, i32 noundef %size, i32 noundef %flags) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %d_fsdata.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 11
  %0 = ptrtoint ptr %d_fsdata.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_fsdata.i, align 4
  %dentry1.i = getelementptr inbounds %struct.path, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dentry1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dentry1.i, align 4
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %d_inode.i, align 8
  %i_opflags = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %i_opflags to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %i_opflags, align 2
  %8 = and i16 %7, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %tobool.not = icmp eq i16 %8, 0
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end:                                           ; preds = %entry
  %i_rwsem.i = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 25
  tail call void @down_write(ptr noundef %i_rwsem.i) #10
  %call2 = tail call i32 @__vfs_setxattr_locked(ptr noundef nonnull @init_user_ns, ptr noundef %3, ptr noundef %name, ptr noundef %value, i32 noundef %size, i32 noundef %flags, ptr noundef null) #10
  tail call void @up_write(ptr noundef %i_rwsem.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

land.lhs.true:                                    ; preds = %if.end
  %tobool4.not = icmp eq ptr %inode, null
  br i1 %tobool4.not, label %land.lhs.true.out_crit_edge, label %if.then5

land.lhs.true.out_crit_edge:                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.then5:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @fsstack_copy_attr_all(ptr noundef nonnull %inode, ptr noundef %5) #10
  br label %out

out:                                              ; preds = %if.then5, %land.lhs.true.out_crit_edge, %if.end.out_crit_edge, %entry.out_crit_edge
  %rc.0 = phi i32 [ %call2, %if.end.out_crit_edge ], [ 0, %if.then5 ], [ 0, %land.lhs.true.out_crit_edge ], [ -95, %entry.out_crit_edge ]
  ret i32 %rc.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__vfs_setxattr_locked(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fsstack_copy_attr_all(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ecryptfs_getxattr_lower(ptr noundef %lower_dentry, ptr noundef %lower_inode, ptr noundef %name, ptr noundef %value, i32 noundef %size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %i_opflags = getelementptr inbounds %struct.inode, ptr %lower_inode, i32 0, i32 1
  %0 = ptrtoint ptr %i_opflags to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %i_opflags, align 2
  %2 = and i16 %1, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %tobool.not = icmp eq i16 %2, 0
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %i_rwsem.i = getelementptr inbounds %struct.inode, ptr %lower_inode, i32 0, i32 25
  tail call void @down_write(ptr noundef %i_rwsem.i) #10
  %call = tail call i32 @__vfs_getxattr(ptr noundef %lower_dentry, ptr noundef %lower_inode, ptr noundef %name, ptr noundef %value, i32 noundef %size) #10
  tail call void @up_write(ptr noundef %i_rwsem.i) #10
  br label %out

out:                                              ; preds = %if.end, %entry.out_crit_edge
  %rc.0 = phi i32 [ %call, %if.end ], [ -95, %entry.out_crit_edge ]
  ret i32 %rc.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__vfs_getxattr(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @ecryptfs_get_link(ptr noundef readonly %dentry, ptr nocapture noundef readnone %inode, ptr nocapture noundef writeonly %done) #0 align 64 {
entry:
  %done.i = alloca %struct.delayed_call, align 8
  %buf.i = alloca ptr, align 4
  %len = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len) #10
  %0 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %len, align 4, !annotation !85
  %tobool.not = icmp eq ptr %dentry, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %done.i) #10
  %1 = ptrtoint ptr %done.i to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 0, ptr %done.i, align 8
  %d_fsdata.i.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 11
  %2 = ptrtoint ptr %d_fsdata.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %d_fsdata.i.i, align 4
  %dentry1.i.i = getelementptr inbounds %struct.path, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %dentry1.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dentry1.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i) #10
  %6 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 -1 to ptr), ptr %buf.i, align 4, !annotation !85
  %call1.i = call ptr @vfs_get_link(ptr noundef %5, ptr noundef nonnull %done.i) #10
  %cmp.i.i = icmp ugt ptr %call1.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end.ecryptfs_readlink_lower.exit_crit_edge, label %if.end.i

if.end.ecryptfs_readlink_lower.exit_crit_edge:    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %ecryptfs_readlink_lower.exit

if.end.i:                                         ; preds = %if.end
  %d_sb.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 9
  %7 = ptrtoint ptr %d_sb.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %d_sb.i, align 4
  %call4.i = call i32 @strlen(ptr noundef %call1.i) #15
  %call5.i = call i32 @ecryptfs_decode_and_decrypt_filename(ptr noundef nonnull %buf.i, ptr noundef nonnull %len, ptr noundef %8, ptr noundef %call1.i, i32 noundef %call4.i) #10
  %9 = ptrtoint ptr %done.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %done.i, align 8
  %tobool.not.i.i = icmp eq ptr %10, null
  br i1 %tobool.not.i.i, label %if.end.i.do_delayed_call.exit.i_crit_edge, label %if.then.i.i

if.end.i.do_delayed_call.exit.i_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do_delayed_call.exit.i

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %arg.i.i = getelementptr inbounds %struct.delayed_call, ptr %done.i, i32 0, i32 1
  %11 = ptrtoint ptr %arg.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arg.i.i, align 4
  call void %10(ptr noundef %12) #10
  br label %do_delayed_call.exit.i

do_delayed_call.exit.i:                           ; preds = %if.then.i.i, %if.end.i.do_delayed_call.exit.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool.not.i, label %if.end8.i, label %if.then6.i

if.then6.i:                                       ; preds = %do_delayed_call.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %13 = inttoptr i32 %call5.i to ptr
  br label %ecryptfs_readlink_lower.exit

if.end8.i:                                        ; preds = %do_delayed_call.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %14 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %buf.i, align 4
  br label %ecryptfs_readlink_lower.exit

ecryptfs_readlink_lower.exit:                     ; preds = %if.end8.i, %if.then6.i, %if.end.ecryptfs_readlink_lower.exit_crit_edge
  %retval.0.i = phi ptr [ %13, %if.then6.i ], [ %15, %if.end8.i ], [ %call1.i, %if.end.ecryptfs_readlink_lower.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %done.i) #10
  %cmp.i = icmp ugt ptr %retval.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %ecryptfs_readlink_lower.exit.cleanup_crit_edge, label %if.end4

ecryptfs_readlink_lower.exit.cleanup_crit_edge:   ; preds = %ecryptfs_readlink_lower.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end4:                                          ; preds = %ecryptfs_readlink_lower.exit
  call void @__sanitizer_cov_trace_pc() #12
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %16 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %d_inode.i, align 8
  %18 = ptrtoint ptr %d_fsdata.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %d_fsdata.i.i, align 4
  %dentry1.i = getelementptr inbounds %struct.path, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %dentry1.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dentry1.i, align 4
  %d_inode.i16 = getelementptr inbounds %struct.dentry, ptr %21, i32 0, i32 5
  %22 = ptrtoint ptr %d_inode.i16 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %d_inode.i16, align 8
  %i_atime.i = getelementptr inbounds %struct.inode, ptr %17, i32 0, i32 15
  %i_atime1.i = getelementptr inbounds %struct.inode, ptr %23, i32 0, i32 15
  %24 = call ptr @memcpy(ptr %i_atime.i, ptr %i_atime1.i, i32 16)
  %25 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %len, align 4
  %arrayidx = getelementptr i8, ptr %retval.0.i, i32 %26
  %27 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %arrayidx, align 1
  %28 = ptrtoint ptr %done to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @kfree_link, ptr %done, align 4
  %arg2.i = getelementptr inbounds %struct.delayed_call, ptr %done, i32 0, i32 1
  %29 = ptrtoint ptr %arg2.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %retval.0.i, ptr %arg2.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %ecryptfs_readlink_lower.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %retval.0.i, %if.end4 ], [ %retval.0.i, %ecryptfs_readlink_lower.exit.cleanup_crit_edge ], [ inttoptr (i32 -10 to ptr), %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len) #10
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ecryptfs_permission(ptr nocapture noundef readnone %mnt_userns, ptr nocapture noundef readonly %inode, i32 noundef %mask) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %wii_inode.i = getelementptr inbounds %struct.ecryptfs_inode_info, ptr %inode, i32 0, i32 1
  %0 = ptrtoint ptr %wii_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wii_inode.i, align 8
  %call1 = tail call i32 @inode_permission(ptr noundef nonnull @init_user_ns, ptr noundef %1, i32 noundef %mask) #10
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ecryptfs_setattr(ptr nocapture noundef readnone %mnt_userns, ptr noundef %dentry, ptr noundef %ia) #0 align 64 {
entry:
  %lower_ia = alloca %struct.iattr, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %lower_ia) #10
  %0 = call ptr @memset(ptr %lower_ia, i32 255, i32 80)
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %1 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %d_inode.i, align 8
  %crypt_stat2 = getelementptr inbounds %struct.ecryptfs_inode_info, ptr %2, i32 0, i32 5
  %3 = ptrtoint ptr %crypt_stat2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %crypt_stat2, align 4
  %and = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end6_crit_edge

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

if.then:                                          ; preds = %entry
  %call3 = tail call i32 @ecryptfs_init_crypt_stat(ptr noundef %crypt_stat2) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.then.if.end6_crit_edge, label %if.then.cleanup82_crit_edge

if.then.cleanup82_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup82

if.then.if.end6_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

if.end6:                                          ; preds = %if.then.if.end6_crit_edge, %entry.if.end6_crit_edge
  %5 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %d_inode.i, align 8
  %wii_inode.i = getelementptr inbounds %struct.ecryptfs_inode_info, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %wii_inode.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %wii_inode.i, align 8
  %d_fsdata.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 11
  %9 = ptrtoint ptr %d_fsdata.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %d_fsdata.i, align 4
  %dentry1.i = getelementptr inbounds %struct.path, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %dentry1.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dentry1.i, align 4
  %cs_mutex = getelementptr inbounds %struct.ecryptfs_inode_info, ptr %2, i32 0, i32 5, i32 17
  tail call void @mutex_lock_nested(ptr noundef %cs_mutex, i32 noundef 0) #10
  %13 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %dentry, align 8
  %15 = and i32 %14, 6291456
  call void @__sanitizer_cov_trace_const_cmp4(i32 2097152, i32 %15)
  %16 = icmp eq i32 %15, 2097152
  br i1 %16, label %if.end6.if.end43.sink.split_crit_edge, label %if.else

if.end6.if.end43.sink.split_crit_edge:            ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end43.sink.split

if.else:                                          ; preds = %if.end6
  %and.i.i = and i32 %14, 7340032
  call void @__sanitizer_cov_trace_const_cmp4(i32 4194304, i32 %and.i.i)
  %cmp.i = icmp eq i32 %and.i.i, 4194304
  br i1 %cmp.i, label %land.lhs.true, label %if.else.if.end43_crit_edge

if.else.if.end43_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end43

land.lhs.true:                                    ; preds = %if.else
  %17 = ptrtoint ptr %crypt_stat2 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %crypt_stat2, align 4
  %19 = and i32 %18, 66
  call void @__sanitizer_cov_trace_const_cmp4(i32 66, i32 %19)
  %.not = icmp eq i32 %19, 66
  br i1 %.not, label %land.lhs.true.if.end43_crit_edge, label %if.then21

land.lhs.true.if.end43_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end43

if.then21:                                        ; preds = %land.lhs.true
  %d_sb = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 9
  %20 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %d_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %21, i32 0, i32 33
  %22 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %s_fs_info.i, align 16
  %mount_crypt_stat23 = getelementptr inbounds %struct.ecryptfs_sb_info, ptr %23, i32 0, i32 1
  %call24 = tail call i32 @ecryptfs_get_lower_file(ptr noundef %dentry, ptr noundef %6) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end28, label %if.then26

if.then26:                                        ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @mutex_unlock(ptr noundef %cs_mutex) #10
  br label %out

if.end28:                                         ; preds = %if.then21
  %call29 = tail call i32 @ecryptfs_read_metadata(ptr noundef %dentry) #10
  tail call void @ecryptfs_put_lower_file(ptr noundef %6) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.end28.if.end43_crit_edge, label %if.then31

if.end28.if.end43_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end43

if.then31:                                        ; preds = %if.end28
  %24 = ptrtoint ptr %mount_crypt_stat23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %mount_crypt_stat23, align 4
  %and33 = and i32 %25, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool34.not = icmp eq i32 %and33, 0
  br i1 %tobool34.not, label %if.then35, label %if.then31.if.end43.sink.split_crit_edge

if.then31.if.end43.sink.split_crit_edge:          ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end43.sink.split

if.then35:                                        ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #12
  %call36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13) #13
  tail call void @mutex_unlock(ptr noundef %cs_mutex) #10
  br label %out

if.end43.sink.split:                              ; preds = %if.then31.if.end43.sink.split_crit_edge, %if.end6.if.end43.sink.split_crit_edge
  %.sink134 = phi i32 [ -5, %if.end6.if.end43.sink.split_crit_edge ], [ -16389, %if.then31.if.end43.sink.split_crit_edge ]
  %26 = ptrtoint ptr %crypt_stat2 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %crypt_stat2, align 4
  %and40 = and i32 %27, %.sink134
  store i32 %and40, ptr %crypt_stat2, align 4
  br label %if.end43

if.end43:                                         ; preds = %if.end43.sink.split, %if.end28.if.end43_crit_edge, %land.lhs.true.if.end43_crit_edge, %if.else.if.end43_crit_edge
  tail call void @mutex_unlock(ptr noundef %cs_mutex) #10
  %call45 = tail call i32 @setattr_prepare(ptr noundef nonnull @init_user_ns, ptr noundef %dentry, ptr noundef %ia) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.end48, label %if.end43.out_crit_edge

if.end43.out_crit_edge:                           ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end48:                                         ; preds = %if.end43
  %28 = ptrtoint ptr %ia to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %ia, align 8
  %and49 = and i32 %29, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49)
  %tobool50.not = icmp eq i32 %and49, 0
  br i1 %tobool50.not, label %if.end48.if.end56_crit_edge, label %if.then51

if.end48.if.end56_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end56

if.then51:                                        ; preds = %if.end48
  %ia_size = getelementptr inbounds %struct.iattr, ptr %ia, i32 0, i32 4
  %30 = ptrtoint ptr %ia_size to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %ia_size, align 8
  %call52 = tail call fastcc i32 @ecryptfs_inode_newsize_ok(ptr noundef %6, i64 noundef %31)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %if.then51.if.end56_crit_edge, label %if.then51.out_crit_edge

if.then51.out_crit_edge:                          ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.then51.if.end56_crit_edge:                     ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end56

if.end56:                                         ; preds = %if.then51.if.end56_crit_edge, %if.end48.if.end56_crit_edge
  %32 = call ptr @memcpy(ptr %lower_ia, ptr %ia, i32 80)
  %33 = ptrtoint ptr %ia to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %ia, align 8
  %and58 = and i32 %34, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and58)
  %tobool59.not = icmp eq i32 %and58, 0
  br i1 %tobool59.not, label %if.end56.if.end63_crit_edge, label %if.then60

if.end56.if.end63_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end63

if.then60:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #12
  %ia_file = getelementptr inbounds %struct.iattr, ptr %ia, i32 0, i32 8
  %35 = ptrtoint ptr %ia_file to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ia_file, align 8
  %private_data.i = getelementptr inbounds %struct.file, ptr %36, i32 0, i32 16
  %37 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %private_data.i, align 4
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %38, align 4
  %ia_file62 = getelementptr inbounds %struct.iattr, ptr %lower_ia, i32 0, i32 8
  %41 = ptrtoint ptr %ia_file62 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %40, ptr %ia_file62, align 8
  br label %if.end63

if.end63:                                         ; preds = %if.then60, %if.end56.if.end63_crit_edge
  %and65 = and i32 %34, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and65)
  %tobool66.not = icmp eq i32 %and65, 0
  br i1 %tobool66.not, label %if.end63.if.end71_crit_edge, label %if.then67

if.end63.if.end71_crit_edge:                      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end71

if.then67:                                        ; preds = %if.end63
  %call68 = call fastcc i32 @truncate_upper(ptr noundef %dentry, ptr noundef %ia, ptr noundef nonnull %lower_ia)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68)
  %cmp = icmp slt i32 %call68, 0
  br i1 %cmp, label %if.then67.out_crit_edge, label %if.then67.if.end71_crit_edge

if.then67.if.end71_crit_edge:                     ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end71

if.then67.out_crit_edge:                          ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end71:                                         ; preds = %if.then67.if.end71_crit_edge, %if.end63.if.end71_crit_edge
  %42 = ptrtoint ptr %lower_ia to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %lower_ia, align 8
  %and73 = and i32 %43, 6144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and73)
  %tobool74.not = icmp eq i32 %and73, 0
  br i1 %tobool74.not, label %if.end71.if.end78_crit_edge, label %if.then75

if.end71.if.end78_crit_edge:                      ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end78

if.then75:                                        ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #12
  %and77 = and i32 %43, -2
  %44 = ptrtoint ptr %lower_ia to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %and77, ptr %lower_ia, align 8
  br label %if.end78

if.end78:                                         ; preds = %if.then75, %if.end71.if.end78_crit_edge
  %d_inode.i128 = getelementptr inbounds %struct.dentry, ptr %12, i32 0, i32 5
  %45 = ptrtoint ptr %d_inode.i128 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %d_inode.i128, align 8
  %i_rwsem.i = getelementptr inbounds %struct.inode, ptr %46, i32 0, i32 25
  tail call void @down_write(ptr noundef %i_rwsem.i) #10
  %call80 = call i32 @notify_change(ptr noundef nonnull @init_user_ns, ptr noundef %12, ptr noundef nonnull %lower_ia, ptr noundef null) #10
  %47 = ptrtoint ptr %d_inode.i128 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %d_inode.i128, align 8
  %i_rwsem.i130 = getelementptr inbounds %struct.inode, ptr %48, i32 0, i32 25
  call void @up_write(ptr noundef %i_rwsem.i130) #10
  br label %out

out:                                              ; preds = %if.end78, %if.then67.out_crit_edge, %if.then51.out_crit_edge, %if.end43.out_crit_edge, %if.then35, %if.then26
  %rc.2 = phi i32 [ %call45, %if.end43.out_crit_edge ], [ %call52, %if.then51.out_crit_edge ], [ %call68, %if.then67.out_crit_edge ], [ %call80, %if.end78 ], [ %call24, %if.then26 ], [ -5, %if.then35 ]
  call void @fsstack_copy_attr_all(ptr noundef %6, ptr noundef %8) #10
  br label %cleanup82

cleanup82:                                        ; preds = %out, %if.then.cleanup82_crit_edge
  %retval.0 = phi i32 [ %rc.2, %out ], [ %call3, %if.then.cleanup82_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %lower_ia) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ecryptfs_getattr_link(ptr nocapture noundef readnone %mnt_userns, ptr nocapture noundef readonly %path, ptr noundef %stat, i32 noundef %request_mask, i32 noundef %flags) #0 align 64 {
entry:
  %done.i = alloca %struct.delayed_call, align 8
  %buf.i = alloca ptr, align 4
  %targetsiz = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dentry1 = getelementptr inbounds %struct.path, ptr %path, i32 0, i32 1
  %0 = ptrtoint ptr %dentry1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dentry1, align 4
  %d_sb = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %d_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info.i, align 16
  %mount_crypt_stat2 = getelementptr inbounds %struct.ecryptfs_sb_info, ptr %5, i32 0, i32 1
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %d_inode.i, align 8
  tail call void @generic_fillattr(ptr noundef nonnull @init_user_ns, ptr noundef %7, ptr noundef %stat) #10
  %8 = ptrtoint ptr %mount_crypt_stat2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mount_crypt_stat2, align 4
  %and = and i32 %9, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end9_crit_edge, label %if.then

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %targetsiz) #10
  %10 = ptrtoint ptr %targetsiz to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %targetsiz, align 4, !annotation !85
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %done.i) #10
  %11 = ptrtoint ptr %done.i to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 0, ptr %done.i, align 8
  %d_fsdata.i.i = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 11
  %12 = ptrtoint ptr %d_fsdata.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %d_fsdata.i.i, align 4
  %dentry1.i.i = getelementptr inbounds %struct.path, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %dentry1.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dentry1.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i) #10
  %16 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr inttoptr (i32 -1 to ptr), ptr %buf.i, align 4, !annotation !85
  %call1.i = call ptr @vfs_get_link(ptr noundef %15, ptr noundef nonnull %done.i) #10
  %cmp.i.i = icmp ugt ptr %call1.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then.ecryptfs_readlink_lower.exit_crit_edge, label %if.end.i

if.then.ecryptfs_readlink_lower.exit_crit_edge:   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %ecryptfs_readlink_lower.exit

if.end.i:                                         ; preds = %if.then
  %17 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %d_sb, align 4
  %call4.i = call i32 @strlen(ptr noundef %call1.i) #15
  %call5.i = call i32 @ecryptfs_decode_and_decrypt_filename(ptr noundef nonnull %buf.i, ptr noundef nonnull %targetsiz, ptr noundef %18, ptr noundef %call1.i, i32 noundef %call4.i) #10
  %19 = ptrtoint ptr %done.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %done.i, align 8
  %tobool.not.i.i = icmp eq ptr %20, null
  br i1 %tobool.not.i.i, label %if.end.i.do_delayed_call.exit.i_crit_edge, label %if.then.i.i

if.end.i.do_delayed_call.exit.i_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do_delayed_call.exit.i

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %arg.i.i = getelementptr inbounds %struct.delayed_call, ptr %done.i, i32 0, i32 1
  %21 = ptrtoint ptr %arg.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arg.i.i, align 4
  call void %20(ptr noundef %22) #10
  br label %do_delayed_call.exit.i

do_delayed_call.exit.i:                           ; preds = %if.then.i.i, %if.end.i.do_delayed_call.exit.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool.not.i, label %if.end8.i, label %if.then6.i

if.then6.i:                                       ; preds = %do_delayed_call.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %23 = inttoptr i32 %call5.i to ptr
  br label %ecryptfs_readlink_lower.exit

if.end8.i:                                        ; preds = %do_delayed_call.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %24 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %buf.i, align 4
  br label %ecryptfs_readlink_lower.exit

ecryptfs_readlink_lower.exit:                     ; preds = %if.end8.i, %if.then6.i, %if.then.ecryptfs_readlink_lower.exit_crit_edge
  %retval.0.i = phi ptr [ %23, %if.then6.i ], [ %25, %if.end8.i ], [ %call1.i, %if.then.ecryptfs_readlink_lower.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %done.i) #10
  %cmp.i = icmp ugt ptr %retval.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.else, label %if.then7

if.then7:                                         ; preds = %ecryptfs_readlink_lower.exit
  call void @__sanitizer_cov_trace_pc() #12
  call void @kfree(ptr noundef %retval.0.i) #10
  %26 = ptrtoint ptr %targetsiz to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %targetsiz, align 4
  %conv = zext i32 %27 to i64
  %size = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 11
  %28 = ptrtoint ptr %size to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %conv, ptr %size, align 8
  br label %if.end

if.else:                                          ; preds = %ecryptfs_readlink_lower.exit
  call void @__sanitizer_cov_trace_pc() #12
  %29 = ptrtoint ptr %retval.0.i to i32
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then7
  %rc.0 = phi i32 [ %29, %if.else ], [ 0, %if.then7 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %targetsiz) #10
  br label %if.end9

if.end9:                                          ; preds = %if.end, %entry.if.end9_crit_edge
  %rc.1 = phi i32 [ %rc.0, %if.end ], [ 0, %entry.if.end9_crit_edge ]
  ret i32 %rc.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ecryptfs_listxattr(ptr nocapture noundef readonly %dentry, ptr noundef %list, i32 noundef %size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %d_fsdata.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 11
  %0 = ptrtoint ptr %d_fsdata.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_fsdata.i, align 4
  %dentry1.i = getelementptr inbounds %struct.path, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dentry1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dentry1.i, align 4
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %d_inode.i, align 8
  %i_op = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %i_op to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i_op, align 8
  %listxattr = getelementptr inbounds %struct.inode_operations, ptr %7, i32 0, i32 15
  %8 = ptrtoint ptr %listxattr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %listxattr, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %i_rwsem.i = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 25
  tail call void @down_write(ptr noundef %i_rwsem.i) #10
  %10 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %d_inode.i, align 8
  %i_op4 = getelementptr inbounds %struct.inode, ptr %11, i32 0, i32 7
  %12 = ptrtoint ptr %i_op4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %i_op4, align 8
  %listxattr5 = getelementptr inbounds %struct.inode_operations, ptr %13, i32 0, i32 15
  %14 = ptrtoint ptr %listxattr5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %listxattr5, align 4
  %call6 = tail call i32 %15(ptr noundef %3, ptr noundef %list, i32 noundef %size) #10
  %16 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %d_inode.i, align 8
  %i_rwsem.i15 = getelementptr inbounds %struct.inode, ptr %17, i32 0, i32 25
  tail call void @up_write(ptr noundef %i_rwsem.i15) #10
  br label %out

out:                                              ; preds = %if.end, %entry.out_crit_edge
  %rc.0 = phi i32 [ %call6, %if.end ], [ -95, %entry.out_crit_edge ]
  ret i32 %rc.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @ecryptfs_lookup(ptr nocapture noundef readnone %ecryptfs_dir_inode, ptr noundef %ecryptfs_dentry, i32 noundef %flags) #0 align 64 {
entry:
  %encrypted_and_encoded_name = alloca ptr, align 4
  %len = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %encrypted_and_encoded_name) #10
  %0 = ptrtoint ptr %encrypted_and_encoded_name to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %encrypted_and_encoded_name, align 4
  %d_name = getelementptr inbounds %struct.dentry, ptr %ecryptfs_dentry, i32 0, i32 4
  %name1 = getelementptr inbounds %struct.dentry, ptr %ecryptfs_dentry, i32 0, i32 4, i32 1
  %1 = ptrtoint ptr %name1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %name1, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len) #10
  %3 = ptrtoint ptr %d_name to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %d_name, align 8
  %5 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %len, align 4
  %d_parent = getelementptr inbounds %struct.dentry, ptr %ecryptfs_dentry, i32 0, i32 3
  %6 = ptrtoint ptr %d_parent to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %d_parent, align 8
  %d_fsdata.i = getelementptr inbounds %struct.dentry, ptr %7, i32 0, i32 11
  %8 = ptrtoint ptr %d_fsdata.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %d_fsdata.i, align 4
  %dentry1.i = getelementptr inbounds %struct.path, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %dentry1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dentry1.i, align 4
  %d_sb = getelementptr inbounds %struct.dentry, ptr %ecryptfs_dentry, i32 0, i32 9
  %12 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %d_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %13, i32 0, i32 33
  %14 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %s_fs_info.i, align 16
  %mount_crypt_stat5 = getelementptr inbounds %struct.ecryptfs_sb_info, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %mount_crypt_stat5 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %mount_crypt_stat5, align 4
  %and = and i32 %17, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end12_crit_edge, label %if.then

entry.if.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

if.then:                                          ; preds = %entry
  %call7 = call i32 @ecryptfs_encrypt_and_encode_filename(ptr noundef nonnull %encrypted_and_encoded_name, ptr noundef nonnull %len, ptr noundef %mount_crypt_stat5, ptr noundef %2, i32 noundef %4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end, label %do.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %call10 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16, i32 noundef %call7) #13
  %18 = inttoptr i32 %call7 to ptr
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %19 = ptrtoint ptr %encrypted_and_encoded_name to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %encrypted_and_encoded_name, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.end, %entry.if.end12_crit_edge
  %name.0 = phi ptr [ %20, %if.end ], [ %2, %entry.if.end12_crit_edge ]
  %21 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %len, align 4
  %call13 = call ptr @lookup_one_len_unlocked(ptr noundef %name.0, ptr noundef %11, i32 noundef %22) #10
  %cmp.i = icmp ugt ptr %call13, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then15, label %if.else

if.then15:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  %23 = ptrtoint ptr %call13 to i32
  call void (ptr, ...) @__ecryptfs_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.16, i32 noundef %23, ptr noundef %name.0) #10
  br label %if.end19

if.else:                                          ; preds = %if.end12
  %24 = ptrtoint ptr %d_parent to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %d_parent, align 8
  %d_fsdata.i.i = getelementptr inbounds %struct.dentry, ptr %25, i32 0, i32 11
  %26 = ptrtoint ptr %d_fsdata.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %d_fsdata.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ecryptfs_dentry_info_cache to i32))
  %28 = load ptr, ptr @ecryptfs_dentry_info_cache, align 4
  %call1.i = call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %28, i32 noundef 3264) #10
  %tobool.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  call void @dput(ptr noundef %call13) #10
  br label %if.end19

if.end.i:                                         ; preds = %if.else
  %29 = ptrtoint ptr %d_parent to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %d_parent, align 8
  %d_inode.i.i = getelementptr inbounds %struct.dentry, ptr %30, i32 0, i32 5
  %31 = ptrtoint ptr %d_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %d_inode.i.i, align 8
  %dentry5.i = getelementptr inbounds %struct.path, ptr %27, i32 0, i32 1
  %33 = ptrtoint ptr %dentry5.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dentry5.i, align 4
  %d_inode.i81.i = getelementptr inbounds %struct.dentry, ptr %34, i32 0, i32 5
  %35 = ptrtoint ptr %d_inode.i81.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %d_inode.i81.i, align 8
  %i_atime.i.i = getelementptr inbounds %struct.inode, ptr %32, i32 0, i32 15
  %i_atime1.i.i = getelementptr inbounds %struct.inode, ptr %36, i32 0, i32 15
  %37 = call ptr @memcpy(ptr %i_atime.i.i, ptr %i_atime1.i.i, i32 16)
  %count.i.i = getelementptr inbounds %struct.dentry, ptr %call13, i32 0, i32 7, i32 0, i32 0, i32 1
  %38 = ptrtoint ptr %count.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %count.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool8.not.i = icmp eq i32 %39, 0
  br i1 %tobool8.not.i, label %do.body13.i, label %do.end19.i, !prof !84

do.body13.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ecryptfs/inode.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 333, 0\0A.popsection", ""() #10, !srcloc !86
  unreachable

do.end19.i:                                       ; preds = %if.end.i
  %d_fsdata.i82.i = getelementptr inbounds %struct.dentry, ptr %ecryptfs_dentry, i32 0, i32 11
  %40 = ptrtoint ptr %d_fsdata.i82.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call1.i, ptr %d_fsdata.i82.i, align 4
  %41 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %27, align 4
  %call20.i = call ptr @mntget(ptr noundef %42) #10
  %43 = ptrtoint ptr %call1.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call20.i, ptr %call1.i, align 8
  %dentry23.i = getelementptr inbounds %struct.path, ptr %call1.i, i32 0, i32 1
  %44 = ptrtoint ptr %dentry23.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call13, ptr %dentry23.i, align 4
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %call13, i32 0, i32 5
  %45 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile ptr, ptr %d_inode.i, align 8
  %tobool27.not.i = icmp eq ptr %46, null
  br i1 %tobool27.not.i, label %if.then28.i, label %if.end29.i

if.then28.i:                                      ; preds = %do.end19.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @d_add(ptr noundef %ecryptfs_dentry, ptr noundef null) #10
  br label %if.end19

if.end29.i:                                       ; preds = %do.end19.i
  %47 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %d_sb, align 4
  %i_sb.i.i = getelementptr inbounds %struct.inode, ptr %46, i32 0, i32 8
  %49 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %i_sb.i.i, align 4
  %s_fs_info.i.i.i = getelementptr inbounds %struct.super_block, ptr %48, i32 0, i32 33
  %51 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %52, align 4
  %cmp.not.i.i = icmp eq ptr %50, %54
  br i1 %cmp.not.i.i, label %if.end.i.i, label %if.end29.i.do.end35.i_crit_edge

if.end29.i.do.end35.i_crit_edge:                  ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end35.i

if.end.i.i:                                       ; preds = %if.end29.i
  %call2.i.i = call ptr @igrab(ptr noundef nonnull %46) #10
  %tobool.not.i.i = icmp eq ptr %call2.i.i, null
  br i1 %tobool.not.i.i, label %if.end.i.i.do.end35.i_crit_edge, label %if.end5.i.i

if.end.i.i.do.end35.i_crit_edge:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end35.i

if.end5.i.i:                                      ; preds = %if.end.i.i
  %55 = ptrtoint ptr %46 to i32
  %call6.i.i = call ptr @iget5_locked(ptr noundef %48, i32 noundef %55, ptr noundef nonnull @ecryptfs_inode_test, ptr noundef nonnull @ecryptfs_inode_set, ptr noundef nonnull %46) #10
  %tobool7.not.i.i = icmp eq ptr %call6.i.i, null
  br i1 %tobool7.not.i.i, label %if.end5.i.i.cleanup.sink.split.i.i_crit_edge, label %if.end10.i.i

if.end5.i.i.cleanup.sink.split.i.i_crit_edge:     ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split.i.i

if.end10.i.i:                                     ; preds = %if.end5.i.i
  %i_state.i.i = getelementptr inbounds %struct.inode, ptr %call6.i.i, i32 0, i32 24
  %56 = ptrtoint ptr %i_state.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %i_state.i.i, align 8
  %and.i.i = and i32 %57, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool11.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool11.not.i.i, label %if.end10.i.i.cleanup.sink.split.i.i_crit_edge, label %if.end10.i.i.__ecryptfs_get_inode.exit.i_crit_edge

if.end10.i.i.__ecryptfs_get_inode.exit.i_crit_edge: ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__ecryptfs_get_inode.exit.i

if.end10.i.i.cleanup.sink.split.i.i_crit_edge:    ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split.i.i

cleanup.sink.split.i.i:                           ; preds = %if.end10.i.i.cleanup.sink.split.i.i_crit_edge, %if.end5.i.i.cleanup.sink.split.i.i_crit_edge
  %retval.0.ph.i.i = phi ptr [ inttoptr (i32 -13 to ptr), %if.end5.i.i.cleanup.sink.split.i.i_crit_edge ], [ %call6.i.i, %if.end10.i.i.cleanup.sink.split.i.i_crit_edge ]
  call void @iput(ptr noundef nonnull %46) #10
  br label %__ecryptfs_get_inode.exit.i

__ecryptfs_get_inode.exit.i:                      ; preds = %cleanup.sink.split.i.i, %if.end10.i.i.__ecryptfs_get_inode.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %call6.i.i, %if.end10.i.i.__ecryptfs_get_inode.exit.i_crit_edge ], [ %retval.0.ph.i.i, %cleanup.sink.split.i.i ]
  %cmp.i.i = icmp ugt ptr %retval.0.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %__ecryptfs_get_inode.exit.i.do.end35.i_crit_edge, label %if.end40.i

__ecryptfs_get_inode.exit.i.do.end35.i_crit_edge: ; preds = %__ecryptfs_get_inode.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end35.i

do.end35.i:                                       ; preds = %__ecryptfs_get_inode.exit.i.do.end35.i_crit_edge, %if.end.i.i.do.end35.i_crit_edge, %if.end29.i.do.end35.i_crit_edge
  %retval.0.i89.i = phi ptr [ %retval.0.i.i, %__ecryptfs_get_inode.exit.i.do.end35.i_crit_edge ], [ inttoptr (i32 -116 to ptr), %if.end.i.i.do.end35.i_crit_edge ], [ inttoptr (i32 -18 to ptr), %if.end29.i.do.end35.i_crit_edge ]
  %58 = ptrtoint ptr %retval.0.i89.i to i32
  %call38.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.19, i32 noundef %58) #13
  br label %if.end19

if.end40.i:                                       ; preds = %__ecryptfs_get_inode.exit.i
  %59 = ptrtoint ptr %retval.0.i.i to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %retval.0.i.i, align 8
  %61 = and i16 %60, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %61)
  %cmp.i39 = icmp eq i16 %61, -32768
  br i1 %cmp.i39, label %if.then42.i, label %if.end40.i.if.end48.i_crit_edge

if.end40.i.if.end48.i_crit_edge:                  ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end48.i

if.then42.i:                                      ; preds = %if.end40.i
  %call.i.i = call i32 @ecryptfs_get_lower_file(ptr noundef %ecryptfs_dentry, ptr noundef %retval.0.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i83.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i83.i, label %if.end.i85.i, label %if.then45.i

if.end.i85.i:                                     ; preds = %if.then42.i
  %crypt_stat3.i.i = getelementptr inbounds %struct.ecryptfs_inode_info, ptr %retval.0.i.i, i32 0, i32 5
  %62 = ptrtoint ptr %crypt_stat3.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %crypt_stat3.i.i, align 4
  %and.i84.i = and i32 %63, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i84.i)
  %tobool4.not.i.i = icmp eq i32 %and.i84.i, 0
  br i1 %tobool4.not.i.i, label %if.then5.i.i, label %if.end.i85.i.if.end6.i.i_crit_edge

if.end.i85.i.if.end6.i.i_crit_edge:               ; preds = %if.end.i85.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6.i.i

if.then5.i.i:                                     ; preds = %if.end.i85.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @ecryptfs_set_default_sizes(ptr noundef %crypt_stat3.i.i) #10
  br label %if.end6.i.i

if.end6.i.i:                                      ; preds = %if.then5.i.i, %if.end.i85.i.if.end6.i.i_crit_edge
  %call7.i.i = call i32 @ecryptfs_read_and_validate_header_region(ptr noundef %retval.0.i.i) #10
  call void @ecryptfs_put_lower_file(ptr noundef %retval.0.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i.i)
  %tobool8.not.i.i = icmp eq i32 %call7.i.i, 0
  br i1 %tobool8.not.i.i, label %if.end6.i.i.if.end48.i_crit_edge, label %if.then9.i.i

if.end6.i.i.if.end48.i_crit_edge:                 ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end48.i

if.then9.i.i:                                     ; preds = %if.end6.i.i
  %call10.i.i = call i32 @ecryptfs_read_and_validate_xattr_region(ptr noundef %ecryptfs_dentry, ptr noundef %retval.0.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i.i)
  %tobool11.not.i86.i = icmp eq i32 %call10.i.i, 0
  br i1 %tobool11.not.i86.i, label %if.then12.i.i, label %if.then9.i.i.if.end48.i_crit_edge

if.then9.i.i.if.end48.i_crit_edge:                ; preds = %if.then9.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end48.i

if.then12.i.i:                                    ; preds = %if.then9.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %64 = ptrtoint ptr %crypt_stat3.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %crypt_stat3.i.i, align 4
  %or.i.i = or i32 %65, 128
  store i32 %or.i.i, ptr %crypt_stat3.i.i, align 4
  br label %if.end48.i

if.then45.i:                                      ; preds = %if.then42.i
  call void @__sanitizer_cov_trace_pc() #12
  %call1.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.20, ptr noundef %ecryptfs_dentry, i32 noundef %call.i.i) #13
  call void @make_bad_inode(ptr noundef %retval.0.i.i) #10
  %66 = inttoptr i32 %call.i.i to ptr
  br label %if.end19

if.end48.i:                                       ; preds = %if.then12.i.i, %if.then9.i.i.if.end48.i_crit_edge, %if.end6.i.i.if.end48.i_crit_edge, %if.end40.i.if.end48.i_crit_edge
  %i_state.i = getelementptr inbounds %struct.inode, ptr %retval.0.i.i, i32 0, i32 24
  %67 = ptrtoint ptr %i_state.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %i_state.i, align 8
  %and49.i = and i32 %68, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49.i)
  %tobool50.not.i = icmp eq i32 %and49.i, 0
  br i1 %tobool50.not.i, label %if.end48.i.if.end52.i_crit_edge, label %if.then51.i

if.end48.i.if.end52.i_crit_edge:                  ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end52.i

if.then51.i:                                      ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @unlock_new_inode(ptr noundef %retval.0.i.i) #10
  br label %if.end52.i

if.end52.i:                                       ; preds = %if.then51.i, %if.end48.i.if.end52.i_crit_edge
  %call53.i = call ptr @d_splice_alias(ptr noundef %retval.0.i.i, ptr noundef %ecryptfs_dentry) #10
  br label %if.end19

if.end19:                                         ; preds = %if.end52.i, %if.then45.i, %do.end35.i, %if.then28.i, %if.then.i, %if.then15
  %res.0 = phi ptr [ %call13, %if.then15 ], [ %retval.0.i89.i, %do.end35.i ], [ %66, %if.then45.i ], [ %call53.i, %if.end52.i ], [ null, %if.then28.i ], [ inttoptr (i32 -12 to ptr), %if.then.i ]
  %69 = ptrtoint ptr %encrypted_and_encoded_name to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %encrypted_and_encoded_name, align 4
  call void @kfree(ptr noundef %70) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %do.end
  %retval.0 = phi ptr [ %18, %do.end ], [ %res.0, %if.end19 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %encrypted_and_encoded_name) #10
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ecryptfs_create(ptr nocapture noundef readnone %mnt_userns, ptr noundef %directory_inode, ptr noundef %ecryptfs_dentry, i16 noundef zeroext %mode, i1 noundef zeroext %excl) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %d_parent.i.i = getelementptr inbounds %struct.dentry, ptr %ecryptfs_dentry, i32 0, i32 3
  %0 = ptrtoint ptr %d_parent.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_parent.i.i, align 8
  %d_fsdata.i.i.i = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %d_fsdata.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %d_fsdata.i.i.i, align 4
  %dentry1.i.i.i = getelementptr inbounds %struct.path, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %dentry1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dentry1.i.i.i, align 4
  %d_inode.i.i.i = getelementptr inbounds %struct.dentry, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %d_inode.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %d_inode.i.i.i, align 8
  %d_fsdata.i8.i.i = getelementptr inbounds %struct.dentry, ptr %ecryptfs_dentry, i32 0, i32 11
  %8 = ptrtoint ptr %d_fsdata.i8.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %d_fsdata.i8.i.i, align 4
  %dentry1.i9.i.i = getelementptr inbounds %struct.path, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %dentry1.i9.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dentry1.i9.i.i, align 4
  %i_rwsem.i.i.i = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 25
  tail call void @down_write_nested(ptr noundef %i_rwsem.i.i.i, i32 noundef 1) #10
  %d_parent3.i.i = getelementptr inbounds %struct.dentry, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %d_parent3.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %d_parent3.i.i, align 8
  %cmp.i.i = icmp eq ptr %13, %5
  br i1 %cmp.i.i, label %if.end.i, label %entry.do.end.i_crit_edge

entry.do.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @vfs_create(ptr noundef nonnull @init_user_ns, ptr noundef %7, ptr noundef %11, i16 noundef zeroext %mode, i1 noundef zeroext true) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end6.i, label %if.end.i.do.end.i_crit_edge

if.end.i.do.end.i_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

do.end.i:                                         ; preds = %if.end.i.do.end.i_crit_edge, %entry.do.end.i_crit_edge
  %rc.033.i = phi i32 [ %call1.i, %if.end.i.do.end.i_crit_edge ], [ -22, %entry.do.end.i_crit_edge ]
  %call4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23, i32 noundef %rc.033.i) #13
  %14 = inttoptr i32 %rc.033.i to ptr
  br label %ecryptfs_do_create.exit

if.end6.i:                                        ; preds = %if.end.i
  %d_inode.i.i = getelementptr inbounds %struct.dentry, ptr %11, i32 0, i32 5
  %15 = ptrtoint ptr %d_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %d_inode.i.i, align 8
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %directory_inode, i32 0, i32 8
  %17 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %i_sb.i, align 4
  %i_sb.i.i = getelementptr inbounds %struct.inode, ptr %16, i32 0, i32 8
  %19 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %i_sb.i.i, align 4
  %s_fs_info.i.i.i = getelementptr inbounds %struct.super_block, ptr %18, i32 0, i32 33
  %21 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 4
  %cmp.not.i.i = icmp eq ptr %20, %24
  br i1 %cmp.not.i.i, label %if.end.i.i, label %if.end6.i.if.then10.i_crit_edge

if.end6.i.if.then10.i_crit_edge:                  ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then10.i

if.end.i.i:                                       ; preds = %if.end6.i
  %call2.i.i = tail call ptr @igrab(ptr noundef %16) #10
  %tobool.not.i.i = icmp eq ptr %call2.i.i, null
  br i1 %tobool.not.i.i, label %if.end.i.i.if.then10.i_crit_edge, label %if.end5.i.i

if.end.i.i.if.then10.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then10.i

if.end5.i.i:                                      ; preds = %if.end.i.i
  %25 = ptrtoint ptr %16 to i32
  %call6.i.i = tail call ptr @iget5_locked(ptr noundef %18, i32 noundef %25, ptr noundef nonnull @ecryptfs_inode_test, ptr noundef nonnull @ecryptfs_inode_set, ptr noundef %16) #10
  %tobool7.not.i.i = icmp eq ptr %call6.i.i, null
  br i1 %tobool7.not.i.i, label %if.end5.i.i.cleanup.sink.split.i.i_crit_edge, label %if.end10.i.i

if.end5.i.i.cleanup.sink.split.i.i_crit_edge:     ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split.i.i

if.end10.i.i:                                     ; preds = %if.end5.i.i
  %i_state.i.i = getelementptr inbounds %struct.inode, ptr %call6.i.i, i32 0, i32 24
  %26 = ptrtoint ptr %i_state.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %i_state.i.i, align 8
  %and.i.i = and i32 %27, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool11.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool11.not.i.i, label %if.end10.i.i.cleanup.sink.split.i.i_crit_edge, label %if.end10.i.i.__ecryptfs_get_inode.exit.i_crit_edge

if.end10.i.i.__ecryptfs_get_inode.exit.i_crit_edge: ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__ecryptfs_get_inode.exit.i

if.end10.i.i.cleanup.sink.split.i.i_crit_edge:    ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split.i.i

cleanup.sink.split.i.i:                           ; preds = %if.end10.i.i.cleanup.sink.split.i.i_crit_edge, %if.end5.i.i.cleanup.sink.split.i.i_crit_edge
  %retval.0.ph.i.i = phi ptr [ inttoptr (i32 -13 to ptr), %if.end5.i.i.cleanup.sink.split.i.i_crit_edge ], [ %call6.i.i, %if.end10.i.i.cleanup.sink.split.i.i_crit_edge ]
  tail call void @iput(ptr noundef %16) #10
  br label %__ecryptfs_get_inode.exit.i

__ecryptfs_get_inode.exit.i:                      ; preds = %cleanup.sink.split.i.i, %if.end10.i.i.__ecryptfs_get_inode.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %call6.i.i, %if.end10.i.i.__ecryptfs_get_inode.exit.i_crit_edge ], [ %retval.0.ph.i.i, %cleanup.sink.split.i.i ]
  %cmp.i19.i = icmp ugt ptr %retval.0.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i19.i, label %__ecryptfs_get_inode.exit.i.if.then10.i_crit_edge, label %if.end12.i

__ecryptfs_get_inode.exit.i.if.then10.i_crit_edge: ; preds = %__ecryptfs_get_inode.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then10.i

if.then10.i:                                      ; preds = %__ecryptfs_get_inode.exit.i.if.then10.i_crit_edge, %if.end.i.i.if.then10.i_crit_edge, %if.end6.i.if.then10.i_crit_edge
  %retval.0.i30.i = phi ptr [ %retval.0.i.i, %__ecryptfs_get_inode.exit.i.if.then10.i_crit_edge ], [ inttoptr (i32 -116 to ptr), %if.end.i.i.if.then10.i_crit_edge ], [ inttoptr (i32 -18 to ptr), %if.end6.i.if.then10.i_crit_edge ]
  %call11.i = tail call i32 @vfs_unlink(ptr noundef nonnull @init_user_ns, ptr noundef %7, ptr noundef %11, ptr noundef null) #10
  br label %ecryptfs_do_create.exit

if.end12.i:                                       ; preds = %__ecryptfs_get_inode.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %i_atime.i.i = getelementptr inbounds %struct.inode, ptr %directory_inode, i32 0, i32 15
  %i_atime1.i.i = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 15
  %28 = call ptr @memcpy(ptr %i_atime.i.i, ptr %i_atime1.i.i, i32 16)
  %i_mtime.i.i = getelementptr inbounds %struct.inode, ptr %directory_inode, i32 0, i32 16
  %i_mtime2.i.i = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 16
  %29 = call ptr @memcpy(ptr %i_mtime.i.i, ptr %i_mtime2.i.i, i32 16)
  %i_ctime.i.i = getelementptr inbounds %struct.inode, ptr %directory_inode, i32 0, i32 17
  %i_ctime3.i.i = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 17
  %30 = call ptr @memcpy(ptr %i_ctime.i.i, ptr %i_ctime3.i.i, i32 16)
  tail call void @fsstack_copy_inode_size(ptr noundef %directory_inode, ptr noundef %7) #10
  br label %ecryptfs_do_create.exit

ecryptfs_do_create.exit:                          ; preds = %if.end12.i, %if.then10.i, %do.end.i
  %inode.0.i = phi ptr [ %14, %do.end.i ], [ %retval.0.i30.i, %if.then10.i ], [ %retval.0.i.i, %if.end12.i ]
  tail call void @up_write(ptr noundef %i_rwsem.i.i.i) #10
  %cmp.i = icmp ugt ptr %inode.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %ecryptfs_do_create.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ...) @__ecryptfs_printk(ptr noundef nonnull @.str.21, ptr noundef nonnull @__func__.ecryptfs_create) #10
  %31 = ptrtoint ptr %inode.0.i to i32
  br label %out

if.end:                                           ; preds = %ecryptfs_do_create.exit
  %call3 = tail call i32 @ecryptfs_initialize_file(ptr noundef %ecryptfs_dentry, ptr noundef %inode.0.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end6, label %if.then4

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call5 = tail call fastcc i32 @ecryptfs_do_unlink(ptr noundef %directory_inode, ptr noundef %ecryptfs_dentry, ptr noundef %inode.0.i)
  tail call void @iget_failed(ptr noundef %inode.0.i) #10
  br label %out

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @d_instantiate_new(ptr noundef %ecryptfs_dentry, ptr noundef %inode.0.i) #10
  br label %out

out:                                              ; preds = %if.end6, %if.then4, %if.then
  %rc.0 = phi i32 [ %31, %if.then ], [ %call3, %if.then4 ], [ 0, %if.end6 ]
  ret i32 %rc.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ecryptfs_link(ptr nocapture noundef readonly %old_dentry, ptr noundef %dir, ptr noundef %new_dentry) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %old_dentry, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode.i, align 8
  %call1 = tail call fastcc i64 @i_size_read(ptr noundef %1)
  %d_fsdata.i = getelementptr inbounds %struct.dentry, ptr %old_dentry, i32 0, i32 11
  %2 = ptrtoint ptr %d_fsdata.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %d_fsdata.i, align 4
  %dentry1.i = getelementptr inbounds %struct.path, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %dentry1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dentry1.i, align 4
  %d_parent.i = getelementptr inbounds %struct.dentry, ptr %new_dentry, i32 0, i32 3
  %6 = ptrtoint ptr %d_parent.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %d_parent.i, align 8
  %d_fsdata.i.i = getelementptr inbounds %struct.dentry, ptr %7, i32 0, i32 11
  %8 = ptrtoint ptr %d_fsdata.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %d_fsdata.i.i, align 4
  %dentry1.i.i = getelementptr inbounds %struct.path, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %dentry1.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dentry1.i.i, align 4
  %d_inode.i.i = getelementptr inbounds %struct.dentry, ptr %11, i32 0, i32 5
  %12 = ptrtoint ptr %d_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %d_inode.i.i, align 8
  %d_fsdata.i8.i = getelementptr inbounds %struct.dentry, ptr %new_dentry, i32 0, i32 11
  %14 = ptrtoint ptr %d_fsdata.i8.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %d_fsdata.i8.i, align 4
  %dentry1.i9.i = getelementptr inbounds %struct.path, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %dentry1.i9.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dentry1.i9.i, align 4
  %i_rwsem.i.i = getelementptr inbounds %struct.inode, ptr %13, i32 0, i32 25
  tail call void @down_write_nested(ptr noundef %i_rwsem.i.i, i32 noundef 1) #10
  %d_parent3.i = getelementptr inbounds %struct.dentry, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %d_parent3.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %d_parent3.i, align 8
  %cmp.i = icmp eq ptr %19, %11
  br i1 %cmp.i, label %if.end, label %entry.out_lock_crit_edge

entry.out_lock_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_lock

if.end:                                           ; preds = %entry
  %call4 = tail call i32 @vfs_link(ptr noundef %5, ptr noundef nonnull @init_user_ns, ptr noundef %13, ptr noundef %17, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %lor.lhs.false, label %if.end.out_lock_crit_edge

if.end.out_lock_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_lock

lor.lhs.false:                                    ; preds = %if.end
  %d_inode.i27 = getelementptr inbounds %struct.dentry, ptr %17, i32 0, i32 5
  %20 = ptrtoint ptr %d_inode.i27 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %d_inode.i27, align 8
  %cmp.i28 = icmp eq ptr %21, null
  br i1 %cmp.i28, label %lor.lhs.false.out_lock_crit_edge, label %if.end8

lor.lhs.false.out_lock_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_lock

if.end8:                                          ; preds = %lor.lhs.false
  %i_sb = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  %22 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %i_sb, align 4
  %call9 = tail call fastcc i32 @ecryptfs_interpose(ptr noundef %17, ptr noundef %new_dentry, ptr noundef %23)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %if.end8.out_lock_crit_edge

if.end8.out_lock_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_lock

if.end12:                                         ; preds = %if.end8
  %i_atime.i = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 15
  %i_atime1.i = getelementptr inbounds %struct.inode, ptr %13, i32 0, i32 15
  %24 = call ptr @memcpy(ptr %i_atime.i, ptr %i_atime1.i, i32 16)
  %i_mtime.i = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 16
  %i_mtime2.i = getelementptr inbounds %struct.inode, ptr %13, i32 0, i32 16
  %25 = call ptr @memcpy(ptr %i_mtime.i, ptr %i_mtime2.i, i32 16)
  %i_ctime.i = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 17
  %i_ctime3.i = getelementptr inbounds %struct.inode, ptr %13, i32 0, i32 17
  %26 = call ptr @memcpy(ptr %i_ctime.i, ptr %i_ctime3.i, i32 16)
  tail call void @fsstack_copy_inode_size(ptr noundef %dir, ptr noundef %13) #10
  %27 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %d_inode.i, align 8
  %wii_inode.i = getelementptr inbounds %struct.ecryptfs_inode_info, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %wii_inode.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %wii_inode.i, align 8
  %31 = getelementptr inbounds %struct.inode, ptr %30, i32 0, i32 12
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %31, align 4
  tail call void @set_nlink(ptr noundef %28, i32 noundef %33) #10
  %d_inode.i31 = getelementptr inbounds %struct.dentry, ptr %new_dentry, i32 0, i32 5
  %34 = ptrtoint ptr %d_inode.i31 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %d_inode.i31, align 8
  %36 = tail call i32 @llvm.read_register.i32(metadata !74) #10
  %and.i.i.i.i = and i32 %36, -16384
  %37 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %39, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !87
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %40 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool.not.i.i = icmp eq i32 %40, 0
  br i1 %tobool.not.i.i, label %if.end12.i_size_write.exit_crit_edge, label %land.lhs.true.i.i

if.end12.i_size_write.exit_crit_edge:             ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %i_size_write.exit

land.lhs.true.i.i:                                ; preds = %if.end12
  %41 = tail call i32 @llvm.read_register.i32(metadata !74) #10
  %and.i.i.i.i.i = and i32 %41, -16384
  %42 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %44, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !88
  %45 = tail call i32 @llvm.read_register.i32(metadata !74) #10
  %and.i.i.i = and i32 %45, -16384
  %46 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %46, i32 0, i32 3
  %47 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %48
  %49 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx.i.i, align 4
  %add.i28.i = add i32 %50, ptrtoint (ptr @lockdep_recursion to i32)
  %51 = inttoptr i32 %add.i28.i to ptr
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile i32, ptr %51, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !89
  %54 = tail call i32 @llvm.read_register.i32(metadata !74) #10
  %and.i.i.i7.i.i = and i32 %54, -16384
  %55 = inttoptr i32 %and.i.i.i7.i.i to ptr
  %preempt_count.i.i8.i.i = getelementptr inbounds %struct.thread_info, ptr %55, i32 0, i32 1
  %56 = ptrtoint ptr %preempt_count.i.i8.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load volatile i32, ptr %preempt_count.i.i8.i.i, align 4
  %sub.i.i.i = add i32 %57, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i8.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool20.not.i.i = icmp eq i32 %53, 0
  br i1 %tobool20.not.i.i, label %land.rhs.i.i, label %land.lhs.true.i.i.i_size_write.exit_crit_edge

land.lhs.true.i.i.i_size_write.exit_crit_edge:    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %i_size_write.exit

land.rhs.i.i:                                     ; preds = %land.lhs.true.i.i
  %58 = tail call i32 @llvm.read_register.i32(metadata !74) #10
  %and.i.i.i29.i = and i32 %58, -16384
  %59 = inttoptr i32 %and.i.i.i29.i to ptr
  %preempt_count.i.i30.i = getelementptr inbounds %struct.thread_info, ptr %59, i32 0, i32 1
  %60 = ptrtoint ptr %preempt_count.i.i30.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load volatile i32, ptr %preempt_count.i.i30.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %cmp.i.i = icmp eq i32 %61, 0
  br i1 %cmp.i.i, label %land.rhs22.i.i, label %land.rhs.i.i.i_size_write.exit_crit_edge

land.rhs.i.i.i_size_write.exit_crit_edge:         ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %i_size_write.exit

land.rhs22.i.i:                                   ; preds = %land.rhs.i.i
  %62 = tail call i32 @llvm.read_register.i32(metadata !74) #10
  %and.i.i.i9.i.i = and i32 %62, -16384
  %63 = inttoptr i32 %and.i.i.i9.i.i to ptr
  %preempt_count.i.i10.i.i = getelementptr inbounds %struct.thread_info, ptr %63, i32 0, i32 1
  %64 = ptrtoint ptr %preempt_count.i.i10.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load volatile i32, ptr %preempt_count.i.i10.i.i, align 4
  %add.i11.i.i = add i32 %65, 1
  store volatile i32 %add.i11.i.i, ptr %preempt_count.i.i10.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !90
  %66 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %cpu.i.i, align 4
  %arrayidx46.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %67
  %68 = ptrtoint ptr %arrayidx46.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %arrayidx46.i.i, align 4
  %add47.i.i = add i32 %69, ptrtoint (ptr @hardirqs_enabled to i32)
  %70 = inttoptr i32 %add47.i.i to ptr
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load volatile i32, ptr %70, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !91
  %73 = tail call i32 @llvm.read_register.i32(metadata !74) #10
  %and.i.i.i12.i.i = and i32 %73, -16384
  %74 = inttoptr i32 %and.i.i.i12.i.i to ptr
  %preempt_count.i.i13.i.i = getelementptr inbounds %struct.thread_info, ptr %74, i32 0, i32 1
  %75 = ptrtoint ptr %preempt_count.i.i13.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load volatile i32, ptr %preempt_count.i.i13.i.i, align 4
  %sub.i14.i.i = add i32 %76, -1
  store volatile i32 %sub.i14.i.i, ptr %preempt_count.i.i13.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %tobool54.not.i.i = icmp eq i32 %72, 0
  br i1 %tobool54.not.i.i, label %land.rhs22.i.i.i_size_write.exit_crit_edge, label %land.rhs58.i.i

land.rhs22.i.i.i_size_write.exit_crit_edge:       ; preds = %land.rhs22.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %i_size_write.exit

land.rhs58.i.i:                                   ; preds = %land.rhs22.i.i
  %.b1.i.i = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs58.i.i.i_size_write.exit_crit_edge, label %if.then.i.i, !prof !92

land.rhs58.i.i.i_size_write.exit_crit_edge:       ; preds = %land.rhs58.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %i_size_write.exit

if.then.i.i:                                      ; preds = %land.rhs58.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.26, i32 noundef 271, i32 noundef 9, ptr noundef null) #10
  br label %i_size_write.exit

i_size_write.exit:                                ; preds = %if.then.i.i, %land.rhs58.i.i.i_size_write.exit_crit_edge, %land.rhs22.i.i.i_size_write.exit_crit_edge, %land.rhs.i.i.i_size_write.exit_crit_edge, %land.lhs.true.i.i.i_size_write.exit_crit_edge, %if.end12.i_size_write.exit_crit_edge
  %i_size_seqcount.i = getelementptr inbounds %struct.inode, ptr %35, i32 0, i32 23
  %77 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %i_size_seqcount.i, align 4
  %inc.i.i.i.i = add i32 %78, 1
  store i32 %inc.i.i.i.i, ptr %i_size_seqcount.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !93
  %dep_map.i.i.i = getelementptr inbounds %struct.inode, ptr %35, i32 0, i32 23, i32 1
  %79 = tail call ptr @llvm.returnaddress(i32 0) #10
  %80 = ptrtoint ptr %79 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %80) #10
  %i_size8.i = getelementptr inbounds %struct.inode, ptr %35, i32 0, i32 14
  %81 = ptrtoint ptr %i_size8.i to i32
  call void @__asan_store8_noabort(i32 %81)
  store i64 %call1, ptr %i_size8.i, align 8
  tail call void @lock_release(ptr noundef %dep_map.i.i.i, i32 noundef %80) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !94
  %82 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %i_size_seqcount.i, align 4
  %inc.i.i.i = add i32 %83, 1
  store i32 %inc.i.i.i, ptr %i_size_seqcount.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !95
  %84 = tail call i32 @llvm.read_register.i32(metadata !74) #10
  %and.i.i.i26.i = and i32 %84, -16384
  %85 = inttoptr i32 %and.i.i.i26.i to ptr
  %preempt_count.i.i27.i = getelementptr inbounds %struct.thread_info, ptr %85, i32 0, i32 1
  %86 = ptrtoint ptr %preempt_count.i.i27.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load volatile i32, ptr %preempt_count.i.i27.i, align 4
  %sub.i.i = add i32 %87, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i27.i, align 4
  br label %out_lock

out_lock:                                         ; preds = %i_size_write.exit, %if.end8.out_lock_crit_edge, %lor.lhs.false.out_lock_crit_edge, %if.end.out_lock_crit_edge, %entry.out_lock_crit_edge
  %rc.1 = phi i32 [ %call4, %if.end.out_lock_crit_edge ], [ 0, %lor.lhs.false.out_lock_crit_edge ], [ %call9, %if.end8.out_lock_crit_edge ], [ 0, %i_size_write.exit ], [ -22, %entry.out_lock_crit_edge ]
  tail call void @up_write(ptr noundef %i_rwsem.i.i) #10
  ret i32 %rc.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ecryptfs_unlink(ptr nocapture noundef %dir, ptr noundef %dentry) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode.i, align 8
  %call1 = tail call fastcc i32 @ecryptfs_do_unlink(ptr noundef %dir, ptr noundef %dentry, ptr noundef %1)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ecryptfs_symlink(ptr nocapture noundef readnone %mnt_userns, ptr noundef %dir, ptr noundef %dentry, ptr noundef %symname) #0 align 64 {
entry:
  %encoded_symname = alloca ptr, align 4
  %encoded_symlen = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %encoded_symname) #10
  %0 = ptrtoint ptr %encoded_symname to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %encoded_symname, align 4, !annotation !85
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %encoded_symlen) #10
  %1 = ptrtoint ptr %encoded_symlen to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %encoded_symlen, align 4, !annotation !85
  %d_parent.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 3
  %2 = ptrtoint ptr %d_parent.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %d_parent.i, align 8
  %d_fsdata.i.i = getelementptr inbounds %struct.dentry, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %d_fsdata.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %d_fsdata.i.i, align 4
  %dentry1.i.i = getelementptr inbounds %struct.path, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %dentry1.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dentry1.i.i, align 4
  %d_inode.i.i = getelementptr inbounds %struct.dentry, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %d_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %d_inode.i.i, align 8
  %d_fsdata.i8.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 11
  %10 = ptrtoint ptr %d_fsdata.i8.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %d_fsdata.i8.i, align 4
  %dentry1.i9.i = getelementptr inbounds %struct.path, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %dentry1.i9.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dentry1.i9.i, align 4
  %i_rwsem.i.i = getelementptr inbounds %struct.inode, ptr %9, i32 0, i32 25
  tail call void @down_write_nested(ptr noundef %i_rwsem.i.i, i32 noundef 1) #10
  %d_parent3.i = getelementptr inbounds %struct.dentry, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %d_parent3.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %d_parent3.i, align 8
  %cmp.i = icmp eq ptr %15, %7
  br i1 %cmp.i, label %if.end, label %entry.out_lock_crit_edge

entry.out_lock_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_lock

if.end:                                           ; preds = %entry
  %i_sb = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  %16 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %17, i32 0, i32 33
  %18 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %s_fs_info.i, align 16
  %mount_crypt_stat2 = getelementptr inbounds %struct.ecryptfs_sb_info, ptr %19, i32 0, i32 1
  %call3 = tail call i32 @strlen(ptr noundef %symname) #16
  %call4 = call i32 @ecryptfs_encrypt_and_encode_filename(ptr noundef nonnull %encoded_symname, ptr noundef nonnull %encoded_symlen, ptr noundef %mount_crypt_stat2, ptr noundef %symname, i32 noundef %call3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %if.end.out_lock_crit_edge

if.end.out_lock_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_lock

if.end7:                                          ; preds = %if.end
  %20 = ptrtoint ptr %encoded_symname to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %encoded_symname, align 4
  %call8 = call i32 @vfs_symlink(ptr noundef nonnull @init_user_ns, ptr noundef %9, ptr noundef %13, ptr noundef %21) #10
  %22 = ptrtoint ptr %encoded_symname to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %encoded_symname, align 4
  call void @kfree(ptr noundef %23) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %lor.lhs.false, label %if.end7.out_lock_crit_edge

if.end7.out_lock_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_lock

lor.lhs.false:                                    ; preds = %if.end7
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %13, i32 0, i32 5
  %24 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %d_inode.i, align 8
  %cmp.i32 = icmp eq ptr %25, null
  br i1 %cmp.i32, label %lor.lhs.false.out_lock_crit_edge, label %if.end12

lor.lhs.false.out_lock_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_lock

if.end12:                                         ; preds = %lor.lhs.false
  %26 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %i_sb, align 4
  %call14 = call fastcc i32 @ecryptfs_interpose(ptr noundef %13, ptr noundef %dentry, ptr noundef %27)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end17, label %if.end12.out_lock_crit_edge

if.end12.out_lock_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_lock

if.end17:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  %i_atime.i = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 15
  %i_atime1.i = getelementptr inbounds %struct.inode, ptr %9, i32 0, i32 15
  %28 = call ptr @memcpy(ptr %i_atime.i, ptr %i_atime1.i, i32 16)
  %i_mtime.i = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 16
  %i_mtime2.i = getelementptr inbounds %struct.inode, ptr %9, i32 0, i32 16
  %29 = call ptr @memcpy(ptr %i_mtime.i, ptr %i_mtime2.i, i32 16)
  %i_ctime.i = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 17
  %i_ctime3.i = getelementptr inbounds %struct.inode, ptr %9, i32 0, i32 17
  %30 = call ptr @memcpy(ptr %i_ctime.i, ptr %i_ctime3.i, i32 16)
  call void @fsstack_copy_inode_size(ptr noundef %dir, ptr noundef %9) #10
  br label %out_lock

out_lock:                                         ; preds = %if.end17, %if.end12.out_lock_crit_edge, %lor.lhs.false.out_lock_crit_edge, %if.end7.out_lock_crit_edge, %if.end.out_lock_crit_edge, %entry.out_lock_crit_edge
  %rc.0 = phi i32 [ -22, %entry.out_lock_crit_edge ], [ %call4, %if.end.out_lock_crit_edge ], [ %call8, %if.end7.out_lock_crit_edge ], [ 0, %lor.lhs.false.out_lock_crit_edge ], [ %call14, %if.end12.out_lock_crit_edge ], [ 0, %if.end17 ]
  call void @up_write(ptr noundef %i_rwsem.i.i) #10
  %d_inode.i33 = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %31 = ptrtoint ptr %d_inode.i33 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %d_inode.i33, align 8
  %cmp.i34 = icmp eq ptr %32, null
  br i1 %cmp.i34, label %if.then19, label %out_lock.if.end20_crit_edge

out_lock.if.end20_crit_edge:                      ; preds = %out_lock
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

if.then19:                                        ; preds = %out_lock
  call void @__sanitizer_cov_trace_pc() #12
  call void @d_drop(ptr noundef %dentry) #10
  br label %if.end20

if.end20:                                         ; preds = %if.then19, %out_lock.if.end20_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %encoded_symlen) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %encoded_symname) #10
  ret i32 %rc.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ecryptfs_mkdir(ptr nocapture noundef readnone %mnt_userns, ptr noundef %dir, ptr noundef %dentry, i16 noundef zeroext %mode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %d_parent.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 3
  %0 = ptrtoint ptr %d_parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_parent.i, align 8
  %d_fsdata.i.i = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %d_fsdata.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %d_fsdata.i.i, align 4
  %dentry1.i.i = getelementptr inbounds %struct.path, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %dentry1.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dentry1.i.i, align 4
  %d_inode.i.i = getelementptr inbounds %struct.dentry, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %d_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %d_inode.i.i, align 8
  %d_fsdata.i8.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 11
  %8 = ptrtoint ptr %d_fsdata.i8.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %d_fsdata.i8.i, align 4
  %dentry1.i9.i = getelementptr inbounds %struct.path, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %dentry1.i9.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dentry1.i9.i, align 4
  %i_rwsem.i.i = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 25
  tail call void @down_write_nested(ptr noundef %i_rwsem.i.i, i32 noundef 1) #10
  %d_parent3.i = getelementptr inbounds %struct.dentry, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %d_parent3.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %d_parent3.i, align 8
  %cmp.i = icmp eq ptr %13, %5
  br i1 %cmp.i, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @vfs_mkdir(ptr noundef nonnull @init_user_ns, ptr noundef %7, ptr noundef %11, i16 noundef zeroext %mode) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %lor.lhs.false, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

lor.lhs.false:                                    ; preds = %if.end
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %11, i32 0, i32 5
  %14 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %d_inode.i, align 8
  %cmp.i22 = icmp eq ptr %15, null
  br i1 %cmp.i22, label %lor.lhs.false.out_crit_edge, label %if.end5

lor.lhs.false.out_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end5:                                          ; preds = %lor.lhs.false
  %i_sb = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  %16 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %i_sb, align 4
  %call6 = tail call fastcc i32 @ecryptfs_interpose(ptr noundef %11, ptr noundef %dentry, ptr noundef %17)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %if.end5.out_crit_edge

if.end5.out_crit_edge:                            ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end9:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  %i_atime.i = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 15
  %i_atime1.i = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 15
  %18 = call ptr @memcpy(ptr %i_atime.i, ptr %i_atime1.i, i32 16)
  %i_mtime.i = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 16
  %i_mtime2.i = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 16
  %19 = call ptr @memcpy(ptr %i_mtime.i, ptr %i_mtime2.i, i32 16)
  %i_ctime.i = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 17
  %i_ctime3.i = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 17
  %20 = call ptr @memcpy(ptr %i_ctime.i, ptr %i_ctime3.i, i32 16)
  tail call void @fsstack_copy_inode_size(ptr noundef %dir, ptr noundef %7) #10
  %21 = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 12
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %21, align 4
  tail call void @set_nlink(ptr noundef %dir, i32 noundef %23) #10
  br label %out

out:                                              ; preds = %if.end9, %if.end5.out_crit_edge, %lor.lhs.false.out_crit_edge, %if.end.out_crit_edge, %entry.out_crit_edge
  %rc.1 = phi i32 [ %call1, %if.end.out_crit_edge ], [ 0, %lor.lhs.false.out_crit_edge ], [ %call6, %if.end5.out_crit_edge ], [ 0, %if.end9 ], [ -22, %entry.out_crit_edge ]
  tail call void @up_write(ptr noundef %i_rwsem.i.i) #10
  %d_inode.i23 = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %24 = ptrtoint ptr %d_inode.i23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %d_inode.i23, align 8
  %cmp.i24 = icmp eq ptr %25, null
  br i1 %cmp.i24, label %if.then11, label %out.if.end12_crit_edge

out.if.end12_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

if.then11:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @d_drop(ptr noundef %dentry) #10
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %out.if.end12_crit_edge
  ret i32 %rc.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ecryptfs_rmdir(ptr noundef %dir, ptr noundef %dentry) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %d_parent.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 3
  %0 = ptrtoint ptr %d_parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_parent.i, align 8
  %d_fsdata.i.i = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %d_fsdata.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %d_fsdata.i.i, align 4
  %dentry1.i.i = getelementptr inbounds %struct.path, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %dentry1.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dentry1.i.i, align 4
  %d_inode.i.i = getelementptr inbounds %struct.dentry, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %d_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %d_inode.i.i, align 8
  %d_fsdata.i8.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 11
  %8 = ptrtoint ptr %d_fsdata.i8.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %d_fsdata.i8.i, align 4
  %dentry1.i9.i = getelementptr inbounds %struct.path, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %dentry1.i9.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dentry1.i9.i, align 4
  %i_rwsem.i.i = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 25
  tail call void @down_write_nested(ptr noundef %i_rwsem.i.i, i32 noundef 1) #10
  %d_parent3.i = getelementptr inbounds %struct.dentry, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %d_parent3.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %d_parent3.i, align 8
  %cmp.i = icmp eq ptr %13, %5
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %entry.dget.exit_crit_edge, label %if.then.i

entry.dget.exit_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %dget.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %d_lockref.i = getelementptr inbounds %struct.dentry, ptr %11, i32 0, i32 7
  tail call void @lockref_get(ptr noundef %d_lockref.i) #10
  br label %dget.exit

dget.exit:                                        ; preds = %if.then.i, %entry.dget.exit_crit_edge
  br i1 %cmp.i, label %if.then, label %dget.exit.if.end13.critedge_crit_edge

dget.exit.if.end13.critedge_crit_edge:            ; preds = %dget.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13.critedge

if.then:                                          ; preds = %dget.exit
  %pprev.i.i = getelementptr inbounds %struct.dentry, ptr %11, i32 0, i32 2, i32 1
  %14 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pprev.i.i, align 4
  %tobool.not.i.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.i.not, label %if.then.if.end13.critedge_crit_edge, label %if.end6

if.then.if.end13.critedge_crit_edge:              ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13.critedge

if.end6:                                          ; preds = %if.then
  %call5 = tail call i32 @vfs_rmdir(ptr noundef nonnull @init_user_ns, ptr noundef %7, ptr noundef %11) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool7.not = icmp eq i32 %call5, 0
  br i1 %tobool7.not, label %if.then8, label %if.end6.if.end13.critedge_crit_edge

if.end6.if.end13.critedge_crit_edge:              ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13.critedge

if.then8:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %16 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %d_inode.i, align 8
  tail call void @clear_nlink(ptr noundef %17) #10
  %i_atime.i = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 15
  %i_atime1.i = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 15
  %18 = call ptr @memcpy(ptr %i_atime.i, ptr %i_atime1.i, i32 16)
  %i_mtime.i = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 16
  %i_mtime2.i = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 16
  %19 = call ptr @memcpy(ptr %i_mtime.i, ptr %i_mtime2.i, i32 16)
  %i_ctime.i = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 17
  %i_ctime3.i = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 17
  %20 = call ptr @memcpy(ptr %i_ctime.i, ptr %i_ctime3.i, i32 16)
  %21 = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 12
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %21, align 4
  tail call void @set_nlink(ptr noundef %dir, i32 noundef %23) #10
  tail call void @dput(ptr noundef %11) #10
  tail call void @up_write(ptr noundef %i_rwsem.i.i) #10
  tail call void @d_drop(ptr noundef %dentry) #10
  br label %if.end13

if.end13.critedge:                                ; preds = %if.end6.if.end13.critedge_crit_edge, %if.then.if.end13.critedge_crit_edge, %dget.exit.if.end13.critedge_crit_edge
  %rc.034 = phi i32 [ %call5, %if.end6.if.end13.critedge_crit_edge ], [ -22, %if.then.if.end13.critedge_crit_edge ], [ -22, %dget.exit.if.end13.critedge_crit_edge ]
  tail call void @dput(ptr noundef %11) #10
  tail call void @up_write(ptr noundef %i_rwsem.i.i) #10
  br label %if.end13

if.end13:                                         ; preds = %if.end13.critedge, %if.then8
  %rc.033 = phi i32 [ %rc.034, %if.end13.critedge ], [ 0, %if.then8 ]
  ret i32 %rc.033
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ecryptfs_mknod(ptr nocapture noundef readnone %mnt_userns, ptr noundef %dir, ptr noundef %dentry, i16 noundef zeroext %mode, i32 noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %d_parent.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 3
  %0 = ptrtoint ptr %d_parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_parent.i, align 8
  %d_fsdata.i.i = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %d_fsdata.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %d_fsdata.i.i, align 4
  %dentry1.i.i = getelementptr inbounds %struct.path, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %dentry1.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dentry1.i.i, align 4
  %d_inode.i.i = getelementptr inbounds %struct.dentry, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %d_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %d_inode.i.i, align 8
  %d_fsdata.i8.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 11
  %8 = ptrtoint ptr %d_fsdata.i8.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %d_fsdata.i8.i, align 4
  %dentry1.i9.i = getelementptr inbounds %struct.path, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %dentry1.i9.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dentry1.i9.i, align 4
  %i_rwsem.i.i = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 25
  tail call void @down_write_nested(ptr noundef %i_rwsem.i.i, i32 noundef 1) #10
  %d_parent3.i = getelementptr inbounds %struct.dentry, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %d_parent3.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %d_parent3.i, align 8
  %cmp.i = icmp eq ptr %13, %5
  br i1 %cmp.i, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @vfs_mknod(ptr noundef nonnull @init_user_ns, ptr noundef %7, ptr noundef %11, i16 noundef zeroext %mode, i32 noundef %dev) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %lor.lhs.false, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

lor.lhs.false:                                    ; preds = %if.end
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %11, i32 0, i32 5
  %14 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %d_inode.i, align 8
  %cmp.i21 = icmp eq ptr %15, null
  br i1 %cmp.i21, label %lor.lhs.false.out_crit_edge, label %if.end5

lor.lhs.false.out_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end5:                                          ; preds = %lor.lhs.false
  %i_sb = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  %16 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %i_sb, align 4
  %call6 = tail call fastcc i32 @ecryptfs_interpose(ptr noundef %11, ptr noundef %dentry, ptr noundef %17)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %if.end5.out_crit_edge

if.end5.out_crit_edge:                            ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end9:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  %i_atime.i = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 15
  %i_atime1.i = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 15
  %18 = call ptr @memcpy(ptr %i_atime.i, ptr %i_atime1.i, i32 16)
  %i_mtime.i = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 16
  %i_mtime2.i = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 16
  %19 = call ptr @memcpy(ptr %i_mtime.i, ptr %i_mtime2.i, i32 16)
  %i_ctime.i = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 17
  %i_ctime3.i = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 17
  %20 = call ptr @memcpy(ptr %i_ctime.i, ptr %i_ctime3.i, i32 16)
  tail call void @fsstack_copy_inode_size(ptr noundef %dir, ptr noundef %7) #10
  br label %out

out:                                              ; preds = %if.end9, %if.end5.out_crit_edge, %lor.lhs.false.out_crit_edge, %if.end.out_crit_edge, %entry.out_crit_edge
  %rc.1 = phi i32 [ %call1, %if.end.out_crit_edge ], [ 0, %lor.lhs.false.out_crit_edge ], [ %call6, %if.end5.out_crit_edge ], [ 0, %if.end9 ], [ -22, %entry.out_crit_edge ]
  tail call void @up_write(ptr noundef %i_rwsem.i.i) #10
  %d_inode.i22 = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %21 = ptrtoint ptr %d_inode.i22 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %d_inode.i22, align 8
  %cmp.i23 = icmp eq ptr %22, null
  br i1 %cmp.i23, label %if.then11, label %out.if.end12_crit_edge

out.if.end12_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

if.then11:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @d_drop(ptr noundef %dentry) #10
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %out.if.end12_crit_edge
  ret i32 %rc.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ecryptfs_rename(ptr nocapture noundef readnone %mnt_userns, ptr noundef %old_dir, ptr nocapture noundef readonly %old_dentry, ptr noundef %new_dir, ptr nocapture noundef readonly %new_dentry, i32 noundef %flags) #0 align 64 {
entry:
  %rd = alloca %struct.renamedata, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %rd) #10
  %0 = call ptr @memset(ptr %rd, i32 0, i32 32)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %flags)
  %tobool.not = icmp eq i32 %flags, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %d_parent = getelementptr inbounds %struct.dentry, ptr %old_dentry, i32 0, i32 3
  %1 = ptrtoint ptr %d_parent to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %d_parent, align 8
  %d_fsdata.i = getelementptr inbounds %struct.dentry, ptr %2, i32 0, i32 11
  %3 = ptrtoint ptr %d_fsdata.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %d_fsdata.i, align 4
  %dentry1.i = getelementptr inbounds %struct.path, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %dentry1.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dentry1.i, align 4
  %d_parent1 = getelementptr inbounds %struct.dentry, ptr %new_dentry, i32 0, i32 3
  %7 = ptrtoint ptr %d_parent1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %d_parent1, align 8
  %d_fsdata.i78 = getelementptr inbounds %struct.dentry, ptr %8, i32 0, i32 11
  %9 = ptrtoint ptr %d_fsdata.i78 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %d_fsdata.i78, align 4
  %dentry1.i79 = getelementptr inbounds %struct.path, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %dentry1.i79 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dentry1.i79, align 4
  %d_fsdata.i80 = getelementptr inbounds %struct.dentry, ptr %old_dentry, i32 0, i32 11
  %13 = ptrtoint ptr %d_fsdata.i80 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %d_fsdata.i80, align 4
  %dentry1.i81 = getelementptr inbounds %struct.path, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %dentry1.i81 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dentry1.i81, align 4
  %d_fsdata.i82 = getelementptr inbounds %struct.dentry, ptr %new_dentry, i32 0, i32 11
  %17 = ptrtoint ptr %d_fsdata.i82 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %d_fsdata.i82, align 4
  %dentry1.i83 = getelementptr inbounds %struct.path, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %dentry1.i83 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dentry1.i83, align 4
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %new_dentry, i32 0, i32 5
  %21 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %d_inode.i, align 8
  %call6 = tail call ptr @lock_rename(ptr noundef %6, ptr noundef %12) #10
  %tobool.not.i = icmp eq ptr %20, null
  br i1 %tobool.not.i, label %if.end.dget.exit_crit_edge, label %if.then.i

if.end.dget.exit_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %dget.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %d_lockref.i = getelementptr inbounds %struct.dentry, ptr %20, i32 0, i32 7
  tail call void @lockref_get(ptr noundef %d_lockref.i) #10
  br label %dget.exit

dget.exit:                                        ; preds = %if.then.i, %if.end.dget.exit_crit_edge
  %d_parent8 = getelementptr inbounds %struct.dentry, ptr %16, i32 0, i32 3
  %23 = ptrtoint ptr %d_parent8 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %d_parent8, align 8
  %cmp.not = icmp eq ptr %24, %6
  br i1 %cmp.not, label %if.end10, label %dget.exit.out_lock_crit_edge

dget.exit.out_lock_crit_edge:                     ; preds = %dget.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_lock

if.end10:                                         ; preds = %dget.exit
  %d_parent11 = getelementptr inbounds %struct.dentry, ptr %20, i32 0, i32 3
  %25 = ptrtoint ptr %d_parent11 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %d_parent11, align 8
  %cmp12.not = icmp eq ptr %26, %12
  br i1 %cmp12.not, label %if.end14, label %if.end10.out_lock_crit_edge

if.end10.out_lock_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_lock

if.end14:                                         ; preds = %if.end10
  %pprev.i.i = getelementptr inbounds %struct.dentry, ptr %16, i32 0, i32 2, i32 1
  %27 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pprev.i.i, align 4
  %tobool.not.i.i.not = icmp eq ptr %28, null
  br i1 %tobool.not.i.i.not, label %if.end14.out_lock_crit_edge, label %lor.lhs.false

if.end14.out_lock_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_lock

lor.lhs.false:                                    ; preds = %if.end14
  %pprev.i.i84 = getelementptr inbounds %struct.dentry, ptr %20, i32 0, i32 2, i32 1
  %29 = ptrtoint ptr %pprev.i.i84 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pprev.i.i84, align 4
  %tobool.not.i.i85 = icmp eq ptr %30, null
  %cmp21 = icmp eq ptr %call6, %16
  %or.cond = select i1 %tobool.not.i.i85, i1 true, i1 %cmp21
  br i1 %or.cond, label %lor.lhs.false.out_lock_crit_edge, label %if.end23

lor.lhs.false.out_lock_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_lock

if.end23:                                         ; preds = %lor.lhs.false
  %cmp24 = icmp eq ptr %call6, %20
  br i1 %cmp24, label %if.end23.out_lock_crit_edge, label %if.end26

if.end23.out_lock_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_lock

if.end26:                                         ; preds = %if.end23
  %31 = ptrtoint ptr %rd to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @init_user_ns, ptr %rd, align 4
  %d_inode.i87 = getelementptr inbounds %struct.dentry, ptr %6, i32 0, i32 5
  %32 = ptrtoint ptr %d_inode.i87 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %d_inode.i87, align 8
  %old_dir28 = getelementptr inbounds %struct.renamedata, ptr %rd, i32 0, i32 1
  %34 = ptrtoint ptr %old_dir28 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %33, ptr %old_dir28, align 4
  %old_dentry29 = getelementptr inbounds %struct.renamedata, ptr %rd, i32 0, i32 2
  %35 = ptrtoint ptr %old_dentry29 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %16, ptr %old_dentry29, align 4
  %new_mnt_userns = getelementptr inbounds %struct.renamedata, ptr %rd, i32 0, i32 3
  %36 = ptrtoint ptr %new_mnt_userns to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @init_user_ns, ptr %new_mnt_userns, align 4
  %d_inode.i88 = getelementptr inbounds %struct.dentry, ptr %12, i32 0, i32 5
  %37 = ptrtoint ptr %d_inode.i88 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %d_inode.i88, align 8
  %new_dir31 = getelementptr inbounds %struct.renamedata, ptr %rd, i32 0, i32 4
  %39 = ptrtoint ptr %new_dir31 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %38, ptr %new_dir31, align 4
  %new_dentry32 = getelementptr inbounds %struct.renamedata, ptr %rd, i32 0, i32 5
  %40 = ptrtoint ptr %new_dentry32 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %20, ptr %new_dentry32, align 4
  %call33 = call i32 @vfs_rename(ptr noundef nonnull %rd) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.end36, label %if.end26.out_lock_crit_edge

if.end26.out_lock_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_lock

if.end36:                                         ; preds = %if.end26
  %tobool37.not = icmp eq ptr %22, null
  br i1 %tobool37.not, label %if.end36.if.end40_crit_edge, label %if.then38

if.end36.if.end40_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end40

if.then38:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #12
  %wii_inode.i = getelementptr inbounds %struct.ecryptfs_inode_info, ptr %22, i32 0, i32 1
  %41 = ptrtoint ptr %wii_inode.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %wii_inode.i, align 8
  call void @fsstack_copy_attr_all(ptr noundef nonnull %22, ptr noundef %42) #10
  br label %if.end40

if.end40:                                         ; preds = %if.then38, %if.end36.if.end40_crit_edge
  %43 = ptrtoint ptr %d_inode.i88 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %d_inode.i88, align 8
  call void @fsstack_copy_attr_all(ptr noundef %new_dir, ptr noundef %44) #10
  %cmp42.not = icmp eq ptr %new_dir, %old_dir
  br i1 %cmp42.not, label %if.end40.out_lock_crit_edge, label %if.then43

if.end40.out_lock_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_lock

if.then43:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #12
  %45 = ptrtoint ptr %d_inode.i87 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %d_inode.i87, align 8
  call void @fsstack_copy_attr_all(ptr noundef %old_dir, ptr noundef %46) #10
  br label %out_lock

out_lock:                                         ; preds = %if.then43, %if.end40.out_lock_crit_edge, %if.end26.out_lock_crit_edge, %if.end23.out_lock_crit_edge, %lor.lhs.false.out_lock_crit_edge, %if.end14.out_lock_crit_edge, %if.end10.out_lock_crit_edge, %dget.exit.out_lock_crit_edge
  %rc.0 = phi i32 [ -22, %dget.exit.out_lock_crit_edge ], [ -22, %if.end10.out_lock_crit_edge ], [ -22, %if.end14.out_lock_crit_edge ], [ -22, %lor.lhs.false.out_lock_crit_edge ], [ %call33, %if.end26.out_lock_crit_edge ], [ 0, %if.then43 ], [ 0, %if.end40.out_lock_crit_edge ], [ -39, %if.end23.out_lock_crit_edge ]
  call void @dput(ptr noundef %20) #10
  call void @unlock_rename(ptr noundef %6, ptr noundef %12) #10
  br label %cleanup

cleanup:                                          ; preds = %out_lock, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.0, %out_lock ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %rd) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ecryptfs_fileattr_set(ptr nocapture noundef readnone %mnt_userns, ptr nocapture noundef readonly %dentry, ptr noundef %fa) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %d_fsdata.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 11
  %0 = ptrtoint ptr %d_fsdata.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_fsdata.i, align 4
  %dentry1.i = getelementptr inbounds %struct.path, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dentry1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dentry1.i, align 4
  %call1 = tail call i32 @vfs_fileattr_set(ptr noundef nonnull @init_user_ns, ptr noundef %3, ptr noundef %fa) #10
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %4 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %d_inode.i, align 8
  %d_inode.i6 = getelementptr inbounds %struct.dentry, ptr %3, i32 0, i32 5
  %6 = ptrtoint ptr %d_inode.i6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %d_inode.i6, align 8
  tail call void @fsstack_copy_attr_all(ptr noundef %5, ptr noundef %7) #10
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ecryptfs_fileattr_get(ptr nocapture noundef readonly %dentry, ptr noundef %fa) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %d_fsdata.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 11
  %0 = ptrtoint ptr %d_fsdata.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_fsdata.i, align 4
  %dentry1.i = getelementptr inbounds %struct.path, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dentry1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dentry1.i, align 4
  %call1 = tail call i32 @vfs_fileattr_get(ptr noundef %3, ptr noundef %fa) #10
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ecryptfs_getattr(ptr nocapture noundef readnone %mnt_userns, ptr nocapture noundef readonly %path, ptr noundef %stat, i32 noundef %request_mask, i32 noundef %flags) #0 align 64 {
entry:
  %lower_stat = alloca %struct.kstat, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dentry1 = getelementptr inbounds %struct.path, ptr %path, i32 0, i32 1
  %0 = ptrtoint ptr %dentry1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dentry1, align 4
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %lower_stat) #10
  %2 = call ptr @memset(ptr %lower_stat, i32 255, i32 144)
  %d_fsdata.i = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 11
  %3 = ptrtoint ptr %d_fsdata.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %d_fsdata.i, align 4
  %call2 = call i32 @vfs_getattr(ptr noundef %4, ptr noundef nonnull %lower_stat, i32 noundef %request_mask, i32 noundef %flags) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 5
  %5 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %d_inode.i, align 8
  %wii_inode.i = getelementptr inbounds %struct.ecryptfs_inode_info, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %wii_inode.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %wii_inode.i, align 8
  call void @fsstack_copy_attr_all(ptr noundef %6, ptr noundef %8) #10
  %9 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %d_inode.i, align 8
  call void @generic_fillattr(ptr noundef nonnull @init_user_ns, ptr noundef %10, ptr noundef %stat) #10
  %blocks = getelementptr inbounds %struct.kstat, ptr %lower_stat, i32 0, i32 16
  %11 = ptrtoint ptr %blocks to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %blocks, align 8
  %blocks7 = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 16
  %13 = ptrtoint ptr %blocks7 to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %12, ptr %blocks7, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %lower_stat) #10
  ret i32 %call2
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @igrab(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iget5_locked(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ecryptfs_inode_test(ptr nocapture noundef readonly %inode, ptr noundef readnone %lower_inode) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %wii_inode.i = getelementptr inbounds %struct.ecryptfs_inode_info, ptr %inode, i32 0, i32 1
  %0 = ptrtoint ptr %wii_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wii_inode.i, align 8
  %cmp = icmp eq ptr %1, %lower_inode
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ecryptfs_inode_set(ptr noundef %inode, ptr noundef %opaque) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %wii_inode.i = getelementptr inbounds %struct.ecryptfs_inode_info, ptr %inode, i32 0, i32 1
  %0 = ptrtoint ptr %wii_inode.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %opaque, ptr %wii_inode.i, align 8
  tail call void @fsstack_copy_attr_all(ptr noundef %inode, ptr noundef %opaque) #10
  tail call void @fsstack_copy_inode_size(ptr noundef %inode, ptr noundef %opaque) #10
  %i_ino = getelementptr inbounds %struct.inode, ptr %opaque, i32 0, i32 11
  %1 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %i_ino, align 8
  %i_ino1 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %3 = ptrtoint ptr %i_ino1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %i_ino1, align 8
  %i_mapping = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 9
  %4 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_mapping, align 8
  %a_ops = getelementptr inbounds %struct.address_space, ptr %5, i32 0, i32 9
  %6 = ptrtoint ptr %a_ops to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @ecryptfs_aops, ptr %a_ops, align 4
  %7 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %inode, align 8
  %9 = and i16 %8, -4096
  %10 = zext i16 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i16 %9, label %if.end12 [
    i16 -24576, label %if.end12.thread
    i16 16384, label %if.end12.thread70
  ]

if.end12.thread:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %i_op = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 7
  %11 = ptrtoint ptr %i_op to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @ecryptfs_symlink_iops, ptr %i_op, align 8
  br label %if.else44

if.end12.thread70:                                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %i_op9 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 7
  %12 = ptrtoint ptr %i_op9 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @ecryptfs_dir_iops, ptr %i_op9, align 8
  br label %if.then18

if.end12:                                         ; preds = %entry
  %i_op11 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 7
  %13 = ptrtoint ptr %i_op11 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @ecryptfs_main_iops, ptr %i_op11, align 8
  %14 = add i16 %9, 16384
  %15 = lshr exact i16 %14, 12
  %trunc = trunc i16 %15 to i4
  %16 = zext i4 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.28)
  switch i4 %trunc, label %if.end12.if.else44_crit_edge [
    i4 -8, label %if.end12.if.then18_crit_edge
    i4 6, label %if.end12.if.then42_crit_edge
    i4 -6, label %if.end12.if.then42_crit_edge72
    i4 5, label %if.end12.if.then42_crit_edge73
    i4 0, label %if.end12.if.then42_crit_edge74
  ]

if.end12.if.then42_crit_edge74:                   ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then42

if.end12.if.then42_crit_edge73:                   ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then42

if.end12.if.then42_crit_edge72:                   ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then42

if.end12.if.then42_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then42

if.end12.if.then18_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then18

if.end12.if.else44_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else44

if.then18:                                        ; preds = %if.end12.if.then18_crit_edge, %if.end12.thread70
  %17 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 44
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @ecryptfs_dir_fops, ptr %17, align 8
  br label %if.end46

if.then42:                                        ; preds = %if.end12.if.then42_crit_edge, %if.end12.if.then42_crit_edge72, %if.end12.if.then42_crit_edge73, %if.end12.if.then42_crit_edge74
  %i_rdev = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 13
  %19 = ptrtoint ptr %i_rdev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %i_rdev, align 8
  tail call void @init_special_inode(ptr noundef %inode, i16 noundef zeroext %8, i32 noundef %20) #10
  br label %if.end46

if.else44:                                        ; preds = %if.end12.if.else44_crit_edge, %if.end12.thread
  %21 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 44
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @ecryptfs_main_fops, ptr %21, align 8
  br label %if.end46

if.end46:                                         ; preds = %if.else44, %if.then42, %if.then18
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iput(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fsstack_copy_inode_size(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_special_inode(ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i64 @i_size_read(ptr noundef %inode) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %i_size_seqcount = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23
  %dep_map.c48.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23, i32 1
  %i_size18 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  br label %do.body

do.body:                                          ; preds = %while.end.do.body_crit_edge, %entry
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #10, !srcloc !96
  %and.i.i = and i32 %0, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %do.body24.critedge.i

if.then.i:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @trace_hardirqs_off() #10
  %1 = tail call ptr @llvm.returnaddress(i32 0) #10
  %2 = ptrtoint ptr %1 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %2) #10
  tail call void @lock_release(ptr noundef %dep_map.c48.i, i32 noundef %2) #10
  tail call void @trace_hardirqs_on() #10
  br label %do.body24.i

do.body24.critedge.i:                             ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %3 = tail call ptr @llvm.returnaddress(i32 0) #10
  %4 = ptrtoint ptr %3 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %4) #10
  tail call void @lock_release(ptr noundef %dep_map.c48.i, i32 noundef %4) #10
  br label %do.body24.i

do.body24.i:                                      ; preds = %do.body24.critedge.i, %if.then.i
  %5 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #10, !srcloc !97
  %and.i.i.i = and i32 %5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool32.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool32.not.i, label %if.then36.i, label %do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge, !prof !84

do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge: ; preds = %do.body24.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %seqcount_lockdep_reader_access.exit

if.then36.i:                                      ; preds = %do.body24.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @warn_bogus_irq_restore() #10
  br label %seqcount_lockdep_reader_access.exit

seqcount_lockdep_reader_access.exit:              ; preds = %if.then36.i, %do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #10, !srcloc !98
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

do.end:                                           ; preds = %do.end.do.end_crit_edge, %seqcount_lockdep_reader_access.exit.do.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !99
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #10, !srcloc !100
  %8 = ptrtoint ptr %i_size_seqcount to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %i_size_seqcount, align 4
  %and = and i32 %9, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.end.while.end_crit_edge, label %do.end.do.end_crit_edge

do.end.do.end_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

do.end.while.end_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %do.end.while.end_crit_edge, %seqcount_lockdep_reader_access.exit.while.end_crit_edge
  %.lcssa = phi i32 [ %7, %seqcount_lockdep_reader_access.exit.while.end_crit_edge ], [ %9, %do.end.while.end_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !101
  %10 = ptrtoint ptr %i_size18 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %i_size18, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !102
  %12 = ptrtoint ptr %i_size_seqcount to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %i_size_seqcount, align 4
  %cmp.i.i.not = icmp eq i32 %13, %.lcssa
  br i1 %cmp.i.i.not, label %do.end24, label %while.end.do.body_crit_edge

while.end.do.body_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

do.end24:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  ret i64 %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inode_newsize_ok(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ecryptfs_write(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @truncate_setsize(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ecryptfs_write_inode_size_to_metadata(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_link(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vfs_get_link(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ecryptfs_decode_and_decrypt_filename(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inode_permission(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ecryptfs_init_crypt_stat(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ecryptfs_read_metadata(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @setattr_prepare(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_fillattr(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ecryptfs_encrypt_and_encode_filename(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @lookup_one_len_unlocked(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dput(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mntget(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @d_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @make_bad_inode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_splice_alias(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ecryptfs_set_default_sizes(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ecryptfs_read_and_validate_header_region(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ecryptfs_read_and_validate_xattr_region(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ecryptfs_do_unlink(ptr nocapture noundef %dir, ptr noundef %dentry, ptr noundef %inode) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %d_parent.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 3
  %0 = ptrtoint ptr %d_parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_parent.i, align 8
  %d_fsdata.i.i = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %d_fsdata.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %d_fsdata.i.i, align 4
  %dentry1.i.i = getelementptr inbounds %struct.path, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %dentry1.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dentry1.i.i, align 4
  %d_inode.i.i = getelementptr inbounds %struct.dentry, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %d_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %d_inode.i.i, align 8
  %d_fsdata.i8.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 11
  %8 = ptrtoint ptr %d_fsdata.i8.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %d_fsdata.i8.i, align 4
  %dentry1.i9.i = getelementptr inbounds %struct.path, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %dentry1.i9.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dentry1.i9.i, align 4
  %i_rwsem.i.i = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 25
  tail call void @down_write_nested(ptr noundef %i_rwsem.i.i, i32 noundef 1) #10
  %d_parent3.i = getelementptr inbounds %struct.dentry, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %d_parent3.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %d_parent3.i, align 8
  %cmp.i = icmp eq ptr %13, %5
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %entry.dget.exit_crit_edge, label %if.then.i

entry.dget.exit_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %dget.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %d_lockref.i = getelementptr inbounds %struct.dentry, ptr %11, i32 0, i32 7
  tail call void @lockref_get(ptr noundef %d_lockref.i) #10
  br label %dget.exit

dget.exit:                                        ; preds = %if.then.i, %entry.dget.exit_crit_edge
  br i1 %cmp.i, label %if.then, label %dget.exit.do.end_crit_edge

dget.exit.do.end_crit_edge:                       ; preds = %dget.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.then:                                          ; preds = %dget.exit
  %pprev.i.i = getelementptr inbounds %struct.dentry, ptr %11, i32 0, i32 2, i32 1
  %14 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pprev.i.i, align 4
  %tobool.not.i.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.i.not, label %if.then.do.end_crit_edge, label %if.end6

if.then.do.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.end6:                                          ; preds = %if.then
  %call5 = tail call i32 @vfs_unlink(ptr noundef nonnull @init_user_ns, ptr noundef %7, ptr noundef %11, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool7.not = icmp eq i32 %call5, 0
  br i1 %tobool7.not, label %if.end10, label %if.end6.do.end_crit_edge

if.end6.do.end_crit_edge:                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

do.end:                                           ; preds = %if.end6.do.end_crit_edge, %if.then.do.end_crit_edge, %dget.exit.do.end_crit_edge
  %rc.037 = phi i32 [ %call5, %if.end6.do.end_crit_edge ], [ -22, %if.then.do.end_crit_edge ], [ -22, %dget.exit.do.end_crit_edge ]
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, i32 noundef %rc.037) #13
  tail call void @dput(ptr noundef %11) #10
  tail call void @up_write(ptr noundef %i_rwsem.i.i) #10
  br label %if.end15

if.end10:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  %i_atime.i = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 15
  %i_atime1.i = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 15
  %16 = call ptr @memcpy(ptr %i_atime.i, ptr %i_atime1.i, i32 16)
  %i_mtime.i = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 16
  %i_mtime2.i = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 16
  %17 = call ptr @memcpy(ptr %i_mtime.i, ptr %i_mtime2.i, i32 16)
  %i_ctime.i = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 17
  %i_ctime3.i = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 17
  %18 = call ptr @memcpy(ptr %i_ctime.i, ptr %i_ctime3.i, i32 16)
  %wii_inode.i = getelementptr inbounds %struct.ecryptfs_inode_info, ptr %inode, i32 0, i32 1
  %19 = ptrtoint ptr %wii_inode.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %wii_inode.i, align 8
  %21 = getelementptr inbounds %struct.inode, ptr %20, i32 0, i32 12
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %21, align 4
  tail call void @set_nlink(ptr noundef %inode, i32 noundef %23) #10
  %i_ctime = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 17
  %24 = call ptr @memcpy(ptr %i_ctime, ptr %i_ctime.i, i32 16)
  tail call void @dput(ptr noundef %11) #10
  tail call void @up_write(ptr noundef %i_rwsem.i.i) #10
  tail call void @d_drop(ptr noundef %dentry) #10
  br label %if.end15

if.end15:                                         ; preds = %if.end10, %do.end
  %rc.036 = phi i32 [ %rc.037, %do.end ], [ 0, %if.end10 ]
  ret i32 %rc.036
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iget_failed(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @d_instantiate_new(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_create(ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_unlink(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_nlink(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @d_drop(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockref_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_link(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ecryptfs_interpose(ptr nocapture noundef readonly %lower_dentry, ptr noundef %dentry, ptr noundef %sb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %lower_dentry, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode.i, align 8
  %i_sb.i.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb.i.i, align 4
  %s_fs_info.i.i.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %cmp.not.i.i = icmp eq ptr %3, %7
  br i1 %cmp.not.i.i, label %if.end.i.i, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

if.end.i.i:                                       ; preds = %entry
  %call2.i.i = tail call ptr @igrab(ptr noundef %1) #10
  %tobool.not.i.i = icmp eq ptr %call2.i.i, null
  br i1 %tobool.not.i.i, label %if.end.i.i.if.then_crit_edge, label %if.end5.i.i

if.end.i.i.if.then_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

if.end5.i.i:                                      ; preds = %if.end.i.i
  %8 = ptrtoint ptr %1 to i32
  %call6.i.i = tail call ptr @iget5_locked(ptr noundef %sb, i32 noundef %8, ptr noundef nonnull @ecryptfs_inode_test, ptr noundef nonnull @ecryptfs_inode_set, ptr noundef %1) #10
  %tobool7.not.i.i = icmp eq ptr %call6.i.i, null
  br i1 %tobool7.not.i.i, label %if.end5.i.i.cleanup.sink.split.i.i_crit_edge, label %if.end10.i.i

if.end5.i.i.cleanup.sink.split.i.i_crit_edge:     ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split.i.i

if.end10.i.i:                                     ; preds = %if.end5.i.i
  %i_state.i.i = getelementptr inbounds %struct.inode, ptr %call6.i.i, i32 0, i32 24
  %9 = ptrtoint ptr %i_state.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %i_state.i.i, align 8
  %and.i.i = and i32 %10, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool11.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool11.not.i.i, label %if.end10.i.i.cleanup.sink.split.i.i_crit_edge, label %if.end10.i.i.__ecryptfs_get_inode.exit.i_crit_edge

if.end10.i.i.__ecryptfs_get_inode.exit.i_crit_edge: ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__ecryptfs_get_inode.exit.i

if.end10.i.i.cleanup.sink.split.i.i_crit_edge:    ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split.i.i

cleanup.sink.split.i.i:                           ; preds = %if.end10.i.i.cleanup.sink.split.i.i_crit_edge, %if.end5.i.i.cleanup.sink.split.i.i_crit_edge
  %retval.0.ph.i.i = phi ptr [ inttoptr (i32 -13 to ptr), %if.end5.i.i.cleanup.sink.split.i.i_crit_edge ], [ %call6.i.i, %if.end10.i.i.cleanup.sink.split.i.i_crit_edge ]
  tail call void @iput(ptr noundef %1) #10
  br label %__ecryptfs_get_inode.exit.i

__ecryptfs_get_inode.exit.i:                      ; preds = %cleanup.sink.split.i.i, %if.end10.i.i.__ecryptfs_get_inode.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %call6.i.i, %if.end10.i.i.__ecryptfs_get_inode.exit.i_crit_edge ], [ %retval.0.ph.i.i, %cleanup.sink.split.i.i ]
  %cmp.i.i = icmp ugt ptr %retval.0.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %__ecryptfs_get_inode.exit.i.if.then_crit_edge, label %land.lhs.true.i

__ecryptfs_get_inode.exit.i.if.then_crit_edge:    ; preds = %__ecryptfs_get_inode.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

land.lhs.true.i:                                  ; preds = %__ecryptfs_get_inode.exit.i
  %i_state.i = getelementptr inbounds %struct.inode, ptr %retval.0.i.i, i32 0, i32 24
  %11 = ptrtoint ptr %i_state.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %i_state.i, align 8
  %and.i = and i32 %12, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.if.end_crit_edge, label %if.then.i

land.lhs.true.i.if.end_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @unlock_new_inode(ptr noundef %retval.0.i.i) #10
  br label %if.end

if.then:                                          ; preds = %__ecryptfs_get_inode.exit.i.if.then_crit_edge, %if.end.i.i.if.then_crit_edge, %entry.if.then_crit_edge
  %retval.0.i7.i8 = phi ptr [ inttoptr (i32 -18 to ptr), %entry.if.then_crit_edge ], [ inttoptr (i32 -116 to ptr), %if.end.i.i.if.then_crit_edge ], [ %retval.0.i.i, %__ecryptfs_get_inode.exit.i.if.then_crit_edge ]
  %13 = ptrtoint ptr %retval.0.i7.i8 to i32
  br label %cleanup

if.end:                                           ; preds = %if.then.i, %land.lhs.true.i.if.end_crit_edge
  tail call void @d_instantiate(ptr noundef %dentry, ptr noundef %retval.0.i.i) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %13, %if.then ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @d_instantiate(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_symlink(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_mkdir(ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_rmdir(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clear_nlink(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_mknod(ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @lock_rename(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_rename(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_rename(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_fileattr_set(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_fileattr_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_getattr(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ecryptfs_xattr_get(ptr nocapture noundef readnone %handler, ptr nocapture noundef readonly %dentry, ptr nocapture noundef readonly %inode, ptr noundef %name, ptr noundef %buffer, i32 noundef %size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %wii_inode.i.i = getelementptr inbounds %struct.ecryptfs_inode_info, ptr %inode, i32 0, i32 1
  %0 = ptrtoint ptr %wii_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wii_inode.i.i, align 8
  %i_opflags.i.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %i_opflags.i.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %i_opflags.i.i, align 2
  %4 = and i16 %3, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %tobool.not.i.i = icmp eq i16 %4, 0
  br i1 %tobool.not.i.i, label %entry.ecryptfs_getxattr.exit_crit_edge, label %if.end.i.i

entry.ecryptfs_getxattr.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %ecryptfs_getxattr.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %d_fsdata.i.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 11
  %5 = ptrtoint ptr %d_fsdata.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %d_fsdata.i.i, align 4
  %dentry1.i.i = getelementptr inbounds %struct.path, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %dentry1.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dentry1.i.i, align 4
  %i_rwsem.i.i.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 25
  tail call void @down_write(ptr noundef %i_rwsem.i.i.i) #10
  %call.i.i = tail call i32 @__vfs_getxattr(ptr noundef %8, ptr noundef %1, ptr noundef %name, ptr noundef %buffer, i32 noundef %size) #10
  tail call void @up_write(ptr noundef %i_rwsem.i.i.i) #10
  br label %ecryptfs_getxattr.exit

ecryptfs_getxattr.exit:                           ; preds = %if.end.i.i, %entry.ecryptfs_getxattr.exit_crit_edge
  %rc.0.i.i = phi i32 [ %call.i.i, %if.end.i.i ], [ -95, %entry.ecryptfs_getxattr.exit_crit_edge ]
  ret i32 %rc.0.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ecryptfs_xattr_set(ptr nocapture noundef readnone %handler, ptr nocapture noundef readnone %mnt_userns, ptr nocapture noundef readonly %dentry, ptr noundef %inode, ptr noundef %name, ptr noundef %value, i32 noundef %size, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %value, null
  br i1 %tobool.not, label %do.body, label %if.then

if.then:                                          ; preds = %entry
  %d_fsdata.i.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 11
  %0 = ptrtoint ptr %d_fsdata.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_fsdata.i.i, align 4
  %dentry1.i.i = getelementptr inbounds %struct.path, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dentry1.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dentry1.i.i, align 4
  %d_inode.i.i = getelementptr inbounds %struct.dentry, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %d_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %d_inode.i.i, align 8
  %i_opflags.i = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %i_opflags.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %i_opflags.i, align 2
  %8 = and i16 %7, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %tobool.not.i = icmp eq i16 %8, 0
  br i1 %tobool.not.i, label %if.then.return_crit_edge, label %if.end.i

if.then.return_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end.i:                                         ; preds = %if.then
  %i_rwsem.i.i = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 25
  tail call void @down_write(ptr noundef %i_rwsem.i.i) #10
  %call2.i = tail call i32 @__vfs_setxattr_locked(ptr noundef nonnull @init_user_ns, ptr noundef %3, ptr noundef %name, ptr noundef nonnull %value, i32 noundef %size, i32 noundef %flags, ptr noundef null) #10
  tail call void @up_write(ptr noundef %i_rwsem.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i, label %if.end.i.return_crit_edge

if.end.i.return_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

land.lhs.true.i:                                  ; preds = %if.end.i
  %tobool4.not.i = icmp eq ptr %inode, null
  br i1 %tobool4.not.i, label %land.lhs.true.i.return_crit_edge, label %if.then5.i

land.lhs.true.i.return_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.then5.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @fsstack_copy_attr_all(ptr noundef nonnull %inode, ptr noundef %5) #10
  br label %return

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %flags)
  %cmp.not = icmp eq i32 %flags, 2
  br i1 %cmp.not, label %do.end7, label %do.body4, !prof !92

do.body4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ecryptfs/inode.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1173, 0\0A.popsection", ""() #10, !srcloc !103
  unreachable

do.end7:                                          ; preds = %do.body
  %wii_inode.i.i = getelementptr inbounds %struct.ecryptfs_inode_info, ptr %inode, i32 0, i32 1
  %9 = ptrtoint ptr %wii_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %wii_inode.i.i, align 8
  %i_opflags.i14 = getelementptr inbounds %struct.inode, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %i_opflags.i14 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %i_opflags.i14, align 2
  %13 = and i16 %12, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %tobool.not.i15 = icmp eq i16 %13, 0
  br i1 %tobool.not.i15, label %do.end7.return_crit_edge, label %if.end.i20

do.end7.return_crit_edge:                         ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end.i20:                                       ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #12
  %d_fsdata.i.i16 = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 11
  %14 = ptrtoint ptr %d_fsdata.i.i16 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %d_fsdata.i.i16, align 4
  %dentry1.i.i17 = getelementptr inbounds %struct.path, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %dentry1.i.i17 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dentry1.i.i17, align 4
  %i_rwsem.i.i18 = getelementptr inbounds %struct.inode, ptr %10, i32 0, i32 25
  tail call void @down_write(ptr noundef %i_rwsem.i.i18) #10
  %call2.i19 = tail call i32 @__vfs_removexattr(ptr noundef nonnull @init_user_ns, ptr noundef %17, ptr noundef %name) #10
  tail call void @up_write(ptr noundef %i_rwsem.i.i18) #10
  br label %return

return:                                           ; preds = %if.end.i20, %do.end7.return_crit_edge, %if.then5.i, %land.lhs.true.i.return_crit_edge, %if.end.i.return_crit_edge, %if.then.return_crit_edge
  %retval.0 = phi i32 [ %call2.i, %if.end.i.return_crit_edge ], [ 0, %if.then5.i ], [ 0, %land.lhs.true.i.return_crit_edge ], [ -95, %if.then.return_crit_edge ], [ %call2.i19, %if.end.i20 ], [ -95, %do.end7.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__vfs_removexattr(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind readonly }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(0) }
attributes #15 = { nobuiltin nounwind }
attributes #16 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !11, !12, !14, !15, !16, !18, !20, !22, !24, !26, !27, !28, !29, !31, !32, !33, !35, !36, !37, !38, !40, !41, !42, !43, !45, !47, !48, !49, !50, !52, !53, !54, !56, !57, !59, !60, !61, !62, !64, !65, !66, !67, !69, !70, !72}
!llvm.named.register.sp = !{!74}
!llvm.module.flags = !{!75, !76, !77, !78, !79, !80, !81, !82}
!llvm.ident = !{!83}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/ecryptfs/inode.c", i32 218, i32 3}
!2 = !{ptr @__func__.ecryptfs_initialize_file, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../fs/ecryptfs/inode.c", i32 222, i32 2}
!5 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../fs/ecryptfs/inode.c", i32 225, i32 3}
!7 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../fs/ecryptfs/inode.c", i32 231, i32 3}
!9 = !{ptr @.str.4, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @ecryptfs_initialize_file._entry, !8, !"_entry", i1 false, i1 false}
!11 = !{ptr @ecryptfs_initialize_file._entry_ptr, !8, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../fs/ecryptfs/inode.c", i32 239, i32 3}
!14 = !{ptr @ecryptfs_initialize_file._entry.5, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @ecryptfs_initialize_file._entry_ptr.7, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @ecryptfs_symlink_iops, !17, !"ecryptfs_symlink_iops", i1 false, i1 false}
!17 = !{!"../fs/ecryptfs/inode.c", i32 1123, i32 31}
!18 = !{ptr @ecryptfs_dir_iops, !19, !"ecryptfs_dir_iops", i1 false, i1 false}
!19 = !{!"../fs/ecryptfs/inode.c", i32 1131, i32 31}
!20 = !{ptr @ecryptfs_main_iops, !21, !"ecryptfs_main_iops", i1 false, i1 false}
!21 = !{!"../fs/ecryptfs/inode.c", i32 1148, i32 31}
!22 = !{ptr @ecryptfs_xattr_handlers, !23, !"ecryptfs_xattr_handlers", i1 false, i1 false}
!23 = !{!"../fs/ecryptfs/inode.c", i32 1184, i32 29}
!24 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../fs/ecryptfs/inode.c", i32 779, i32 5}
!26 = !{ptr @.str.9, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @truncate_upper._entry, !25, !"_entry", i1 false, i1 false}
!28 = !{ptr @truncate_upper._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../fs/ecryptfs/inode.c", i32 788, i32 4}
!31 = !{ptr @truncate_upper._entry.10, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @truncate_upper._entry_ptr.12, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.13, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../fs/ecryptfs/inode.c", i32 925, i32 5}
!35 = !{ptr @.str.14, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @ecryptfs_setattr._entry, !34, !"_entry", i1 false, i1 false}
!37 = !{ptr @ecryptfs_setattr._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.15, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../fs/ecryptfs/inode.c", i32 401, i32 4}
!40 = !{ptr @.str.16, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @ecryptfs_lookup._entry, !39, !"_entry", i1 false, i1 false}
!42 = !{ptr @ecryptfs_lookup._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.17, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../fs/ecryptfs/inode.c", i32 410, i32 3}
!45 = !{ptr @.str.18, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../fs/ecryptfs/inode.c", i32 354, i32 3}
!47 = !{ptr @.str.19, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @ecryptfs_lookup_interpose._entry, !46, !"_entry", i1 false, i1 false}
!49 = !{ptr @ecryptfs_lookup_interpose._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.20, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../fs/ecryptfs/inode.c", i32 290, i32 3}
!52 = !{ptr @ecryptfs_i_size_read._entry, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @ecryptfs_i_size_read._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.21, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../fs/ecryptfs/inode.c", i32 264, i32 3}
!56 = !{ptr @__func__.ecryptfs_create, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @.str.22, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../fs/ecryptfs/inode.c", i32 184, i32 3}
!59 = !{ptr @.str.23, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @ecryptfs_do_create._entry, !58, !"_entry", i1 false, i1 false}
!61 = !{ptr @ecryptfs_do_create._entry_ptr, !58, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.24, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../fs/ecryptfs/inode.c", i32 144, i32 3}
!64 = !{ptr @.str.25, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @ecryptfs_do_unlink._entry, !63, !"_entry", i1 false, i1 false}
!66 = !{ptr @ecryptfs_do_unlink._entry_ptr, !63, !"_entry_ptr", i1 false, i1 false}
!67 = distinct !{null, !68, !"__already_done", i1 false, i1 false}
!68 = !{!"../include/linux/seqlock.h", i32 271, i32 2}
!69 = !{ptr @.str.26, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @.str.27, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../fs/ecryptfs/inode.c", i32 1179, i32 12}
!72 = !{ptr @ecryptfs_xattr_handler, !73, !"ecryptfs_xattr_handler", i1 false, i1 false}
!73 = !{!"../fs/ecryptfs/inode.c", i32 1178, i32 35}
!74 = !{!"sp"}
!75 = !{i32 1, !"wchar_size", i32 2}
!76 = !{i32 1, !"min_enum_size", i32 4}
!77 = !{i32 8, !"branch-target-enforcement", i32 0}
!78 = !{i32 8, !"sign-return-address", i32 0}
!79 = !{i32 8, !"sign-return-address-all", i32 0}
!80 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!81 = !{i32 7, !"uwtable", i32 1}
!82 = !{i32 7, !"frame-pointer", i32 2}
!83 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!84 = !{!"branch_weights", i32 1, i32 2000}
!85 = !{!"auto-init"}
!86 = !{i64 2154834300, i64 2154834784, i64 2154834337, i64 2154834393, i64 2154834427, i64 2154834451, i64 2154834492, i64 2154834513, i64 2154834541, i64 2154834575}
!87 = !{i64 2153145058}
!88 = !{i64 2149901502}
!89 = !{i64 2149906434}
!90 = !{i64 2149928146}
!91 = !{i64 2149933038}
!92 = !{!"branch_weights", i32 2000, i32 1}
!93 = !{i64 2150009495}
!94 = !{i64 2150009820}
!95 = !{i64 2153156920}
!96 = !{i64 928566, i64 928627}
!97 = !{i64 931298}
!98 = !{i64 931583}
!99 = !{i64 2153143127}
!100 = !{i64 2153142969}
!101 = !{i64 2153143297}
!102 = !{i64 2150009170}
!103 = !{i64 2154849482, i64 2154849967, i64 2154849519, i64 2154849575, i64 2154849609, i64 2154849633, i64 2154849674, i64 2154849695, i64 2154849723, i64 2154849757}
