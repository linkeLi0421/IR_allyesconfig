; ModuleID = '/llk/IR_all_yes/fs/orangefs/super.c_pt.bc'
source_filename = "../fs/orangefs/super.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.super_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dentry_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [76 x i8] }
%struct.export_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.match_token = type { i32, ptr }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.orangefs_kernel_op_s = type { i32, i64, %union.anon.86, %struct.orangefs_upcall_s, %struct.orangefs_downcall_s, %struct.completion, %struct.spinlock, i32, %struct.list_head }
%union.anon.86 = type { i32 }
%struct.orangefs_upcall_s = type { i32, i32, i32, i32, i32, i64, ptr, %union.anon.87 }
%union.anon.87 = type { %struct.orangefs_param_request_s, [6424 x i8] }
%struct.orangefs_param_request_s = type { i32, i32, %union.anon.88, [2048 x i8] }
%union.anon.88 = type { i64 }
%struct.orangefs_downcall_s = type { i32, i32, i64, ptr, %union.anon.89 }
%union.anon.89 = type { %struct.orangefs_listxattr_response, [4016 x i8] }
%struct.orangefs_listxattr_response = type { i32, i32, i64, [4096 x i8], i32, i32, [16 x i32] }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.orangefs_sb_info_s = type { %struct.orangefs_khandle, i32, i32, i32, [256 x i8], ptr, i32, i32, %struct.list_head }
%struct.orangefs_khandle = type { [16 x i8] }
%struct.orangefs_object_kref = type { %struct.orangefs_khandle, i32, i32 }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [24 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [24 x i8] }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.callback_head = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.80, %struct.list_head, %struct.list_head, %union.anon.81 }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.2, ptr }
%union.anon.2 = type { i64 }
%struct.lockref = type { %union.anon.78 }
%union.anon.78 = type { %struct.anon.79 }
%struct.anon.79 = type { %struct.spinlock, i32 }
%union.anon.80 = type { %struct.list_head }
%union.anon.81 = type { %struct.hlist_node }
%struct.orangefs_inode_s = type { %struct.orangefs_object_kref, [256 x i8], %struct.rw_semaphore, %struct.inode, i64, i32, i32, i32, %struct.kuid_t, %struct.kgid_t, i32, [16 x %struct.hlist_head] }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.74, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.75, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.76, ptr, %struct.address_space, %struct.list_head, %union.anon.77, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.74 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%union.anon.75 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.76 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.77 = type { ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.substring_t = type { ptr, ptr }
%struct.kstatfs = type { i32, i32, i64, i64, i64, i64, i64, %struct.__kernel_fsid_t, i32, i32, i32, [4 x i32] }
%struct.__kernel_fsid_t = type { [2 x i32] }

@orangefs_superblocks = dso_local global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @orangefs_superblocks, ptr @orangefs_superblocks }, [24 x i8] zeroinitializer }, align 32
@.str = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"orangefs_superblocks_lock\00", [38 x i8] zeroinitializer }, align 32
@orangefs_superblocks_lock = dso_local global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.1 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@orangefs_gossip_debug_mask = external dso_local local_unnamed_addr global i64, align 8
@orangefs_remount._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 251, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\017orangefs_remount: called\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"orangefs_remount\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"fs/orangefs/super.c\00", [44 x i8] zeroinitializer }, align 32
@orangefs_remount._entry_ptr = internal global ptr @orangefs_remount._entry, section ".printk_index", align 4
@orangefs_remount._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.2, ptr @.str.3, i32 262, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\017Attempting ORANGEFS Remount via host %s\0A\00", [53 x i8] zeroinitializer }, align 32
@orangefs_remount._entry_ptr.6 = internal global ptr @orangefs_remount._entry.4, section ".printk_index", align 4
@orangefs_remount._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 273, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\017orangefs_remount: mount got return value of %d\0A\00", [46 x i8] zeroinitializer }, align 32
@orangefs_remount._entry_ptr.9 = internal global ptr @orangefs_remount._entry.7, section ".printk_index", align 4
@orangefs_userspace_version = external dso_local local_unnamed_addr global i32, align 4
@.str.10 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"orangefs_features\00", [46 x i8] zeroinitializer }, align 32
@orangefs_features = dso_local global { i64, [24 x i8] } zeroinitializer, align 32
@orangefs_mount._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.3, i32 486, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\017orangefs_mount: called with devname %s\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"orangefs_mount\00", [17 x i8] zeroinitializer }, align 32
@orangefs_mount._entry_ptr = internal global ptr @orangefs_mount._entry, section ".printk_index", align 4
@orangefs_mount._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.12, ptr @.str.3, i32 489, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013ERROR: device name not specified.\0A\00", [59 x i8] zeroinitializer }, align 32
@orangefs_mount._entry_ptr.15 = internal global ptr @orangefs_mount._entry.13, section ".printk_index", align 4
@orangefs_mount._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.12, ptr @.str.3, i32 503, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\017Attempting ORANGEFS Mount via host %s\0A\00", [55 x i8] zeroinitializer }, align 32
@orangefs_mount._entry_ptr.18 = internal global ptr @orangefs_mount._entry.16, section ".printk_index", align 4
@orangefs_mount._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.12, ptr @.str.3, i32 507, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\017orangefs_mount: mount got return value of %d\0A\00", [48 x i8] zeroinitializer }, align 32
@orangefs_mount._entry_ptr.21 = internal global ptr @orangefs_mount._entry.19, section ".printk_index", align 4
@orangefs_mount._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.12, ptr @.str.3, i32 512, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013ERROR: Retrieved null fs_id\0A\00", [33 x i8] zeroinitializer }, align 32
@orangefs_mount._entry_ptr.24 = internal global ptr @orangefs_mount._entry.22, section ".printk_index", align 4
@orangefs_mount._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.12, ptr @.str.3, i32 559, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\017Adding SB %p to orangefs superblocks\0A\00", [56 x i8] zeroinitializer }, align 32
@orangefs_mount._entry_ptr.27 = internal global ptr @orangefs_mount._entry.25, section ".printk_index", align 4
@orangefs_mount._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.12, ptr @.str.3, i32 588, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013orangefs_mount: mount request failed with %d\0A\00", [48 x i8] zeroinitializer }, align 32
@orangefs_mount._entry_ptr.30 = internal global ptr @orangefs_mount._entry.28, section ".printk_index", align 4
@orangefs_mount._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.12, ptr @.str.3, i32 590, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"\013Ensure that all orangefs-servers have the same FS configuration files\0A\00", [55 x i8] zeroinitializer }, align 32
@orangefs_mount._entry_ptr.33 = internal global ptr @orangefs_mount._entry.31, section ".printk_index", align 4
@orangefs_mount._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.12, ptr @.str.3, i32 591, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [89 x i8], [39 x i8] } { [89 x i8] c"\013Look at pvfs2-client-core log file (typically /tmp/pvfs2-client.log) for more details\0A\00", [39 x i8] zeroinitializer }, align 32
@orangefs_mount._entry_ptr.36 = internal global ptr @orangefs_mount._entry.34, section ".printk_index", align 4
@orangefs_kill_sb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.3, i32 602, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\017orangefs_kill_sb: called\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"orangefs_kill_sb\00", [47 x i8] zeroinitializer }, align 32
@orangefs_kill_sb._entry_ptr = internal global ptr @orangefs_kill_sb._entry, section ".printk_index", align 4
@orangefs_request_mutex = external dso_local global %struct.mutex, align 4
@.str.39 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"orangefs_inode_cache\00", [43 x i8] zeroinitializer }, align 32
@orangefs_inode_cache = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@orangefs_inode_cache_initialize._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.3, i32 655, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013Cannot create orangefs_inode_cache\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"orangefs_inode_cache_initialize\00", [32 x i8] zeroinitializer }, align 32
@orangefs_inode_cache_initialize._entry_ptr = internal global ptr @orangefs_inode_cache_initialize._entry, section ".printk_index", align 4
@.str.42 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"orangefs_fs_umount\00", [45 x i8] zeroinitializer }, align 32
@orangefs_unmount._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.3, i32 408, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013orangefs_unmount: service_operation %d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"orangefs_unmount\00", [47 x i8] zeroinitializer }, align 32
@orangefs_unmount._entry_ptr = internal global ptr @orangefs_unmount._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@orangefs_xattr_handlers = external dso_local global [0 x ptr], align 4
@orangefs_s_ops = internal constant { %struct.super_operations, [60 x i8] } { %struct.super_operations { ptr @orangefs_alloc_inode, ptr @orangefs_destroy_inode, ptr @orangefs_free_inode, ptr null, ptr @orangefs_write_inode, ptr @generic_delete_inode, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @orangefs_statfs, ptr @orangefs_remount_fs, ptr null, ptr @orangefs_show_options, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@orangefs_dentry_operations = external dso_local constant %struct.dentry_operations, align 128
@orangefs_fill_sb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str.3, i32 453, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\017get inode %pU, fsid %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"orangefs_fill_sb\00", [47 x i8] zeroinitializer }, align 32
@orangefs_fill_sb._entry_ptr = internal global ptr @orangefs_fill_sb._entry, section ".printk_index", align 4
@orangefs_fill_sb._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.46, ptr @.str.3, i32 462, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\017Allocated root inode [%p] with mode %x\0A\00", [54 x i8] zeroinitializer }, align 32
@orangefs_fill_sb._entry_ptr.49 = internal global ptr @orangefs_fill_sb._entry.47, section ".printk_index", align 4
@orangefs_export_ops = internal constant { %struct.export_operations, [52 x i8] } { %struct.export_operations { ptr @orangefs_encode_fh, ptr @orangefs_fh_to_dentry, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, [52 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c",\00", [30 x i8] zeroinitializer }, align 32
@tokens = internal constant { [4 x %struct.match_token], [32 x i8] } { [4 x %struct.match_token] [%struct.match_token { i32 1, ptr @.str.53 }, %struct.match_token { i32 0, ptr @.str.54 }, %struct.match_token { i32 2, ptr @.str.55 }, %struct.match_token { i32 3, ptr null }], [32 x i8] zeroinitializer }, align 32
@parse_mount_options._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.52, ptr @.str.3, i32 94, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013Error: mount option [%s] is not supported.\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"parse_mount_options\00", [44 x i8] zeroinitializer }, align 32
@parse_mount_options._entry_ptr = internal global ptr @parse_mount_options._entry, section ".printk_index", align 4
@.str.53 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"acl\00", [28 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"intr\00", [27 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"local_lock\00", [21 x i8] zeroinitializer }, align 32
@orangefs_alloc_inode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.57, ptr @.str.3, i32 125, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\017orangefs_alloc_inode: allocated %p\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"orangefs_alloc_inode\00", [43 x i8] zeroinitializer }, align 32
@orangefs_alloc_inode._entry_ptr = internal global ptr @orangefs_alloc_inode._entry, section ".printk_index", align 4
@orangefs_destroy_inode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.59, ptr @.str.3, i32 150, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\017%s: deallocated %p destroying inode %pU\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"orangefs_destroy_inode\00", [41 x i8] zeroinitializer }, align 32
@orangefs_destroy_inode._entry_ptr = internal global ptr @orangefs_destroy_inode._entry, section ".printk_index", align 4
@orangefs_write_inode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.61, ptr @.str.3, i32 156, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\017orangefs_write_inode\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"orangefs_write_inode\00", [43 x i8] zeroinitializer }, align 32
@orangefs_write_inode._entry_ptr = internal global ptr @orangefs_write_inode._entry, section ".printk_index", align 4
@orangefs_statfs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.63, ptr @.str.3, i32 177, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\017%s: called on sb %p (fs_id is %d)\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"orangefs_statfs\00", [16 x i8] zeroinitializer }, align 32
@orangefs_statfs._entry_ptr = internal global ptr @orangefs_statfs._entry, section ".printk_index", align 4
@orangefs_statfs._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.63, ptr @.str.3, i32 201, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [104 x i8], [56 x i8] } { [104 x i8] c"\017%s: got %ld blocks available | %ld blocks total | %ld block size | %ld files total | %ld files avail\0A\00", [56 x i8] zeroinitializer }, align 32
@orangefs_statfs._entry_ptr.66 = internal global ptr @orangefs_statfs._entry.64, section ".printk_index", align 4
@orangefs_statfs._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.63, ptr @.str.3, i32 217, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\017%s: returning %d\0A\00", [44 x i8] zeroinitializer }, align 32
@orangefs_statfs._entry_ptr.69 = internal global ptr @orangefs_statfs._entry.67, section ".printk_index", align 4
@orangefs_remount_fs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.71, ptr @.str.3, i32 227, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\017orangefs_remount_fs: called\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"orangefs_remount_fs\00", [44 x i8] zeroinitializer }, align 32
@orangefs_remount_fs._entry_ptr = internal global ptr @orangefs_remount_fs._entry, section ".printk_index", align 4
@.str.72 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c",acl\00", [27 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c",intr\00", [26 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c",local_lock\00", [20 x i8] zeroinitializer }, align 32
@orangefs_encode_fh._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.76, ptr @.str.3, i32 356, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013fh buffer is too small for encoding\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"orangefs_encode_fh\00", [45 x i8] zeroinitializer }, align 32
@orangefs_encode_fh._entry_ptr = internal global ptr @orangefs_encode_fh._entry, section ".printk_index", align 4
@orangefs_encode_fh._entry.77 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.76, ptr @.str.3, i32 369, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\017Encoding fh: handle %pU, fsid %u\0A\00", [60 x i8] zeroinitializer }, align 32
@orangefs_encode_fh._entry_ptr.79 = internal global ptr @orangefs_encode_fh._entry.77, section ".printk_index", align 4
@orangefs_encode_fh._entry.80 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.76, ptr @.str.3, i32 381, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\017Encoding parent: handle %pU, fsid %u\0A\00", [56 x i8] zeroinitializer }, align 32
@orangefs_encode_fh._entry_ptr.82 = internal global ptr @orangefs_encode_fh._entry.80, section ".printk_index", align 4
@orangefs_fh_to_dentry._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.84, ptr @.str.3, i32 341, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\017fh_to_dentry: handle %pU, fs_id %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"orangefs_fh_to_dentry\00", [42 x i8] zeroinitializer }, align 32
@orangefs_fh_to_dentry._entry_ptr = internal global ptr @orangefs_fh_to_dentry._entry, section ".printk_index", align 4
@orangefs_inode_cache_ctor.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.85 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"&orangefs_inode->xattr_sem\00", [37 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.86 = private unnamed_addr constant [21 x i8] c"orangefs_superblocks\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 20, i32 1 }
@___asan_gen_.92 = private unnamed_addr constant [26 x i8] c"orangefs_superblocks_lock\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 22, i32 1 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 251, i32 2 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 260, i32 2 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 271, i32 2 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 291, i32 35 }
@___asan_gen_.122 = private unnamed_addr constant [18 x i8] c"orangefs_features\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 39, i32 10 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 484, i32 2 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 489, i32 3 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 501, i32 2 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 506, i32 2 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 512, i32 3 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 557, i32 2 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 588, i32 2 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 590, i32 3 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 591, i32 3 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 602, i32 2 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 644, i32 6 }
@___asan_gen_.194 = private unnamed_addr constant [21 x i8] c"orangefs_inode_cache\00", align 1
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 17, i32 27 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 655, i32 3 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 405, i32 28 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 408, i32 3 }
@___asan_gen_.218 = private unnamed_addr constant [15 x i8] c"orangefs_s_ops\00", align 1
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 315, i32 38 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 450, i32 2 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 459, i32 2 }
@___asan_gen_.236 = private unnamed_addr constant [20 x i8] c"orangefs_export_ops\00", align 1
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 389, i32 39 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 69, i32 31 }
@___asan_gen_.242 = private unnamed_addr constant [7 x i8] c"tokens\00", align 1
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 32, i32 28 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 94, i32 3 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 33, i32 14 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 34, i32 15 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 35, i32 20 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 123, i32 2 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 148, i32 2 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 156, i32 2 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 173, i32 2 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 192, i32 2 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 217, i32 2 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 227, i32 2 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 46, i32 15 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 48, i32 15 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 50, i32 15 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 356, i32 3 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 366, i32 2 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 378, i32 3 }
@___asan_gen_.350 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 338, i32 2 }
@___asan_gen_.359 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.362 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.363 = private constant [23 x i8] c"../fs/orangefs/super.c\00", align 1
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 103, i32 2 }
@llvm.compiler.used = appending global [122 x ptr] [ptr @orangefs_alloc_inode._entry, ptr @orangefs_alloc_inode._entry_ptr, ptr @orangefs_destroy_inode._entry, ptr @orangefs_destroy_inode._entry_ptr, ptr @orangefs_encode_fh._entry, ptr @orangefs_encode_fh._entry.77, ptr @orangefs_encode_fh._entry.80, ptr @orangefs_encode_fh._entry_ptr, ptr @orangefs_encode_fh._entry_ptr.79, ptr @orangefs_encode_fh._entry_ptr.82, ptr @orangefs_fh_to_dentry._entry, ptr @orangefs_fh_to_dentry._entry_ptr, ptr @orangefs_fill_sb._entry, ptr @orangefs_fill_sb._entry.47, ptr @orangefs_fill_sb._entry_ptr, ptr @orangefs_fill_sb._entry_ptr.49, ptr @orangefs_inode_cache_initialize._entry, ptr @orangefs_inode_cache_initialize._entry_ptr, ptr @orangefs_kill_sb._entry, ptr @orangefs_kill_sb._entry_ptr, ptr @orangefs_mount._entry, ptr @orangefs_mount._entry.13, ptr @orangefs_mount._entry.16, ptr @orangefs_mount._entry.19, ptr @orangefs_mount._entry.22, ptr @orangefs_mount._entry.25, ptr @orangefs_mount._entry.28, ptr @orangefs_mount._entry.31, ptr @orangefs_mount._entry.34, ptr @orangefs_mount._entry_ptr, ptr @orangefs_mount._entry_ptr.15, ptr @orangefs_mount._entry_ptr.18, ptr @orangefs_mount._entry_ptr.21, ptr @orangefs_mount._entry_ptr.24, ptr @orangefs_mount._entry_ptr.27, ptr @orangefs_mount._entry_ptr.30, ptr @orangefs_mount._entry_ptr.33, ptr @orangefs_mount._entry_ptr.36, ptr @orangefs_remount._entry, ptr @orangefs_remount._entry.4, ptr @orangefs_remount._entry.7, ptr @orangefs_remount._entry_ptr, ptr @orangefs_remount._entry_ptr.6, ptr @orangefs_remount._entry_ptr.9, ptr @orangefs_remount_fs._entry, ptr @orangefs_remount_fs._entry_ptr, ptr @orangefs_statfs._entry, ptr @orangefs_statfs._entry.64, ptr @orangefs_statfs._entry.67, ptr @orangefs_statfs._entry_ptr, ptr @orangefs_statfs._entry_ptr.66, ptr @orangefs_statfs._entry_ptr.69, ptr @orangefs_unmount._entry, ptr @orangefs_unmount._entry_ptr, ptr @orangefs_write_inode._entry, ptr @orangefs_write_inode._entry_ptr, ptr @parse_mount_options._entry, ptr @parse_mount_options._entry_ptr, ptr @orangefs_superblocks, ptr @.str, ptr @orangefs_superblocks_lock, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @.str.8, ptr @.str.10, ptr @orangefs_features, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.17, ptr @.str.20, ptr @.str.23, ptr @.str.26, ptr @.str.29, ptr @.str.32, ptr @.str.35, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @orangefs_inode_cache, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @orangefs_s_ops, ptr @.str.45, ptr @.str.46, ptr @.str.48, ptr @orangefs_export_ops, ptr @.str.50, ptr @tokens, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.65, ptr @.str.68, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.78, ptr @.str.81, ptr @.str.83, ptr @.str.84, ptr @orangefs_inode_cache_ctor.__key, ptr @.str.85], section "llvm.metadata"
@0 = internal global [93 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_superblocks to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_superblocks_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_remount._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_remount._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_remount._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_features to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_mount._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_mount._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_mount._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_mount._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_mount._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_mount._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_mount._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_mount._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_mount._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 89, i32 128, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_kill_sb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_inode_cache to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_inode_cache_initialize._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_unmount._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_s_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_fill_sb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_fill_sb._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_export_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tokens to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_mount_options._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_alloc_inode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_destroy_inode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_write_inode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_statfs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_statfs._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_statfs._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_remount_fs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_encode_fh._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_encode_fh._entry.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_encode_fh._entry.80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_fh_to_dentry._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_inode_cache_ctor.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @orangefs_remount(ptr nocapture noundef %orangefs_sb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @orangefs_gossip_debug_mask to i32))
  %0 = load i64, ptr @orangefs_gossip_debug_mask, align 8
  %and = and i64 %0, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #10
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %call4 = tail call ptr @op_alloc(i32 noundef -16777202) #7
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %do.end3.cleanup_crit_edge, label %if.end7

do.end3.cleanup_crit_edge:                        ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7:                                          ; preds = %do.end3
  %req = getelementptr inbounds %struct.orangefs_kernel_op_s, ptr %call4, i32 0, i32 3, i32 7
  %devname = getelementptr inbounds %struct.orangefs_sb_info_s, ptr %orangefs_sb, i32 0, i32 4
  %call9 = tail call ptr @strncpy(ptr noundef %req, ptr noundef %devname, i32 noundef 256)
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @orangefs_gossip_debug_mask to i32))
  %1 = load i64, ptr @orangefs_gossip_debug_mask, align 8
  %and11 = and i64 %1, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and11)
  %tobool12.not = icmp eq i64 %and11, 0
  br i1 %tobool12.not, label %if.end7.do.end25_crit_edge, label %do.end16

if.end7.do.end25_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end25

do.end16:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %req) #10
  br label %do.end25

do.end25:                                         ; preds = %do.end16, %if.end7.do.end25_crit_edge
  %call26 = tail call i32 @service_operation(ptr noundef nonnull %call4, ptr noundef nonnull @.str.2, i32 noundef 10) #7
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @orangefs_gossip_debug_mask to i32))
  %2 = load i64, ptr @orangefs_gossip_debug_mask, align 8
  %and28 = and i64 %2, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and28)
  %tobool29.not = icmp eq i64 %and28, 0
  br i1 %tobool29.not, label %do.end25.do.end38_crit_edge, label %do.end33

do.end25.do.end38_crit_edge:                      ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end38

do.end33:                                         ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #9
  %call35 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, i32 noundef %call26) #10
  br label %do.end38

do.end38:                                         ; preds = %do.end33, %do.end25.do.end38_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %cmp = icmp eq i32 %call26, 0
  br i1 %cmp, label %if.then39, label %do.end38.if.end41_crit_edge

do.end38.if.end41_crit_edge:                      ; preds = %do.end38
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end41

if.then39:                                        ; preds = %do.end38
  call void @__sanitizer_cov_trace_pc() #9
  %id = getelementptr inbounds %struct.orangefs_kernel_op_s, ptr %call4, i32 0, i32 4, i32 4, i32 0, i32 1
  %3 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %id, align 4
  %id40 = getelementptr inbounds %struct.orangefs_sb_info_s, ptr %orangefs_sb, i32 0, i32 2
  %5 = ptrtoint ptr %id40 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %id40, align 4
  %mount_pending = getelementptr inbounds %struct.orangefs_sb_info_s, ptr %orangefs_sb, i32 0, i32 6
  %6 = ptrtoint ptr %mount_pending to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %mount_pending, align 8
  br label %if.end41

if.end41:                                         ; preds = %if.then39, %do.end38.if.end41_crit_edge
  tail call void @op_release(ptr noundef nonnull %call4) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @orangefs_userspace_version to i32))
  %7 = load i32, ptr @orangefs_userspace_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 20905, i32 %7)
  %cmp42 = icmp ugt i32 %7, 20905
  br i1 %cmp42, label %if.then43, label %if.else57

if.then43:                                        ; preds = %if.end41
  %call44 = tail call ptr @op_alloc(i32 noundef -16716283) #7
  %tobool45.not = icmp eq ptr %call44, null
  br i1 %tobool45.not, label %if.then43.cleanup_crit_edge, label %if.end47

if.then43.cleanup_crit_edge:                      ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end47:                                         ; preds = %if.then43
  %req49 = getelementptr inbounds %struct.orangefs_kernel_op_s, ptr %call44, i32 0, i32 3, i32 7
  %8 = ptrtoint ptr %req49 to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 0, ptr %req49, align 8
  %call50 = tail call i32 @service_operation(ptr noundef nonnull %call44, ptr noundef nonnull @.str.10, i32 noundef 10) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %if.then52, label %if.end47.if.end56_crit_edge

if.end47.if.end56_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end56

if.then52:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #9
  %resp54 = getelementptr inbounds %struct.orangefs_kernel_op_s, ptr %call44, i32 0, i32 4, i32 4
  %9 = ptrtoint ptr %resp54 to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %resp54, align 8
  br label %if.end56

if.end56:                                         ; preds = %if.then52, %if.end47.if.end56_crit_edge
  %storemerge = phi i64 [ %10, %if.then52 ], [ 0, %if.end47.if.end56_crit_edge ]
  store i64 %storemerge, ptr @orangefs_features, align 8
  tail call void @op_release(ptr noundef nonnull %call44) #7
  br label %cleanup

if.else57:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #9
  store i64 0, ptr @orangefs_features, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.else57, %if.end56, %if.then43.cleanup_crit_edge, %do.end3.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %do.end3.cleanup_crit_edge ], [ -12, %if.then43.cleanup_crit_edge ], [ %call50, %if.end56 ], [ %call26, %if.else57 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @op_alloc(i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @service_operation(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @op_release(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @fsid_key_table_initialize() local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @fsid_key_table_finalize() local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @orangefs_mount(ptr noundef %fst, i32 noundef %flags, ptr noundef %devname, ptr noundef %data) local_unnamed_addr #0 align 64 {
entry:
  %root_object.i = alloca %struct.orangefs_object_kref, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @orangefs_gossip_debug_mask to i32))
  %0 = load i64, ptr @orangefs_gossip_debug_mask, align 8
  %and = and i64 %0, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %entry.do.end5_crit_edge, label %do.end

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %devname) #10
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  %tobool6.not = icmp eq ptr %devname, null
  br i1 %tobool6.not, label %do.end10, label %if.end14

do.end10:                                         ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #9
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14) #10
  br label %cleanup

if.end14:                                         ; preds = %do.end5
  %call15 = tail call ptr @op_alloc(i32 noundef -16777202) #7
  %tobool16.not = icmp eq ptr %call15, null
  br i1 %tobool16.not, label %if.end14.cleanup_crit_edge, label %if.end19

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end19:                                         ; preds = %if.end14
  %req = getelementptr inbounds %struct.orangefs_kernel_op_s, ptr %call15, i32 0, i32 3, i32 7
  %call20 = tail call ptr @strncpy(ptr noundef %req, ptr noundef nonnull %devname, i32 noundef 255)
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @orangefs_gossip_debug_mask to i32))
  %1 = load i64, ptr @orangefs_gossip_debug_mask, align 8
  %and22 = and i64 %1, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and22)
  %tobool23.not = icmp eq i64 %and22, 0
  br i1 %tobool23.not, label %if.end19.do.end36_crit_edge, label %do.end27

if.end19.do.end36_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end36

do.end27:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  %call33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %req) #10
  br label %do.end36

do.end36:                                         ; preds = %do.end27, %if.end19.do.end36_crit_edge
  %call37 = tail call i32 @service_operation(ptr noundef nonnull %call15, ptr noundef nonnull @.str.12, i32 noundef 0) #7
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @orangefs_gossip_debug_mask to i32))
  %2 = load i64, ptr @orangefs_gossip_debug_mask, align 8
  %and39 = and i64 %2, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and39)
  %tobool40.not = icmp eq i64 %and39, 0
  br i1 %tobool40.not, label %do.end36.do.end49_crit_edge, label %do.end44

do.end36.do.end49_crit_edge:                      ; preds = %do.end36
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end49

do.end44:                                         ; preds = %do.end36
  call void @__sanitizer_cov_trace_pc() #9
  %call46 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, i32 noundef %call37) #10
  br label %do.end49

do.end49:                                         ; preds = %do.end44, %do.end36.do.end49_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool50.not = icmp eq i32 %call37, 0
  br i1 %tobool50.not, label %if.end52, label %do.end49.do.end125_crit_edge

do.end49.do.end125_crit_edge:                     ; preds = %do.end49
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end125

if.end52:                                         ; preds = %do.end49
  %resp = getelementptr inbounds %struct.orangefs_kernel_op_s, ptr %call15, i32 0, i32 4, i32 4
  %3 = ptrtoint ptr %resp to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %resp, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %do.end125.thread205, label %if.end59

do.end125.thread205:                              ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #9
  %call58 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23) #10
  %call127208 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, i32 noundef -22) #10
  br label %do.end132

if.end59:                                         ; preds = %if.end52
  %call60 = tail call ptr @sget(ptr noundef %fst, ptr noundef null, ptr noundef nonnull @set_anon_super, i32 noundef %flags, ptr noundef null) #7
  %cmp.i = icmp ugt ptr %call60, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then62, label %if.end70

if.then62:                                        ; preds = %if.end59
  %id = getelementptr inbounds %struct.orangefs_kernel_op_s, ptr %call15, i32 0, i32 4, i32 4, i32 0, i32 1
  %5 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %id, align 4
  %7 = ptrtoint ptr %resp to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %resp, align 8
  %call.i = tail call ptr @op_alloc(i32 noundef -16777201) #7
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.then62.do.end125.thread_crit_edge, label %if.end.i

if.then62.do.end125.thread_crit_edge:             ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end125.thread

if.end.i:                                         ; preds = %if.then62
  %req.i = getelementptr inbounds %struct.orangefs_kernel_op_s, ptr %call.i, i32 0, i32 3, i32 7
  %9 = ptrtoint ptr %req.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %6, ptr %req.i, align 8
  %fs_id4.i = getelementptr inbounds %struct.orangefs_kernel_op_s, ptr %call.i, i32 0, i32 3, i32 7, i32 0, i32 1
  %10 = ptrtoint ptr %fs_id4.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %8, ptr %fs_id4.i, align 4
  %orangefs_config_server.i = getelementptr inbounds %struct.orangefs_kernel_op_s, ptr %call.i, i32 0, i32 3, i32 7, i32 0, i32 2
  %call7.i = tail call ptr @strncpy(ptr noundef %orangefs_config_server.i, ptr noundef nonnull %devname, i32 noundef 255) #7
  %call8.i = tail call i32 @service_operation(ptr noundef nonnull %call.i, ptr noundef nonnull @.str.42, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool9.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool9.not.i, label %if.end.i.if.end12.i_crit_edge, label %do.end.i

if.end.i.if.end12.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %call11.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, i32 noundef %call8.i) #10
  br label %if.end12.i

if.end12.i:                                       ; preds = %do.end.i, %if.end.i.if.end12.i_crit_edge
  tail call void @op_release(ptr noundef nonnull %call.i) #7
  br label %do.end125.thread

if.end70:                                         ; preds = %if.end59
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %11 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %11, i32 noundef 3520, i32 noundef 304) #11
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %call60, i32 0, i32 33
  %12 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call7.i.i, ptr %s_fs_info, align 16
  %tobool73.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool73.not, label %if.end70.free_sb_and_op_crit_edge, label %if.end76

if.end70.free_sb_and_op_crit_edge:                ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #9
  br label %free_sb_and_op

if.end76:                                         ; preds = %if.end70
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %root_object.i) #7
  %13 = getelementptr inbounds %struct.orangefs_object_kref, ptr %root_object.i, i32 0, i32 1
  %14 = getelementptr inbounds i8, ptr %root_object.i, i32 16
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 -1, ptr %14, align 8
  %sb1.i = getelementptr inbounds %struct.orangefs_sb_info_s, ptr %call7.i.i, i32 0, i32 5
  %16 = ptrtoint ptr %sb1.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call60, ptr %sb1.i, align 4
  %17 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %s_fs_info, align 16
  %root_khandle3.i = getelementptr inbounds %struct.orangefs_kernel_op_s, ptr %call15, i32 0, i32 4, i32 4, i32 0, i32 2
  %19 = call ptr @memcpy(ptr %18, ptr %root_khandle3.i, i32 16)
  %20 = ptrtoint ptr %resp to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %resp, align 8
  %22 = load ptr, ptr %s_fs_info, align 16
  %fs_id5.i = getelementptr inbounds %struct.orangefs_sb_info_s, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %fs_id5.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %21, ptr %fs_id5.i, align 8
  %id.i = getelementptr inbounds %struct.orangefs_kernel_op_s, ptr %call15, i32 0, i32 4, i32 4, i32 0, i32 1
  %24 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %id.i, align 4
  %26 = load ptr, ptr %s_fs_info, align 16
  %id7.i = getelementptr inbounds %struct.orangefs_sb_info_s, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %id7.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %25, ptr %id7.i, align 4
  %tobool.not.i180 = icmp eq ptr %data, null
  br i1 %tobool.not.i180, label %if.end76.if.end11.i_crit_edge, label %if.then.i

if.end76.if.end11.i_crit_edge:                    ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11.i

if.then.i:                                        ; preds = %if.end76
  %and79 = lshr i32 %flags, 15
  %and79.lobit = and i32 %and79, 1
  %call8.i181 = tail call fastcc i32 @parse_mount_options(ptr noundef %call60, ptr noundef nonnull %data, i32 noundef %and79.lobit) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i181)
  %tobool9.not.i182 = icmp eq i32 %call8.i181, 0
  br i1 %tobool9.not.i182, label %if.then.i.if.end11.i_crit_edge, label %if.then.i.orangefs_fill_sb.exit.thread_crit_edge

if.then.i.orangefs_fill_sb.exit.thread_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %orangefs_fill_sb.exit.thread

if.then.i.if.end11.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.then.i.if.end11.i_crit_edge, %if.end76.if.end11.i_crit_edge
  %s_xattr.i = getelementptr inbounds %struct.super_block, ptr %call60, i32 0, i32 18
  %28 = ptrtoint ptr %s_xattr.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @orangefs_xattr_handlers, ptr %s_xattr.i, align 16
  %s_magic.i = getelementptr inbounds %struct.super_block, ptr %call60, i32 0, i32 12
  %29 = ptrtoint ptr %s_magic.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 537068840, ptr %s_magic.i, align 4
  %s_op.i = getelementptr inbounds %struct.super_block, ptr %call60, i32 0, i32 6
  %30 = ptrtoint ptr %s_op.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @orangefs_s_ops, ptr %s_op.i, align 4
  %s_d_op.i = getelementptr inbounds %struct.super_block, ptr %call60, i32 0, i32 45
  %31 = ptrtoint ptr %s_d_op.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @orangefs_dentry_operations, ptr %s_d_op.i, align 8
  %s_blocksize.i = getelementptr inbounds %struct.super_block, ptr %call60, i32 0, i32 3
  %32 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 4096, ptr %s_blocksize.i, align 16
  %s_blocksize_bits.i = getelementptr inbounds %struct.super_block, ptr %call60, i32 0, i32 2
  %33 = ptrtoint ptr %s_blocksize_bits.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 12, ptr %s_blocksize_bits.i, align 4
  %s_maxbytes.i = getelementptr inbounds %struct.super_block, ptr %call60, i32 0, i32 4
  %34 = ptrtoint ptr %s_maxbytes.i to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 17592186040320, ptr %s_maxbytes.i, align 8
  %call12.i = tail call i32 @super_setup_bdi(ptr noundef %call60) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %tobool13.not.i = icmp eq i32 %call12.i, 0
  br i1 %tobool13.not.i, label %if.end15.i, label %if.end11.i.orangefs_fill_sb.exit.thread_crit_edge

if.end11.i.orangefs_fill_sb.exit.thread_crit_edge: ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %orangefs_fill_sb.exit.thread

if.end15.i:                                       ; preds = %if.end11.i
  %35 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %s_fs_info, align 16
  %37 = call ptr @memcpy(ptr %root_object.i, ptr %36, i32 16)
  %fs_id19.i = getelementptr inbounds %struct.orangefs_sb_info_s, ptr %36, i32 0, i32 1
  %38 = ptrtoint ptr %fs_id19.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %fs_id19.i, align 8
  %40 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %13, align 8
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @orangefs_gossip_debug_mask to i32))
  %41 = load i64, ptr @orangefs_gossip_debug_mask, align 8
  %and.i = and i64 %41, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool21.not.i = icmp eq i64 %and.i, 0
  br i1 %tobool21.not.i, label %if.end15.i.do.end29.i_crit_edge, label %do.end.i183

if.end15.i.do.end29.i_crit_edge:                  ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end29.i

do.end.i183:                                      ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #9
  %call26.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, ptr noundef nonnull %root_object.i, i32 noundef %39) #10
  br label %do.end29.i

do.end29.i:                                       ; preds = %do.end.i183, %if.end15.i.do.end29.i_crit_edge
  %call30.i = call ptr @orangefs_iget(ptr noundef %call60, ptr noundef nonnull %root_object.i) #7
  %cmp.i.i = icmp ugt ptr %call30.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %orangefs_fill_sb.exit, label %do.body35.i

do.body35.i:                                      ; preds = %do.end29.i
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @orangefs_gossip_debug_mask to i32))
  %42 = load i64, ptr @orangefs_gossip_debug_mask, align 8
  %and36.i = and i64 %42, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and36.i)
  %tobool37.not.i = icmp eq i64 %and36.i, 0
  br i1 %tobool37.not.i, label %do.body35.i.do.end46.i_crit_edge, label %do.end41.i

do.body35.i.do.end46.i_crit_edge:                 ; preds = %do.body35.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end46.i

do.end41.i:                                       ; preds = %do.body35.i
  call void @__sanitizer_cov_trace_pc() #9
  %43 = ptrtoint ptr %call30.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %call30.i, align 8
  %conv.i = zext i16 %44 to i32
  %call43.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, ptr noundef %call30.i, i32 noundef %conv.i) #10
  br label %do.end46.i

do.end46.i:                                       ; preds = %do.end41.i, %do.body35.i.do.end46.i_crit_edge
  %call47.i = call ptr @d_make_root(ptr noundef %call30.i) #7
  %tobool48.not.i = icmp eq ptr %call47.i, null
  br i1 %tobool48.not.i, label %do.end46.i.orangefs_fill_sb.exit.thread_crit_edge, label %orangefs_fill_sb.exit.thread197

do.end46.i.orangefs_fill_sb.exit.thread_crit_edge: ; preds = %do.end46.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %orangefs_fill_sb.exit.thread

orangefs_fill_sb.exit.thread197:                  ; preds = %do.end46.i
  %s_export_op.i = getelementptr inbounds %struct.super_block, ptr %call60, i32 0, i32 9
  %45 = ptrtoint ptr %s_export_op.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr @orangefs_export_ops, ptr %s_export_op.i, align 16
  %s_root.i = getelementptr inbounds %struct.super_block, ptr %call60, i32 0, i32 13
  %46 = ptrtoint ptr %s_root.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %call47.i, ptr %s_root.i, align 64
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %root_object.i) #7
  %47 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %s_fs_info, align 16
  %devname87 = getelementptr inbounds %struct.orangefs_sb_info_s, ptr %48, i32 0, i32 4
  %call89 = call ptr @strncpy(ptr noundef %devname87, ptr noundef nonnull %devname, i32 noundef 255)
  %49 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %s_fs_info, align 16
  %mount_pending = getelementptr inbounds %struct.orangefs_sb_info_s, ptr %50, i32 0, i32 6
  %51 = ptrtoint ptr %mount_pending to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 0, ptr %mount_pending, align 8
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @orangefs_gossip_debug_mask to i32))
  %52 = load i64, ptr @orangefs_gossip_debug_mask, align 8
  %and92 = and i64 %52, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and92)
  %tobool93.not = icmp eq i64 %and92, 0
  br i1 %tobool93.not, label %orangefs_fill_sb.exit.thread197.do.end103_crit_edge, label %do.end97

orangefs_fill_sb.exit.thread197.do.end103_crit_edge: ; preds = %orangefs_fill_sb.exit.thread197
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end103

orangefs_fill_sb.exit.thread:                     ; preds = %do.end46.i.orangefs_fill_sb.exit.thread_crit_edge, %if.end11.i.orangefs_fill_sb.exit.thread_crit_edge, %if.then.i.orangefs_fill_sb.exit.thread_crit_edge
  %retval.0.i184.ph = phi i32 [ -12, %do.end46.i.orangefs_fill_sb.exit.thread_crit_edge ], [ %call12.i, %if.end11.i.orangefs_fill_sb.exit.thread_crit_edge ], [ %call8.i181, %if.then.i.orangefs_fill_sb.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %root_object.i) #7
  br label %if.then83

orangefs_fill_sb.exit:                            ; preds = %do.end29.i
  call void @__sanitizer_cov_trace_pc() #9
  %53 = ptrtoint ptr %call30.i to i32
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %root_object.i) #7
  br label %if.then83

if.then83:                                        ; preds = %orangefs_fill_sb.exit, %orangefs_fill_sb.exit.thread
  %retval.0.i184196 = phi i32 [ %retval.0.i184.ph, %orangefs_fill_sb.exit.thread ], [ %53, %orangefs_fill_sb.exit ]
  %54 = inttoptr i32 %retval.0.i184196 to ptr
  br label %free_sb_and_op

do.end97:                                         ; preds = %orangefs_fill_sb.exit.thread197
  call void @__sanitizer_cov_trace_pc() #9
  %55 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %s_fs_info, align 16
  %call100 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef %56) #10
  br label %do.end103

do.end103:                                        ; preds = %do.end97, %orangefs_fill_sb.exit.thread197.do.end103_crit_edge
  call void @_raw_spin_lock(ptr noundef nonnull @orangefs_superblocks_lock) #7
  %57 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %s_fs_info, align 16
  %list = getelementptr inbounds %struct.orangefs_sb_info_s, ptr %58, i32 0, i32 8
  %59 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @orangefs_superblocks, i32 0, i32 1), align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %59, ptr noundef nonnull @orangefs_superblocks) #7
  br i1 %call.i.i, label %if.end.i.i, label %do.end103.list_add_tail.exit_crit_edge

do.end103.list_add_tail.exit_crit_edge:           ; preds = %do.end103
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %do.end103
  call void @__sanitizer_cov_trace_pc() #9
  store ptr %list, ptr getelementptr inbounds (%struct.list_head, ptr @orangefs_superblocks, i32 0, i32 1), align 4
  %60 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr @orangefs_superblocks, ptr %list, align 4
  %prev3.i.i = getelementptr inbounds %struct.orangefs_sb_info_s, ptr %58, i32 0, i32 8, i32 1
  %61 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %59, ptr %prev3.i.i, align 4
  %62 = ptrtoint ptr %59 to i32
  call void @__asan_store4_noabort(i32 %62)
  store volatile ptr %list, ptr %59, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %do.end103.list_add_tail.exit_crit_edge
  call void @_raw_spin_unlock(ptr noundef nonnull @orangefs_superblocks_lock) #7
  call void @op_release(ptr noundef nonnull %call15) #7
  %63 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %s_fs_info, align 16
  %no_list = getelementptr inbounds %struct.orangefs_sb_info_s, ptr %64, i32 0, i32 7
  %65 = ptrtoint ptr %no_list to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 0, ptr %no_list, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @orangefs_userspace_version to i32))
  %66 = load i32, ptr @orangefs_userspace_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 20905, i32 %66)
  %cmp106 = icmp ugt i32 %66, 20905
  br i1 %cmp106, label %if.then107, label %if.else

if.then107:                                       ; preds = %list_add_tail.exit
  %call108 = call ptr @op_alloc(i32 noundef -16716283) #7
  %tobool109.not = icmp eq ptr %call108, null
  br i1 %tobool109.not, label %if.then107.cleanup_crit_edge, label %if.end112

if.then107.cleanup_crit_edge:                     ; preds = %if.then107
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end112:                                        ; preds = %if.then107
  call void @__sanitizer_cov_trace_pc() #9
  %req114 = getelementptr inbounds %struct.orangefs_kernel_op_s, ptr %call108, i32 0, i32 3, i32 7
  %67 = ptrtoint ptr %req114 to i32
  call void @__asan_store8_noabort(i32 %67)
  store i64 0, ptr %req114, align 8
  %call115 = call i32 @service_operation(ptr noundef nonnull %call108, ptr noundef nonnull @.str.10, i32 noundef 0) #7
  %resp117 = getelementptr inbounds %struct.orangefs_kernel_op_s, ptr %call108, i32 0, i32 4, i32 4
  %68 = ptrtoint ptr %resp117 to i32
  call void @__asan_load8_noabort(i32 %68)
  %69 = load i64, ptr %resp117, align 8
  store i64 %69, ptr @orangefs_features, align 8
  call void @op_release(ptr noundef nonnull %call108) #7
  br label %if.end119

if.else:                                          ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #9
  store i64 0, ptr @orangefs_features, align 8
  br label %if.end119

if.end119:                                        ; preds = %if.else, %if.end112
  %70 = ptrtoint ptr %s_root.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %s_root.i, align 64
  %tobool.not.i190 = icmp eq ptr %71, null
  br i1 %tobool.not.i190, label %if.end119.cleanup_crit_edge, label %if.then.i191

if.end119.cleanup_crit_edge:                      ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.i191:                                     ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #9
  %d_lockref.i = getelementptr inbounds %struct.dentry, ptr %71, i32 0, i32 7
  call void @lockref_get(ptr noundef %d_lockref.i) #7
  br label %cleanup

free_sb_and_op:                                   ; preds = %if.then83, %if.end70.free_sb_and_op_crit_edge
  %d.0 = phi ptr [ %54, %if.then83 ], [ inttoptr (i32 -12 to ptr), %if.end70.free_sb_and_op_crit_edge ]
  %ret.0 = phi i32 [ %retval.0.i184196, %if.then83 ], [ 0, %if.end70.free_sb_and_op_crit_edge ]
  %72 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %s_fs_info, align 16
  %no_list122 = getelementptr inbounds %struct.orangefs_sb_info_s, ptr %73, i32 0, i32 7
  %74 = ptrtoint ptr %no_list122 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 1, ptr %no_list122, align 4
  call void @deactivate_locked_super(ptr noundef %call60) #7
  br label %do.end125

do.end125.thread:                                 ; preds = %if.end12.i, %if.then62.do.end125.thread_crit_edge
  %call127202 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, i32 noundef 0) #10
  br label %if.end140

do.end125:                                        ; preds = %free_sb_and_op, %do.end49.do.end125_crit_edge
  %d.1 = phi ptr [ inttoptr (i32 -22 to ptr), %do.end49.do.end125_crit_edge ], [ %d.0, %free_sb_and_op ]
  %ret.1 = phi i32 [ %call37, %do.end49.do.end125_crit_edge ], [ %ret.0, %free_sb_and_op ]
  %call127 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, i32 noundef %ret.1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -22, i32 %ret.1)
  %cmp128 = icmp eq i32 %ret.1, -22
  br i1 %cmp128, label %do.end125.do.end132_crit_edge, label %do.end125.if.end140_crit_edge

do.end125.if.end140_crit_edge:                    ; preds = %do.end125
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end140

do.end125.do.end132_crit_edge:                    ; preds = %do.end125
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end132

do.end132:                                        ; preds = %do.end125.do.end132_crit_edge, %do.end125.thread205
  %d.1210 = phi ptr [ inttoptr (i32 -22 to ptr), %do.end125.thread205 ], [ %d.1, %do.end125.do.end132_crit_edge ]
  %call134 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32) #10
  %call139 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35) #10
  br label %if.end140

if.end140:                                        ; preds = %do.end132, %do.end125.if.end140_crit_edge, %do.end125.thread
  %d.1204 = phi ptr [ %call60, %do.end125.thread ], [ %d.1210, %do.end132 ], [ %d.1, %do.end125.if.end140_crit_edge ]
  call void @op_release(ptr noundef nonnull %call15) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end140, %if.then.i191, %if.end119.cleanup_crit_edge, %if.then107.cleanup_crit_edge, %if.end14.cleanup_crit_edge, %do.end10
  %retval.0 = phi ptr [ %d.1204, %if.end140 ], [ inttoptr (i32 -22 to ptr), %do.end10 ], [ inttoptr (i32 -12 to ptr), %if.end14.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.then107.cleanup_crit_edge ], [ null, %if.end119.cleanup_crit_edge ], [ %71, %if.then.i191 ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sget(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @set_anon_super(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @deactivate_locked_super(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @orangefs_kill_sb(ptr noundef %sb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @orangefs_gossip_debug_mask to i32))
  %0 = load i64, ptr @orangefs_gossip_debug_mask, align 8
  %and = and i64 %0, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37) #10
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  tail call void @kill_anon_super(ptr noundef %sb) #7
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %1 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %s_fs_info.i, align 16
  %tobool5.not = icmp eq ptr %2, null
  br i1 %tobool5.not, label %if.then6, label %if.end7

if.then6:                                         ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @mutex_lock_nested(ptr noundef nonnull @orangefs_request_mutex, i32 noundef 0) #7
  tail call void @mutex_unlock(ptr noundef nonnull @orangefs_request_mutex) #7
  br label %cleanup

if.end7:                                          ; preds = %do.end3
  %id = getelementptr inbounds %struct.orangefs_sb_info_s, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %id, align 4
  %fs_id = getelementptr inbounds %struct.orangefs_sb_info_s, ptr %2, i32 0, i32 1
  %5 = ptrtoint ptr %fs_id to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %fs_id, align 8
  %call.i = tail call ptr @op_alloc(i32 noundef -16777201) #7
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end7.if.end15_crit_edge, label %if.end.i

if.end7.if.end15_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15

if.end.i:                                         ; preds = %if.end7
  %devname = getelementptr inbounds %struct.orangefs_sb_info_s, ptr %2, i32 0, i32 4
  %req.i = getelementptr inbounds %struct.orangefs_kernel_op_s, ptr %call.i, i32 0, i32 3, i32 7
  %7 = ptrtoint ptr %req.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %4, ptr %req.i, align 8
  %fs_id4.i = getelementptr inbounds %struct.orangefs_kernel_op_s, ptr %call.i, i32 0, i32 3, i32 7, i32 0, i32 1
  %8 = ptrtoint ptr %fs_id4.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %6, ptr %fs_id4.i, align 4
  %orangefs_config_server.i = getelementptr inbounds %struct.orangefs_kernel_op_s, ptr %call.i, i32 0, i32 3, i32 7, i32 0, i32 2
  %call7.i = tail call ptr @strncpy(ptr noundef %orangefs_config_server.i, ptr noundef %devname, i32 noundef 255) #7
  %call8.i = tail call i32 @service_operation(ptr noundef nonnull %call.i, ptr noundef nonnull @.str.42, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool9.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool9.not.i, label %if.then13, label %orangefs_unmount.exit

orangefs_unmount.exit:                            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %call11.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, i32 noundef %call8.i) #10
  tail call void @op_release(ptr noundef nonnull %call.i) #7
  br label %if.end15

if.then13:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @op_release(ptr noundef nonnull %call.i) #7
  %9 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %s_fs_info.i, align 16
  %mount_pending = getelementptr inbounds %struct.orangefs_sb_info_s, ptr %10, i32 0, i32 6
  %11 = ptrtoint ptr %mount_pending to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %mount_pending, align 8
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %orangefs_unmount.exit, %if.end7.if.end15_crit_edge
  %12 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %s_fs_info.i, align 16
  %no_list = getelementptr inbounds %struct.orangefs_sb_info_s, ptr %13, i32 0, i32 7
  %14 = ptrtoint ptr %no_list to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %no_list, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool17.not = icmp eq i32 %15, 0
  br i1 %tobool17.not, label %if.then18, label %if.end15.if.end22_crit_edge

if.end15.if.end22_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22

if.then18:                                        ; preds = %if.end15
  tail call void @_raw_spin_lock(ptr noundef nonnull @orangefs_superblocks_lock) #7
  %16 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %s_fs_info.i, align 16
  %list = getelementptr inbounds %struct.orangefs_sb_info_s, ptr %17, i32 0, i32 8
  %call.i39 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #7
  br i1 %call.i39, label %if.end.i40, label %if.then18.__list_del_entry.exit_crit_edge

if.then18.__list_del_entry.exit_crit_edge:        ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #9
  br label %__list_del_entry.exit

if.end.i40:                                       ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i = getelementptr inbounds %struct.orangefs_sb_info_s, ptr %17, i32 0, i32 8, i32 1
  %18 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %prev.i, align 4
  %20 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %list, align 4
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %19, ptr %prev1.i.i, align 4
  %23 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %21, ptr %19, align 4
  br label %__list_del_entry.exit

__list_del_entry.exit:                            ; preds = %if.end.i40, %if.then18.__list_del_entry.exit_crit_edge
  %24 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %s_fs_info.i, align 16
  %prev = getelementptr inbounds %struct.orangefs_sb_info_s, ptr %25, i32 0, i32 8, i32 1
  %26 = ptrtoint ptr %prev to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %prev, align 4
  tail call void @_raw_spin_unlock(ptr noundef nonnull @orangefs_superblocks_lock) #7
  br label %if.end22

if.end22:                                         ; preds = %__list_del_entry.exit, %if.end15.if.end22_crit_edge
  tail call void @mutex_lock_nested(ptr noundef nonnull @orangefs_request_mutex, i32 noundef 0) #7
  tail call void @mutex_unlock(ptr noundef nonnull @orangefs_request_mutex) #7
  %27 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %s_fs_info.i, align 16
  tail call void @kfree(ptr noundef %28) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %if.then6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kill_anon_super(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @orangefs_inode_cache_initialize() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @kmem_cache_create_usercopy(ptr noundef nonnull @.str.39, i32 noundef 1256, i32 noundef 0, i32 noundef 0, i32 noundef 24, i32 noundef 256, ptr noundef nonnull @orangefs_inode_cache_ctor) #7
  store ptr %call, ptr @orangefs_inode_cache, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40) #10
  br label %return

return:                                           ; preds = %do.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ -12, %do.end ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create_usercopy(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @orangefs_inode_cache_ctor(ptr noundef %req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %vfs_inode = getelementptr inbounds %struct.orangefs_inode_s, ptr %req, i32 0, i32 3
  tail call void @inode_init_once(ptr noundef %vfs_inode) #7
  %xattr_sem = getelementptr inbounds %struct.orangefs_inode_s, ptr %req, i32 0, i32 2
  tail call void @__init_rwsem(ptr noundef %xattr_sem, ptr noundef nonnull @.str.85, ptr noundef nonnull @orangefs_inode_cache_ctor.__key) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @orangefs_inode_cache_finalize() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @orangefs_inode_cache, align 4
  tail call void @kmem_cache_destroy(ptr noundef %0) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @parse_mount_options(ptr nocapture noundef %sb, ptr noundef %options, i32 noundef %silent) unnamed_addr #0 align 64 {
entry:
  %options.addr = alloca ptr, align 4
  %args = alloca [3 x %struct.substring_t], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %options.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %options, ptr %options.addr, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %1 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %s_fs_info.i, align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %args) #7
  %s_flags = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 10
  %3 = call ptr @memset(ptr %args, i32 255, i32 24)
  %4 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %s_flags, align 4
  %and = and i32 %5, -65537
  store i32 %and, ptr %s_flags, align 4
  %flags = getelementptr inbounds %struct.orangefs_sb_info_s, ptr %2, i32 0, i32 3
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags, align 8
  %and3 = and i32 %7, -4
  store i32 %and3, ptr %flags, align 8
  %call429 = call ptr @strsep(ptr noundef nonnull %options.addr, ptr noundef nonnull @.str.50) #7
  %cmp.not30 = icmp eq ptr %call429, null
  br i1 %cmp.not30, label %entry.cleanup17_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.cleanup17_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup17

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %entry.while.body_crit_edge
  %call431 = phi ptr [ %call4, %cleanup.while.body_crit_edge ], [ %call429, %entry.while.body_crit_edge ]
  %8 = ptrtoint ptr %call431 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %call431, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  br i1 %tobool.not, label %while.body.cleanup_crit_edge, label %if.end

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %while.body
  %call5 = call i32 @match_token(ptr noundef nonnull %call431, ptr noundef nonnull @tokens, ptr noundef nonnull %args) #7
  %10 = zext i32 %call5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call5, label %fail [
    i32 1, label %sw.bb
    i32 0, label %sw.bb7
    i32 2, label %sw.bb10
  ]

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %s_flags, align 4
  %or = or i32 %12, 65536
  store i32 %or, ptr %s_flags, align 4
  br label %cleanup

sw.bb7:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %flags, align 8
  %or9 = or i32 %14, 1
  store i32 %or9, ptr %flags, align 8
  br label %cleanup

sw.bb10:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %flags, align 8
  %or12 = or i32 %16, 2
  store i32 %or12, ptr %flags, align 8
  br label %cleanup

cleanup:                                          ; preds = %sw.bb10, %sw.bb7, %sw.bb, %while.body.cleanup_crit_edge
  %call4 = call ptr @strsep(ptr noundef nonnull %options.addr, ptr noundef nonnull @.str.50) #7
  %cmp.not = icmp eq ptr %call4, null
  br i1 %cmp.not, label %cleanup.cleanup17_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

cleanup.cleanup17_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup17

fail:                                             ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %silent)
  %tobool13.not = icmp eq i32 %silent, 0
  br i1 %tobool13.not, label %do.end, label %fail.cleanup17_crit_edge

fail.cleanup17_crit_edge:                         ; preds = %fail
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup17

do.end:                                           ; preds = %fail
  call void @__sanitizer_cov_trace_pc() #9
  %call15 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, ptr noundef nonnull %call431) #10
  br label %cleanup17

cleanup17:                                        ; preds = %do.end, %fail.cleanup17_crit_edge, %cleanup.cleanup17_crit_edge, %entry.cleanup17_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %fail.cleanup17_crit_edge ], [ 0, %entry.cleanup17_crit_edge ], [ 0, %cleanup.cleanup17_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %args) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @super_setup_bdi(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @orangefs_iget(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_make_root(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strsep(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @match_token(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @orangefs_alloc_inode(ptr nocapture noundef readnone %sb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @orangefs_inode_cache, align 4
  %call = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %0, i32 noundef 3264) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %last_failed_block_index_read = getelementptr inbounds %struct.orangefs_inode_s, ptr %call, i32 0, i32 4
  %1 = ptrtoint ptr %last_failed_block_index_read to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 0, ptr %last_failed_block_index_read, align 8
  %link_target = getelementptr inbounds %struct.orangefs_inode_s, ptr %call, i32 0, i32 1
  %2 = call ptr @memset(ptr %link_target, i32 0, i32 256)
  %3 = call ptr @memset(ptr %call, i32 0, i32 20)
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @orangefs_gossip_debug_mask to i32))
  %4 = load i64, ptr @orangefs_gossip_debug_mask, align 8
  %and = and i64 %4, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool2.not = icmp eq i64 %and, 0
  br i1 %tobool2.not, label %if.end.do.end8_crit_edge, label %do.end

if.end.do.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end8

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %vfs_inode = getelementptr inbounds %struct.orangefs_inode_s, ptr %call, i32 0, i32 3
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, ptr noundef %vfs_inode) #10
  br label %do.end8

do.end8:                                          ; preds = %do.end, %if.end.do.end8_crit_edge
  %vfs_inode9 = getelementptr inbounds %struct.orangefs_inode_s, ptr %call, i32 0, i32 3
  br label %cleanup

cleanup:                                          ; preds = %do.end8, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %vfs_inode9, %do.end8 ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @orangefs_destroy_inode(ptr noundef %inode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @orangefs_gossip_debug_mask to i32))
  %0 = load i64, ptr @orangefs_gossip_debug_mask, align 8
  %and = and i64 %0, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %entry.do.end5_crit_edge, label %do.end

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i = getelementptr i8, ptr %inode, i32 -376
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.59, ptr noundef %add.ptr.i, ptr noundef %add.ptr.i) #10
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @orangefs_free_inode(ptr noundef %inode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %inode, i32 -376
  br label %for.body

for.body:                                         ; preds = %for.inc22.for.body_crit_edge, %entry
  %i.036 = phi i32 [ 0, %entry ], [ %inc, %for.inc22.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.orangefs_inode_s, ptr %add.ptr.i, i32 0, i32 11, i32 %i.036
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool5.not34 = icmp eq ptr %1, null
  br i1 %tobool5.not34, label %for.body.for.inc22_crit_edge, label %land.rhs6.preheader

for.body.for.inc22_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc22

land.rhs6.preheader:                              ; preds = %for.body
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %pprev2.i.i37 = getelementptr inbounds %struct.hlist_node, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %pprev2.i.i37 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pprev2.i.i37, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %3, ptr %5, align 4
  %tobool.not.i.i38 = icmp eq ptr %3, null
  br i1 %tobool.not.i.i38, label %land.rhs6.preheader.for.inc22.loopexit_crit_edge, label %land.rhs6.preheader.hlist_del.exit_crit_edge

land.rhs6.preheader.hlist_del.exit_crit_edge:     ; preds = %land.rhs6.preheader
  br label %hlist_del.exit

land.rhs6.preheader.for.inc22.loopexit_crit_edge: ; preds = %land.rhs6.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc22.loopexit

hlist_del.exit:                                   ; preds = %hlist_del.exit.hlist_del.exit_crit_edge, %land.rhs6.preheader.hlist_del.exit_crit_edge
  %7 = phi ptr [ %15, %hlist_del.exit.hlist_del.exit_crit_edge ], [ %5, %land.rhs6.preheader.hlist_del.exit_crit_edge ]
  %pprev2.i.i40 = phi ptr [ %pprev2.i.i, %hlist_del.exit.hlist_del.exit_crit_edge ], [ %pprev2.i.i37, %land.rhs6.preheader.hlist_del.exit_crit_edge ]
  %8 = phi ptr [ %13, %hlist_del.exit.hlist_del.exit_crit_edge ], [ %3, %land.rhs6.preheader.hlist_del.exit_crit_edge ]
  %cx.13539 = phi ptr [ %8, %hlist_del.exit.hlist_del.exit_crit_edge ], [ %1, %land.rhs6.preheader.hlist_del.exit_crit_edge ]
  %pprev14.i.i = getelementptr inbounds %struct.hlist_node, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %pprev14.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %pprev14.i.i, align 4
  %10 = ptrtoint ptr %cx.13539 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 256 to ptr), ptr %cx.13539, align 4
  %11 = ptrtoint ptr %pprev2.i.i40 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i40, align 4
  tail call void @kfree(ptr noundef nonnull %cx.13539) #7
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %8, align 4
  %pprev2.i.i = getelementptr inbounds %struct.hlist_node, ptr %8, i32 0, i32 1
  %14 = ptrtoint ptr %pprev2.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pprev2.i.i, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %13, ptr %15, align 4
  %tobool.not.i.i = icmp eq ptr %13, null
  br i1 %tobool.not.i.i, label %hlist_del.exit.for.inc22.loopexit_crit_edge, label %hlist_del.exit.hlist_del.exit_crit_edge

hlist_del.exit.hlist_del.exit_crit_edge:          ; preds = %hlist_del.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %hlist_del.exit

hlist_del.exit.for.inc22.loopexit_crit_edge:      ; preds = %hlist_del.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc22.loopexit

for.inc22.loopexit:                               ; preds = %hlist_del.exit.for.inc22.loopexit_crit_edge, %land.rhs6.preheader.for.inc22.loopexit_crit_edge
  %cx.135.lcssa = phi ptr [ %1, %land.rhs6.preheader.for.inc22.loopexit_crit_edge ], [ %8, %hlist_del.exit.for.inc22.loopexit_crit_edge ]
  %pprev2.i.i.lcssa = phi ptr [ %pprev2.i.i37, %land.rhs6.preheader.for.inc22.loopexit_crit_edge ], [ %pprev2.i.i, %hlist_del.exit.for.inc22.loopexit_crit_edge ]
  %17 = ptrtoint ptr %cx.135.lcssa to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr inttoptr (i32 256 to ptr), ptr %cx.135.lcssa, align 4
  %18 = ptrtoint ptr %pprev2.i.i.lcssa to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i.lcssa, align 4
  tail call void @kfree(ptr noundef nonnull %cx.135.lcssa) #7
  br label %for.inc22

for.inc22:                                        ; preds = %for.inc22.loopexit, %for.body.for.inc22_crit_edge
  %inc = add nuw nsw i32 %i.036, 1
  %exitcond.not = icmp eq i32 %inc, 16
  br i1 %exitcond.not, label %for.end23, label %for.inc22.for.body_crit_edge

for.inc22.for.body_crit_edge:                     ; preds = %for.inc22
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end23:                                        ; preds = %for.inc22
  call void @__sanitizer_cov_trace_pc() #9
  %19 = load ptr, ptr @orangefs_inode_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %19, ptr noundef %add.ptr.i) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @orangefs_write_inode(ptr noundef %inode, ptr nocapture noundef readnone %wbc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @orangefs_gossip_debug_mask to i32))
  %0 = load i64, ptr @orangefs_gossip_debug_mask, align 8
  %and = and i64 %0, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %entry.do.end2_crit_edge, label %do.end

entry.do.end2_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end2

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60) #10
  br label %do.end2

do.end2:                                          ; preds = %do.end, %entry.do.end2_crit_edge
  %call3 = tail call i32 @orangefs_inode_setattr(ptr noundef %inode) #7
  ret i32 %call3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_delete_inode(ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @orangefs_statfs(ptr nocapture noundef readonly %dentry, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %d_sb = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 9
  %0 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_sb, align 4
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @orangefs_gossip_debug_mask to i32))
  %2 = load i64, ptr @orangefs_gossip_debug_mask, align 8
  %and = and i64 %2, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %entry.do.end4_crit_edge, label %do.end

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %3 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %s_fs_info.i, align 16
  %fs_id = getelementptr inbounds %struct.orangefs_sb_info_s, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %fs_id to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %fs_id, align 8
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.63, ptr noundef %1, i32 noundef %6) #10
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %call5 = tail call ptr @op_alloc(i32 noundef -16777205) #7
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %do.end4.cleanup_crit_edge, label %if.end8

do.end4.cleanup_crit_edge:                        ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end8:                                          ; preds = %do.end4
  %s_fs_info.i113 = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %7 = ptrtoint ptr %s_fs_info.i113 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %s_fs_info.i113, align 16
  %fs_id10 = getelementptr inbounds %struct.orangefs_sb_info_s, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %fs_id10 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %fs_id10, align 8
  %req = getelementptr inbounds %struct.orangefs_kernel_op_s, ptr %call5, i32 0, i32 3, i32 7
  %11 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %req, align 8
  %12 = load ptr, ptr %s_fs_info.i113, align 16
  %flags13 = getelementptr inbounds %struct.orangefs_sb_info_s, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %flags13 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %flags13, align 8
  %and14 = and i32 %14, 1
  %call18 = tail call i32 @service_operation(ptr noundef nonnull %call5, ptr noundef nonnull @.str.63, i32 noundef %and14) #7
  %status = getelementptr inbounds %struct.orangefs_kernel_op_s, ptr %call5, i32 0, i32 4, i32 1
  %15 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp = icmp slt i32 %16, 0
  br i1 %cmp, label %if.end8.out_op_release_crit_edge, label %do.body21

if.end8.out_op_release_crit_edge:                 ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_op_release

do.body21:                                        ; preds = %if.end8
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @orangefs_gossip_debug_mask to i32))
  %17 = load i64, ptr @orangefs_gossip_debug_mask, align 8
  %and22 = and i64 %17, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and22)
  %tobool23.not = icmp eq i64 %and22, 0
  br i1 %tobool23.not, label %do.body21.do.end45_crit_edge, label %do.end27

do.body21.do.end45_crit_edge:                     ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end45

do.end27:                                         ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #9
  %resp = getelementptr inbounds %struct.orangefs_kernel_op_s, ptr %call5, i32 0, i32 4, i32 4
  %blocks_avail = getelementptr inbounds %struct.orangefs_kernel_op_s, ptr %call5, i32 0, i32 4, i32 4, i32 0, i32 3
  %18 = ptrtoint ptr %blocks_avail to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %blocks_avail, align 8
  %conv = trunc i64 %19 to i32
  %blocks_total = getelementptr inbounds %struct.orangefs_kernel_op_s, ptr %call5, i32 0, i32 4, i32 4, i32 0, i32 2
  %20 = ptrtoint ptr %blocks_total to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %blocks_total, align 8
  %conv32 = trunc i64 %21 to i32
  %22 = ptrtoint ptr %resp to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %resp, align 8
  %conv35 = trunc i64 %23 to i32
  %files_total = getelementptr inbounds %struct.orangefs_kernel_op_s, ptr %call5, i32 0, i32 4, i32 4, i32 0, i32 3, i32 8
  %24 = ptrtoint ptr %files_total to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %files_total, align 8
  %conv38 = trunc i64 %25 to i32
  %files_avail = getelementptr inbounds %struct.orangefs_kernel_op_s, ptr %call5, i32 0, i32 4, i32 4, i32 0, i32 3, i32 16
  %26 = ptrtoint ptr %files_avail to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %files_avail, align 8
  %conv41 = trunc i64 %27 to i32
  %call42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.63, i32 noundef %conv, i32 noundef %conv32, i32 noundef %conv35, i32 noundef %conv38, i32 noundef %conv41) #10
  br label %do.end45

do.end45:                                         ; preds = %do.end27, %do.body21.do.end45_crit_edge
  %s_magic = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 12
  %28 = ptrtoint ptr %s_magic to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %s_magic, align 4
  %30 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %buf, align 8
  %f_fsid = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 7
  %31 = ptrtoint ptr %s_fs_info.i113 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %s_fs_info.i113, align 16
  %fs_id47 = getelementptr inbounds %struct.orangefs_sb_info_s, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %fs_id47 to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %fs_id47, align 8
  %35 = ptrtoint ptr %f_fsid to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 %34, ptr %f_fsid, align 8
  %resp49 = getelementptr inbounds %struct.orangefs_kernel_op_s, ptr %call5, i32 0, i32 4, i32 4
  %36 = ptrtoint ptr %resp49 to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %resp49, align 8
  %conv51 = trunc i64 %37 to i32
  %f_bsize = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 1
  %38 = ptrtoint ptr %f_bsize to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %conv51, ptr %f_bsize, align 4
  %f_namelen = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 8
  %39 = ptrtoint ptr %f_namelen to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 256, ptr %f_namelen, align 8
  %blocks_total54 = getelementptr inbounds %struct.orangefs_kernel_op_s, ptr %call5, i32 0, i32 4, i32 4, i32 0, i32 2
  %40 = ptrtoint ptr %blocks_total54 to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %blocks_total54, align 8
  %f_blocks = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 2
  %42 = ptrtoint ptr %f_blocks to i32
  call void @__asan_store8_noabort(i32 %42)
  store i64 %41, ptr %f_blocks, align 8
  %blocks_avail57 = getelementptr inbounds %struct.orangefs_kernel_op_s, ptr %call5, i32 0, i32 4, i32 4, i32 0, i32 3
  %43 = ptrtoint ptr %blocks_avail57 to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %blocks_avail57, align 8
  %f_bfree = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 3
  %45 = ptrtoint ptr %f_bfree to i32
  call void @__asan_store8_noabort(i32 %45)
  store i64 %44, ptr %f_bfree, align 8
  %46 = load i64, ptr %blocks_avail57, align 8
  %f_bavail = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 4
  %47 = ptrtoint ptr %f_bavail to i32
  call void @__asan_store8_noabort(i32 %47)
  store i64 %46, ptr %f_bavail, align 8
  %files_total63 = getelementptr inbounds %struct.orangefs_kernel_op_s, ptr %call5, i32 0, i32 4, i32 4, i32 0, i32 3, i32 8
  %48 = ptrtoint ptr %files_total63 to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %files_total63, align 8
  %f_files = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 5
  %50 = ptrtoint ptr %f_files to i32
  call void @__asan_store8_noabort(i32 %50)
  store i64 %49, ptr %f_files, align 8
  %files_avail66 = getelementptr inbounds %struct.orangefs_kernel_op_s, ptr %call5, i32 0, i32 4, i32 4, i32 0, i32 3, i32 16
  %51 = ptrtoint ptr %files_avail66 to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %files_avail66, align 8
  %f_ffree = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 6
  %53 = ptrtoint ptr %f_ffree to i32
  call void @__asan_store8_noabort(i32 %53)
  store i64 %52, ptr %f_ffree, align 8
  %f_frsize = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 9
  %54 = ptrtoint ptr %f_frsize to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 0, ptr %f_frsize, align 4
  br label %out_op_release

out_op_release:                                   ; preds = %do.end45, %if.end8.out_op_release_crit_edge
  tail call void @op_release(ptr noundef nonnull %call5) #7
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @orangefs_gossip_debug_mask to i32))
  %55 = load i64, ptr @orangefs_gossip_debug_mask, align 8
  %and68 = and i64 %55, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and68)
  %tobool69.not = icmp eq i64 %and68, 0
  br i1 %tobool69.not, label %out_op_release.cleanup_crit_edge, label %do.end73

out_op_release.cleanup_crit_edge:                 ; preds = %out_op_release
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end73:                                         ; preds = %out_op_release
  call void @__sanitizer_cov_trace_pc() #9
  %call75 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.63, i32 noundef %call18) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end73, %out_op_release.cleanup_crit_edge, %do.end4.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %do.end4.cleanup_crit_edge ], [ %call18, %do.end73 ], [ %call18, %out_op_release.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @orangefs_remount_fs(ptr nocapture noundef %sb, ptr nocapture noundef readnone %flags, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @orangefs_gossip_debug_mask to i32))
  %0 = load i64, ptr @orangefs_gossip_debug_mask, align 8
  %and = and i64 %0, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %entry.do.end2_crit_edge, label %do.end

entry.do.end2_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end2

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.70) #10
  br label %do.end2

do.end2:                                          ; preds = %do.end, %entry.do.end2_crit_edge
  %call3 = tail call fastcc i32 @parse_mount_options(ptr noundef %sb, ptr noundef %data, i32 noundef 1)
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @orangefs_show_options(ptr noundef %m, ptr nocapture noundef readonly %root) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %d_sb = getelementptr inbounds %struct.dentry, ptr %root, i32 0, i32 9
  %0 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %s_flags = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 10
  %4 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %s_flags, align 4
  %and = and i32 %5, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.72) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %flags = getelementptr inbounds %struct.orangefs_sb_info_s, ptr %3, i32 0, i32 3
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags, align 8
  %and2 = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.end.if.end5_crit_edge, label %if.then4

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.73) #7
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end.if.end5_crit_edge
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags, align 8
  %and7 = and i32 %9, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %if.end5.if.end10_crit_edge, label %if.then9

if.end5.if.end10_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

if.then9:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.74) #7
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %if.end5.if.end10_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @orangefs_inode_setattr(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @orangefs_encode_fh(ptr nocapture noundef readonly %inode, ptr nocapture noundef writeonly %fh, ptr nocapture noundef %max_len, ptr noundef readonly %parent) #0 align 64 {
entry:
  %refn = alloca %struct.orangefs_object_kref, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %parent, null
  %cond = select i1 %tobool.not, i32 5, i32 10
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %refn) #7
  %0 = getelementptr inbounds %struct.orangefs_object_kref, ptr %refn, i32 0, i32 1
  %1 = ptrtoint ptr %max_len to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %max_len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %cond)
  %cmp = icmp slt i32 %2, %cond
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.75) #10
  br label %out

if.end:                                           ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %inode, i32 -376
  %3 = call ptr @memcpy(ptr %refn, ptr %add.ptr.i, i32 24)
  %4 = call ptr @memmove(ptr %fh, ptr %add.ptr.i, i32 16)
  %5 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %0, align 8
  %arrayidx = getelementptr i32, ptr %fh, i32 4
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %arrayidx, align 4
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @orangefs_gossip_debug_mask to i32))
  %8 = load i64, ptr @orangefs_gossip_debug_mask, align 8
  %and = and i64 %8, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool4.not = icmp eq i64 %and, 0
  br i1 %tobool4.not, label %if.end.do.end15_crit_edge, label %do.end8

if.end.do.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end15

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call12 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.78, ptr noundef nonnull %refn, i32 noundef %6) #10
  br label %do.end15

do.end15:                                         ; preds = %do.end8, %if.end.do.end15_crit_edge
  br i1 %tobool.not, label %do.end15.out_crit_edge, label %if.then17

do.end15.out_crit_edge:                           ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.then17:                                        ; preds = %do.end15
  %add.ptr.i47 = getelementptr i8, ptr %parent, i32 -376
  %9 = call ptr @memcpy(ptr %refn, ptr %add.ptr.i47, i32 24)
  %add.ptr = getelementptr i8, ptr %fh, i32 20
  %10 = call ptr @memmove(ptr %add.ptr, ptr %add.ptr.i47, i32 16)
  %11 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %0, align 8
  %arrayidx22 = getelementptr i32, ptr %fh, i32 9
  %13 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %arrayidx22, align 4
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @orangefs_gossip_debug_mask to i32))
  %14 = load i64, ptr @orangefs_gossip_debug_mask, align 8
  %and24 = and i64 %14, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and24)
  %tobool25.not = icmp eq i64 %and24, 0
  br i1 %tobool25.not, label %if.then17.out_crit_edge, label %do.end29

if.then17.out_crit_edge:                          ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

do.end29:                                         ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #9
  %call33 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.81, ptr noundef nonnull %refn, i32 noundef %12) #10
  br label %out

out:                                              ; preds = %do.end29, %if.then17.out_crit_edge, %do.end15.out_crit_edge, %do.end
  %type.1 = phi i32 [ 255, %do.end ], [ 2, %do.end29 ], [ 2, %if.then17.out_crit_edge ], [ 1, %do.end15.out_crit_edge ]
  %15 = ptrtoint ptr %max_len to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %cond, ptr %max_len, align 4
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %refn) #7
  ret i32 %type.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @orangefs_fh_to_dentry(ptr noundef %sb, ptr nocapture noundef readonly %fid, i32 noundef %fh_len, i32 noundef %fh_type) #0 align 64 {
entry:
  %refn = alloca %struct.orangefs_object_kref, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %refn) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %fh_len)
  %cmp = icmp slt i32 %fh_len, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %fh_type)
  %cmp1 = icmp sgt i32 %fh_type, 2
  %or.cond = or i1 %cmp, %cmp1
  %0 = getelementptr inbounds i8, ptr %refn, i32 16
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 -1, ptr %0, align 8
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = getelementptr inbounds %struct.orangefs_object_kref, ptr %refn, i32 0, i32 1
  %3 = call ptr @memcpy(ptr %refn, ptr %fid, i32 16)
  %arrayidx = getelementptr [0 x i32], ptr %fid, i32 0, i32 4
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %2, align 8
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @orangefs_gossip_debug_mask to i32))
  %7 = load i64, ptr @orangefs_gossip_debug_mask, align 8
  %and = and i64 %7, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.end.do.end8_crit_edge, label %do.end

if.end.do.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end8

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.83, ptr noundef nonnull %refn, i32 noundef %5) #10
  br label %do.end8

do.end8:                                          ; preds = %do.end, %if.end.do.end8_crit_edge
  %call9 = call ptr @orangefs_iget(ptr noundef %sb, ptr noundef nonnull %refn) #7
  %call10 = call ptr @d_obtain_alias(ptr noundef %call9) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end8, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call10, %do.end8 ], [ null, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %refn) #7
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_obtain_alias(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockref_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @inode_init_once(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_rwsem(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memmove(ptr, ptr, i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 93)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 93)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !8, !9, !10, !11, !13, !14, !15, !17, !18, !19, !21, !23, !24, !25, !26, !28, !29, !30, !32, !33, !34, !36, !37, !38, !40, !41, !42, !44, !45, !46, !48, !49, !50, !52, !53, !54, !56, !57, !58, !60, !61, !62, !63, !65, !67, !68, !69, !70, !72, !74, !76, !78, !79, !80, !81, !83, !84, !85, !86, !88, !89, !90, !92, !94, !95, !96, !97, !99, !101, !103, !105, !107, !109, !110, !111, !112, !114, !115, !116, !117, !119, !120, !121, !122, !124, !125, !126, !127, !129, !130, !131, !133, !134, !135, !137, !138, !139, !140, !142, !144, !146, !148, !150, !151, !152, !153, !155, !156, !157, !159, !160, !161, !163, !164, !165, !166, !168}
!llvm.module.flags = !{!169, !170, !171, !172, !173, !174, !175, !176}
!llvm.ident = !{!177}

!0 = !{ptr @orangefs_superblocks, !1, !"orangefs_superblocks", i1 false, i1 false}
!1 = !{!"../fs/orangefs/super.c", i32 20, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../fs/orangefs/super.c", i32 22, i32 1}
!4 = !{ptr @orangefs_superblocks_lock, !3, !"orangefs_superblocks_lock", i1 false, i1 false}
!5 = !{ptr @.str.1, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../fs/orangefs/super.c", i32 251, i32 2}
!7 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.3, !6, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @orangefs_remount._entry, !6, !"_entry", i1 false, i1 false}
!10 = !{ptr @orangefs_remount._entry_ptr, !6, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../fs/orangefs/super.c", i32 260, i32 2}
!13 = !{ptr @orangefs_remount._entry.4, !12, !"_entry", i1 false, i1 false}
!14 = !{ptr @orangefs_remount._entry_ptr.6, !12, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../fs/orangefs/super.c", i32 271, i32 2}
!17 = !{ptr @orangefs_remount._entry.7, !16, !"_entry", i1 false, i1 false}
!18 = !{ptr @orangefs_remount._entry_ptr.9, !16, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.10, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../fs/orangefs/super.c", i32 291, i32 35}
!21 = !{ptr @.str.11, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../fs/orangefs/super.c", i32 484, i32 2}
!23 = !{ptr @.str.12, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @orangefs_mount._entry, !22, !"_entry", i1 false, i1 false}
!25 = !{ptr @orangefs_mount._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.14, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../fs/orangefs/super.c", i32 489, i32 3}
!28 = !{ptr @orangefs_mount._entry.13, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @orangefs_mount._entry_ptr.15, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.17, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../fs/orangefs/super.c", i32 501, i32 2}
!32 = !{ptr @orangefs_mount._entry.16, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @orangefs_mount._entry_ptr.18, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.20, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../fs/orangefs/super.c", i32 506, i32 2}
!36 = !{ptr @orangefs_mount._entry.19, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @orangefs_mount._entry_ptr.21, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.23, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../fs/orangefs/super.c", i32 512, i32 3}
!40 = !{ptr @orangefs_mount._entry.22, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @orangefs_mount._entry_ptr.24, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.26, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../fs/orangefs/super.c", i32 557, i32 2}
!44 = !{ptr @orangefs_mount._entry.25, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @orangefs_mount._entry_ptr.27, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.29, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../fs/orangefs/super.c", i32 588, i32 2}
!48 = !{ptr @orangefs_mount._entry.28, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @orangefs_mount._entry_ptr.30, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.32, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../fs/orangefs/super.c", i32 590, i32 3}
!52 = !{ptr @orangefs_mount._entry.31, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @orangefs_mount._entry_ptr.33, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.35, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../fs/orangefs/super.c", i32 591, i32 3}
!56 = !{ptr @orangefs_mount._entry.34, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @orangefs_mount._entry_ptr.36, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.37, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../fs/orangefs/super.c", i32 602, i32 2}
!60 = !{ptr @.str.38, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @orangefs_kill_sb._entry, !59, !"_entry", i1 false, i1 false}
!62 = !{ptr @orangefs_kill_sb._entry_ptr, !59, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.39, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../fs/orangefs/super.c", i32 644, i32 6}
!65 = !{ptr @.str.40, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../fs/orangefs/super.c", i32 655, i32 3}
!67 = !{ptr @.str.41, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @orangefs_inode_cache_initialize._entry, !66, !"_entry", i1 false, i1 false}
!69 = !{ptr @orangefs_inode_cache_initialize._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @orangefs_inode_cache, !71, !"orangefs_inode_cache", i1 false, i1 false}
!71 = !{!"../fs/orangefs/super.c", i32 17, i32 27}
!72 = !{ptr @orangefs_features, !73, !"orangefs_features", i1 false, i1 false}
!73 = !{!"../fs/orangefs/super.c", i32 39, i32 10}
!74 = !{ptr @.str.42, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../fs/orangefs/super.c", i32 405, i32 28}
!76 = !{ptr @.str.43, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../fs/orangefs/super.c", i32 408, i32 3}
!78 = !{ptr @.str.44, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @orangefs_unmount._entry, !77, !"_entry", i1 false, i1 false}
!80 = !{ptr @orangefs_unmount._entry_ptr, !77, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.45, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../fs/orangefs/super.c", i32 450, i32 2}
!83 = !{ptr @.str.46, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @orangefs_fill_sb._entry, !82, !"_entry", i1 false, i1 false}
!85 = !{ptr @orangefs_fill_sb._entry_ptr, !82, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.48, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../fs/orangefs/super.c", i32 459, i32 2}
!88 = !{ptr @orangefs_fill_sb._entry.47, !87, !"_entry", i1 false, i1 false}
!89 = !{ptr @orangefs_fill_sb._entry_ptr.49, !87, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.50, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../fs/orangefs/super.c", i32 69, i32 31}
!92 = !{ptr @.str.51, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../fs/orangefs/super.c", i32 94, i32 3}
!94 = !{ptr @.str.52, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @parse_mount_options._entry, !93, !"_entry", i1 false, i1 false}
!96 = !{ptr @parse_mount_options._entry_ptr, !93, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.53, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../fs/orangefs/super.c", i32 33, i32 14}
!99 = !{ptr @.str.54, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../fs/orangefs/super.c", i32 34, i32 15}
!101 = !{ptr @.str.55, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../fs/orangefs/super.c", i32 35, i32 20}
!103 = !{ptr @tokens, !104, !"tokens", i1 false, i1 false}
!104 = !{!"../fs/orangefs/super.c", i32 32, i32 28}
!105 = !{ptr @orangefs_s_ops, !106, !"orangefs_s_ops", i1 false, i1 false}
!106 = !{!"../fs/orangefs/super.c", i32 315, i32 38}
!107 = !{ptr @.str.56, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../fs/orangefs/super.c", i32 123, i32 2}
!109 = !{ptr @.str.57, !108, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @orangefs_alloc_inode._entry, !108, !"_entry", i1 false, i1 false}
!111 = !{ptr @orangefs_alloc_inode._entry_ptr, !108, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.58, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../fs/orangefs/super.c", i32 148, i32 2}
!114 = !{ptr @.str.59, !113, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @orangefs_destroy_inode._entry, !113, !"_entry", i1 false, i1 false}
!116 = !{ptr @orangefs_destroy_inode._entry_ptr, !113, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.60, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../fs/orangefs/super.c", i32 156, i32 2}
!119 = !{ptr @.str.61, !118, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @orangefs_write_inode._entry, !118, !"_entry", i1 false, i1 false}
!121 = !{ptr @orangefs_write_inode._entry_ptr, !118, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @.str.62, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../fs/orangefs/super.c", i32 173, i32 2}
!124 = !{ptr @.str.63, !123, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @orangefs_statfs._entry, !123, !"_entry", i1 false, i1 false}
!126 = !{ptr @orangefs_statfs._entry_ptr, !123, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @.str.65, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../fs/orangefs/super.c", i32 192, i32 2}
!129 = !{ptr @orangefs_statfs._entry.64, !128, !"_entry", i1 false, i1 false}
!130 = !{ptr @orangefs_statfs._entry_ptr.66, !128, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @.str.68, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../fs/orangefs/super.c", i32 217, i32 2}
!133 = !{ptr @orangefs_statfs._entry.67, !132, !"_entry", i1 false, i1 false}
!134 = !{ptr @orangefs_statfs._entry_ptr.69, !132, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @.str.70, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../fs/orangefs/super.c", i32 227, i32 2}
!137 = !{ptr @.str.71, !136, !"<string literal>", i1 false, i1 false}
!138 = !{ptr @orangefs_remount_fs._entry, !136, !"_entry", i1 false, i1 false}
!139 = !{ptr @orangefs_remount_fs._entry_ptr, !136, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @.str.72, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../fs/orangefs/super.c", i32 46, i32 15}
!142 = !{ptr @.str.73, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../fs/orangefs/super.c", i32 48, i32 15}
!144 = !{ptr @.str.74, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../fs/orangefs/super.c", i32 50, i32 15}
!146 = !{ptr @orangefs_export_ops, !147, !"orangefs_export_ops", i1 false, i1 false}
!147 = !{!"../fs/orangefs/super.c", i32 389, i32 39}
!148 = !{ptr @.str.75, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../fs/orangefs/super.c", i32 356, i32 3}
!150 = !{ptr @.str.76, !149, !"<string literal>", i1 false, i1 false}
!151 = !{ptr @orangefs_encode_fh._entry, !149, !"_entry", i1 false, i1 false}
!152 = !{ptr @orangefs_encode_fh._entry_ptr, !149, !"_entry_ptr", i1 false, i1 false}
!153 = !{ptr @.str.78, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../fs/orangefs/super.c", i32 366, i32 2}
!155 = !{ptr @orangefs_encode_fh._entry.77, !154, !"_entry", i1 false, i1 false}
!156 = !{ptr @orangefs_encode_fh._entry_ptr.79, !154, !"_entry_ptr", i1 false, i1 false}
!157 = !{ptr @.str.81, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../fs/orangefs/super.c", i32 378, i32 3}
!159 = !{ptr @orangefs_encode_fh._entry.80, !158, !"_entry", i1 false, i1 false}
!160 = !{ptr @orangefs_encode_fh._entry_ptr.82, !158, !"_entry_ptr", i1 false, i1 false}
!161 = !{ptr @.str.83, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../fs/orangefs/super.c", i32 338, i32 2}
!163 = !{ptr @.str.84, !162, !"<string literal>", i1 false, i1 false}
!164 = !{ptr @orangefs_fh_to_dentry._entry, !162, !"_entry", i1 false, i1 false}
!165 = !{ptr @orangefs_fh_to_dentry._entry_ptr, !162, !"_entry_ptr", i1 false, i1 false}
!166 = !{ptr @orangefs_inode_cache_ctor.__key, !167, !"__key", i1 false, i1 false}
!167 = !{!"../fs/orangefs/super.c", i32 103, i32 2}
!168 = !{ptr @.str.85, !167, !"<string literal>", i1 false, i1 false}
!169 = !{i32 1, !"wchar_size", i32 2}
!170 = !{i32 1, !"min_enum_size", i32 4}
!171 = !{i32 8, !"branch-target-enforcement", i32 0}
!172 = !{i32 8, !"sign-return-address", i32 0}
!173 = !{i32 8, !"sign-return-address-all", i32 0}
!174 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!175 = !{i32 7, !"uwtable", i32 1}
!176 = !{i32 7, !"frame-pointer", i32 2}
!177 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
