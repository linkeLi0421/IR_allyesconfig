; ModuleID = '/llk/IR_all_yes/fs/jfs/namei.c_pt.bc'
source_filename = "../fs/jfs/namei.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.inode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [36 x i8] }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dentry_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [76 x i8] }
%struct.address_space_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.maplock = type { i16, i8, i8, i16, i8, i8, %struct.pxd_t }
%struct.pxd_t = type { i32, i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.73, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.74, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.75, ptr, %struct.address_space, %struct.list_head, %union.anon.76, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.73 = type { i32 }
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
%union.anon.74 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%struct.atomic_t = type { i32 }
%union.anon.75 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.76 = type { ptr }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.71, %struct.list_head, %struct.list_head, %union.anon.72 }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.2, ptr }
%union.anon.2 = type { i64 }
%struct.lockref = type { %union.anon.4 }
%union.anon.4 = type { %struct.anon.5 }
%struct.anon.5 = type { %struct.spinlock, i32 }
%union.anon.71 = type { %struct.list_head }
%union.anon.72 = type { %struct.hlist_node }
%struct.btstack = type { ptr, i32, [8 x %struct.btframe] }
%struct.btframe = type { i64, i16, i16, ptr }
%struct.component_name = type { i32, ptr }
%struct.tblock = type { i16, i16, i16, i32, %struct.list_head, ptr, i16, i16, %struct.wait_queue_head, i32, %struct.list_head, i32, ptr, i32, i32, %struct.wait_queue_head, %union.anon.84, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%union.anon.84 = type { %struct.pxd_t }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [24 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [24 x i8] }
%struct.hlist_bl_head = type { ptr }
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x ptr], [3 x %struct.mem_dqinfo], [3 x ptr] }
%struct.mem_dqinfo = type { ptr, i32, %struct.list_head, i32, i32, i32, i64, i64, ptr }
%struct.sb_writers = type { i32, %struct.wait_queue_head, [3 x %struct.percpu_rw_semaphore] }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, ptr, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t, %struct.lockdep_map }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { ptr }
%struct.uuid_t = type { [16 x i8] }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.hlist_head = type { ptr }
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.jfs_sb_info = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i16, i16, i16, i16, i16, i32, i32, %struct.pxd_t, %struct.pxd_t, %struct.pxd_t, %struct.uuid_t, %struct.uuid_t, i32, i32, i32, ptr, ptr, ptr, i32, i32, i32, %struct.kuid_t, %struct.kgid_t, i32, i32 }
%struct.metapage = type { i16, i16, i16, i32, %struct.list_head, i32, i32, ptr, i64, %struct.wait_queue_head, ptr, ptr, i32, i32, i32, ptr }
%struct.tlock = type { i16, i16, i16, i16, ptr, ptr, [24 x i16] }
%struct.linelock = type { i16, i8, i8, i16, i8, i8, [20 x %struct.lv] }
%struct.lv = type { i8, i8 }
%struct.anon.3 = type { i32, i32 }

@jfsloglevel = external dso_local local_unnamed_addr global i32, align 4
@jfs_free_zero_link._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 692, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\016jfs_free_zero_link: ip = 0x%p\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"jfs_free_zero_link\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"fs/jfs/namei.c\00", [17 x i8] zeroinitializer }, align 32
@jfs_free_zero_link._entry_ptr = internal global ptr @jfs_free_zero_link._entry, section ".printk_index", align 4
@jfs_dir_inode_operations = dso_local constant %struct.inode_operations { ptr @jfs_lookup, ptr null, ptr null, ptr @jfs_get_acl, ptr null, ptr @jfs_create, ptr @jfs_link, ptr @jfs_unlink, ptr @jfs_symlink, ptr @jfs_mkdir, ptr @jfs_rmdir, ptr @jfs_mknod, ptr @jfs_rename, ptr @jfs_setattr, ptr null, ptr @jfs_listxattr, ptr null, ptr null, ptr null, ptr null, ptr @jfs_set_acl, ptr @jfs_fileattr_set, ptr @jfs_fileattr_get, [36 x i8] undef }, align 128
@jfs_dir_operations = dso_local constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @generic_read_dir, ptr null, ptr null, ptr null, ptr null, ptr @jfs_readdir, ptr null, ptr null, ptr @jfs_ioctl, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr @jfs_fsync, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@jfs_ci_dentry_operations = dso_local local_unnamed_addr constant %struct.dentry_operations { ptr @jfs_ci_revalidate, ptr null, ptr @jfs_ci_hash, ptr @jfs_ci_compare, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [76 x i8] undef }, align 128
@jfs_lookup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 1450, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\016jfs_lookup: name = %pd\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"jfs_lookup\00", [21 x i8] zeroinitializer }, align 32
@jfs_lookup._entry_ptr = internal global ptr @jfs_lookup._entry, section ".printk_index", align 4
@jfs_lookup._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.4, ptr @.str.2, i32 1459, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013jfs_lookup: dtSearch returned %d\0A\00", [60 x i8] zeroinitializer }, align 32
@jfs_lookup._entry_ptr.7 = internal global ptr @jfs_lookup._entry.5, section ".printk_index", align 4
@jfs_lookup._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.4, ptr @.str.2, i32 1464, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013jfs_lookup: iget failed on inum %d\0A\00", [58 x i8] zeroinitializer }, align 32
@jfs_lookup._entry_ptr.10 = internal global ptr @jfs_lookup._entry.8, section ".printk_index", align 4
@jfs_create._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.2, i32 74, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\016jfs_create: dip:0x%p name:%pd\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"jfs_create\00", [21 x i8] zeroinitializer }, align 32
@jfs_create._entry_ptr = internal global ptr @jfs_create._entry, section ".printk_index", align 4
@jfs_create._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.12, ptr @.str.2, i32 114, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013jfs_create: dtSearch returned %d\0A\00", [60 x i8] zeroinitializer }, align 32
@jfs_create._entry_ptr.15 = internal global ptr @jfs_create._entry.13, section ".printk_index", align 4
@TxBlock = external dso_local local_unnamed_addr global ptr, align 4
@jfs_create._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.12, ptr @.str.2, i32 139, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013jfs_create: dtInsert returned -EIO\0A\00", [58 x i8] zeroinitializer }, align 32
@jfs_create._entry_ptr.18 = internal global ptr @jfs_create._entry.16, section ".printk_index", align 4
@jfs_file_inode_operations = external dso_local constant %struct.inode_operations, align 128
@jfs_file_operations = external dso_local constant %struct.file_operations, align 4
@jfs_aops = external dso_local constant %struct.address_space_operations, align 4
@jfs_create._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.12, ptr @.str.2, i32 175, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\016jfs_create: rc:%d\0A\00", [43 x i8] zeroinitializer }, align 32
@jfs_create._entry_ptr.21 = internal global ptr @jfs_create._entry.19, section ".printk_index", align 4
@jfs_link._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.2, i32 796, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\016jfs_link: %pd %pd\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"jfs_link\00", [23 x i8] zeroinitializer }, align 32
@jfs_link._entry_ptr = internal global ptr @jfs_link._entry, section ".printk_index", align 4
@jfs_link._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.23, ptr @.str.2, i32 850, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\016jfs_link: rc:%d\0A\00", [45 x i8] zeroinitializer }, align 32
@jfs_link._entry_ptr.26 = internal global ptr @jfs_link._entry.24, section ".printk_index", align 4
@jfs_unlink._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.2, i32 475, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\016jfs_unlink: dip:0x%p name:%pd\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"jfs_unlink\00", [21 x i8] zeroinitializer }, align 32
@jfs_unlink._entry_ptr = internal global ptr @jfs_unlink._entry, section ".printk_index", align 4
@jfs_unlink._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.28, ptr @.str.2, i32 503, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013jfs_unlink: dtDelete returned %d\0A\00", [60 x i8] zeroinitializer }, align 32
@jfs_unlink._entry_ptr.31 = internal global ptr @jfs_unlink._entry.29, section ".printk_index", align 4
@jfs_unlink._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.28, ptr @.str.2, i32 513, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\012BUG at %s:%d assert(%s)\0A\00", [37 x i8] zeroinitializer }, align 32
@jfs_unlink._entry_ptr.34 = internal global ptr @jfs_unlink._entry.32, section ".printk_index", align 4
@.str.35 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ip->i_nlink\00", [20 x i8] zeroinitializer }, align 32
@jfs_unlink._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.28, ptr @.str.2, i32 525, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@jfs_unlink._entry_ptr.37 = internal global ptr @jfs_unlink._entry.36, section ".printk_index", align 4
@.str.38 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"!test_cflag(COMMIT_Nolink, ip)\00", [33 x i8] zeroinitializer }, align 32
@jfs_unlink._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.28, ptr @.str.2, i32 594, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\016jfs_unlink: rc:%d\0A\00", [43 x i8] zeroinitializer }, align 32
@jfs_unlink._entry_ptr.41 = internal global ptr @jfs_unlink._entry.39, section ".printk_index", align 4
@commitZeroLink._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str.2, i32 627, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\016commitZeroLink: tid = %d, ip = 0x%p\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"commitZeroLink\00", [17 x i8] zeroinitializer }, align 32
@commitZeroLink._entry_ptr = internal global ptr @commitZeroLink._entry, section ".printk_index", align 4
@commitZeroLink._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.43, ptr @.str.2, i32 641, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@commitZeroLink._entry_ptr.45 = internal global ptr @commitZeroLink._entry.44, section ".printk_index", align 4
@.str.46 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"filetype != S_IFDIR\00", [44 x i8] zeroinitializer }, align 32
@jfs_symlink._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str.2, i32 891, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\016jfs_symlink: dip:0x%p name:%s\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"jfs_symlink\00", [20 x i8] zeroinitializer }, align 32
@jfs_symlink._entry_ptr = internal global ptr @jfs_symlink._entry, section ".printk_index", align 4
@jfs_fast_symlink_inode_operations = external dso_local constant %struct.inode_operations, align 128
@jfs_symlink._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.48, ptr @.str.2, i32 961, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\016jfs_symlink: fast symlink added  ssize:%d name:%s \0A\00", [42 x i8] zeroinitializer }, align 32
@jfs_symlink._entry_ptr.51 = internal global ptr @jfs_symlink._entry.49, section ".printk_index", align 4
@jfs_symlink._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.48, ptr @.str.2, i32 967, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\016jfs_symlink: allocate extent ip:0x%p\0A\00", [56 x i8] zeroinitializer }, align 32
@jfs_symlink._entry_ptr.54 = internal global ptr @jfs_symlink._entry.52, section ".printk_index", align 4
@jfs_symlink_inode_operations = external dso_local constant %struct.inode_operations, align 128
@jfs_symlink._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.48, ptr @.str.2, i32 1052, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\016jfs_symlink: rc:%d\0A\00", [42 x i8] zeroinitializer }, align 32
@jfs_symlink._entry_ptr.57 = internal global ptr @jfs_symlink._entry.55, section ".printk_index", align 4
@jfs_mkdir._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.59, ptr @.str.2, i32 207, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\016jfs_mkdir: dip:0x%p name:%pd\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"jfs_mkdir\00", [22 x i8] zeroinitializer }, align 32
@jfs_mkdir._entry_ptr = internal global ptr @jfs_mkdir._entry, section ".printk_index", align 4
@jfs_mkdir._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.59, ptr @.str.2, i32 247, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013jfs_mkdir: dtSearch returned %d\0A\00", [61 x i8] zeroinitializer }, align 32
@jfs_mkdir._entry_ptr.62 = internal global ptr @jfs_mkdir._entry.60, section ".printk_index", align 4
@jfs_mkdir._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.59, ptr @.str.2, i32 272, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013jfs_mkdir: dtInsert returned -EIO\0A\00", [59 x i8] zeroinitializer }, align 32
@jfs_mkdir._entry_ptr.65 = internal global ptr @jfs_mkdir._entry.63, section ".printk_index", align 4
@jfs_mkdir._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.59, ptr @.str.2, i32 310, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\016jfs_mkdir: rc:%d\0A\00", [44 x i8] zeroinitializer }, align 32
@jfs_mkdir._entry_ptr.68 = internal global ptr @jfs_mkdir._entry.66, section ".printk_index", align 4
@jfs_rmdir._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.70, ptr @.str.2, i32 343, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\016jfs_rmdir: dip:0x%p name:%pd\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"jfs_rmdir\00", [22 x i8] zeroinitializer }, align 32
@jfs_rmdir._entry_ptr = internal global ptr @jfs_rmdir._entry, section ".printk_index", align 4
@jfs_rmdir._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.70, ptr @.str.2, i32 380, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013jfs_rmdir: dtDelete returned %d\0A\00", [61 x i8] zeroinitializer }, align 32
@jfs_rmdir._entry_ptr.73 = internal global ptr @jfs_rmdir._entry.71, section ".printk_index", align 4
@jfs_rmdir._entry.74 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.70, ptr @.str.2, i32 439, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\016jfs_rmdir: rc:%d\0A\00", [44 x i8] zeroinitializer }, align 32
@jfs_rmdir._entry_ptr.76 = internal global ptr @jfs_rmdir._entry.74, section ".printk_index", align 4
@jfs_mknod._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.78, ptr @.str.2, i32 1361, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\016jfs_mknod: %pd\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"jfs_mknod\00", [22 x i8] zeroinitializer }, align 32
@jfs_mknod._entry_ptr = internal global ptr @jfs_mknod._entry, section ".printk_index", align 4
@jfs_mknod._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.78, ptr @.str.2, i32 1438, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\016jfs_mknod: returning %d\0A\00", [37 x i8] zeroinitializer }, align 32
@jfs_mknod._entry_ptr.81 = internal global ptr @jfs_mknod._entry.79, section ".printk_index", align 4
@jfs_rename._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.83, ptr @.str.2, i32 1086, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\016jfs_rename: %pd %pd\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"jfs_rename\00", [21 x i8] zeroinitializer }, align 32
@jfs_rename._entry_ptr = internal global ptr @jfs_rename._entry, section ".printk_index", align 4
@.str.84 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"new_ip->i_nlink != 0\0A\00", [42 x i8] zeroinitializer }, align 32
@jfs_rename._entry.85 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.83, ptr @.str.2, i32 1192, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@jfs_rename._entry_ptr.86 = internal global ptr @jfs_rename._entry.85, section ".printk_index", align 4
@.str.87 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"!test_cflag(COMMIT_Nolink, new_ip)\00", [61 x i8] zeroinitializer }, align 32
@jfs_rename._entry.88 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.83, ptr @.str.2, i32 1214, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013jfs_rename didn't expect dtSearch to fail w/rc = %d\0A\00", [41 x i8] zeroinitializer }, align 32
@jfs_rename._entry_ptr.90 = internal global ptr @jfs_rename._entry.88, section ".printk_index", align 4
@jfs_rename._entry.91 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.83, ptr @.str.2, i32 1222, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013jfs_rename: dtInsert returned -EIO\0A\00", [58 x i8] zeroinitializer }, align 32
@jfs_rename._entry_ptr.93 = internal global ptr @jfs_rename._entry.91, section ".printk_index", align 4
@jfs_rename._entry.94 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.95, ptr @.str.83, ptr @.str.2, i32 1236, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\013jfs_rename did not expect dtDelete to return rc = %d\0A\00", [40 x i8] zeroinitializer }, align 32
@jfs_rename._entry_ptr.96 = internal global ptr @jfs_rename._entry.94, section ".printk_index", align 4
@jfs_rename._entry.97 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.83, ptr @.str.2, i32 1255, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@jfs_rename._entry_ptr.98 = internal global ptr @jfs_rename._entry.97, section ".printk_index", align 4
@.str.99 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"dtlck->index == 0\00", [46 x i8] zeroinitializer }, align 32
@jfs_rename._entry.100 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.101, ptr @.str.83, ptr @.str.2, i32 1338, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\016jfs_rename: returning %d\0A\00", [36 x i8] zeroinitializer }, align 32
@jfs_rename._entry_ptr.102 = internal global ptr @jfs_rename._entry.100, section ".printk_index", align 4
@_ctype = external dso_local local_unnamed_addr constant [0 x i8], align 1
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 32768, i64 40960]
@__sancov_gen_cov_switch_values.103 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967294]
@__sancov_gen_cov_switch_values.104 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967291]
@__sancov_gen_cov_switch_values.105 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967291]
@__sancov_gen_cov_switch_values.106 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967294]
@__sancov_gen_cov_switch_values.107 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967291]
@__sancov_gen_cov_switch_values.108 = internal global [5 x i64] [i64 3, i64 16, i64 16384, i64 32768, i64 40960]
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 692, i32 2 }
@___asan_gen_.121 = private unnamed_addr constant [19 x i8] c"jfs_dir_operations\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 1533, i32 30 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 1450, i32 2 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 1459, i32 3 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 1464, i32 4 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 74, i32 2 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 114, i32 3 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 139, i32 4 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 175, i32 2 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 796, i32 2 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 850, i32 2 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 475, i32 2 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 503, i32 3 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 513, i32 2 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 525, i32 3 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 594, i32 2 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 627, i32 2 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 641, i32 3 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 891, i32 2 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 960, i32 3 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 967, i32 3 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 1052, i32 2 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 207, i32 2 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 247, i32 3 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 272, i32 4 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 310, i32 2 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 343, i32 2 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 380, i32 3 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 439, i32 2 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 1361, i32 2 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 1438, i32 2 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 1086, i32 2 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 1185, i32 8 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 1192, i32 4 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 1213, i32 4 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 1222, i32 5 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 1235, i32 3 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 1255, i32 4 }
@___asan_gen_.370 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.373 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.374 = private constant [18 x i8] c"../fs/jfs/namei.c\00", align 1
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 1338, i32 2 }
@llvm.compiler.used = appending global [126 x ptr] [ptr @commitZeroLink._entry, ptr @commitZeroLink._entry.44, ptr @commitZeroLink._entry_ptr, ptr @commitZeroLink._entry_ptr.45, ptr @jfs_create._entry, ptr @jfs_create._entry.13, ptr @jfs_create._entry.16, ptr @jfs_create._entry.19, ptr @jfs_create._entry_ptr, ptr @jfs_create._entry_ptr.15, ptr @jfs_create._entry_ptr.18, ptr @jfs_create._entry_ptr.21, ptr @jfs_free_zero_link._entry, ptr @jfs_free_zero_link._entry_ptr, ptr @jfs_link._entry, ptr @jfs_link._entry.24, ptr @jfs_link._entry_ptr, ptr @jfs_link._entry_ptr.26, ptr @jfs_lookup._entry, ptr @jfs_lookup._entry.5, ptr @jfs_lookup._entry.8, ptr @jfs_lookup._entry_ptr, ptr @jfs_lookup._entry_ptr.10, ptr @jfs_lookup._entry_ptr.7, ptr @jfs_mkdir._entry, ptr @jfs_mkdir._entry.60, ptr @jfs_mkdir._entry.63, ptr @jfs_mkdir._entry.66, ptr @jfs_mkdir._entry_ptr, ptr @jfs_mkdir._entry_ptr.62, ptr @jfs_mkdir._entry_ptr.65, ptr @jfs_mkdir._entry_ptr.68, ptr @jfs_mknod._entry, ptr @jfs_mknod._entry.79, ptr @jfs_mknod._entry_ptr, ptr @jfs_mknod._entry_ptr.81, ptr @jfs_rename._entry, ptr @jfs_rename._entry.100, ptr @jfs_rename._entry.85, ptr @jfs_rename._entry.88, ptr @jfs_rename._entry.91, ptr @jfs_rename._entry.94, ptr @jfs_rename._entry.97, ptr @jfs_rename._entry_ptr, ptr @jfs_rename._entry_ptr.102, ptr @jfs_rename._entry_ptr.86, ptr @jfs_rename._entry_ptr.90, ptr @jfs_rename._entry_ptr.93, ptr @jfs_rename._entry_ptr.96, ptr @jfs_rename._entry_ptr.98, ptr @jfs_rmdir._entry, ptr @jfs_rmdir._entry.71, ptr @jfs_rmdir._entry.74, ptr @jfs_rmdir._entry_ptr, ptr @jfs_rmdir._entry_ptr.73, ptr @jfs_rmdir._entry_ptr.76, ptr @jfs_symlink._entry, ptr @jfs_symlink._entry.49, ptr @jfs_symlink._entry.52, ptr @jfs_symlink._entry.55, ptr @jfs_symlink._entry_ptr, ptr @jfs_symlink._entry_ptr.51, ptr @jfs_symlink._entry_ptr.54, ptr @jfs_symlink._entry_ptr.57, ptr @jfs_unlink._entry, ptr @jfs_unlink._entry.29, ptr @jfs_unlink._entry.32, ptr @jfs_unlink._entry.36, ptr @jfs_unlink._entry.39, ptr @jfs_unlink._entry_ptr, ptr @jfs_unlink._entry_ptr.31, ptr @jfs_unlink._entry_ptr.34, ptr @jfs_unlink._entry_ptr.37, ptr @jfs_unlink._entry_ptr.41, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @jfs_dir_operations, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.17, ptr @.str.20, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @.str.27, ptr @.str.28, ptr @.str.30, ptr @.str.33, ptr @.str.35, ptr @.str.38, ptr @.str.40, ptr @.str.42, ptr @.str.43, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.50, ptr @.str.53, ptr @.str.56, ptr @.str.58, ptr @.str.59, ptr @.str.61, ptr @.str.64, ptr @.str.67, ptr @.str.69, ptr @.str.70, ptr @.str.72, ptr @.str.75, ptr @.str.77, ptr @.str.78, ptr @.str.80, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.87, ptr @.str.89, ptr @.str.92, ptr @.str.95, ptr @.str.99, ptr @.str.101], section "llvm.metadata"
@0 = internal global [89 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jfs_free_zero_link._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jfs_dir_operations to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jfs_lookup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jfs_lookup._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jfs_lookup._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jfs_create._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jfs_create._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jfs_create._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jfs_create._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jfs_link._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jfs_link._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jfs_unlink._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jfs_unlink._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jfs_unlink._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jfs_unlink._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jfs_unlink._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @commitZeroLink._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @commitZeroLink._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jfs_symlink._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jfs_symlink._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jfs_symlink._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jfs_symlink._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jfs_mkdir._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jfs_mkdir._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jfs_mkdir._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jfs_mkdir._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jfs_rmdir._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jfs_rmdir._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jfs_rmdir._entry.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jfs_mknod._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jfs_mknod._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jfs_rename._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jfs_rename._entry.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jfs_rename._entry.88 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jfs_rename._entry.91 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jfs_rename._entry.94 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jfs_rename._entry.97 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jfs_rename._entry.100 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @jfs_free_zero_link(ptr noundef %ip) local_unnamed_addr #0 align 64 {
entry:
  %maplock = alloca %struct.maplock, align 8
  %maplock46 = alloca %struct.maplock, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jfsloglevel to i32))
  %0 = load i32, ptr @jfsloglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %0)
  %cmp = icmp sgt i32 %0, 3
  br i1 %cmp, label %do.end, label %entry.do.end3_crit_edge

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %ip) #12
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %1 = ptrtoint ptr %ip to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %ip, align 8
  %3 = and i16 %2, -4096
  %4 = zext i16 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i16 %3, label %do.end3.cleanup_crit_edge [
    i16 -32768, label %do.end3.sw.epilog_crit_edge
    i16 -24576, label %sw.bb
  ]

do.end3.sw.epilog_crit_edge:                      ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

do.end3.cleanup_crit_edge:                        ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %do.end3
  %i_size = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 14
  %5 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %i_size, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 256, i64 %6)
  %cmp4 = icmp slt i64 %6, 256
  br i1 %cmp4, label %sw.bb.cleanup_crit_edge, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb.sw.epilog_crit_edge, %do.end3.sw.epilog_crit_edge
  %ea = getelementptr i8, ptr %ip, i32 -808
  %7 = ptrtoint ptr %ea to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %ea, align 8
  %9 = and i8 %8, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  br i1 %tobool.not, label %sw.epilog.if.end29_crit_edge, label %if.then11

sw.epilog.if.end29_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end29

if.then11:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  %loc = getelementptr i8, ptr %ip, i32 -800
  %10 = ptrtoint ptr %loc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %loc, align 4
  %12 = shl i32 %11, 24
  %conv.i = zext i32 %12 to i64
  %shl.i = shl nuw nsw i64 %conv.i, 8
  %addr2.i = getelementptr i8, ptr %ip, i32 -796
  %13 = ptrtoint ptr %addr2.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %addr2.i, align 4
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #9
  %conv1.i = zext i32 %15 to i64
  %add.i = or i64 %shl.i, %conv1.i
  %16 = and i32 %11, -256
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %maplock) #9
  %18 = getelementptr inbounds %struct.maplock, ptr %maplock, i32 0, i32 2
  %19 = getelementptr inbounds %struct.maplock, ptr %maplock, i32 0, i32 3
  %20 = getelementptr inbounds %struct.maplock, ptr %maplock, i32 0, i32 6
  %21 = getelementptr inbounds %struct.maplock, ptr %maplock, i32 0, i32 6, i32 1
  %22 = ptrtoint ptr %maplock to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 -1, ptr %maplock, align 8
  tail call void @__invalidate_metapages(ptr noundef %ip, i64 noundef %add.i, i32 noundef %17) #9
  %23 = ptrtoint ptr %18 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 1, ptr %18, align 1
  %24 = ptrtoint ptr %19 to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 1, ptr %19, align 4
  %25 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %14, ptr %21, align 4
  %26 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %11, ptr %20, align 8
  call void @txFreeMap(ptr noundef %ip, ptr noundef nonnull %maplock, ptr noundef null, i32 noundef 32) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %maplock) #9
  br label %if.end29

if.end29:                                         ; preds = %if.then11, %sw.epilog.if.end29_crit_edge
  %acl = getelementptr i8, ptr %ip, i32 -824
  %27 = ptrtoint ptr %acl to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %acl, align 8
  %29 = and i8 %28, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool34.not = icmp eq i8 %29, 0
  br i1 %tobool34.not, label %if.end29.if.end60_crit_edge, label %if.then35

if.end29.if.end60_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end60

if.then35:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  %loc39 = getelementptr i8, ptr %ip, i32 -816
  %30 = ptrtoint ptr %loc39 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %loc39, align 4
  %32 = shl i32 %31, 24
  %conv.i105 = zext i32 %32 to i64
  %shl.i106 = shl nuw nsw i64 %conv.i105, 8
  %addr2.i107 = getelementptr i8, ptr %ip, i32 -812
  %33 = ptrtoint ptr %addr2.i107 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %addr2.i107, align 4
  %35 = call i32 @llvm.bswap.i32(i32 %34) #9
  %conv1.i108 = zext i32 %35 to i64
  %add.i109 = or i64 %shl.i106, %conv1.i108
  %36 = and i32 %31, -256
  %37 = call i32 @llvm.bswap.i32(i32 %36) #9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %maplock46) #9
  %38 = getelementptr inbounds %struct.maplock, ptr %maplock46, i32 0, i32 2
  %39 = getelementptr inbounds %struct.maplock, ptr %maplock46, i32 0, i32 3
  %40 = getelementptr inbounds %struct.maplock, ptr %maplock46, i32 0, i32 6
  %41 = getelementptr inbounds %struct.maplock, ptr %maplock46, i32 0, i32 6, i32 1
  %42 = ptrtoint ptr %maplock46 to i32
  call void @__asan_store8_noabort(i32 %42)
  store i64 -1, ptr %maplock46, align 8
  call void @__invalidate_metapages(ptr noundef %ip, i64 noundef %add.i109, i32 noundef %37) #9
  %43 = ptrtoint ptr %38 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 1, ptr %38, align 1
  %44 = ptrtoint ptr %39 to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 1, ptr %39, align 4
  %45 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %34, ptr %41, align 4
  %46 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %31, ptr %40, align 8
  call void @txFreeMap(ptr noundef %ip, ptr noundef nonnull %maplock46, ptr noundef null, i32 noundef 32) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %maplock46) #9
  br label %if.end60

if.end60:                                         ; preds = %if.then35, %if.end29.if.end60_crit_edge
  %i_size61 = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 14
  %47 = ptrtoint ptr %i_size61 to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %i_size61, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %48)
  %tobool62.not = icmp eq i64 %48, 0
  br i1 %tobool62.not, label %if.end60.cleanup_crit_edge, label %if.then63

if.end60.cleanup_crit_edge:                       ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then63:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #11
  %call64 = call i64 @xtTruncate(i16 noundef zeroext 0, ptr noundef %ip, i64 noundef 0, i32 noundef 32) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then63, %if.end60.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %do.end3.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__invalidate_metapages(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @txFreeMap(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @xtTruncate(i16 noundef zeroext, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @jfs_fh_to_dentry(ptr noundef %sb, ptr noundef %fid, i32 noundef %fh_len, i32 noundef %fh_type) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @generic_fh_to_dentry(ptr noundef %sb, ptr noundef %fid, i32 noundef %fh_len, i32 noundef %fh_type, ptr noundef nonnull @jfs_nfs_get_inode) #9
  ret ptr %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @generic_fh_to_dentry(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @jfs_nfs_get_inode(ptr noundef %sb, i64 noundef %ino, i32 noundef %generation) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %ino)
  %cmp = icmp eq i64 %ino, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv = trunc i64 %ino to i32
  %call1 = tail call ptr @jfs_iget(ptr noundef %sb, i32 noundef %conv) #9
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %generation)
  %tobool.not = icmp eq i32 %generation, 0
  %or.cond = or i1 %tobool.not, %cmp.i
  br i1 %or.cond, label %if.end.cleanup_crit_edge, label %land.lhs.true

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end
  %i_generation = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 49
  %0 = ptrtoint ptr %i_generation to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %i_generation, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %generation)
  %cmp6.not = icmp eq i32 %1, %generation
  br i1 %cmp6.not, label %land.lhs.true.cleanup_crit_edge, label %if.then8

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then8:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @iput(ptr noundef %call1) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then8, %land.lhs.true.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -116 to ptr), %if.then8 ], [ %call1, %land.lhs.true.cleanup_crit_edge ], [ inttoptr (i32 -116 to ptr), %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @jfs_fh_to_parent(ptr noundef %sb, ptr noundef %fid, i32 noundef %fh_len, i32 noundef %fh_type) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @generic_fh_to_parent(ptr noundef %sb, ptr noundef %fid, i32 noundef %fh_len, i32 noundef %fh_type, ptr noundef nonnull @jfs_nfs_get_inode) #9
  ret ptr %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @generic_fh_to_parent(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @jfs_get_parent(ptr nocapture noundef readonly %dentry) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode.i, align 8
  %idotdot = getelementptr i8, ptr %1, i32 -284
  %2 = ptrtoint ptr %idotdot to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %idotdot, align 4
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %d_sb = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 9
  %5 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %d_sb, align 4
  %call2 = tail call ptr @jfs_iget(ptr noundef %6, i32 noundef %4) #9
  %call3 = tail call ptr @d_obtain_alias(ptr noundef %call2) #9
  ret ptr %call3
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_obtain_alias(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @jfs_iget(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @jfs_lookup(ptr noundef %dip, ptr noundef %dentry, i32 noundef %flags) #0 align 64 {
entry:
  %btstack = alloca %struct.btstack, align 8
  %inum = alloca i32, align 4
  %key = alloca %struct.component_name, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %btstack) #9
  %0 = call ptr @memset(ptr %btstack, i32 255, i32 136)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %inum) #9
  %1 = ptrtoint ptr %inum to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %inum, align 4, !annotation !178
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %key) #9
  %2 = ptrtoint ptr %key to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %key, align 4, !annotation !178
  %3 = getelementptr inbounds %struct.component_name, ptr %key, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %3, align 4, !annotation !178
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jfsloglevel to i32))
  %5 = load i32, ptr @jfsloglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %5)
  %cmp = icmp sgt i32 %5, 3
  br i1 %cmp, label %do.end, label %entry.do.end3_crit_edge

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef %dentry) #12
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %call4 = call i32 @get_UCSname(ptr noundef nonnull %key, ptr noundef %dentry) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.end7, label %if.then5

if.then5:                                         ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #11
  %6 = inttoptr i32 %call4 to ptr
  br label %cleanup

if.end7:                                          ; preds = %do.end3
  %call8 = call i32 @dtSearch(ptr noundef %dip, ptr noundef nonnull %key, ptr noundef nonnull %inum, ptr noundef nonnull %btstack, i32 noundef 2) #9
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %3, align 4
  call void @kfree(ptr noundef %8) #9
  %9 = zext i32 %call8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.103)
  switch i32 %call8, label %do.body13 [
    i32 -2, label %if.end7.if.end42_crit_edge
    i32 0, label %if.else25
  ]

if.end7.if.end42_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end42

do.body13:                                        ; preds = %if.end7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jfsloglevel to i32))
  %10 = load i32, ptr @jfsloglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp14 = icmp sgt i32 %10, 0
  br i1 %cmp14, label %do.end18, label %do.body13.do.end23_crit_edge

do.body13.do.end23_crit_edge:                     ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end23

do.end18:                                         ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #11
  %call20 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %call8) #12
  br label %do.end23

do.end23:                                         ; preds = %do.end18, %do.body13.do.end23_crit_edge
  %11 = inttoptr i32 %call8 to ptr
  br label %if.end42

if.else25:                                        ; preds = %if.end7
  %i_sb = getelementptr inbounds %struct.inode, ptr %dip, i32 0, i32 8
  %12 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %i_sb, align 4
  %14 = ptrtoint ptr %inum to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %inum, align 4
  %call26 = call ptr @jfs_iget(ptr noundef %13, i32 noundef %15) #9
  %cmp.i = icmp ugt ptr %call26, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.body29, label %if.else25.if.end42_crit_edge

if.else25.if.end42_crit_edge:                     ; preds = %if.else25
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end42

do.body29:                                        ; preds = %if.else25
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jfsloglevel to i32))
  %16 = load i32, ptr @jfsloglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp30 = icmp sgt i32 %16, 0
  br i1 %cmp30, label %do.end34, label %do.body29.if.end42_crit_edge

do.body29.if.end42_crit_edge:                     ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end42

do.end34:                                         ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #11
  %17 = ptrtoint ptr %inum to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %inum, align 4
  %call36 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %18) #12
  br label %if.end42

if.end42:                                         ; preds = %do.end34, %do.body29.if.end42_crit_edge, %if.else25.if.end42_crit_edge, %do.end23, %if.end7.if.end42_crit_edge
  %ip.0 = phi ptr [ %11, %do.end23 ], [ %call26, %do.end34 ], [ %call26, %do.body29.if.end42_crit_edge ], [ %call26, %if.else25.if.end42_crit_edge ], [ null, %if.end7.if.end42_crit_edge ]
  %call43 = call ptr @d_splice_alias(ptr noundef %ip.0, ptr noundef %dentry) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end42, %if.then5
  %retval.0 = phi ptr [ %6, %if.then5 ], [ %call43, %if.end42 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %key) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %inum) #9
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %btstack) #9
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @jfs_get_acl(ptr noundef, i32 noundef, i1 noundef zeroext) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @jfs_create(ptr nocapture noundef readnone %mnt_userns, ptr noundef %dip, ptr noundef %dentry, i16 noundef zeroext %mode, i1 noundef zeroext %excl) #0 align 64 {
entry:
  %ino = alloca i32, align 4
  %dname = alloca %struct.component_name, align 4
  %btstack = alloca %struct.btstack, align 8
  %iplist = alloca [2 x ptr], align 4
  %tmp69 = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ino) #9
  %0 = ptrtoint ptr %ino to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %ino, align 4, !annotation !178
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %dname) #9
  %1 = ptrtoint ptr %dname to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %dname, align 4, !annotation !178
  %2 = getelementptr inbounds %struct.component_name, ptr %dname, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr inttoptr (i32 -1 to ptr), ptr %2, align 4, !annotation !178
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %btstack) #9
  %4 = call ptr @memset(ptr %btstack, i32 255, i32 136)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %iplist) #9
  %5 = ptrtoint ptr %iplist to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr inttoptr (i32 -1 to ptr), ptr %iplist, align 4, !annotation !178
  %6 = getelementptr inbounds [2 x ptr], ptr %iplist, i32 0, i32 1
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 -1 to ptr), ptr %6, align 4, !annotation !178
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jfsloglevel to i32))
  %8 = load i32, ptr @jfsloglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %8)
  %cmp = icmp sgt i32 %8, 3
  br i1 %cmp, label %do.end, label %entry.do.end3_crit_edge

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %dip, ptr noundef %dentry) #12
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %call4 = tail call i32 @dquot_initialize(ptr noundef %dip) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.end6, label %do.end3.do.body80_crit_edge

do.end3.do.body80_crit_edge:                      ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body80

if.end6:                                          ; preds = %do.end3
  %call7 = call i32 @get_UCSname(ptr noundef nonnull %dname, ptr noundef %dentry) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %if.end6.do.body80_crit_edge

if.end6.do.body80_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body80

if.end10:                                         ; preds = %if.end6
  %call11 = call ptr @ialloc(ptr noundef %dip, i16 noundef zeroext %mode) #9
  %cmp.i = icmp ugt ptr %call11, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then13, label %if.end15

if.then13:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %call11 to i32
  br label %out2

if.end15:                                         ; preds = %if.end10
  %i_sb = getelementptr inbounds %struct.inode, ptr %dip, i32 0, i32 8
  %10 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %i_sb, align 4
  %call16 = call zeroext i16 @txBegin(ptr noundef %11, i32 noundef 0) #9
  %commit_mutex = getelementptr i8, ptr %dip, i32 -592
  call void @mutex_lock_nested(ptr noundef %commit_mutex, i32 noundef 0) #9
  %commit_mutex19 = getelementptr i8, ptr %call11, i32 -592
  call void @mutex_lock_nested(ptr noundef %commit_mutex19, i32 noundef 1) #9
  %call20 = call i32 @jfs_init_acl(i16 noundef zeroext %call16, ptr noundef %call11, ptr noundef %dip) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end23, label %if.end15.out3_crit_edge

if.end15.out3_crit_edge:                          ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %out3

if.end23:                                         ; preds = %if.end15
  %d_name = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4
  %call24 = call i32 @jfs_init_security(i16 noundef zeroext %call16, ptr noundef %call11, ptr noundef %dip, ptr noundef %d_name) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end27, label %if.then26

if.then26:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  call void @txAbort(i16 noundef zeroext %call16, i32 noundef 0) #9
  br label %out3

if.end27:                                         ; preds = %if.end23
  %call28 = call i32 @dtSearch(ptr noundef %dip, ptr noundef nonnull %dname, ptr noundef nonnull %ino, ptr noundef nonnull %btstack, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end42, label %do.body31

do.body31:                                        ; preds = %if.end27
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jfsloglevel to i32))
  %12 = load i32, ptr @jfsloglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp32 = icmp sgt i32 %12, 0
  br i1 %cmp32, label %do.end36, label %do.body31.do.end41_crit_edge

do.body31.do.end41_crit_edge:                     ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end41

do.end36:                                         ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #11
  %call38 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, i32 noundef %call28) #12
  br label %do.end41

do.end41:                                         ; preds = %do.end36, %do.body31.do.end41_crit_edge
  call void @txAbort(i16 noundef zeroext %call16, i32 noundef 0) #9
  br label %out3

if.end42:                                         ; preds = %if.end27
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @TxBlock to i32))
  %13 = load ptr, ptr @TxBlock, align 4
  %idxprom = zext i16 %call16 to i32
  %arrayidx = getelementptr %struct.tblock, ptr %13, i32 %idxprom
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %arrayidx, align 4
  %16 = or i16 %15, 1024
  store i16 %16, ptr %arrayidx, align 4
  %i_ino = getelementptr inbounds %struct.inode, ptr %call11, i32 0, i32 11
  %17 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %i_ino, align 8
  %ino44 = getelementptr %struct.tblock, ptr %13, i32 %idxprom, i32 17
  %19 = ptrtoint ptr %ino44 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %ino44, align 4
  %u = getelementptr %struct.tblock, ptr %13, i32 %idxprom, i32 16
  %ixpxd = getelementptr i8, ptr %call11, i32 -832
  %20 = ptrtoint ptr %ixpxd to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %ixpxd, align 8
  %22 = ptrtoint ptr %u to i32
  call void @__asan_storeN_noabort(i32 %22, i32 8)
  store i64 %21, ptr %u, align 4
  %23 = ptrtoint ptr %iplist to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %dip, ptr %iplist, align 4
  %24 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call11, ptr %6, align 4
  call void @xtInitRoot(i16 noundef zeroext %call16, ptr noundef %call11) #9
  %25 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %i_ino, align 8
  %27 = ptrtoint ptr %ino to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %ino, align 4
  %call49 = call i32 @dtInsert(i16 noundef zeroext %call16, ptr noundef %dip, ptr noundef nonnull %dname, ptr noundef nonnull %ino, ptr noundef nonnull %btstack) #9
  %28 = zext i32 %call49 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.104)
  switch i32 %call49, label %if.else [
    i32 0, label %if.end68
    i32 -5, label %do.body55
  ]

do.body55:                                        ; preds = %if.end42
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jfsloglevel to i32))
  %29 = load i32, ptr @jfsloglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp56 = icmp sgt i32 %29, 0
  br i1 %cmp56, label %do.end61, label %do.body55.do.end66_crit_edge

do.body55.do.end66_crit_edge:                     ; preds = %do.body55
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end66

do.end61:                                         ; preds = %do.body55
  call void @__sanitizer_cov_trace_pc() #11
  %call63 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17) #12
  br label %do.end66

do.end66:                                         ; preds = %do.end61, %do.body55.do.end66_crit_edge
  call void @txAbort(i16 noundef zeroext %call16, i32 noundef 1) #9
  br label %out3

if.else:                                          ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #11
  call void @txAbort(i16 noundef zeroext %call16, i32 noundef 0) #9
  br label %out3

if.end68:                                         ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #11
  %i_op = getelementptr inbounds %struct.inode, ptr %call11, i32 0, i32 7
  %30 = ptrtoint ptr %i_op to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @jfs_file_inode_operations, ptr %i_op, align 8
  %31 = getelementptr inbounds %struct.inode, ptr %call11, i32 0, i32 44
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @jfs_file_operations, ptr %31, align 8
  %i_mapping = getelementptr inbounds %struct.inode, ptr %call11, i32 0, i32 9
  %33 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %i_mapping, align 8
  %a_ops = getelementptr inbounds %struct.address_space, ptr %34, i32 0, i32 9
  %35 = ptrtoint ptr %a_ops to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @jfs_aops, ptr %a_ops, align 4
  call void @__mark_inode_dirty(ptr noundef %call11, i32 noundef 7) #9
  %i_ctime = getelementptr inbounds %struct.inode, ptr %dip, i32 0, i32 17
  %i_mtime = getelementptr inbounds %struct.inode, ptr %dip, i32 0, i32 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp69) #9
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp69, ptr noundef %dip) #9
  %36 = call ptr @memcpy(ptr %i_mtime, ptr %tmp69, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp69) #9
  %37 = call ptr @memcpy(ptr %i_ctime, ptr %i_mtime, i32 16)
  call void @__mark_inode_dirty(ptr noundef %dip, i32 noundef 7) #9
  %call71 = call i32 @txCommit(i16 noundef zeroext %call16, i32 noundef 2, ptr noundef nonnull %iplist, i32 noundef 0) #9
  br label %out3

out3:                                             ; preds = %if.end68, %if.else, %do.end66, %do.end41, %if.then26, %if.end15.out3_crit_edge
  %rc.0 = phi i32 [ %call20, %if.end15.out3_crit_edge ], [ %call24, %if.then26 ], [ %call28, %do.end41 ], [ -5, %do.end66 ], [ %call49, %if.else ], [ %call71, %if.end68 ]
  call void @txEnd(i16 noundef zeroext %call16) #9
  call void @mutex_unlock(ptr noundef %commit_mutex19) #9
  call void @mutex_unlock(ptr noundef %commit_mutex) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.0)
  %tobool76.not = icmp eq i32 %rc.0, 0
  br i1 %tobool76.not, label %if.else78, label %if.then77

if.then77:                                        ; preds = %out3
  %ea1.i = getelementptr i8, ptr %call11, i32 -808
  %38 = ptrtoint ptr %ea1.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %ea1.i, align 4
  %40 = and i8 %39, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool.not.i = icmp eq i8 %40, 0
  br i1 %tobool.not.i, label %if.then77.free_ea_wmap.exit_crit_edge, label %if.then.i

if.then77.free_ea_wmap.exit_crit_edge:            ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #11
  br label %free_ea_wmap.exit

if.then.i:                                        ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #11
  %loc.i = getelementptr i8, ptr %call11, i32 -800
  %41 = ptrtoint ptr %loc.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %loc.i, align 4
  %43 = shl i32 %42, 24
  %conv.i.i = zext i32 %43 to i64
  %shl.i.i = shl nuw nsw i64 %conv.i.i, 8
  %addr2.i.i = getelementptr i8, ptr %call11, i32 -796
  %44 = ptrtoint ptr %addr2.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %addr2.i.i, align 4
  %46 = call i32 @llvm.bswap.i32(i32 %45) #9
  %conv1.i.i = zext i32 %46 to i64
  %add.i.i = or i64 %shl.i.i, %conv1.i.i
  %47 = and i32 %42, -256
  %48 = call i32 @llvm.bswap.i32(i32 %47) #9
  call void @__invalidate_metapages(ptr noundef %call11, i64 noundef %add.i.i, i32 noundef %48) #9
  %49 = ptrtoint ptr %loc.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %loc.i, align 4
  %51 = shl i32 %50, 24
  %conv.i19.i = zext i32 %51 to i64
  %shl.i20.i = shl nuw nsw i64 %conv.i19.i, 8
  %52 = ptrtoint ptr %addr2.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %addr2.i.i, align 4
  %54 = call i32 @llvm.bswap.i32(i32 %53) #9
  %conv1.i22.i = zext i32 %54 to i64
  %add.i23.i = or i64 %shl.i20.i, %conv1.i22.i
  %55 = and i32 %50, -256
  %56 = call i32 @llvm.bswap.i32(i32 %55) #9
  %conv9.i = zext i32 %56 to i64
  %call10.i = call i32 @dbFree(ptr noundef %call11, i64 noundef %add.i23.i, i64 noundef %conv9.i) #9
  br label %free_ea_wmap.exit

free_ea_wmap.exit:                                ; preds = %if.then.i, %if.then77.free_ea_wmap.exit_crit_edge
  %57 = ptrtoint ptr %ea1.i to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 0, ptr %ea1.i, align 4
  call void @clear_nlink(ptr noundef %call11) #9
  call void @discard_new_inode(ptr noundef %call11) #9
  br label %out2

if.else78:                                        ; preds = %out3
  call void @__sanitizer_cov_trace_pc() #11
  call void @d_instantiate_new(ptr noundef %dentry, ptr noundef %call11) #9
  br label %out2

out2:                                             ; preds = %if.else78, %free_ea_wmap.exit, %if.then13
  %rc.1 = phi i32 [ %9, %if.then13 ], [ %rc.0, %free_ea_wmap.exit ], [ 0, %if.else78 ]
  %58 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %2, align 4
  call void @kfree(ptr noundef %59) #9
  br label %do.body80

do.body80:                                        ; preds = %out2, %if.end6.do.body80_crit_edge, %do.end3.do.body80_crit_edge
  %rc.2 = phi i32 [ %call4, %do.end3.do.body80_crit_edge ], [ %call7, %if.end6.do.body80_crit_edge ], [ %rc.1, %out2 ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jfsloglevel to i32))
  %60 = load i32, ptr @jfsloglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %60)
  %cmp81 = icmp sgt i32 %60, 3
  br i1 %cmp81, label %do.end86, label %do.body80.do.end91_crit_edge

do.body80.do.end91_crit_edge:                     ; preds = %do.body80
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end91

do.end86:                                         ; preds = %do.body80
  call void @__sanitizer_cov_trace_pc() #11
  %call88 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, i32 noundef %rc.2) #12
  br label %do.end91

do.end91:                                         ; preds = %do.end86, %do.body80.do.end91_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %iplist) #9
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %btstack) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %dname) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ino) #9
  ret i32 %rc.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @jfs_link(ptr noundef %old_dentry, ptr noundef %dir, ptr noundef %dentry) #0 align 64 {
entry:
  %ino = alloca i32, align 4
  %dname = alloca %struct.component_name, align 4
  %btstack = alloca %struct.btstack, align 8
  %iplist = alloca [2 x ptr], align 4
  %tmp24 = alloca %struct.timespec64, align 8
  %tmp26 = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %old_dentry, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ino) #9
  %2 = ptrtoint ptr %ino to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %ino, align 4, !annotation !178
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %dname) #9
  %3 = ptrtoint ptr %dname to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %dname, align 4, !annotation !178
  %4 = getelementptr inbounds %struct.component_name, ptr %dname, i32 0, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr inttoptr (i32 -1 to ptr), ptr %4, align 4, !annotation !178
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %btstack) #9
  %6 = call ptr @memset(ptr %btstack, i32 255, i32 136)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %iplist) #9
  %7 = ptrtoint ptr %iplist to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 -1 to ptr), ptr %iplist, align 4, !annotation !178
  %8 = getelementptr inbounds [2 x ptr], ptr %iplist, i32 0, i32 1
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 -1 to ptr), ptr %8, align 4, !annotation !178
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jfsloglevel to i32))
  %10 = load i32, ptr @jfsloglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %10)
  %cmp = icmp sgt i32 %10, 3
  br i1 %cmp, label %do.end, label %entry.do.end4_crit_edge

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef %old_dentry, ptr noundef %dentry) #12
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %call5 = tail call i32 @dquot_initialize(ptr noundef %dir) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %if.end7, label %do.end4.do.body37_crit_edge

do.end4.do.body37_crit_edge:                      ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body37

if.end7:                                          ; preds = %do.end4
  %i_sb = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %11 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %i_sb, align 4
  %call8 = tail call zeroext i16 @txBegin(ptr noundef %12, i32 noundef 0) #9
  %commit_mutex = getelementptr i8, ptr %dir, i32 -592
  tail call void @mutex_lock_nested(ptr noundef %commit_mutex, i32 noundef 0) #9
  %commit_mutex11 = getelementptr i8, ptr %1, i32 -592
  tail call void @mutex_lock_nested(ptr noundef %commit_mutex11, i32 noundef 1) #9
  %call12 = call i32 @get_UCSname(ptr noundef nonnull %dname, ptr noundef %dentry) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %if.end7.out_tx_crit_edge

if.end7.out_tx_crit_edge:                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_tx

if.end15:                                         ; preds = %if.end7
  %call16 = call i32 @dtSearch(ptr noundef %dir, ptr noundef nonnull %dname, ptr noundef nonnull %ino, ptr noundef nonnull %btstack, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %if.end15.free_dname_crit_edge

if.end15.free_dname_crit_edge:                    ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %free_dname

if.end19:                                         ; preds = %if.end15
  %i_ino = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 11
  %13 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %i_ino, align 8
  %15 = ptrtoint ptr %ino to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %ino, align 4
  %call20 = call i32 @dtInsert(i16 noundef zeroext %call8, ptr noundef %dir, ptr noundef nonnull %dname, ptr noundef nonnull %ino, ptr noundef nonnull %btstack) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end23, label %if.end19.free_dname_crit_edge

if.end19.free_dname_crit_edge:                    ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %free_dname

if.end23:                                         ; preds = %if.end19
  call void @inc_nlink(ptr noundef %1) #9
  %i_ctime = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp24) #9
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp24, ptr noundef %1) #9
  %16 = call ptr @memcpy(ptr %i_ctime, ptr %tmp24, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp24) #9
  %i_ctime25 = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 17
  %i_mtime = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp26) #9
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp26, ptr noundef %dir) #9
  %17 = call ptr @memcpy(ptr %i_mtime, ptr %tmp26, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp26) #9
  %18 = call ptr @memcpy(ptr %i_ctime25, ptr %i_mtime, i32 16)
  call void @__mark_inode_dirty(ptr noundef %dir, i32 noundef 7) #9
  call void @ihold(ptr noundef %1) #9
  %19 = ptrtoint ptr %iplist to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %1, ptr %iplist, align 4
  %20 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %dir, ptr %8, align 4
  %call29 = call i32 @txCommit(i16 noundef zeroext %call8, i32 noundef 2, ptr noundef nonnull %iplist, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.else, label %if.then31

if.then31:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  call void @drop_nlink(ptr noundef %1) #9
  call void @iput(ptr noundef %1) #9
  br label %free_dname

if.else:                                          ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  call void @d_instantiate(ptr noundef %dentry, ptr noundef %1) #9
  br label %free_dname

free_dname:                                       ; preds = %if.else, %if.then31, %if.end19.free_dname_crit_edge, %if.end15.free_dname_crit_edge
  %rc.0 = phi i32 [ %call16, %if.end15.free_dname_crit_edge ], [ %call20, %if.end19.free_dname_crit_edge ], [ %call29, %if.then31 ], [ 0, %if.else ]
  %21 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %4, align 4
  call void @kfree(ptr noundef %22) #9
  br label %out_tx

out_tx:                                           ; preds = %free_dname, %if.end7.out_tx_crit_edge
  %rc.1 = phi i32 [ %call12, %if.end7.out_tx_crit_edge ], [ %rc.0, %free_dname ]
  call void @txEnd(i16 noundef zeroext %call8) #9
  call void @mutex_unlock(ptr noundef %commit_mutex11) #9
  call void @mutex_unlock(ptr noundef %commit_mutex) #9
  br label %do.body37

do.body37:                                        ; preds = %out_tx, %do.end4.do.body37_crit_edge
  %rc.2 = phi i32 [ %call5, %do.end4.do.body37_crit_edge ], [ %rc.1, %out_tx ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jfsloglevel to i32))
  %23 = load i32, ptr @jfsloglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %23)
  %cmp38 = icmp sgt i32 %23, 3
  br i1 %cmp38, label %do.end42, label %do.body37.do.end47_crit_edge

do.body37.do.end47_crit_edge:                     ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end47

do.end42:                                         ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #11
  %call44 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, i32 noundef %rc.2) #12
  br label %do.end47

do.end47:                                         ; preds = %do.end42, %do.body37.do.end47_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %iplist) #9
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %btstack) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %dname) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ino) #9
  ret i32 %rc.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @jfs_unlink(ptr noundef %dip, ptr noundef %dentry) #0 align 64 {
entry:
  %ino = alloca i32, align 4
  %dname = alloca %struct.component_name, align 4
  %iplist = alloca [2 x ptr], align 4
  %tmp64 = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ino) #9
  %2 = ptrtoint ptr %ino to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %ino, align 4, !annotation !178
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %dname) #9
  %3 = ptrtoint ptr %dname to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %dname, align 4, !annotation !178
  %4 = getelementptr inbounds %struct.component_name, ptr %dname, i32 0, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr inttoptr (i32 -1 to ptr), ptr %4, align 4, !annotation !178
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %iplist) #9
  %6 = ptrtoint ptr %iplist to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 -1 to ptr), ptr %iplist, align 4, !annotation !178
  %7 = getelementptr inbounds [2 x ptr], ptr %iplist, i32 0, i32 1
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 -1 to ptr), ptr %7, align 4, !annotation !178
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jfsloglevel to i32))
  %9 = load i32, ptr @jfsloglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %9)
  %cmp = icmp sgt i32 %9, 3
  br i1 %cmp, label %do.end, label %entry.do.end4_crit_edge

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef %dip, ptr noundef %dentry) #12
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %call5 = tail call i32 @dquot_initialize(ptr noundef %dip) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %if.end7, label %do.end4.do.body147_crit_edge

do.end4.do.body147_crit_edge:                     ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body147

if.end7:                                          ; preds = %do.end4
  %call8 = tail call i32 @dquot_initialize(ptr noundef %1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %if.end7.do.body147_crit_edge

if.end7.do.body147_crit_edge:                     ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body147

if.end11:                                         ; preds = %if.end7
  %call12 = call i32 @get_UCSname(ptr noundef nonnull %dname, ptr noundef %dentry) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %if.end11.do.body147_crit_edge

if.end11.do.body147_crit_edge:                    ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body147

if.end15:                                         ; preds = %if.end11
  %rdwrlock = getelementptr i8, ptr %1, i32 -688
  call void @down_write_nested(ptr noundef %rdwrlock, i32 noundef 0) #9
  %i_sb = getelementptr inbounds %struct.inode, ptr %dip, i32 0, i32 8
  %10 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %i_sb, align 4
  %call17 = call zeroext i16 @txBegin(ptr noundef %11, i32 noundef 0) #9
  %commit_mutex = getelementptr i8, ptr %dip, i32 -592
  call void @mutex_lock_nested(ptr noundef %commit_mutex, i32 noundef 0) #9
  %commit_mutex20 = getelementptr i8, ptr %1, i32 -592
  call void @mutex_lock_nested(ptr noundef %commit_mutex20, i32 noundef 1) #9
  %12 = ptrtoint ptr %iplist to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %dip, ptr %iplist, align 4
  %13 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %1, ptr %7, align 4
  %i_ino = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 11
  %14 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %i_ino, align 8
  %16 = ptrtoint ptr %ino to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %ino, align 4
  %call22 = call i32 @dtDelete(i16 noundef zeroext %call17, ptr noundef %dip, ptr noundef nonnull %dname, ptr noundef nonnull %ino, i32 noundef 3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %do.body46, label %do.body25

do.body25:                                        ; preds = %if.end15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jfsloglevel to i32))
  %17 = load i32, ptr @jfsloglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp26 = icmp sgt i32 %17, 0
  br i1 %cmp26, label %do.end30, label %do.body25.do.end35_crit_edge

do.body25.do.end35_crit_edge:                     ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end35

do.end30:                                         ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #11
  %call32 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, i32 noundef %call22) #12
  br label %do.end35

do.end35:                                         ; preds = %do.end30, %do.body25.do.end35_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -5, i32 %call22)
  %cmp36 = icmp eq i32 %call22, -5
  br i1 %cmp36, label %if.then37, label %do.end35.if.end38_crit_edge

do.end35.if.end38_crit_edge:                      ; preds = %do.end35
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end38

if.then37:                                        ; preds = %do.end35
  call void @__sanitizer_cov_trace_pc() #11
  call void @txAbort(i16 noundef zeroext %call17, i32 noundef 1) #9
  br label %if.end38

if.end38:                                         ; preds = %if.then37, %do.end35.if.end38_crit_edge
  call void @txEnd(i16 noundef zeroext %call17) #9
  call void @mutex_unlock(ptr noundef %commit_mutex20) #9
  call void @mutex_unlock(ptr noundef %commit_mutex) #9
  call void @up_write(ptr noundef %rdwrlock) #9
  br label %out1

do.body46:                                        ; preds = %if.end15
  %18 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 12
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %18, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool47.not = icmp eq i32 %20, 0
  br i1 %tobool47.not, label %do.end51, label %do.end62

do.end51:                                         ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #11
  %call53 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.2, i32 noundef 513, ptr noundef nonnull @.str.35) #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jfs/namei.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 513, 0\0A.popsection", ""() #9, !srcloc !179
  unreachable

do.end62:                                         ; preds = %do.body46
  %i_ctime = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 17
  %i_ctime63 = getelementptr inbounds %struct.inode, ptr %dip, i32 0, i32 17
  %i_mtime = getelementptr inbounds %struct.inode, ptr %dip, i32 0, i32 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp64) #9
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp64, ptr noundef %1) #9
  %21 = call ptr @memcpy(ptr %i_mtime, ptr %tmp64, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp64) #9
  %22 = call ptr @memcpy(ptr %i_ctime63, ptr %i_mtime, i32 16)
  %23 = call ptr @memmove(ptr %i_ctime, ptr %i_mtime, i32 16)
  call void @__mark_inode_dirty(ptr noundef %dip, i32 noundef 7) #9
  call void @drop_nlink(ptr noundef %1) #9
  call void @__mark_inode_dirty(ptr noundef %1, i32 noundef 7) #9
  %24 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %18, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp65 = icmp eq i32 %25, 0
  br i1 %cmp65, label %do.body67, label %do.end62.if.end99.thread_crit_edge

do.end62.if.end99.thread_crit_edge:               ; preds = %do.end62
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end99.thread

do.body67:                                        ; preds = %do.end62
  %cflag = getelementptr i8, ptr %1, i32 -768
  %26 = ptrtoint ptr %cflag to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %cflag, align 4
  %and1.i = and i32 %27, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool70.not = icmp eq i32 %and1.i, 0
  br i1 %tobool70.not, label %do.end85, label %do.end74

do.end74:                                         ; preds = %do.body67
  call void @__sanitizer_cov_trace_pc() #11
  %call76 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.2, i32 noundef 525, ptr noundef nonnull @.str.38) #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jfs/namei.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 525, 0\0A.popsection", ""() #9, !srcloc !180
  unreachable

do.end85:                                         ; preds = %do.body67
  %call86 = call fastcc i64 @commitZeroLink(i16 noundef zeroext %call17, ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call86)
  %cmp87 = icmp slt i64 %call86, 0
  br i1 %cmp87, label %if.then88, label %if.end99

if.then88:                                        ; preds = %do.end85
  call void @__sanitizer_cov_trace_pc() #11
  call void @txAbort(i16 noundef zeroext %call17, i32 noundef 1) #9
  call void @txEnd(i16 noundef zeroext %call17) #9
  call void @mutex_unlock(ptr noundef %commit_mutex20) #9
  call void @mutex_unlock(ptr noundef %commit_mutex) #9
  call void @up_write(ptr noundef %rdwrlock) #9
  %conv = trunc i64 %call86 to i32
  br label %out1

if.end99:                                         ; preds = %do.end85
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @TxBlock to i32))
  %28 = load ptr, ptr @TxBlock, align 4
  %idxprom = zext i16 %call17 to i32
  %arrayidx96 = getelementptr %struct.tblock, ptr %28, i32 %idxprom
  %29 = ptrtoint ptr %arrayidx96 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %arrayidx96, align 4
  %31 = or i16 %30, 256
  store i16 %31, ptr %arrayidx96, align 4
  %u = getelementptr %struct.tblock, ptr %28, i32 %idxprom, i32 16
  %32 = ptrtoint ptr %u to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %1, ptr %u, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call86)
  %tobool100.not = icmp eq i64 %call86, 0
  br i1 %tobool100.not, label %if.end99.if.end99.thread_crit_edge, label %if.end99._crit_edge

if.end99._crit_edge:                              ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #11
  br label %33

if.end99.if.end99.thread_crit_edge:               ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end99.thread

if.end99.thread:                                  ; preds = %if.end99.if.end99.thread_crit_edge, %do.end62.if.end99.thread_crit_edge
  br label %33

33:                                               ; preds = %if.end99.thread, %if.end99._crit_edge
  %new_size.0244 = phi i64 [ 0, %if.end99.thread ], [ %call86, %if.end99._crit_edge ]
  %34 = phi i32 [ 0, %if.end99.thread ], [ 1, %if.end99._crit_edge ]
  %call104 = call i32 @txCommit(i16 noundef zeroext %call17, i32 noundef 2, ptr noundef nonnull %iplist, i32 noundef %34) #9
  call void @txEnd(i16 noundef zeroext %call17) #9
  call void @mutex_unlock(ptr noundef %commit_mutex20) #9
  call void @mutex_unlock(ptr noundef %commit_mutex) #9
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %new_size.0244)
  %tobool109.not246 = icmp ne i64 %new_size.0244, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call104)
  %cmp110247 = icmp eq i32 %call104, 0
  %or.cond248 = select i1 %tobool109.not246, i1 %cmp110247, i1 false
  br i1 %or.cond248, label %.while.body_crit_edge, label %.while.end_crit_edge

.while.end_crit_edge:                             ; preds = %33
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

.while.body_crit_edge:                            ; preds = %33
  br label %while.body

while.body:                                       ; preds = %if.end124.while.body_crit_edge, %.while.body_crit_edge
  %new_size.1249 = phi i64 [ %call116, %if.end124.while.body_crit_edge ], [ %new_size.0244, %.while.body_crit_edge ]
  %35 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %i_sb, align 4
  %call113 = call zeroext i16 @txBegin(ptr noundef %36, i32 noundef 0) #9
  call void @mutex_lock_nested(ptr noundef %commit_mutex20, i32 noundef 0) #9
  %call116 = call i64 @xtTruncate_pmap(i16 noundef zeroext %call113, ptr noundef %1, i64 noundef %new_size.1249) #9
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call116)
  %cmp117 = icmp slt i64 %call116, 0
  br i1 %cmp117, label %if.then119, label %if.else121

if.then119:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  call void @txAbort(i16 noundef zeroext %call113, i32 noundef 1) #9
  %conv120 = trunc i64 %call116 to i32
  br label %if.end124

if.else121:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  %call123 = call i32 @txCommit(i16 noundef zeroext %call113, i32 noundef 2, ptr noundef nonnull %iplist, i32 noundef 1) #9
  br label %if.end124

if.end124:                                        ; preds = %if.else121, %if.then119
  %rc.1 = phi i32 [ %conv120, %if.then119 ], [ %call123, %if.else121 ]
  call void @txEnd(i16 noundef zeroext %call113) #9
  call void @mutex_unlock(ptr noundef %commit_mutex20) #9
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call116)
  %tobool109.not = icmp ne i64 %call116, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.1)
  %cmp110 = icmp eq i32 %rc.1, 0
  %or.cond = select i1 %tobool109.not, i1 %cmp110, i1 false
  br i1 %or.cond, label %if.end124.while.body_crit_edge, label %if.end124.while.end_crit_edge

if.end124.while.end_crit_edge:                    ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

if.end124.while.body_crit_edge:                   ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

while.end:                                        ; preds = %if.end124.while.end_crit_edge, %.while.end_crit_edge
  %rc.0.lcssa = phi i32 [ %call104, %.while.end_crit_edge ], [ %rc.1, %if.end124.while.end_crit_edge ]
  %37 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %18, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp127 = icmp eq i32 %38, 0
  br i1 %cmp127, label %if.then129, label %while.end.if.end132_crit_edge

while.end.if.end132_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end132

if.then129:                                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  %cflag131 = getelementptr i8, ptr %1, i32 -768
  call void @_set_bit(i32 noundef 0, ptr noundef %cflag131) #9
  br label %if.end132

if.end132:                                        ; preds = %if.then129, %while.end.if.end132_crit_edge
  call void @up_write(ptr noundef %rdwrlock) #9
  %cflag136 = getelementptr i8, ptr %dip, i32 -768
  %39 = ptrtoint ptr %cflag136 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %cflag136, align 4
  %41 = and i32 %40, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool138.not = icmp eq i32 %41, 0
  br i1 %tobool138.not, label %if.end132.out1_crit_edge, label %if.then139

if.end132.out1_crit_edge:                         ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #11
  br label %out1

if.then139:                                       ; preds = %if.end132
  %i_size = getelementptr inbounds %struct.inode, ptr %dip, i32 0, i32 14
  %42 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %i_size, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %43)
  %cmp140 = icmp sgt i64 %43, 1
  br i1 %cmp140, label %if.then142, label %if.then139.if.end143_crit_edge

if.then139.if.end143_crit_edge:                   ; preds = %if.then139
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end143

if.then142:                                       ; preds = %if.then139
  call void @__sanitizer_cov_trace_pc() #11
  call void @jfs_truncate_nolock(ptr noundef %dip, i64 noundef 0) #9
  br label %if.end143

if.end143:                                        ; preds = %if.then142, %if.then139.if.end143_crit_edge
  call void @_clear_bit(i32 noundef 5, ptr noundef %cflag136) #9
  br label %out1

out1:                                             ; preds = %if.end143, %if.end132.out1_crit_edge, %if.then88, %if.end38
  %rc.2 = phi i32 [ %call22, %if.end38 ], [ %conv, %if.then88 ], [ %rc.0.lcssa, %if.end143 ], [ %rc.0.lcssa, %if.end132.out1_crit_edge ]
  %44 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %4, align 4
  call void @kfree(ptr noundef %45) #9
  br label %do.body147

do.body147:                                       ; preds = %out1, %if.end11.do.body147_crit_edge, %if.end7.do.body147_crit_edge, %do.end4.do.body147_crit_edge
  %rc.3 = phi i32 [ %call5, %do.end4.do.body147_crit_edge ], [ %call8, %if.end7.do.body147_crit_edge ], [ %call12, %if.end11.do.body147_crit_edge ], [ %rc.2, %out1 ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jfsloglevel to i32))
  %46 = load i32, ptr @jfsloglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %46)
  %cmp148 = icmp sgt i32 %46, 3
  br i1 %cmp148, label %do.end153, label %do.body147.do.end158_crit_edge

do.body147.do.end158_crit_edge:                   ; preds = %do.body147
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end158

do.end153:                                        ; preds = %do.body147
  call void @__sanitizer_cov_trace_pc() #11
  %call155 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, i32 noundef %rc.3) #12
  br label %do.end158

do.end158:                                        ; preds = %do.end153, %do.body147.do.end158_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %iplist) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %dname) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ino) #9
  ret i32 %rc.3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @jfs_symlink(ptr nocapture noundef readnone %mnt_userns, ptr noundef %dip, ptr noundef %dentry, ptr noundef %name) #0 align 64 {
entry:
  %ino = alloca i32, align 4
  %dname = alloca %struct.component_name, align 4
  %btstack = alloca %struct.btstack, align 8
  %xaddr = alloca i64, align 8
  %iplist = alloca [2 x ptr], align 4
  %tmp115 = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ino) #9
  %0 = ptrtoint ptr %ino to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %ino, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %dname) #9
  %1 = ptrtoint ptr %dname to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %dname, align 4, !annotation !178
  %2 = getelementptr inbounds %struct.component_name, ptr %dname, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr inttoptr (i32 -1 to ptr), ptr %2, align 4, !annotation !178
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %btstack) #9
  %4 = call ptr @memset(ptr %btstack, i32 255, i32 136)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %xaddr) #9
  %5 = ptrtoint ptr %xaddr to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 -1, ptr %xaddr, align 8, !annotation !178
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %iplist) #9
  %6 = ptrtoint ptr %iplist to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 -1 to ptr), ptr %iplist, align 4, !annotation !178
  %7 = getelementptr inbounds [2 x ptr], ptr %iplist, i32 0, i32 1
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 -1 to ptr), ptr %7, align 4, !annotation !178
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jfsloglevel to i32))
  %9 = load i32, ptr @jfsloglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %9)
  %cmp = icmp sgt i32 %9, 3
  br i1 %cmp, label %do.end, label %entry.do.end4_crit_edge

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, ptr noundef %dip, ptr noundef %name) #12
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %call5 = tail call i32 @dquot_initialize(ptr noundef %dip) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %if.end7, label %do.end4.do.body129_crit_edge

do.end4.do.body129_crit_edge:                     ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body129

if.end7:                                          ; preds = %do.end4
  %call8 = tail call i32 @strlen(ptr noundef %name) #13
  %add = add i32 %call8, 1
  %call9 = call i32 @get_UCSname(ptr noundef nonnull %dname, ptr noundef %dentry) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %if.end7.do.body129_crit_edge

if.end7.do.body129_crit_edge:                     ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body129

if.end12:                                         ; preds = %if.end7
  %call13 = call ptr @ialloc(ptr noundef %dip, i16 noundef zeroext -24065) #9
  %cmp.i = icmp ugt ptr %call13, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then15, label %if.end17

if.then15:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %call13 to i32
  br label %out2

if.end17:                                         ; preds = %if.end12
  %i_sb = getelementptr inbounds %struct.inode, ptr %dip, i32 0, i32 8
  %11 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %i_sb, align 4
  %call18 = call zeroext i16 @txBegin(ptr noundef %12, i32 noundef 0) #9
  %commit_mutex = getelementptr i8, ptr %dip, i32 -592
  call void @mutex_lock_nested(ptr noundef %commit_mutex, i32 noundef 0) #9
  %commit_mutex21 = getelementptr i8, ptr %call13, i32 -592
  call void @mutex_lock_nested(ptr noundef %commit_mutex21, i32 noundef 1) #9
  %d_name = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4
  %call22 = call i32 @jfs_init_security(i16 noundef zeroext %call18, ptr noundef %call13, ptr noundef %dip, ptr noundef %d_name) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end25, label %if.end17.out3_crit_edge

if.end17.out3_crit_edge:                          ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %out3

if.end25:                                         ; preds = %if.end17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @TxBlock to i32))
  %13 = load ptr, ptr @TxBlock, align 4
  %idxprom = zext i16 %call18 to i32
  %arrayidx = getelementptr %struct.tblock, ptr %13, i32 %idxprom
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %arrayidx, align 4
  %16 = or i16 %15, 1024
  store i16 %16, ptr %arrayidx, align 4
  %i_ino = getelementptr inbounds %struct.inode, ptr %call13, i32 0, i32 11
  %17 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %i_ino, align 8
  %ino27 = getelementptr %struct.tblock, ptr %13, i32 %idxprom, i32 17
  %19 = ptrtoint ptr %ino27 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %ino27, align 4
  %u = getelementptr %struct.tblock, ptr %13, i32 %idxprom, i32 16
  %ixpxd = getelementptr i8, ptr %call13, i32 -832
  %20 = ptrtoint ptr %ixpxd to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %ixpxd, align 8
  %22 = ptrtoint ptr %u to i32
  call void @__asan_storeN_noabort(i32 %22, i32 8)
  store i64 %21, ptr %u, align 4
  %23 = ptrtoint ptr %call13 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %call13, align 8
  %25 = or i16 %24, 511
  store i16 %25, ptr %call13, align 8
  call void @xtInitRoot(i16 noundef zeroext %call18, ptr noundef %call13) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 257, i32 %add)
  %cmp32 = icmp slt i32 %add, 257
  br i1 %cmp32, label %if.then34, label %do.body55

if.then34:                                        ; preds = %if.end25
  %i_op = getelementptr inbounds %struct.inode, ptr %call13, i32 0, i32 7
  %26 = ptrtoint ptr %i_op to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @jfs_fast_symlink_inode_operations, ptr %i_op, align 8
  %27 = getelementptr i8, ptr %call13, i32 -368
  %28 = getelementptr inbounds %struct.inode, ptr %call13, i32 0, i32 48
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %27, ptr %28, align 4
  %30 = call ptr @memcpy(ptr %27, ptr %name, i32 %add)
  %conv37 = sext i32 %call8 to i64
  %i_size = getelementptr inbounds %struct.inode, ptr %call13, i32 0, i32 14
  %31 = ptrtoint ptr %i_size to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 %conv37, ptr %i_size, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %add)
  %cmp38 = icmp ugt i32 %add, 128
  br i1 %cmp38, label %if.then40, label %if.then34.do.body43_crit_edge

if.then34.do.body43_crit_edge:                    ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body43

if.then40:                                        ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #11
  %mode2 = getelementptr i8, ptr %call13, i32 -844
  %32 = ptrtoint ptr %mode2 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %mode2, align 4
  %and = and i32 %33, -262145
  store i32 %and, ptr %mode2, align 4
  br label %do.body43

do.body43:                                        ; preds = %if.then40, %if.then34.do.body43_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jfsloglevel to i32))
  %34 = load i32, ptr @jfsloglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %34)
  %cmp44 = icmp sgt i32 %34, 3
  br i1 %cmp44, label %do.end49, label %do.body43.if.end100_crit_edge

do.body43.if.end100_crit_edge:                    ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end100

do.end49:                                         ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #11
  %call51 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50, i32 noundef %add, ptr noundef %name) #12
  br label %if.end100

do.body55:                                        ; preds = %if.end25
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jfsloglevel to i32))
  %35 = load i32, ptr @jfsloglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %35)
  %cmp56 = icmp sgt i32 %35, 3
  br i1 %cmp56, label %do.end61, label %do.body55.do.end66_crit_edge

do.body55.do.end66_crit_edge:                     ; preds = %do.body55
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end66

do.end61:                                         ; preds = %do.body55
  call void @__sanitizer_cov_trace_pc() #11
  %call63 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef %call13) #12
  br label %do.end66

do.end66:                                         ; preds = %do.end61, %do.body55.do.end66_crit_edge
  %i_op67 = getelementptr inbounds %struct.inode, ptr %call13, i32 0, i32 7
  %36 = ptrtoint ptr %i_op67 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @jfs_symlink_inode_operations, ptr %i_op67, align 8
  call void @inode_nohighmem(ptr noundef %call13) #9
  %i_mapping = getelementptr inbounds %struct.inode, ptr %call13, i32 0, i32 9
  %37 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %i_mapping, align 8
  %a_ops = getelementptr inbounds %struct.address_space, ptr %38, i32 0, i32 9
  %39 = ptrtoint ptr %a_ops to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @jfs_aops, ptr %a_ops, align 4
  %i_sb68 = getelementptr inbounds %struct.inode, ptr %call13, i32 0, i32 8
  %40 = ptrtoint ptr %i_sb68 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %i_sb68, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %41, i32 0, i32 33
  %42 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %s_fs_info.i, align 16
  %bsize = getelementptr inbounds %struct.jfs_sb_info, ptr %43, i32 0, i32 8
  %44 = ptrtoint ptr %bsize to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %bsize, align 4
  %conv70 = sext i16 %45 to i32
  %add72 = add i32 %call8, %conv70
  %neg = sub nsw i32 0, %conv70
  %and73 = and i32 %add72, %neg
  %46 = ptrtoint ptr %xaddr to i32
  call void @__asan_store8_noabort(i32 %46)
  store i64 0, ptr %xaddr, align 8
  %l2bsize = getelementptr inbounds %struct.jfs_sb_info, ptr %43, i32 0, i32 9
  %47 = ptrtoint ptr %l2bsize to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %l2bsize, align 2
  %conv75246 = zext i16 %48 to i32
  %shr = ashr i32 %and73, %conv75246
  %conv76 = sext i32 %shr to i64
  %call78 = call i32 @xtInsert(i16 noundef zeroext %call18, ptr noundef %call13, i32 noundef 0, i64 noundef 0, i32 noundef %shr, ptr noundef nonnull %xaddr, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call78)
  %tobool79.not = icmp eq i32 %call78, 0
  br i1 %tobool79.not, label %while.body.preheader, label %if.then80

if.then80:                                        ; preds = %do.end66
  call void @__sanitizer_cov_trace_pc() #11
  call void @txAbort(i16 noundef zeroext %call18, i32 noundef 0) #9
  br label %out3

while.body.preheader:                             ; preds = %do.end66
  %conv83264 = zext i32 %call8 to i64
  %i_size84 = getelementptr inbounds %struct.inode, ptr %call13, i32 0, i32 14
  %49 = ptrtoint ptr %i_size84 to i32
  call void @__asan_store8_noabort(i32 %49)
  store i64 %conv83264, ptr %i_size84, align 8
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.preheader
  %name.addr.0267 = phi ptr [ %add.ptr, %cleanup.while.body_crit_edge ], [ %name, %while.body.preheader ]
  %ssize.0266 = phi i32 [ %sub96, %cleanup.while.body_crit_edge ], [ %add, %while.body.preheader ]
  %50 = ptrtoint ptr %xaddr to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %xaddr, align 8
  %conv89 = trunc i64 %51 to i32
  %call90 = call ptr @__get_metapage(ptr noundef %call13, i32 noundef %conv89, i32 noundef 4096, i32 noundef 1, i32 noundef 1) #9
  %cmp91 = icmp eq ptr %call90, null
  br i1 %cmp91, label %cleanup.thread, label %cleanup

cleanup.thread:                                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  %call94 = call i64 @xtTruncate(i16 noundef zeroext %call18, ptr noundef %call13, i64 noundef 0, i32 noundef 64) #9
  call void @txAbort(i16 noundef zeroext %call18, i32 noundef 0) #9
  br label %out3

cleanup:                                          ; preds = %while.body
  %52 = call i32 @llvm.smin.i32(i32 %ssize.0266, i32 4096)
  %data = getelementptr inbounds %struct.metapage, ptr %call90, i32 0, i32 7
  %53 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %data, align 4
  %55 = call ptr @memcpy(ptr %54, ptr %name.addr.0267, i32 %52)
  %flag.i = getelementptr inbounds %struct.metapage, ptr %call90, i32 0, i32 5
  call void @_set_bit(i32 noundef 3, ptr noundef %flag.i) #9
  call void @_set_bit(i32 noundef 2, ptr noundef %flag.i) #9
  call void @release_metapage(ptr noundef nonnull %call90) #9
  %sub96 = sub i32 %ssize.0266, %52
  %add.ptr = getelementptr i8, ptr %name.addr.0267, i32 %52
  %56 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %s_fs_info.i, align 16
  %nbperpage = getelementptr inbounds %struct.jfs_sb_info, ptr %57, i32 0, i32 10
  %58 = ptrtoint ptr %nbperpage to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %nbperpage, align 4
  %conv98 = sext i16 %59 to i64
  %60 = ptrtoint ptr %xaddr to i32
  call void @__asan_load8_noabort(i32 %60)
  %61 = load i64, ptr %xaddr, align 8
  %add99 = add i64 %61, %conv98
  store i64 %add99, ptr %xaddr, align 8
  %tobool85.not = icmp eq i32 %sub96, 0
  br i1 %tobool85.not, label %cleanup.if.end100_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

cleanup.if.end100_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end100

if.end100:                                        ; preds = %cleanup.if.end100_crit_edge, %do.end49, %do.body43.if.end100_crit_edge
  %xlen.0 = phi i64 [ 0, %do.end49 ], [ 0, %do.body43.if.end100_crit_edge ], [ %conv76, %cleanup.if.end100_crit_edge ]
  %call101 = call i32 @dtSearch(ptr noundef %dip, ptr noundef nonnull %dname, ptr noundef nonnull %ino, ptr noundef nonnull %btstack, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call101)
  %cmp102 = icmp eq i32 %call101, 0
  br i1 %cmp102, label %if.end107, label %if.end100.if.then109_crit_edge

if.end100.if.then109_crit_edge:                   ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then109

if.end107:                                        ; preds = %if.end100
  %62 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %i_ino, align 8
  %64 = ptrtoint ptr %ino to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %ino, align 4
  %call106 = call i32 @dtInsert(i16 noundef zeroext %call18, ptr noundef %dip, ptr noundef nonnull %dname, ptr noundef nonnull %ino, ptr noundef nonnull %btstack) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call106)
  %tobool108.not = icmp eq i32 %call106, 0
  br i1 %tobool108.not, label %if.end114, label %if.end107.if.then109_crit_edge

if.end107.if.then109_crit_edge:                   ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then109

if.then109:                                       ; preds = %if.end107.if.then109_crit_edge, %if.end100.if.then109_crit_edge
  %rc.2263 = phi i32 [ %call106, %if.end107.if.then109_crit_edge ], [ %call101, %if.end100.if.then109_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %xlen.0)
  %tobool110.not = icmp eq i64 %xlen.0, 0
  br i1 %tobool110.not, label %if.then109.if.end113_crit_edge, label %if.then111

if.then109.if.end113_crit_edge:                   ; preds = %if.then109
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end113

if.then111:                                       ; preds = %if.then109
  call void @__sanitizer_cov_trace_pc() #11
  %call112 = call i64 @xtTruncate(i16 noundef zeroext %call18, ptr noundef %call13, i64 noundef 0, i32 noundef 64) #9
  br label %if.end113

if.end113:                                        ; preds = %if.then111, %if.then109.if.end113_crit_edge
  call void @txAbort(i16 noundef zeroext %call18, i32 noundef 0) #9
  br label %out3

if.end114:                                        ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #11
  call void @__mark_inode_dirty(ptr noundef %call13, i32 noundef 7) #9
  %i_ctime = getelementptr inbounds %struct.inode, ptr %dip, i32 0, i32 17
  %i_mtime = getelementptr inbounds %struct.inode, ptr %dip, i32 0, i32 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp115) #9
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp115, ptr noundef %dip) #9
  %65 = call ptr @memcpy(ptr %i_mtime, ptr %tmp115, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp115) #9
  %66 = call ptr @memcpy(ptr %i_ctime, ptr %i_mtime, i32 16)
  call void @__mark_inode_dirty(ptr noundef %dip, i32 noundef 7) #9
  %67 = ptrtoint ptr %iplist to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %dip, ptr %iplist, align 4
  %68 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %call13, ptr %7, align 4
  %call119 = call i32 @txCommit(i16 noundef zeroext %call18, i32 noundef 2, ptr noundef nonnull %iplist, i32 noundef 0) #9
  br label %out3

out3:                                             ; preds = %if.end114, %if.end113, %cleanup.thread, %if.then80, %if.end17.out3_crit_edge
  %rc.3 = phi i32 [ %call22, %if.end17.out3_crit_edge ], [ %rc.2263, %if.end113 ], [ %call119, %if.end114 ], [ %call78, %if.then80 ], [ -5, %cleanup.thread ]
  call void @txEnd(i16 noundef zeroext %call18) #9
  call void @mutex_unlock(ptr noundef %commit_mutex21) #9
  call void @mutex_unlock(ptr noundef %commit_mutex) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.3)
  %tobool124.not = icmp eq i32 %rc.3, 0
  br i1 %tobool124.not, label %if.else126, label %if.then125

if.then125:                                       ; preds = %out3
  %ea1.i = getelementptr i8, ptr %call13, i32 -808
  %69 = ptrtoint ptr %ea1.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %ea1.i, align 4
  %71 = and i8 %70, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %71)
  %tobool.not.i = icmp eq i8 %71, 0
  br i1 %tobool.not.i, label %if.then125.free_ea_wmap.exit_crit_edge, label %if.then.i

if.then125.free_ea_wmap.exit_crit_edge:           ; preds = %if.then125
  call void @__sanitizer_cov_trace_pc() #11
  br label %free_ea_wmap.exit

if.then.i:                                        ; preds = %if.then125
  call void @__sanitizer_cov_trace_pc() #11
  %loc.i = getelementptr i8, ptr %call13, i32 -800
  %72 = ptrtoint ptr %loc.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %loc.i, align 4
  %74 = shl i32 %73, 24
  %conv.i.i = zext i32 %74 to i64
  %shl.i.i = shl nuw nsw i64 %conv.i.i, 8
  %addr2.i.i = getelementptr i8, ptr %call13, i32 -796
  %75 = ptrtoint ptr %addr2.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %addr2.i.i, align 4
  %77 = call i32 @llvm.bswap.i32(i32 %76) #9
  %conv1.i.i = zext i32 %77 to i64
  %add.i.i = or i64 %shl.i.i, %conv1.i.i
  %78 = and i32 %73, -256
  %79 = call i32 @llvm.bswap.i32(i32 %78) #9
  call void @__invalidate_metapages(ptr noundef %call13, i64 noundef %add.i.i, i32 noundef %79) #9
  %80 = ptrtoint ptr %loc.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %loc.i, align 4
  %82 = shl i32 %81, 24
  %conv.i19.i = zext i32 %82 to i64
  %shl.i20.i = shl nuw nsw i64 %conv.i19.i, 8
  %83 = ptrtoint ptr %addr2.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %addr2.i.i, align 4
  %85 = call i32 @llvm.bswap.i32(i32 %84) #9
  %conv1.i22.i = zext i32 %85 to i64
  %add.i23.i = or i64 %shl.i20.i, %conv1.i22.i
  %86 = and i32 %81, -256
  %87 = call i32 @llvm.bswap.i32(i32 %86) #9
  %conv9.i = zext i32 %87 to i64
  %call10.i = call i32 @dbFree(ptr noundef %call13, i64 noundef %add.i23.i, i64 noundef %conv9.i) #9
  br label %free_ea_wmap.exit

free_ea_wmap.exit:                                ; preds = %if.then.i, %if.then125.free_ea_wmap.exit_crit_edge
  %88 = ptrtoint ptr %ea1.i to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 0, ptr %ea1.i, align 4
  call void @clear_nlink(ptr noundef %call13) #9
  call void @discard_new_inode(ptr noundef %call13) #9
  br label %out2

if.else126:                                       ; preds = %out3
  call void @__sanitizer_cov_trace_pc() #11
  call void @d_instantiate_new(ptr noundef %dentry, ptr noundef %call13) #9
  br label %out2

out2:                                             ; preds = %if.else126, %free_ea_wmap.exit, %if.then15
  %rc.4 = phi i32 [ %10, %if.then15 ], [ %rc.3, %free_ea_wmap.exit ], [ 0, %if.else126 ]
  %89 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %2, align 4
  call void @kfree(ptr noundef %90) #9
  br label %do.body129

do.body129:                                       ; preds = %out2, %if.end7.do.body129_crit_edge, %do.end4.do.body129_crit_edge
  %rc.5 = phi i32 [ %call5, %do.end4.do.body129_crit_edge ], [ %call9, %if.end7.do.body129_crit_edge ], [ %rc.4, %out2 ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jfsloglevel to i32))
  %91 = load i32, ptr @jfsloglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %91)
  %cmp130 = icmp sgt i32 %91, 3
  br i1 %cmp130, label %do.end135, label %do.body129.cleanup141_crit_edge

do.body129.cleanup141_crit_edge:                  ; preds = %do.body129
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup141

do.end135:                                        ; preds = %do.body129
  call void @__sanitizer_cov_trace_pc() #11
  %call137 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, i32 noundef %rc.5) #12
  br label %cleanup141

cleanup141:                                       ; preds = %do.end135, %do.body129.cleanup141_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %iplist) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %xaddr) #9
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %btstack) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %dname) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ino) #9
  ret i32 %rc.5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @jfs_mkdir(ptr nocapture noundef readnone %mnt_userns, ptr noundef %dip, ptr noundef %dentry, i16 noundef zeroext %mode) #0 align 64 {
entry:
  %ino = alloca i32, align 4
  %dname = alloca %struct.component_name, align 4
  %btstack = alloca %struct.btstack, align 8
  %iplist = alloca [2 x ptr], align 4
  %tmp74 = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ino) #9
  %0 = ptrtoint ptr %ino to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %ino, align 4, !annotation !178
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %dname) #9
  %1 = ptrtoint ptr %dname to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %dname, align 4, !annotation !178
  %2 = getelementptr inbounds %struct.component_name, ptr %dname, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr inttoptr (i32 -1 to ptr), ptr %2, align 4, !annotation !178
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %btstack) #9
  %4 = call ptr @memset(ptr %btstack, i32 255, i32 136)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %iplist) #9
  %5 = ptrtoint ptr %iplist to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr inttoptr (i32 -1 to ptr), ptr %iplist, align 4, !annotation !178
  %6 = getelementptr inbounds [2 x ptr], ptr %iplist, i32 0, i32 1
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 -1 to ptr), ptr %6, align 4, !annotation !178
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jfsloglevel to i32))
  %8 = load i32, ptr @jfsloglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %8)
  %cmp = icmp sgt i32 %8, 3
  br i1 %cmp, label %do.end, label %entry.do.end3_crit_edge

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58, ptr noundef %dip, ptr noundef %dentry) #12
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %call4 = tail call i32 @dquot_initialize(ptr noundef %dip) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.end6, label %do.end3.do.body85_crit_edge

do.end3.do.body85_crit_edge:                      ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body85

if.end6:                                          ; preds = %do.end3
  %call7 = call i32 @get_UCSname(ptr noundef nonnull %dname, ptr noundef %dentry) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %if.end6.do.body85_crit_edge

if.end6.do.body85_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body85

if.end10:                                         ; preds = %if.end6
  %9 = or i16 %mode, 16384
  %call12 = call ptr @ialloc(ptr noundef %dip, i16 noundef zeroext %9) #9
  %cmp.i = icmp ugt ptr %call12, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then14, label %if.end16

if.then14:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %call12 to i32
  br label %out2

if.end16:                                         ; preds = %if.end10
  %i_sb = getelementptr inbounds %struct.inode, ptr %dip, i32 0, i32 8
  %11 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %i_sb, align 4
  %call17 = call zeroext i16 @txBegin(ptr noundef %12, i32 noundef 0) #9
  %commit_mutex = getelementptr i8, ptr %dip, i32 -592
  call void @mutex_lock_nested(ptr noundef %commit_mutex, i32 noundef 0) #9
  %commit_mutex20 = getelementptr i8, ptr %call12, i32 -592
  call void @mutex_lock_nested(ptr noundef %commit_mutex20, i32 noundef 1) #9
  %call21 = call i32 @jfs_init_acl(i16 noundef zeroext %call17, ptr noundef %call12, ptr noundef %dip) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end24, label %if.end16.out3_crit_edge

if.end16.out3_crit_edge:                          ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %out3

if.end24:                                         ; preds = %if.end16
  %d_name = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4
  %call25 = call i32 @jfs_init_security(i16 noundef zeroext %call17, ptr noundef %call12, ptr noundef %dip, ptr noundef %d_name) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end28, label %if.then27

if.then27:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  call void @txAbort(i16 noundef zeroext %call17, i32 noundef 0) #9
  br label %out3

if.end28:                                         ; preds = %if.end24
  %call29 = call i32 @dtSearch(ptr noundef %dip, ptr noundef nonnull %dname, ptr noundef nonnull %ino, ptr noundef nonnull %btstack, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.end44, label %do.body32

do.body32:                                        ; preds = %if.end28
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jfsloglevel to i32))
  %13 = load i32, ptr @jfsloglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp33 = icmp sgt i32 %13, 0
  br i1 %cmp33, label %do.end38, label %do.body32.do.end43_crit_edge

do.body32.do.end43_crit_edge:                     ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end43

do.end38:                                         ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #11
  %call40 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.61, i32 noundef %call29) #12
  br label %do.end43

do.end43:                                         ; preds = %do.end38, %do.body32.do.end43_crit_edge
  call void @txAbort(i16 noundef zeroext %call17, i32 noundef 0) #9
  br label %out3

if.end44:                                         ; preds = %if.end28
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @TxBlock to i32))
  %14 = load ptr, ptr @TxBlock, align 4
  %idxprom = zext i16 %call17 to i32
  %arrayidx = getelementptr %struct.tblock, ptr %14, i32 %idxprom
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %arrayidx, align 4
  %17 = or i16 %16, 1024
  store i16 %17, ptr %arrayidx, align 4
  %i_ino = getelementptr inbounds %struct.inode, ptr %call12, i32 0, i32 11
  %18 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %i_ino, align 8
  %ino48 = getelementptr %struct.tblock, ptr %14, i32 %idxprom, i32 17
  %20 = ptrtoint ptr %ino48 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %ino48, align 4
  %u = getelementptr %struct.tblock, ptr %14, i32 %idxprom, i32 16
  %ixpxd = getelementptr i8, ptr %call12, i32 -832
  %21 = ptrtoint ptr %ixpxd to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %ixpxd, align 8
  %23 = ptrtoint ptr %u to i32
  call void @__asan_storeN_noabort(i32 %23, i32 8)
  store i64 %22, ptr %u, align 4
  %24 = ptrtoint ptr %iplist to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %dip, ptr %iplist, align 4
  %25 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call12, ptr %6, align 4
  %i_ino52 = getelementptr inbounds %struct.inode, ptr %dip, i32 0, i32 11
  %26 = ptrtoint ptr %i_ino52 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %i_ino52, align 8
  call void @dtInitRoot(i16 noundef zeroext %call17, ptr noundef %call12, i32 noundef %27) #9
  %28 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %i_ino, align 8
  %30 = ptrtoint ptr %ino to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %ino, align 4
  %call54 = call i32 @dtInsert(i16 noundef zeroext %call17, ptr noundef %dip, ptr noundef nonnull %dname, ptr noundef nonnull %ino, ptr noundef nonnull %btstack) #9
  %31 = zext i32 %call54 to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.105)
  switch i32 %call54, label %if.else [
    i32 0, label %if.end73
    i32 -5, label %do.body60
  ]

do.body60:                                        ; preds = %if.end44
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jfsloglevel to i32))
  %32 = load i32, ptr @jfsloglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp61 = icmp sgt i32 %32, 0
  br i1 %cmp61, label %do.end66, label %do.body60.do.end71_crit_edge

do.body60.do.end71_crit_edge:                     ; preds = %do.body60
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end71

do.end66:                                         ; preds = %do.body60
  call void @__sanitizer_cov_trace_pc() #11
  %call68 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64) #12
  br label %do.end71

do.end71:                                         ; preds = %do.end66, %do.body60.do.end71_crit_edge
  call void @txAbort(i16 noundef zeroext %call17, i32 noundef 1) #9
  br label %out3

if.else:                                          ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #11
  call void @txAbort(i16 noundef zeroext %call17, i32 noundef 0) #9
  br label %out3

if.end73:                                         ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #11
  call void @set_nlink(ptr noundef %call12, i32 noundef 2) #9
  %i_op = getelementptr inbounds %struct.inode, ptr %call12, i32 0, i32 7
  %33 = ptrtoint ptr %i_op to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @jfs_dir_inode_operations, ptr %i_op, align 8
  %34 = getelementptr inbounds %struct.inode, ptr %call12, i32 0, i32 44
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @jfs_dir_operations, ptr %34, align 8
  call void @__mark_inode_dirty(ptr noundef %call12, i32 noundef 7) #9
  call void @inc_nlink(ptr noundef %dip) #9
  %i_ctime = getelementptr inbounds %struct.inode, ptr %dip, i32 0, i32 17
  %i_mtime = getelementptr inbounds %struct.inode, ptr %dip, i32 0, i32 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp74) #9
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp74, ptr noundef %dip) #9
  %36 = call ptr @memcpy(ptr %i_mtime, ptr %tmp74, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp74) #9
  %37 = call ptr @memcpy(ptr %i_ctime, ptr %i_mtime, i32 16)
  call void @__mark_inode_dirty(ptr noundef %dip, i32 noundef 7) #9
  %call76 = call i32 @txCommit(i16 noundef zeroext %call17, i32 noundef 2, ptr noundef nonnull %iplist, i32 noundef 0) #9
  br label %out3

out3:                                             ; preds = %if.end73, %if.else, %do.end71, %do.end43, %if.then27, %if.end16.out3_crit_edge
  %rc.0 = phi i32 [ %call21, %if.end16.out3_crit_edge ], [ %call25, %if.then27 ], [ %call29, %do.end43 ], [ -5, %do.end71 ], [ %call54, %if.else ], [ %call76, %if.end73 ]
  call void @txEnd(i16 noundef zeroext %call17) #9
  call void @mutex_unlock(ptr noundef %commit_mutex20) #9
  call void @mutex_unlock(ptr noundef %commit_mutex) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.0)
  %tobool81.not = icmp eq i32 %rc.0, 0
  br i1 %tobool81.not, label %if.else83, label %if.then82

if.then82:                                        ; preds = %out3
  %ea1.i = getelementptr i8, ptr %call12, i32 -808
  %38 = ptrtoint ptr %ea1.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %ea1.i, align 4
  %40 = and i8 %39, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool.not.i = icmp eq i8 %40, 0
  br i1 %tobool.not.i, label %if.then82.free_ea_wmap.exit_crit_edge, label %if.then.i

if.then82.free_ea_wmap.exit_crit_edge:            ; preds = %if.then82
  call void @__sanitizer_cov_trace_pc() #11
  br label %free_ea_wmap.exit

if.then.i:                                        ; preds = %if.then82
  call void @__sanitizer_cov_trace_pc() #11
  %loc.i = getelementptr i8, ptr %call12, i32 -800
  %41 = ptrtoint ptr %loc.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %loc.i, align 4
  %43 = shl i32 %42, 24
  %conv.i.i = zext i32 %43 to i64
  %shl.i.i = shl nuw nsw i64 %conv.i.i, 8
  %addr2.i.i = getelementptr i8, ptr %call12, i32 -796
  %44 = ptrtoint ptr %addr2.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %addr2.i.i, align 4
  %46 = call i32 @llvm.bswap.i32(i32 %45) #9
  %conv1.i.i = zext i32 %46 to i64
  %add.i.i = or i64 %shl.i.i, %conv1.i.i
  %47 = and i32 %42, -256
  %48 = call i32 @llvm.bswap.i32(i32 %47) #9
  call void @__invalidate_metapages(ptr noundef %call12, i64 noundef %add.i.i, i32 noundef %48) #9
  %49 = ptrtoint ptr %loc.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %loc.i, align 4
  %51 = shl i32 %50, 24
  %conv.i19.i = zext i32 %51 to i64
  %shl.i20.i = shl nuw nsw i64 %conv.i19.i, 8
  %52 = ptrtoint ptr %addr2.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %addr2.i.i, align 4
  %54 = call i32 @llvm.bswap.i32(i32 %53) #9
  %conv1.i22.i = zext i32 %54 to i64
  %add.i23.i = or i64 %shl.i20.i, %conv1.i22.i
  %55 = and i32 %50, -256
  %56 = call i32 @llvm.bswap.i32(i32 %55) #9
  %conv9.i = zext i32 %56 to i64
  %call10.i = call i32 @dbFree(ptr noundef %call12, i64 noundef %add.i23.i, i64 noundef %conv9.i) #9
  br label %free_ea_wmap.exit

free_ea_wmap.exit:                                ; preds = %if.then.i, %if.then82.free_ea_wmap.exit_crit_edge
  %57 = ptrtoint ptr %ea1.i to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 0, ptr %ea1.i, align 4
  call void @clear_nlink(ptr noundef %call12) #9
  call void @discard_new_inode(ptr noundef %call12) #9
  br label %out2

if.else83:                                        ; preds = %out3
  call void @__sanitizer_cov_trace_pc() #11
  call void @d_instantiate_new(ptr noundef %dentry, ptr noundef %call12) #9
  br label %out2

out2:                                             ; preds = %if.else83, %free_ea_wmap.exit, %if.then14
  %rc.1 = phi i32 [ %10, %if.then14 ], [ %rc.0, %free_ea_wmap.exit ], [ 0, %if.else83 ]
  %58 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %2, align 4
  call void @kfree(ptr noundef %59) #9
  br label %do.body85

do.body85:                                        ; preds = %out2, %if.end6.do.body85_crit_edge, %do.end3.do.body85_crit_edge
  %rc.2 = phi i32 [ %call4, %do.end3.do.body85_crit_edge ], [ %call7, %if.end6.do.body85_crit_edge ], [ %rc.1, %out2 ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jfsloglevel to i32))
  %60 = load i32, ptr @jfsloglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %60)
  %cmp86 = icmp sgt i32 %60, 3
  br i1 %cmp86, label %do.end91, label %do.body85.do.end96_crit_edge

do.body85.do.end96_crit_edge:                     ; preds = %do.body85
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end96

do.end91:                                         ; preds = %do.body85
  call void @__sanitizer_cov_trace_pc() #11
  %call93 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.67, i32 noundef %rc.2) #12
  br label %do.end96

do.end96:                                         ; preds = %do.end91, %do.body85.do.end96_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %iplist) #9
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %btstack) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %dname) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ino) #9
  ret i32 %rc.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @jfs_rmdir(ptr noundef %dip, ptr noundef %dentry) #0 align 64 {
entry:
  %ino = alloca i32, align 4
  %dname = alloca %struct.component_name, align 4
  %iplist = alloca [2 x ptr], align 4
  %tmp54 = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ino) #9
  %2 = ptrtoint ptr %ino to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %ino, align 4, !annotation !178
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %dname) #9
  %3 = ptrtoint ptr %dname to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %dname, align 4, !annotation !178
  %4 = getelementptr inbounds %struct.component_name, ptr %dname, i32 0, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr inttoptr (i32 -1 to ptr), ptr %4, align 4, !annotation !178
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %iplist) #9
  %6 = ptrtoint ptr %iplist to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 -1 to ptr), ptr %iplist, align 4, !annotation !178
  %7 = getelementptr inbounds [2 x ptr], ptr %iplist, i32 0, i32 1
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 -1 to ptr), ptr %7, align 4, !annotation !178
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jfsloglevel to i32))
  %9 = load i32, ptr @jfsloglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %9)
  %cmp = icmp sgt i32 %9, 3
  br i1 %cmp, label %do.end, label %entry.do.end4_crit_edge

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, ptr noundef %dip, ptr noundef %dentry) #12
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %call5 = tail call i32 @dquot_initialize(ptr noundef %dip) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %if.end7, label %do.end4.do.body94_crit_edge

do.end4.do.body94_crit_edge:                      ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body94

if.end7:                                          ; preds = %do.end4
  %call8 = tail call i32 @dquot_initialize(ptr noundef %1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %if.end7.do.body94_crit_edge

if.end7.do.body94_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body94

if.end11:                                         ; preds = %if.end7
  %nextindex = getelementptr i8, ptr %1, i32 -287
  %10 = ptrtoint ptr %nextindex to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %nextindex, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %cmp13 = icmp eq i8 %11, 0
  br i1 %cmp13, label %if.end16, label %if.end11.do.body94_crit_edge

if.end11.do.body94_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body94

if.end16:                                         ; preds = %if.end11
  %call17 = call i32 @get_UCSname(ptr noundef nonnull %dname, ptr noundef %dentry) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end20, label %if.end16.do.body94_crit_edge

if.end16.do.body94_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body94

if.end20:                                         ; preds = %if.end16
  %i_sb = getelementptr inbounds %struct.inode, ptr %dip, i32 0, i32 8
  %12 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %i_sb, align 4
  %call21 = call zeroext i16 @txBegin(ptr noundef %13, i32 noundef 0) #9
  %commit_mutex = getelementptr i8, ptr %dip, i32 -592
  call void @mutex_lock_nested(ptr noundef %commit_mutex, i32 noundef 0) #9
  %commit_mutex24 = getelementptr i8, ptr %1, i32 -592
  call void @mutex_lock_nested(ptr noundef %commit_mutex24, i32 noundef 1) #9
  %14 = ptrtoint ptr %iplist to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %dip, ptr %iplist, align 4
  %15 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %1, ptr %7, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @TxBlock to i32))
  %16 = load ptr, ptr @TxBlock, align 4
  %idxprom = zext i16 %call21 to i32
  %arrayidx26 = getelementptr %struct.tblock, ptr %16, i32 %idxprom
  %17 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %arrayidx26, align 4
  %19 = or i16 %18, 256
  store i16 %19, ptr %arrayidx26, align 4
  %u29 = getelementptr %struct.tblock, ptr %16, i32 %idxprom, i32 16
  %20 = ptrtoint ptr %u29 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %1, ptr %u29, align 4
  %i_ino = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 11
  %21 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %i_ino, align 8
  %23 = ptrtoint ptr %ino to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %ino, align 4
  %call30 = call i32 @dtDelete(i16 noundef zeroext %call21, ptr noundef %dip, ptr noundef nonnull %dname, ptr noundef nonnull %ino, i32 noundef 3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.end53, label %do.body33

do.body33:                                        ; preds = %if.end20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jfsloglevel to i32))
  %24 = load i32, ptr @jfsloglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp34 = icmp sgt i32 %24, 0
  br i1 %cmp34, label %do.end39, label %do.body33.do.end44_crit_edge

do.body33.do.end44_crit_edge:                     ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end44

do.end39:                                         ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #11
  %call41 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.72, i32 noundef %call30) #12
  br label %do.end44

do.end44:                                         ; preds = %do.end39, %do.body33.do.end44_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -5, i32 %call30)
  %cmp45 = icmp eq i32 %call30, -5
  br i1 %cmp45, label %if.then47, label %do.end44.if.end48_crit_edge

do.end44.if.end48_crit_edge:                      ; preds = %do.end44
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end48

if.then47:                                        ; preds = %do.end44
  call void @__sanitizer_cov_trace_pc() #11
  call void @txAbort(i16 noundef zeroext %call21, i32 noundef 1) #9
  br label %if.end48

if.end48:                                         ; preds = %if.then47, %do.end44.if.end48_crit_edge
  call void @txEnd(i16 noundef zeroext %call21) #9
  call void @mutex_unlock(ptr noundef %commit_mutex24) #9
  call void @mutex_unlock(ptr noundef %commit_mutex) #9
  br label %out2

if.end53:                                         ; preds = %if.end20
  %i_ctime = getelementptr inbounds %struct.inode, ptr %dip, i32 0, i32 17
  %i_mtime = getelementptr inbounds %struct.inode, ptr %dip, i32 0, i32 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp54) #9
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp54, ptr noundef %dip) #9
  %25 = call ptr @memcpy(ptr %i_mtime, ptr %tmp54, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp54) #9
  %26 = call ptr @memcpy(ptr %i_ctime, ptr %i_mtime, i32 16)
  call void @drop_nlink(ptr noundef %dip) #9
  call void @__mark_inode_dirty(ptr noundef %dip, i32 noundef 7) #9
  %ea = getelementptr i8, ptr %1, i32 -808
  %27 = ptrtoint ptr %ea to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %ea, align 8
  %29 = and i8 %28, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool57.not = icmp eq i8 %29, 0
  br i1 %tobool57.not, label %if.end53.if.end61_crit_edge, label %if.then58

if.end53.if.end61_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end61

if.then58:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #11
  call void @txEA(i16 noundef zeroext %call21, ptr noundef %1, ptr noundef %ea, ptr noundef null) #9
  br label %if.end61

if.end61:                                         ; preds = %if.then58, %if.end53.if.end61_crit_edge
  %30 = ptrtoint ptr %ea to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %ea, align 8
  %acl = getelementptr i8, ptr %1, i32 -824
  %31 = ptrtoint ptr %acl to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %acl, align 8
  %33 = and i8 %32, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool69.not = icmp eq i8 %33, 0
  br i1 %tobool69.not, label %if.end61.if.end73_crit_edge, label %if.then70

if.end61.if.end73_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end73

if.then70:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #11
  call void @txEA(i16 noundef zeroext %call21, ptr noundef %1, ptr noundef %acl, ptr noundef null) #9
  br label %if.end73

if.end73:                                         ; preds = %if.then70, %if.end61.if.end73_crit_edge
  %34 = ptrtoint ptr %acl to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 0, ptr %acl, align 8
  call void @clear_nlink(ptr noundef %1) #9
  call void @__mark_inode_dirty(ptr noundef %1, i32 noundef 7) #9
  %call78 = call i32 @txCommit(i16 noundef zeroext %call21, i32 noundef 2, ptr noundef nonnull %iplist, i32 noundef 0) #9
  call void @txEnd(i16 noundef zeroext %call21) #9
  call void @mutex_unlock(ptr noundef %commit_mutex24) #9
  call void @mutex_unlock(ptr noundef %commit_mutex) #9
  %cflag = getelementptr i8, ptr %dip, i32 -768
  %35 = ptrtoint ptr %cflag to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %cflag, align 4
  %37 = and i32 %36, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool85.not = icmp eq i32 %37, 0
  br i1 %tobool85.not, label %if.end73.out2_crit_edge, label %if.then86

if.end73.out2_crit_edge:                          ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #11
  br label %out2

if.then86:                                        ; preds = %if.end73
  %i_size = getelementptr inbounds %struct.inode, ptr %dip, i32 0, i32 14
  %38 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %i_size, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %39)
  %cmp87 = icmp sgt i64 %39, 1
  br i1 %cmp87, label %if.then89, label %if.then86.if.end90_crit_edge

if.then86.if.end90_crit_edge:                     ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end90

if.then89:                                        ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #11
  call void @jfs_truncate_nolock(ptr noundef %dip, i64 noundef 0) #9
  br label %if.end90

if.end90:                                         ; preds = %if.then89, %if.then86.if.end90_crit_edge
  call void @_clear_bit(i32 noundef 5, ptr noundef %cflag) #9
  br label %out2

out2:                                             ; preds = %if.end90, %if.end73.out2_crit_edge, %if.end48
  %rc.0 = phi i32 [ %call30, %if.end48 ], [ %call78, %if.end90 ], [ %call78, %if.end73.out2_crit_edge ]
  %40 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %4, align 4
  call void @kfree(ptr noundef %41) #9
  br label %do.body94

do.body94:                                        ; preds = %out2, %if.end16.do.body94_crit_edge, %if.end11.do.body94_crit_edge, %if.end7.do.body94_crit_edge, %do.end4.do.body94_crit_edge
  %rc.1 = phi i32 [ %call5, %do.end4.do.body94_crit_edge ], [ %call8, %if.end7.do.body94_crit_edge ], [ %call17, %if.end16.do.body94_crit_edge ], [ %rc.0, %out2 ], [ -39, %if.end11.do.body94_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jfsloglevel to i32))
  %42 = load i32, ptr @jfsloglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %42)
  %cmp95 = icmp sgt i32 %42, 3
  br i1 %cmp95, label %do.end100, label %do.body94.do.end105_crit_edge

do.body94.do.end105_crit_edge:                    ; preds = %do.body94
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end105

do.end100:                                        ; preds = %do.body94
  call void @__sanitizer_cov_trace_pc() #11
  %call102 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.75, i32 noundef %rc.1) #12
  br label %do.end105

do.end105:                                        ; preds = %do.end100, %do.body94.do.end105_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %iplist) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %dname) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ino) #9
  ret i32 %rc.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @jfs_mknod(ptr nocapture noundef readnone %mnt_userns, ptr noundef %dir, ptr noundef %dentry, i16 noundef zeroext %mode, i32 noundef %rdev) #0 align 64 {
entry:
  %btstack = alloca %struct.btstack, align 8
  %dname = alloca %struct.component_name, align 4
  %ino = alloca i32, align 4
  %iplist = alloca [2 x ptr], align 4
  %tmp42 = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %btstack) #9
  %0 = call ptr @memset(ptr %btstack, i32 255, i32 136)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %dname) #9
  %1 = ptrtoint ptr %dname to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %dname, align 4, !annotation !178
  %2 = getelementptr inbounds %struct.component_name, ptr %dname, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr inttoptr (i32 -1 to ptr), ptr %2, align 4, !annotation !178
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ino) #9
  %4 = ptrtoint ptr %ino to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %ino, align 4, !annotation !178
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %iplist) #9
  %5 = ptrtoint ptr %iplist to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr inttoptr (i32 -1 to ptr), ptr %iplist, align 4, !annotation !178
  %6 = getelementptr inbounds [2 x ptr], ptr %iplist, i32 0, i32 1
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 -1 to ptr), ptr %6, align 4, !annotation !178
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jfsloglevel to i32))
  %8 = load i32, ptr @jfsloglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %8)
  %cmp = icmp sgt i32 %8, 3
  br i1 %cmp, label %do.end, label %entry.do.end3_crit_edge

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.77, ptr noundef %dentry) #12
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %call4 = tail call i32 @dquot_initialize(ptr noundef %dir) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.end6, label %do.end3.do.body53_crit_edge

do.end3.do.body53_crit_edge:                      ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body53

if.end6:                                          ; preds = %do.end3
  %call7 = call i32 @get_UCSname(ptr noundef nonnull %dname, ptr noundef %dentry) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %if.end6.do.body53_crit_edge

if.end6.do.body53_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body53

if.end10:                                         ; preds = %if.end6
  %call11 = call ptr @ialloc(ptr noundef %dir, i16 noundef zeroext %mode) #9
  %cmp.i = icmp ugt ptr %call11, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then13, label %if.end15

if.then13:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %call11 to i32
  br label %out1

if.end15:                                         ; preds = %if.end10
  %i_sb = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  %10 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %i_sb, align 4
  %call17 = call zeroext i16 @txBegin(ptr noundef %11, i32 noundef 0) #9
  %commit_mutex = getelementptr i8, ptr %dir, i32 -592
  call void @mutex_lock_nested(ptr noundef %commit_mutex, i32 noundef 0) #9
  %commit_mutex20 = getelementptr i8, ptr %call11, i32 -592
  call void @mutex_lock_nested(ptr noundef %commit_mutex20, i32 noundef 1) #9
  %call21 = call i32 @jfs_init_acl(i16 noundef zeroext %call17, ptr noundef %call11, ptr noundef %dir) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end24, label %if.end15.out3_crit_edge

if.end15.out3_crit_edge:                          ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %out3

if.end24:                                         ; preds = %if.end15
  %d_name = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4
  %call25 = call i32 @jfs_init_security(i16 noundef zeroext %call17, ptr noundef %call11, ptr noundef %dir, ptr noundef %d_name) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end28, label %if.then27

if.then27:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  call void @txAbort(i16 noundef zeroext %call17, i32 noundef 0) #9
  br label %out3

if.end28:                                         ; preds = %if.end24
  %call29 = call i32 @dtSearch(ptr noundef %dir, ptr noundef nonnull %dname, ptr noundef nonnull %ino, ptr noundef nonnull %btstack, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.end32, label %if.then31

if.then31:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  call void @txAbort(i16 noundef zeroext %call17, i32 noundef 0) #9
  br label %out3

if.end32:                                         ; preds = %if.end28
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @TxBlock to i32))
  %12 = load ptr, ptr @TxBlock, align 4
  %idxprom = zext i16 %call17 to i32
  %arrayidx = getelementptr %struct.tblock, ptr %12, i32 %idxprom
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %arrayidx, align 4
  %15 = or i16 %14, 1024
  store i16 %15, ptr %arrayidx, align 4
  %i_ino = getelementptr inbounds %struct.inode, ptr %call11, i32 0, i32 11
  %16 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %i_ino, align 8
  %ino34 = getelementptr %struct.tblock, ptr %12, i32 %idxprom, i32 17
  %18 = ptrtoint ptr %ino34 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %ino34, align 4
  %u = getelementptr %struct.tblock, ptr %12, i32 %idxprom, i32 16
  %ixpxd = getelementptr i8, ptr %call11, i32 -832
  %19 = ptrtoint ptr %ixpxd to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %ixpxd, align 8
  %21 = ptrtoint ptr %u to i32
  call void @__asan_storeN_noabort(i32 %21, i32 8)
  store i64 %20, ptr %u, align 4
  %22 = load i32, ptr %i_ino, align 8
  %23 = ptrtoint ptr %ino to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %ino, align 4
  %call37 = call i32 @dtInsert(i16 noundef zeroext %call17, ptr noundef %dir, ptr noundef nonnull %dname, ptr noundef nonnull %ino, ptr noundef nonnull %btstack) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.end40, label %if.then39

if.then39:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  call void @txAbort(i16 noundef zeroext %call17, i32 noundef 0) #9
  br label %out3

if.end40:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  %i_op = getelementptr inbounds %struct.inode, ptr %call11, i32 0, i32 7
  %24 = ptrtoint ptr %i_op to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @jfs_file_inode_operations, ptr %i_op, align 8
  %and1.i = and i32 %rdev, 255
  %25 = lshr i32 %rdev, 12
  %shl.i = and i32 %25, 1048320
  %or.i = or i32 %shl.i, %and1.i
  %and2.i = shl i32 %rdev, 12
  %shl3.i = and i32 %and2.i, -1048576
  %or4.i = or i32 %or.i, %shl3.i
  %dev = getelementptr i8, ptr %call11, i32 -4
  %26 = ptrtoint ptr %dev to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %or4.i, ptr %dev, align 4
  %27 = ptrtoint ptr %call11 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %call11, align 8
  call void @init_special_inode(ptr noundef %call11, i16 noundef zeroext %28, i32 noundef %rdev) #9
  call void @__mark_inode_dirty(ptr noundef %call11, i32 noundef 7) #9
  %i_ctime = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 17
  %i_mtime = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp42) #9
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp42, ptr noundef %dir) #9
  %29 = call ptr @memcpy(ptr %i_mtime, ptr %tmp42, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp42) #9
  %30 = call ptr @memcpy(ptr %i_ctime, ptr %i_mtime, i32 16)
  call void @__mark_inode_dirty(ptr noundef %dir, i32 noundef 7) #9
  %31 = ptrtoint ptr %iplist to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %dir, ptr %iplist, align 4
  %32 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call11, ptr %6, align 4
  %call45 = call i32 @txCommit(i16 noundef zeroext %call17, i32 noundef 2, ptr noundef nonnull %iplist, i32 noundef 0) #9
  br label %out3

out3:                                             ; preds = %if.end40, %if.then39, %if.then31, %if.then27, %if.end15.out3_crit_edge
  %rc.0 = phi i32 [ %call21, %if.end15.out3_crit_edge ], [ %call25, %if.then27 ], [ %call29, %if.then31 ], [ %call37, %if.then39 ], [ %call45, %if.end40 ]
  call void @txEnd(i16 noundef zeroext %call17) #9
  call void @mutex_unlock(ptr noundef %commit_mutex20) #9
  call void @mutex_unlock(ptr noundef %commit_mutex) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.0)
  %tobool50.not = icmp eq i32 %rc.0, 0
  br i1 %tobool50.not, label %if.else, label %if.then51

if.then51:                                        ; preds = %out3
  %ea1.i = getelementptr i8, ptr %call11, i32 -808
  %33 = ptrtoint ptr %ea1.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %ea1.i, align 4
  %35 = and i8 %34, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool.not.i = icmp eq i8 %35, 0
  br i1 %tobool.not.i, label %if.then51.free_ea_wmap.exit_crit_edge, label %if.then.i

if.then51.free_ea_wmap.exit_crit_edge:            ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #11
  br label %free_ea_wmap.exit

if.then.i:                                        ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #11
  %loc.i = getelementptr i8, ptr %call11, i32 -800
  %36 = ptrtoint ptr %loc.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %loc.i, align 4
  %38 = shl i32 %37, 24
  %conv.i.i = zext i32 %38 to i64
  %shl.i.i = shl nuw nsw i64 %conv.i.i, 8
  %addr2.i.i = getelementptr i8, ptr %call11, i32 -796
  %39 = ptrtoint ptr %addr2.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %addr2.i.i, align 4
  %41 = call i32 @llvm.bswap.i32(i32 %40) #9
  %conv1.i.i = zext i32 %41 to i64
  %add.i.i = or i64 %shl.i.i, %conv1.i.i
  %42 = and i32 %37, -256
  %43 = call i32 @llvm.bswap.i32(i32 %42) #9
  call void @__invalidate_metapages(ptr noundef %call11, i64 noundef %add.i.i, i32 noundef %43) #9
  %44 = ptrtoint ptr %loc.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %loc.i, align 4
  %46 = shl i32 %45, 24
  %conv.i19.i = zext i32 %46 to i64
  %shl.i20.i = shl nuw nsw i64 %conv.i19.i, 8
  %47 = ptrtoint ptr %addr2.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %addr2.i.i, align 4
  %49 = call i32 @llvm.bswap.i32(i32 %48) #9
  %conv1.i22.i = zext i32 %49 to i64
  %add.i23.i = or i64 %shl.i20.i, %conv1.i22.i
  %50 = and i32 %45, -256
  %51 = call i32 @llvm.bswap.i32(i32 %50) #9
  %conv9.i = zext i32 %51 to i64
  %call10.i = call i32 @dbFree(ptr noundef %call11, i64 noundef %add.i23.i, i64 noundef %conv9.i) #9
  br label %free_ea_wmap.exit

free_ea_wmap.exit:                                ; preds = %if.then.i, %if.then51.free_ea_wmap.exit_crit_edge
  %52 = ptrtoint ptr %ea1.i to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 0, ptr %ea1.i, align 4
  call void @clear_nlink(ptr noundef %call11) #9
  call void @discard_new_inode(ptr noundef %call11) #9
  br label %out1

if.else:                                          ; preds = %out3
  call void @__sanitizer_cov_trace_pc() #11
  call void @d_instantiate_new(ptr noundef %dentry, ptr noundef %call11) #9
  br label %out1

out1:                                             ; preds = %if.else, %free_ea_wmap.exit, %if.then13
  %rc.1 = phi i32 [ %9, %if.then13 ], [ %rc.0, %free_ea_wmap.exit ], [ 0, %if.else ]
  %53 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %2, align 4
  call void @kfree(ptr noundef %54) #9
  br label %do.body53

do.body53:                                        ; preds = %out1, %if.end6.do.body53_crit_edge, %do.end3.do.body53_crit_edge
  %rc.2 = phi i32 [ %call4, %do.end3.do.body53_crit_edge ], [ %call7, %if.end6.do.body53_crit_edge ], [ %rc.1, %out1 ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jfsloglevel to i32))
  %55 = load i32, ptr @jfsloglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %55)
  %cmp54 = icmp sgt i32 %55, 3
  br i1 %cmp54, label %do.end59, label %do.body53.do.end64_crit_edge

do.body53.do.end64_crit_edge:                     ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end64

do.end59:                                         ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #11
  %call61 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.80, i32 noundef %rc.2) #12
  br label %do.end64

do.end64:                                         ; preds = %do.end59, %do.body53.do.end64_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %iplist) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ino) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %dname) #9
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %btstack) #9
  ret i32 %rc.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @jfs_rename(ptr nocapture noundef readnone %mnt_userns, ptr noundef %old_dir, ptr noundef %old_dentry, ptr noundef %new_dir, ptr noundef %new_dentry, i32 noundef %flags) #0 align 64 {
entry:
  %btstack = alloca %struct.btstack, align 8
  %ino = alloca i32, align 4
  %new_dname = alloca %struct.component_name, align 4
  %new_ip = alloca ptr, align 4
  %old_dname = alloca %struct.component_name, align 4
  %iplist = alloca [4 x ptr], align 4
  %tmp161 = alloca %struct.timespec64, align 8
  %tmp267 = alloca %struct.timespec64, align 8
  %tmp269 = alloca %struct.timespec64, align 8
  %tmp286 = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %btstack) #9
  %0 = call ptr @memset(ptr %btstack, i32 255, i32 136)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ino) #9
  %1 = ptrtoint ptr %ino to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %ino, align 4, !annotation !178
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %new_dname) #9
  %2 = ptrtoint ptr %new_dname to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %new_dname, align 4, !annotation !178
  %3 = getelementptr inbounds %struct.component_name, ptr %new_dname, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %3, align 4, !annotation !178
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %new_ip) #9
  %5 = ptrtoint ptr %new_ip to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr inttoptr (i32 -1 to ptr), ptr %new_ip, align 4, !annotation !178
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %old_dname) #9
  %6 = ptrtoint ptr %old_dname to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %old_dname, align 4, !annotation !178
  %7 = getelementptr inbounds %struct.component_name, ptr %old_dname, i32 0, i32 1
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 -1 to ptr), ptr %7, align 4, !annotation !178
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %iplist) #9
  %9 = getelementptr inbounds [4 x ptr], ptr %iplist, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %flags)
  %tobool.not = icmp ult i32 %flags, 2
  %10 = call ptr @memset(ptr %iplist, i32 255, i32 16)
  br i1 %tobool.not, label %do.body, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jfsloglevel to i32))
  %11 = load i32, ptr @jfsloglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %11)
  %cmp = icmp sgt i32 %11, 3
  br i1 %cmp, label %do.end, label %do.body.do.end5_crit_edge

do.body.do.end5_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end5

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.82, ptr noundef %old_dentry, ptr noundef %new_dentry) #12
  br label %do.end5

do.end5:                                          ; preds = %do.end, %do.body.do.end5_crit_edge
  %call6 = tail call i32 @dquot_initialize(ptr noundef %old_dir) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %do.end5.do.body357_crit_edge

do.end5.do.body357_crit_edge:                     ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body357

if.end9:                                          ; preds = %do.end5
  %call10 = tail call i32 @dquot_initialize(ptr noundef %new_dir) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %if.end9.do.body357_crit_edge

if.end9.do.body357_crit_edge:                     ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body357

if.end13:                                         ; preds = %if.end9
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %old_dentry, i32 0, i32 5
  %12 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %d_inode.i, align 8
  %d_inode.i498 = getelementptr inbounds %struct.dentry, ptr %new_dentry, i32 0, i32 5
  %14 = ptrtoint ptr %d_inode.i498 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %d_inode.i498, align 8
  %16 = ptrtoint ptr %new_ip to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %15, ptr %new_ip, align 4
  %call16 = call i32 @get_UCSname(ptr noundef nonnull %old_dname, ptr noundef %old_dentry) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %if.end13.do.body357_crit_edge

if.end13.do.body357_crit_edge:                    ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body357

if.end19:                                         ; preds = %if.end13
  %call20 = call i32 @get_UCSname(ptr noundef nonnull %new_dname, ptr noundef %new_dentry) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end23, label %if.end19.out2_crit_edge

if.end19.out2_crit_edge:                          ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %out2

if.end23:                                         ; preds = %if.end19
  %call24 = call i32 @dtSearch(ptr noundef %old_dir, ptr noundef nonnull %old_dname, ptr noundef nonnull %ino, ptr noundef nonnull %btstack, i32 noundef 2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %lor.lhs.false, label %if.end23.out3_crit_edge

if.end23.out3_crit_edge:                          ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  br label %out3

lor.lhs.false:                                    ; preds = %if.end23
  %17 = ptrtoint ptr %ino to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %ino, align 4
  %i_ino = getelementptr inbounds %struct.inode, ptr %13, i32 0, i32 11
  %19 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %i_ino, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %20)
  %cmp26.not = icmp eq i32 %18, %20
  br i1 %cmp26.not, label %if.end28, label %lor.lhs.false.out3_crit_edge

lor.lhs.false.out3_crit_edge:                     ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %out3

if.end28:                                         ; preds = %lor.lhs.false
  %call29 = call i32 @dtSearch(ptr noundef %new_dir, ptr noundef nonnull %new_dname, ptr noundef nonnull %ino, ptr noundef nonnull %btstack, i32 noundef 2) #9
  %21 = zext i32 %call29 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.106)
  switch i32 %call29, label %if.end28.out3_crit_edge [
    i32 0, label %if.then31
    i32 -2, label %if.else40
  ]

if.end28.out3_crit_edge:                          ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  br label %out3

if.then31:                                        ; preds = %if.end28
  %22 = ptrtoint ptr %new_ip to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %new_ip, align 4
  %tobool32.not = icmp eq ptr %23, null
  br i1 %tobool32.not, label %if.then31.out3_crit_edge, label %lor.lhs.false33

if.then31.out3_crit_edge:                         ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #11
  br label %out3

lor.lhs.false33:                                  ; preds = %if.then31
  %24 = ptrtoint ptr %ino to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %ino, align 4
  %i_ino34 = getelementptr inbounds %struct.inode, ptr %23, i32 0, i32 11
  %26 = ptrtoint ptr %i_ino34 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %i_ino34, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %27)
  %cmp35.not = icmp eq i32 %25, %27
  br i1 %cmp35.not, label %lor.lhs.false33.if.end45_crit_edge, label %lor.lhs.false33.out3_crit_edge

lor.lhs.false33.out3_crit_edge:                   ; preds = %lor.lhs.false33
  call void @__sanitizer_cov_trace_pc() #11
  br label %out3

lor.lhs.false33.if.end45_crit_edge:               ; preds = %lor.lhs.false33
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end45

if.else40:                                        ; preds = %if.end28
  %28 = ptrtoint ptr %new_ip to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %new_ip, align 4
  %tobool41.not = icmp eq ptr %29, null
  br i1 %tobool41.not, label %if.else40.if.end45_crit_edge, label %if.else40.out3_crit_edge

if.else40.out3_crit_edge:                         ; preds = %if.else40
  call void @__sanitizer_cov_trace_pc() #11
  br label %out3

if.else40.if.end45_crit_edge:                     ; preds = %if.else40
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end45

if.end45:                                         ; preds = %if.else40.if.end45_crit_edge, %lor.lhs.false33.if.end45_crit_edge
  %30 = ptrtoint ptr %13 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %13, align 8
  %32 = and i16 %31, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %32)
  %cmp47 = icmp eq i16 %32, 16384
  %33 = ptrtoint ptr %new_ip to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %new_ip, align 4
  %tobool50.not = icmp eq ptr %34, null
  br i1 %cmp47, label %if.then49, label %if.else59

if.then49:                                        ; preds = %if.end45
  br i1 %tobool50.not, label %if.then49.if.end68_crit_edge, label %if.then51

if.then49.if.end68_crit_edge:                     ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end68

if.then51:                                        ; preds = %if.then49
  %nextindex = getelementptr i8, ptr %34, i32 -287
  %35 = ptrtoint ptr %nextindex to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %nextindex, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %cmp54 = icmp eq i8 %36, 0
  br i1 %cmp54, label %if.then51.if.end68_crit_edge, label %if.then51.out3_crit_edge

if.then51.out3_crit_edge:                         ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #11
  br label %out3

if.then51.if.end68_crit_edge:                     ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end68

if.else59:                                        ; preds = %if.end45
  br i1 %tobool50.not, label %if.else59.if.end68_crit_edge, label %if.then61

if.else59.if.end68_crit_edge:                     ; preds = %if.else59
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end68

if.then61:                                        ; preds = %if.else59
  %rdwrlock = getelementptr i8, ptr %34, i32 -688
  call void @down_write_nested(ptr noundef %rdwrlock, i32 noundef 0) #9
  %37 = ptrtoint ptr %new_ip to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %new_ip, align 4
  %call63 = call i32 @dquot_initialize(ptr noundef %38) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %tobool64.not = icmp eq i32 %call63, 0
  br i1 %tobool64.not, label %if.then61.if.end68_crit_edge, label %if.then61.out_unlock_crit_edge

if.then61.out_unlock_crit_edge:                   ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_unlock

if.then61.if.end68_crit_edge:                     ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end68

if.end68:                                         ; preds = %if.then61.if.end68_crit_edge, %if.else59.if.end68_crit_edge, %if.then51.if.end68_crit_edge, %if.then49.if.end68_crit_edge
  %i_sb = getelementptr inbounds %struct.inode, ptr %new_dir, i32 0, i32 8
  %39 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %i_sb, align 4
  %call69 = call zeroext i16 @txBegin(ptr noundef %40, i32 noundef 0) #9
  %commit_mutex = getelementptr i8, ptr %new_dir, i32 -592
  call void @mutex_lock_nested(ptr noundef %commit_mutex, i32 noundef 0) #9
  %commit_mutex72 = getelementptr i8, ptr %13, i32 -592
  call void @mutex_lock_nested(ptr noundef %commit_mutex72, i32 noundef 1) #9
  %cmp73.not = icmp eq ptr %old_dir, %new_dir
  br i1 %cmp73.not, label %if.end68.if.end78_crit_edge, label %if.then75

if.end68.if.end78_crit_edge:                      ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end78

if.then75:                                        ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #11
  %commit_mutex77 = getelementptr i8, ptr %old_dir, i32 -592
  call void @mutex_lock_nested(ptr noundef %commit_mutex77, i32 noundef 2) #9
  br label %if.end78

if.end78:                                         ; preds = %if.then75, %if.end68.if.end78_crit_edge
  %41 = ptrtoint ptr %new_ip to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %new_ip, align 4
  %tobool79.not = icmp eq ptr %42, null
  br i1 %tobool79.not, label %if.else164, label %if.then80

if.then80:                                        ; preds = %if.end78
  %commit_mutex82 = getelementptr i8, ptr %42, i32 -592
  call void @mutex_lock_nested(ptr noundef %commit_mutex82, i32 noundef 3) #9
  %43 = ptrtoint ptr %new_ip to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %new_ip, align 4
  %i_ino83 = getelementptr inbounds %struct.inode, ptr %44, i32 0, i32 11
  %45 = ptrtoint ptr %i_ino83 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %i_ino83, align 8
  %47 = ptrtoint ptr %ino to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %ino, align 4
  %48 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %i_ino, align 8
  %call85 = call i32 @dtModify(i16 noundef zeroext %call69, ptr noundef %new_dir, ptr noundef nonnull %new_dname, ptr noundef nonnull %ino, i32 noundef %49, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call85)
  %tobool86.not = icmp eq i32 %call85, 0
  br i1 %tobool86.not, label %if.end88, label %if.then80.out_tx_crit_edge

if.then80.out_tx_crit_edge:                       ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_tx

if.end88:                                         ; preds = %if.then80
  %50 = ptrtoint ptr %new_ip to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %new_ip, align 4
  call void @drop_nlink(ptr noundef %51) #9
  %52 = ptrtoint ptr %new_ip to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %new_ip, align 4
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %53, align 8
  %56 = and i16 %55, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %56)
  %cmp92 = icmp eq i16 %56, 16384
  br i1 %cmp92, label %if.then94, label %if.else124

if.then94:                                        ; preds = %if.end88
  call void @drop_nlink(ptr noundef %53) #9
  %57 = ptrtoint ptr %new_ip to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %new_ip, align 4
  %59 = getelementptr inbounds %struct.inode, ptr %58, i32 0, i32 12
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %59, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool95.not = icmp eq i32 %61, 0
  br i1 %tobool95.not, label %if.end120, label %if.then96

if.then96:                                        ; preds = %if.then94
  %commit_mutex98 = getelementptr i8, ptr %58, i32 -592
  call void @mutex_unlock(ptr noundef %commit_mutex98) #9
  br i1 %cmp73.not, label %if.then96.if.end104_crit_edge, label %if.then101

if.then96.if.end104_crit_edge:                    ; preds = %if.then96
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end104

if.then101:                                       ; preds = %if.then96
  call void @__sanitizer_cov_trace_pc() #11
  %commit_mutex103 = getelementptr i8, ptr %old_dir, i32 -592
  call void @mutex_unlock(ptr noundef %commit_mutex103) #9
  br label %if.end104

if.end104:                                        ; preds = %if.then101, %if.then96.if.end104_crit_edge
  call void @mutex_unlock(ptr noundef %commit_mutex72) #9
  call void @mutex_unlock(ptr noundef %commit_mutex) #9
  %62 = ptrtoint ptr %13 to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %13, align 8
  %64 = and i16 %63, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %64)
  %cmp112 = icmp eq i16 %64, 16384
  br i1 %cmp112, label %if.end104.if.end118_crit_edge, label %land.lhs.true

if.end104.if.end118_crit_edge:                    ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end118

land.lhs.true:                                    ; preds = %if.end104
  %65 = ptrtoint ptr %new_ip to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %new_ip, align 4
  %tobool114.not = icmp eq ptr %66, null
  br i1 %tobool114.not, label %land.lhs.true.if.end118_crit_edge, label %if.then115

land.lhs.true.if.end118_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end118

if.then115:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %rdwrlock117 = getelementptr i8, ptr %66, i32 -688
  call void @up_write(ptr noundef %rdwrlock117) #9
  br label %if.end118

if.end118:                                        ; preds = %if.then115, %land.lhs.true.if.end118_crit_edge, %if.end104.if.end118_crit_edge
  %67 = ptrtoint ptr %new_ip to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %new_ip, align 4
  %i_sb119 = getelementptr inbounds %struct.inode, ptr %68, i32 0, i32 8
  %69 = ptrtoint ptr %i_sb119 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %i_sb119, align 4
  call void (ptr, ptr, ...) @jfs_error(ptr noundef %70, ptr noundef nonnull @.str.84) #9
  br label %cleanup

if.end120:                                        ; preds = %if.then94
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @TxBlock to i32))
  %71 = load ptr, ptr @TxBlock, align 4
  %idxprom = zext i16 %call69 to i32
  %arrayidx = getelementptr %struct.tblock, ptr %71, i32 %idxprom
  %72 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %arrayidx, align 4
  %74 = or i16 %73, 256
  store i16 %74, ptr %arrayidx, align 4
  %75 = ptrtoint ptr %new_ip to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %new_ip, align 4
  %u123 = getelementptr %struct.tblock, ptr %71, i32 %idxprom, i32 16
  %77 = ptrtoint ptr %u123 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %76, ptr %u123, align 4
  br label %if.end209

if.else124:                                       ; preds = %if.end88
  %78 = getelementptr inbounds %struct.inode, ptr %53, i32 0, i32 12
  %79 = ptrtoint ptr %78 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %78, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %cmp125 = icmp eq i32 %80, 0
  br i1 %cmp125, label %do.body128, label %if.else160

do.body128:                                       ; preds = %if.else124
  %cflag = getelementptr i8, ptr %53, i32 -768
  %81 = ptrtoint ptr %cflag to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load volatile i32, ptr %cflag, align 4
  %and1.i = and i32 %82, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool131.not = icmp eq i32 %and1.i, 0
  br i1 %tobool131.not, label %do.end146, label %do.end135

do.end135:                                        ; preds = %do.body128
  call void @__sanitizer_cov_trace_pc() #11
  %call137 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.2, i32 noundef 1192, ptr noundef nonnull @.str.87) #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jfs/namei.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1192, 0\0A.popsection", ""() #9, !srcloc !181
  unreachable

do.end146:                                        ; preds = %do.body128
  %call147 = call fastcc i64 @commitZeroLink(i16 noundef zeroext %call69, ptr noundef %53)
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call147)
  %cmp148 = icmp slt i64 %call147, 0
  br i1 %cmp148, label %if.then150, label %if.end152

if.then150:                                       ; preds = %do.end146
  call void @__sanitizer_cov_trace_pc() #11
  call void @txAbort(i16 noundef zeroext %call69, i32 noundef 1) #9
  %conv151 = trunc i64 %call147 to i32
  br label %out_tx

if.end152:                                        ; preds = %do.end146
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @TxBlock to i32))
  %83 = load ptr, ptr @TxBlock, align 4
  %idxprom153 = zext i16 %call69 to i32
  %arrayidx154 = getelementptr %struct.tblock, ptr %83, i32 %idxprom153
  %84 = ptrtoint ptr %arrayidx154 to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %arrayidx154, align 4
  %86 = or i16 %85, 256
  store i16 %86, ptr %arrayidx154, align 4
  %87 = ptrtoint ptr %new_ip to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %new_ip, align 4
  %u159 = getelementptr %struct.tblock, ptr %83, i32 %idxprom153, i32 16
  %89 = ptrtoint ptr %u159 to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %88, ptr %u159, align 4
  br label %if.end209

if.else160:                                       ; preds = %if.else124
  call void @__sanitizer_cov_trace_pc() #11
  %i_ctime = getelementptr inbounds %struct.inode, ptr %53, i32 0, i32 17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp161) #9
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp161, ptr noundef %53) #9
  %90 = call ptr @memcpy(ptr %i_ctime, ptr %tmp161, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp161) #9
  %91 = ptrtoint ptr %new_ip to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %new_ip, align 4
  call void @__mark_inode_dirty(ptr noundef %92, i32 noundef 7) #9
  br label %if.end209

if.else164:                                       ; preds = %if.end78
  %call165 = call i32 @dtSearch(ptr noundef %new_dir, ptr noundef nonnull %new_dname, ptr noundef nonnull %ino, ptr noundef nonnull %btstack, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call165)
  %tobool166.not = icmp eq i32 %call165, 0
  br i1 %tobool166.not, label %if.end180, label %do.body168

do.body168:                                       ; preds = %if.else164
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jfsloglevel to i32))
  %93 = load i32, ptr @jfsloglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %93)
  %cmp169 = icmp sgt i32 %93, 0
  br i1 %cmp169, label %do.end174, label %do.body168.out_tx_crit_edge

do.body168.out_tx_crit_edge:                      ; preds = %do.body168
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_tx

do.end174:                                        ; preds = %do.body168
  call void @__sanitizer_cov_trace_pc() #11
  %call176 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.89, i32 noundef %call165) #12
  br label %out_tx

if.end180:                                        ; preds = %if.else164
  %94 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %i_ino, align 8
  %96 = ptrtoint ptr %ino to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %95, ptr %ino, align 4
  %call182 = call i32 @dtInsert(i16 noundef zeroext %call69, ptr noundef %new_dir, ptr noundef nonnull %new_dname, ptr noundef nonnull %ino, ptr noundef nonnull %btstack) #9
  %97 = zext i32 %call182 to i64
  call void @__sanitizer_cov_trace_switch(i64 %97, ptr @__sancov_gen_cov_switch_values.107)
  switch i32 %call182, label %if.end180.out_tx_crit_edge [
    i32 0, label %if.end201
    i32 -5, label %do.body188
  ]

if.end180.out_tx_crit_edge:                       ; preds = %if.end180
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_tx

do.body188:                                       ; preds = %if.end180
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jfsloglevel to i32))
  %98 = load i32, ptr @jfsloglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %98)
  %cmp189 = icmp sgt i32 %98, 0
  br i1 %cmp189, label %do.end194, label %do.body188.out_tx_crit_edge

do.body188.out_tx_crit_edge:                      ; preds = %do.body188
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_tx

do.end194:                                        ; preds = %do.body188
  call void @__sanitizer_cov_trace_pc() #11
  %call196 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.92) #12
  br label %out_tx

if.end201:                                        ; preds = %if.end180
  %99 = ptrtoint ptr %13 to i32
  call void @__asan_load2_noabort(i32 %99)
  %100 = load i16, ptr %13, align 8
  %101 = and i16 %100, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %101)
  %cmp205 = icmp eq i16 %101, 16384
  br i1 %cmp205, label %if.then207, label %if.end201.if.end209_crit_edge

if.end201.if.end209_crit_edge:                    ; preds = %if.end201
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end209

if.then207:                                       ; preds = %if.end201
  call void @__sanitizer_cov_trace_pc() #11
  call void @inc_nlink(ptr noundef %new_dir) #9
  br label %if.end209

if.end209:                                        ; preds = %if.then207, %if.end201.if.end209_crit_edge, %if.else160, %if.end152, %if.end120
  %new_size.0 = phi i64 [ 0, %if.end120 ], [ %call147, %if.end152 ], [ 0, %if.else160 ], [ 0, %if.then207 ], [ 0, %if.end201.if.end209_crit_edge ]
  %102 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %i_ino, align 8
  %104 = ptrtoint ptr %ino to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %103, ptr %ino, align 4
  %call211 = call i32 @dtDelete(i16 noundef zeroext %call69, ptr noundef %old_dir, ptr noundef nonnull %old_dname, ptr noundef nonnull %ino, i32 noundef 3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call211)
  %tobool212.not = icmp eq i32 %call211, 0
  br i1 %tobool212.not, label %if.end226, label %do.body214

do.body214:                                       ; preds = %if.end209
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jfsloglevel to i32))
  %105 = load i32, ptr @jfsloglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %105)
  %cmp215 = icmp sgt i32 %105, 0
  br i1 %cmp215, label %do.end220, label %do.body214.do.end225_crit_edge

do.body214.do.end225_crit_edge:                   ; preds = %do.body214
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end225

do.end220:                                        ; preds = %do.body214
  call void @__sanitizer_cov_trace_pc() #11
  %call222 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.95, i32 noundef %call211) #12
  br label %do.end225

do.end225:                                        ; preds = %do.end220, %do.body214.do.end225_crit_edge
  call void @txAbort(i16 noundef zeroext %call69, i32 noundef 1) #9
  br label %out_tx

if.end226:                                        ; preds = %if.end209
  %106 = ptrtoint ptr %13 to i32
  call void @__asan_load2_noabort(i32 %106)
  %107 = load i16, ptr %13, align 8
  %108 = and i16 %107, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %108)
  %cmp230 = icmp eq i16 %108, 16384
  br i1 %cmp230, label %if.then232, label %if.end226.if.end265_crit_edge

if.end226.if.end265_crit_edge:                    ; preds = %if.end226
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end265

if.then232:                                       ; preds = %if.end226
  call void @drop_nlink(ptr noundef %old_dir) #9
  br i1 %cmp73.not, label %if.then232.if.end265_crit_edge, label %if.then235

if.then232.if.end265_crit_edge:                   ; preds = %if.then232
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end265

if.then235:                                       ; preds = %if.then232
  %i_ino236 = getelementptr inbounds %struct.inode, ptr %new_dir, i32 0, i32 11
  %109 = ptrtoint ptr %i_ino236 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %i_ino236, align 8
  %111 = call i32 @llvm.bswap.i32(i32 %110)
  %idotdot = getelementptr i8, ptr %13, i32 -284
  %112 = ptrtoint ptr %idotdot to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %111, ptr %idotdot, align 4
  %bxflag = getelementptr i8, ptr %13, i32 -752
  %call241 = call ptr @txLock(i16 noundef zeroext %call69, ptr noundef %13, ptr noundef %bxflag, i32 noundef 8576) #9
  %lock = getelementptr inbounds %struct.tlock, ptr %call241, i32 0, i32 6
  %index = getelementptr inbounds %struct.linelock, ptr %lock, i32 0, i32 2
  %113 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %index, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %114)
  %cmp244 = icmp eq i8 %114, 0
  br i1 %cmp244, label %do.end260, label %do.end249

do.end249:                                        ; preds = %if.then235
  call void @__sanitizer_cov_trace_pc() #11
  %call251 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.2, i32 noundef 1255, ptr noundef nonnull @.str.99) #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jfs/namei.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1255, 0\0A.popsection", ""() #9, !srcloc !182
  unreachable

do.end260:                                        ; preds = %if.then235
  call void @__sanitizer_cov_trace_pc() #11
  %lv261 = getelementptr inbounds %struct.tlock, ptr %call241, i32 0, i32 6, i32 4
  %115 = ptrtoint ptr %lv261 to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 0, ptr %lv261, align 1
  %length = getelementptr inbounds %struct.lv, ptr %lv261, i32 0, i32 1
  %116 = ptrtoint ptr %length to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 1, ptr %length, align 1
  %117 = ptrtoint ptr %index to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 1, ptr %index, align 1
  br label %if.end265

if.end265:                                        ; preds = %do.end260, %if.then232.if.end265_crit_edge, %if.end226.if.end265_crit_edge
  %i_ctime266 = getelementptr inbounds %struct.inode, ptr %13, i32 0, i32 17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp267) #9
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp267, ptr noundef %13) #9
  %118 = call ptr @memcpy(ptr %i_ctime266, ptr %tmp267, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp267) #9
  call void @__mark_inode_dirty(ptr noundef %13, i32 noundef 7) #9
  %i_ctime268 = getelementptr inbounds %struct.inode, ptr %new_dir, i32 0, i32 17
  %i_mtime = getelementptr inbounds %struct.inode, ptr %new_dir, i32 0, i32 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp269) #9
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp269, ptr noundef %new_dir) #9
  %119 = call ptr @memcpy(ptr %i_mtime, ptr %tmp269, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp269) #9
  %120 = call ptr @memcpy(ptr %i_ctime268, ptr %i_mtime, i32 16)
  call void @__mark_inode_dirty(ptr noundef %new_dir, i32 noundef 7) #9
  %121 = ptrtoint ptr %iplist to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr %13, ptr %iplist, align 4
  %122 = ptrtoint ptr %new_ip to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %new_ip, align 4
  %tobool272.not = icmp eq ptr %123, null
  br i1 %tobool272.not, label %if.end265.if.end276_crit_edge, label %if.then273

if.end265.if.end276_crit_edge:                    ; preds = %if.end265
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end276

if.then273:                                       ; preds = %if.end265
  call void @__sanitizer_cov_trace_pc() #11
  %124 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr %123, ptr %9, align 4
  br label %if.end276

if.end276:                                        ; preds = %if.then273, %if.end265.if.end276_crit_edge
  %ipcount.0 = phi i32 [ 2, %if.then273 ], [ 1, %if.end265.if.end276_crit_edge ]
  %inc277 = add nuw nsw i32 %ipcount.0, 1
  %arrayidx278 = getelementptr [4 x ptr], ptr %iplist, i32 0, i32 %ipcount.0
  %125 = ptrtoint ptr %arrayidx278 to i32
  call void @__asan_store4_noabort(i32 %125)
  store ptr %old_dir, ptr %arrayidx278, align 4
  br i1 %cmp73.not, label %if.end276.if.end287_crit_edge, label %if.then281

if.end276.if.end287_crit_edge:                    ; preds = %if.end276
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end287

if.then281:                                       ; preds = %if.end276
  call void @__sanitizer_cov_trace_pc() #11
  %inc282 = add nuw nsw i32 %ipcount.0, 2
  %arrayidx283 = getelementptr [4 x ptr], ptr %iplist, i32 0, i32 %inc277
  %126 = ptrtoint ptr %arrayidx283 to i32
  call void @__asan_store4_noabort(i32 %126)
  store ptr %new_dir, ptr %arrayidx283, align 4
  %i_ctime284 = getelementptr inbounds %struct.inode, ptr %old_dir, i32 0, i32 17
  %i_mtime285 = getelementptr inbounds %struct.inode, ptr %old_dir, i32 0, i32 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp286) #9
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp286, ptr noundef %old_dir) #9
  %127 = call ptr @memcpy(ptr %i_mtime285, ptr %tmp286, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp286) #9
  %128 = call ptr @memcpy(ptr %i_ctime284, ptr %i_mtime285, i32 16)
  call void @__mark_inode_dirty(ptr noundef %old_dir, i32 noundef 7) #9
  br label %if.end287

if.end287:                                        ; preds = %if.then281, %if.end276.if.end287_crit_edge
  %ipcount.1 = phi i32 [ %inc282, %if.then281 ], [ %inc277, %if.end276.if.end287_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %new_size.0)
  %tobool288.not = icmp ne i64 %new_size.0, 0
  %. = zext i1 %tobool288.not to i32
  %call292 = call i32 @txCommit(i16 noundef zeroext %call69, i32 noundef %ipcount.1, ptr noundef nonnull %iplist, i32 noundef %.) #9
  br label %out_tx

out_tx:                                           ; preds = %if.end287, %do.end225, %do.end194, %do.body188.out_tx_crit_edge, %if.end180.out_tx_crit_edge, %do.end174, %do.body168.out_tx_crit_edge, %if.then150, %if.then80.out_tx_crit_edge
  %new_size.1 = phi i64 [ 0, %if.then80.out_tx_crit_edge ], [ %new_size.0, %do.end225 ], [ %new_size.0, %if.end287 ], [ %call147, %if.then150 ], [ 0, %do.end174 ], [ 0, %do.body168.out_tx_crit_edge ], [ 0, %do.end194 ], [ 0, %do.body188.out_tx_crit_edge ], [ 0, %if.end180.out_tx_crit_edge ]
  %rc.0 = phi i32 [ %call85, %if.then80.out_tx_crit_edge ], [ %call211, %do.end225 ], [ %call292, %if.end287 ], [ %conv151, %if.then150 ], [ %call165, %do.end174 ], [ %call165, %do.body168.out_tx_crit_edge ], [ -5, %do.end194 ], [ -5, %do.body188.out_tx_crit_edge ], [ %call182, %if.end180.out_tx_crit_edge ]
  call void @txEnd(i16 noundef zeroext %call69) #9
  %129 = ptrtoint ptr %new_ip to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %new_ip, align 4
  %tobool293.not = icmp eq ptr %130, null
  br i1 %tobool293.not, label %out_tx.if.end297_crit_edge, label %if.then294

out_tx.if.end297_crit_edge:                       ; preds = %out_tx
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end297

if.then294:                                       ; preds = %out_tx
  call void @__sanitizer_cov_trace_pc() #11
  %commit_mutex296 = getelementptr i8, ptr %130, i32 -592
  call void @mutex_unlock(ptr noundef %commit_mutex296) #9
  br label %if.end297

if.end297:                                        ; preds = %if.then294, %out_tx.if.end297_crit_edge
  br i1 %cmp73.not, label %if.end297.if.end303_crit_edge, label %if.then300

if.end297.if.end303_crit_edge:                    ; preds = %if.end297
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end303

if.then300:                                       ; preds = %if.end297
  call void @__sanitizer_cov_trace_pc() #11
  %commit_mutex302 = getelementptr i8, ptr %old_dir, i32 -592
  call void @mutex_unlock(ptr noundef %commit_mutex302) #9
  br label %if.end303

if.end303:                                        ; preds = %if.then300, %if.end297.if.end303_crit_edge
  call void @mutex_unlock(ptr noundef %commit_mutex72) #9
  call void @mutex_unlock(ptr noundef %commit_mutex) #9
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %new_size.1)
  %tobool308.not522 = icmp ne i64 %new_size.1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.0)
  %cmp309523 = icmp eq i32 %rc.0, 0
  %or.cond524 = select i1 %tobool308.not522, i1 %cmp309523, i1 false
  br i1 %or.cond524, label %if.end303.while.body_crit_edge, label %if.end303.while.end_crit_edge

if.end303.while.end_crit_edge:                    ; preds = %if.end303
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

if.end303.while.body_crit_edge:                   ; preds = %if.end303
  br label %while.body

while.body:                                       ; preds = %if.end322.while.body_crit_edge, %if.end303.while.body_crit_edge
  %new_size.2525 = phi i64 [ %call315, %if.end322.while.body_crit_edge ], [ %new_size.1, %if.end303.while.body_crit_edge ]
  %131 = ptrtoint ptr %new_ip to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %new_ip, align 4
  %i_sb311 = getelementptr inbounds %struct.inode, ptr %132, i32 0, i32 8
  %133 = ptrtoint ptr %i_sb311 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %i_sb311, align 4
  %call312 = call zeroext i16 @txBegin(ptr noundef %134, i32 noundef 0) #9
  %135 = ptrtoint ptr %new_ip to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %new_ip, align 4
  %commit_mutex314 = getelementptr i8, ptr %136, i32 -592
  call void @mutex_lock_nested(ptr noundef %commit_mutex314, i32 noundef 0) #9
  %137 = ptrtoint ptr %new_ip to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %new_ip, align 4
  %call315 = call i64 @xtTruncate_pmap(i16 noundef zeroext %call312, ptr noundef %138, i64 noundef %new_size.2525) #9
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call315)
  %cmp316 = icmp slt i64 %call315, 0
  br i1 %cmp316, label %if.then318, label %if.else320

if.then318:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  call void @txAbort(i16 noundef zeroext %call312, i32 noundef 1) #9
  %conv319 = trunc i64 %call315 to i32
  br label %if.end322

if.else320:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  %call321 = call i32 @txCommit(i16 noundef zeroext %call312, i32 noundef 1, ptr noundef nonnull %new_ip, i32 noundef 1) #9
  br label %if.end322

if.end322:                                        ; preds = %if.else320, %if.then318
  %rc.2 = phi i32 [ %conv319, %if.then318 ], [ %call321, %if.else320 ]
  call void @txEnd(i16 noundef zeroext %call312) #9
  %139 = ptrtoint ptr %new_ip to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %new_ip, align 4
  %commit_mutex324 = getelementptr i8, ptr %140, i32 -592
  call void @mutex_unlock(ptr noundef %commit_mutex324) #9
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call315)
  %tobool308.not = icmp ne i64 %call315, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.2)
  %cmp309 = icmp eq i32 %rc.2, 0
  %or.cond = select i1 %tobool308.not, i1 %cmp309, i1 false
  br i1 %or.cond, label %if.end322.while.body_crit_edge, label %if.end322.while.end_crit_edge

if.end322.while.end_crit_edge:                    ; preds = %if.end322
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

if.end322.while.body_crit_edge:                   ; preds = %if.end322
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

while.end:                                        ; preds = %if.end322.while.end_crit_edge, %if.end303.while.end_crit_edge
  %rc.1.lcssa = phi i32 [ %rc.0, %if.end303.while.end_crit_edge ], [ %rc.2, %if.end322.while.end_crit_edge ]
  %141 = ptrtoint ptr %new_ip to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %new_ip, align 4
  %tobool325.not = icmp eq ptr %142, null
  br i1 %tobool325.not, label %while.end.if.end332_crit_edge, label %land.lhs.true326

while.end.if.end332_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end332

land.lhs.true326:                                 ; preds = %while.end
  %143 = getelementptr inbounds %struct.inode, ptr %142, i32 0, i32 12
  %144 = ptrtoint ptr %143 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %143, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %145)
  %cmp327 = icmp eq i32 %145, 0
  br i1 %cmp327, label %if.then329, label %land.lhs.true326.if.end332_crit_edge

land.lhs.true326.if.end332_crit_edge:             ; preds = %land.lhs.true326
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end332

if.then329:                                       ; preds = %land.lhs.true326
  call void @__sanitizer_cov_trace_pc() #11
  %cflag331 = getelementptr i8, ptr %142, i32 -768
  call void @_set_bit(i32 noundef 0, ptr noundef %cflag331) #9
  br label %if.end332

if.end332:                                        ; preds = %if.then329, %land.lhs.true326.if.end332_crit_edge, %while.end.if.end332_crit_edge
  %cflag334 = getelementptr i8, ptr %old_dir, i32 -768
  %146 = ptrtoint ptr %cflag334 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load volatile i32, ptr %cflag334, align 4
  %148 = and i32 %147, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %148)
  %tobool336.not = icmp eq i32 %148, 0
  br i1 %tobool336.not, label %if.end332.out_unlock_crit_edge, label %if.then337

if.end332.out_unlock_crit_edge:                   ; preds = %if.end332
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_unlock

if.then337:                                       ; preds = %if.end332
  %i_size = getelementptr inbounds %struct.inode, ptr %old_dir, i32 0, i32 14
  %149 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %149)
  %150 = load i64, ptr %i_size, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %150)
  %cmp338 = icmp sgt i64 %150, 1
  br i1 %cmp338, label %if.then340, label %if.then337.if.end341_crit_edge

if.then337.if.end341_crit_edge:                   ; preds = %if.then337
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end341

if.then340:                                       ; preds = %if.then337
  call void @__sanitizer_cov_trace_pc() #11
  call void @jfs_truncate_nolock(ptr noundef %old_dir, i64 noundef 0) #9
  br label %if.end341

if.end341:                                        ; preds = %if.then340, %if.then337.if.end341_crit_edge
  call void @_clear_bit(i32 noundef 5, ptr noundef %cflag334) #9
  br label %out_unlock

out_unlock:                                       ; preds = %if.end341, %if.end332.out_unlock_crit_edge, %if.then61.out_unlock_crit_edge
  %rc.3 = phi i32 [ %rc.1.lcssa, %if.end341 ], [ %rc.1.lcssa, %if.end332.out_unlock_crit_edge ], [ %call63, %if.then61.out_unlock_crit_edge ]
  %151 = ptrtoint ptr %new_ip to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %new_ip, align 4
  %tobool345.not = icmp eq ptr %152, null
  br i1 %tobool345.not, label %out_unlock.out3_crit_edge, label %land.lhs.true346

out_unlock.out3_crit_edge:                        ; preds = %out_unlock
  call void @__sanitizer_cov_trace_pc() #11
  br label %out3

land.lhs.true346:                                 ; preds = %out_unlock
  %153 = ptrtoint ptr %152 to i32
  call void @__asan_load2_noabort(i32 %153)
  %154 = load i16, ptr %152, align 8
  %155 = and i16 %154, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %155)
  %cmp350 = icmp eq i16 %155, 16384
  br i1 %cmp350, label %land.lhs.true346.out3_crit_edge, label %if.then352

land.lhs.true346.out3_crit_edge:                  ; preds = %land.lhs.true346
  call void @__sanitizer_cov_trace_pc() #11
  br label %out3

if.then352:                                       ; preds = %land.lhs.true346
  call void @__sanitizer_cov_trace_pc() #11
  %rdwrlock354 = getelementptr i8, ptr %152, i32 -688
  call void @up_write(ptr noundef %rdwrlock354) #9
  br label %out3

out3:                                             ; preds = %if.then352, %land.lhs.true346.out3_crit_edge, %out_unlock.out3_crit_edge, %if.then51.out3_crit_edge, %if.else40.out3_crit_edge, %lor.lhs.false33.out3_crit_edge, %if.then31.out3_crit_edge, %if.end28.out3_crit_edge, %lor.lhs.false.out3_crit_edge, %if.end23.out3_crit_edge
  %rc.4 = phi i32 [ %rc.3, %land.lhs.true346.out3_crit_edge ], [ %rc.3, %if.then352 ], [ %rc.3, %out_unlock.out3_crit_edge ], [ -2, %lor.lhs.false.out3_crit_edge ], [ -2, %if.end23.out3_crit_edge ], [ -116, %lor.lhs.false33.out3_crit_edge ], [ -116, %if.then31.out3_crit_edge ], [ %call29, %if.end28.out3_crit_edge ], [ -116, %if.else40.out3_crit_edge ], [ -39, %if.then51.out3_crit_edge ]
  %156 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %3, align 4
  call void @kfree(ptr noundef %157) #9
  br label %out2

out2:                                             ; preds = %out3, %if.end19.out2_crit_edge
  %rc.5 = phi i32 [ %call20, %if.end19.out2_crit_edge ], [ %rc.4, %out3 ]
  %158 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %7, align 4
  call void @kfree(ptr noundef %159) #9
  br label %do.body357

do.body357:                                       ; preds = %out2, %if.end13.do.body357_crit_edge, %if.end9.do.body357_crit_edge, %do.end5.do.body357_crit_edge
  %rc.6 = phi i32 [ %call6, %do.end5.do.body357_crit_edge ], [ %call10, %if.end9.do.body357_crit_edge ], [ %call16, %if.end13.do.body357_crit_edge ], [ %rc.5, %out2 ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jfsloglevel to i32))
  %160 = load i32, ptr @jfsloglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %160)
  %cmp358 = icmp sgt i32 %160, 3
  br i1 %cmp358, label %do.end363, label %do.body357.cleanup_crit_edge

do.body357.cleanup_crit_edge:                     ; preds = %do.body357
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end363:                                        ; preds = %do.body357
  call void @__sanitizer_cov_trace_pc() #11
  %call365 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.101, i32 noundef %rc.6) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end363, %do.body357.cleanup_crit_edge, %if.end118, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %if.end118 ], [ -22, %entry.cleanup_crit_edge ], [ %rc.6, %do.end363 ], [ %rc.6, %do.body357.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %iplist) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %old_dname) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %new_ip) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %new_dname) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ino) #9
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %btstack) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jfs_setattr(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jfs_listxattr(ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jfs_set_acl(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jfs_fileattr_set(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jfs_fileattr_get(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_file_llseek(ptr noundef, i64 noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_read_dir(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jfs_readdir(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jfs_ioctl(ptr noundef, i32 noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jfs_fsync(ptr noundef, i64 noundef, i64 noundef, i32 noundef) #3

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @jfs_ci_revalidate(ptr nocapture noundef readonly %dentry, i32 noundef %flags) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode.i, align 8
  %cmp.i.not = icmp eq ptr %1, null
  br i1 %cmp.i.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %flags)
  %tobool.not = icmp eq i32 %flags, 0
  br i1 %tobool.not, label %if.end.return_crit_edge, label %if.end2

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end2:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %and = and i32 %flags, 2560
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  %. = zext i1 %tobool3.not to i32
  br label %return

return:                                           ; preds = %if.end2, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 1, %entry.return_crit_edge ], [ 0, %if.end.return_crit_edge ], [ %., %if.end2 ]
  ret i32 %retval.0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @jfs_ci_hash(ptr noundef %dir, ptr nocapture noundef %this) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dir to i32
  %1 = ptrtoint ptr %this to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %this, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp9.not = icmp eq i32 %2, 0
  br i1 %cmp9.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %name = getelementptr inbounds %struct.qstr, ptr %this, i32 0, i32 1
  %3 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %name, align 8
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.011 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %hash.010 = phi i32 [ %0, %for.body.lr.ph ], [ %mul.i, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr i8, ptr %4, i32 %i.011
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx, align 1
  %conv.i = zext i8 %6 to i32
  %arrayidx.i = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv.i
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx.i, align 1
  %9 = and i8 %8, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp.not.i = icmp eq i8 %9, 0
  %sub.i = add i8 %6, 32
  %spec.select.i = select i1 %cmp.not.i, i8 %6, i8 %sub.i
  %conv = zext i8 %spec.select.i to i32
  %shl.i = shl nuw nsw i32 %conv, 4
  %add.i = add i32 %shl.i, %hash.010
  %shr.i = lshr i32 %conv, 4
  %add1.i = add i32 %add.i, %shr.i
  %mul.i = mul i32 %add1.i, 11
  %inc = add nuw i32 %i.011, 1
  %exitcond.not = icmp eq i32 %inc, %2
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %hash.0.lcssa = phi i32 [ %0, %entry.for.end_crit_edge ], [ %mul.i, %for.body.for.end_crit_edge ]
  %mul.i.i.i = mul i32 %hash.0.lcssa, 1640531527
  %hash3 = getelementptr inbounds %struct.anon.3, ptr %this, i32 0, i32 1
  %10 = ptrtoint ptr %hash3 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %mul.i.i.i, ptr %hash3, align 4
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal i32 @jfs_ci_compare(ptr nocapture noundef readnone %dentry, i32 noundef %len, ptr nocapture noundef readonly %str, ptr nocapture noundef readonly %name) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %name, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %len)
  %cmp.not = icmp eq i32 %1, %len
  br i1 %cmp.not, label %for.cond.preheader, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

for.cond.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp221.not = icmp eq i32 %len, 0
  br i1 %cmp221.not, label %for.cond.preheader.out_crit_edge, label %for.body.lr.ph

for.cond.preheader.out_crit_edge:                 ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %name3 = getelementptr inbounds %struct.qstr, ptr %name, i32 0, i32 1
  %2 = ptrtoint ptr %name3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %name3, align 8
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw i32 %i.022, 1
  %exitcond.not = icmp eq i32 %inc, %len
  br i1 %exitcond.not, label %for.cond.out_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.cond.out_crit_edge:                           ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %i.022 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.cond.for.body_crit_edge ]
  %arrayidx = getelementptr i8, ptr %str, i32 %i.022
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  %conv.i = zext i8 %5 to i32
  %arrayidx.i = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx.i, align 1
  %8 = and i8 %7, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %cmp.not.i = icmp eq i8 %8, 0
  %sub.i = add i8 %5, 32
  %spec.select.i = select i1 %cmp.not.i, i8 %5, i8 %sub.i
  %arrayidx4 = getelementptr i8, ptr %3, i32 %i.022
  %9 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx4, align 1
  %conv.i16 = zext i8 %10 to i32
  %arrayidx.i17 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv.i16
  %11 = ptrtoint ptr %arrayidx.i17 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx.i17, align 1
  %13 = and i8 %12, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %cmp.not.i18 = icmp eq i8 %13, 0
  %sub.i19 = add i8 %10, 32
  %spec.select.i20 = select i1 %cmp.not.i18, i8 %10, i8 %sub.i19
  call void @__sanitizer_cov_trace_cmp1(i8 %spec.select.i, i8 %spec.select.i20)
  %cmp7.not = icmp eq i8 %spec.select.i, %spec.select.i20
  br i1 %cmp7.not, label %for.cond, label %for.body.out_crit_edge

for.body.out_crit_edge:                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

out:                                              ; preds = %for.body.out_crit_edge, %for.cond.out_crit_edge, %for.cond.preheader.out_crit_edge, %entry.out_crit_edge
  %result.0 = phi i32 [ 1, %entry.out_crit_edge ], [ 0, %for.cond.preheader.out_crit_edge ], [ 1, %for.body.out_crit_edge ], [ 0, %for.cond.out_crit_edge ]
  ret i32 %result.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iput(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_UCSname(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dtSearch(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_splice_alias(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dquot_initialize(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ialloc(ptr noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @txBegin(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jfs_init_acl(i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jfs_init_security(i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @txAbort(i16 noundef zeroext, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @xtInitRoot(i16 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dtInsert(i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @current_time(ptr sret(%struct.timespec64) align 8, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @txCommit(i16 noundef zeroext, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @txEnd(i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clear_nlink(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @discard_new_inode(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @d_instantiate_new(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mark_inode_dirty(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dbFree(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @inc_nlink(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ihold(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drop_nlink(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @d_instantiate(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dtDelete(i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i64 @commitZeroLink(i16 noundef zeroext %tid, ptr noundef %ip) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jfsloglevel to i32))
  %0 = load i32, ptr @jfsloglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %0)
  %cmp = icmp sgt i32 %0, 3
  br i1 %cmp, label %do.end, label %entry.do.end3_crit_edge

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %conv = zext i16 %tid to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, i32 noundef %conv, ptr noundef %ip) #12
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %1 = ptrtoint ptr %ip to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %ip, align 8
  %3 = and i16 %2, -4096
  %4 = zext i16 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.108)
  switch i16 %3, label %do.end3.cleanup_crit_edge [
    i16 -32768, label %do.end3.sw.epilog_crit_edge
    i16 -24576, label %sw.bb
    i16 16384, label %do.end16
  ]

do.end3.sw.epilog_crit_edge:                      ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

do.end3.cleanup_crit_edge:                        ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %do.end3
  %i_size = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 14
  %5 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %i_size, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 256, i64 %6)
  %cmp5 = icmp slt i64 %6, 256
  br i1 %cmp5, label %if.then7, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.then7:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %i_size to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 0, ptr %i_size, align 8
  br label %cleanup

do.end16:                                         ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #11
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.2, i32 noundef 641, ptr noundef nonnull @.str.46) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jfs/namei.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 641, 0\0A.popsection", ""() #9, !srcloc !183
  unreachable

sw.epilog:                                        ; preds = %sw.bb.sw.epilog_crit_edge, %do.end3.sw.epilog_crit_edge
  %cflag = getelementptr i8, ptr %ip, i32 -768
  tail call void @_set_bit(i32 noundef 2, ptr noundef %cflag) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @TxBlock to i32))
  %8 = load ptr, ptr @TxBlock, align 4
  %idxprom = zext i16 %tid to i32
  %arrayidx = getelementptr %struct.tblock, ptr %8, i32 %idxprom
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %arrayidx, align 4
  %11 = or i16 %10, 16
  store i16 %11, ptr %arrayidx, align 4
  %ea = getelementptr i8, ptr %ip, i32 -808
  %12 = ptrtoint ptr %ea to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %ea, align 8
  %14 = and i8 %13, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not = icmp eq i8 %14, 0
  br i1 %tobool.not, label %sw.epilog.if.end37_crit_edge, label %if.then34

sw.epilog.if.end37_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end37

if.then34:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @txEA(i16 noundef zeroext %tid, ptr noundef %ip, ptr noundef %ea, ptr noundef null) #9
  br label %if.end37

if.end37:                                         ; preds = %if.then34, %sw.epilog.if.end37_crit_edge
  %acl = getelementptr i8, ptr %ip, i32 -824
  %15 = ptrtoint ptr %acl to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %acl, align 8
  %17 = and i8 %16, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool42.not = icmp eq i8 %17, 0
  br i1 %tobool42.not, label %if.end37.if.end46_crit_edge, label %if.then43

if.end37.if.end46_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end46

if.then43:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @txEA(i16 noundef zeroext %tid, ptr noundef %ip, ptr noundef %acl, ptr noundef null) #9
  br label %if.end46

if.end46:                                         ; preds = %if.then43, %if.end37.if.end46_crit_edge
  %i_size47 = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 14
  %18 = ptrtoint ptr %i_size47 to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %i_size47, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %19)
  %tobool48.not = icmp eq i64 %19, 0
  br i1 %tobool48.not, label %if.end46.cleanup_crit_edge, label %if.then49

if.end46.cleanup_crit_edge:                       ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then49:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #11
  %call50 = tail call i64 @xtTruncate_pmap(i16 noundef zeroext %tid, ptr noundef %ip, i64 noundef 0) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then49, %if.end46.cleanup_crit_edge, %if.then7, %do.end3.cleanup_crit_edge
  %retval.0 = phi i64 [ 0, %if.then7 ], [ %call50, %if.then49 ], [ 0, %do.end3.cleanup_crit_edge ], [ 0, %if.end46.cleanup_crit_edge ]
  ret i64 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @xtTruncate_pmap(i16 noundef zeroext, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @jfs_truncate_nolock(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @txEA(i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @inode_nohighmem(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xtInsert(i16 noundef zeroext, ptr noundef, i32 noundef, i64 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__get_metapage(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_metapage(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dtInitRoot(i16 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_nlink(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_special_inode(ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dtModify(i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @jfs_error(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @txLock(i16 noundef zeroext, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memmove(ptr, ptr, i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 89)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 89)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10, !12, !14, !15, !16, !17, !19, !20, !21, !23, !24, !25, !27, !28, !29, !30, !32, !33, !34, !36, !37, !38, !40, !41, !42, !44, !45, !46, !47, !49, !50, !51, !53, !54, !55, !56, !58, !59, !60, !62, !63, !64, !65, !67, !68, !69, !71, !72, !73, !75, !76, !77, !78, !80, !81, !82, !84, !85, !86, !87, !89, !90, !91, !93, !94, !95, !97, !98, !99, !101, !102, !103, !104, !106, !107, !108, !110, !111, !112, !114, !115, !116, !118, !119, !120, !121, !123, !124, !125, !127, !128, !129, !131, !132, !133, !134, !136, !137, !138, !140, !141, !142, !143, !145, !147, !148, !149, !151, !152, !153, !155, !156, !157, !159, !160, !161, !163, !164, !165, !167, !168}
!llvm.module.flags = !{!169, !170, !171, !172, !173, !174, !175, !176}
!llvm.ident = !{!177}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/jfs/namei.c", i32 692, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @jfs_free_zero_link._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @jfs_free_zero_link._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @jfs_dir_inode_operations, !7, !"jfs_dir_inode_operations", i1 false, i1 false}
!7 = !{!"../fs/jfs/namei.c", i32 1513, i32 31}
!8 = !{ptr @jfs_dir_operations, !9, !"jfs_dir_operations", i1 false, i1 false}
!9 = !{!"../fs/jfs/namei.c", i32 1533, i32 30}
!10 = !{ptr @jfs_ci_dentry_operations, !11, !"jfs_ci_dentry_operations", i1 false, i1 false}
!11 = !{!"../fs/jfs/namei.c", i32 1603, i32 32}
!12 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../fs/jfs/namei.c", i32 1450, i32 2}
!14 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @jfs_lookup._entry, !13, !"_entry", i1 false, i1 false}
!16 = !{ptr @jfs_lookup._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../fs/jfs/namei.c", i32 1459, i32 3}
!19 = !{ptr @jfs_lookup._entry.5, !18, !"_entry", i1 false, i1 false}
!20 = !{ptr @jfs_lookup._entry_ptr.7, !18, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.9, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../fs/jfs/namei.c", i32 1464, i32 4}
!23 = !{ptr @jfs_lookup._entry.8, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @jfs_lookup._entry_ptr.10, !22, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.11, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../fs/jfs/namei.c", i32 74, i32 2}
!27 = !{ptr @.str.12, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @jfs_create._entry, !26, !"_entry", i1 false, i1 false}
!29 = !{ptr @jfs_create._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.14, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../fs/jfs/namei.c", i32 114, i32 3}
!32 = !{ptr @jfs_create._entry.13, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @jfs_create._entry_ptr.15, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.17, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../fs/jfs/namei.c", i32 139, i32 4}
!36 = !{ptr @jfs_create._entry.16, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @jfs_create._entry_ptr.18, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.20, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../fs/jfs/namei.c", i32 175, i32 2}
!40 = !{ptr @jfs_create._entry.19, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @jfs_create._entry_ptr.21, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.22, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../fs/jfs/namei.c", i32 796, i32 2}
!44 = !{ptr @.str.23, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @jfs_link._entry, !43, !"_entry", i1 false, i1 false}
!46 = !{ptr @jfs_link._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.25, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../fs/jfs/namei.c", i32 850, i32 2}
!49 = !{ptr @jfs_link._entry.24, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @jfs_link._entry_ptr.26, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.27, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../fs/jfs/namei.c", i32 475, i32 2}
!53 = !{ptr @.str.28, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @jfs_unlink._entry, !52, !"_entry", i1 false, i1 false}
!55 = !{ptr @jfs_unlink._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.30, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../fs/jfs/namei.c", i32 503, i32 3}
!58 = !{ptr @jfs_unlink._entry.29, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @jfs_unlink._entry_ptr.31, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.33, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../fs/jfs/namei.c", i32 513, i32 2}
!62 = !{ptr @jfs_unlink._entry.32, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @jfs_unlink._entry_ptr.34, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.35, !61, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @jfs_unlink._entry.36, !66, !"_entry", i1 false, i1 false}
!66 = !{!"../fs/jfs/namei.c", i32 525, i32 3}
!67 = !{ptr @jfs_unlink._entry_ptr.37, !66, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.38, !66, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @.str.40, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../fs/jfs/namei.c", i32 594, i32 2}
!71 = !{ptr @jfs_unlink._entry.39, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @jfs_unlink._entry_ptr.41, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.42, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../fs/jfs/namei.c", i32 627, i32 2}
!75 = !{ptr @.str.43, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @commitZeroLink._entry, !74, !"_entry", i1 false, i1 false}
!77 = !{ptr @commitZeroLink._entry_ptr, !74, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @commitZeroLink._entry.44, !79, !"_entry", i1 false, i1 false}
!79 = !{!"../fs/jfs/namei.c", i32 641, i32 3}
!80 = !{ptr @commitZeroLink._entry_ptr.45, !79, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.46, !79, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @.str.47, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../fs/jfs/namei.c", i32 891, i32 2}
!84 = !{ptr @.str.48, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @jfs_symlink._entry, !83, !"_entry", i1 false, i1 false}
!86 = !{ptr @jfs_symlink._entry_ptr, !83, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.50, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../fs/jfs/namei.c", i32 960, i32 3}
!89 = !{ptr @jfs_symlink._entry.49, !88, !"_entry", i1 false, i1 false}
!90 = !{ptr @jfs_symlink._entry_ptr.51, !88, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.53, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../fs/jfs/namei.c", i32 967, i32 3}
!93 = !{ptr @jfs_symlink._entry.52, !92, !"_entry", i1 false, i1 false}
!94 = !{ptr @jfs_symlink._entry_ptr.54, !92, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.56, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../fs/jfs/namei.c", i32 1052, i32 2}
!97 = !{ptr @jfs_symlink._entry.55, !96, !"_entry", i1 false, i1 false}
!98 = !{ptr @jfs_symlink._entry_ptr.57, !96, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.58, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../fs/jfs/namei.c", i32 207, i32 2}
!101 = !{ptr @.str.59, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @jfs_mkdir._entry, !100, !"_entry", i1 false, i1 false}
!103 = !{ptr @jfs_mkdir._entry_ptr, !100, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.61, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../fs/jfs/namei.c", i32 247, i32 3}
!106 = !{ptr @jfs_mkdir._entry.60, !105, !"_entry", i1 false, i1 false}
!107 = !{ptr @jfs_mkdir._entry_ptr.62, !105, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.64, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../fs/jfs/namei.c", i32 272, i32 4}
!110 = !{ptr @jfs_mkdir._entry.63, !109, !"_entry", i1 false, i1 false}
!111 = !{ptr @jfs_mkdir._entry_ptr.65, !109, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.67, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../fs/jfs/namei.c", i32 310, i32 2}
!114 = !{ptr @jfs_mkdir._entry.66, !113, !"_entry", i1 false, i1 false}
!115 = !{ptr @jfs_mkdir._entry_ptr.68, !113, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @.str.69, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../fs/jfs/namei.c", i32 343, i32 2}
!118 = !{ptr @.str.70, !117, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @jfs_rmdir._entry, !117, !"_entry", i1 false, i1 false}
!120 = !{ptr @jfs_rmdir._entry_ptr, !117, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @.str.72, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../fs/jfs/namei.c", i32 380, i32 3}
!123 = !{ptr @jfs_rmdir._entry.71, !122, !"_entry", i1 false, i1 false}
!124 = !{ptr @jfs_rmdir._entry_ptr.73, !122, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @.str.75, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../fs/jfs/namei.c", i32 439, i32 2}
!127 = !{ptr @jfs_rmdir._entry.74, !126, !"_entry", i1 false, i1 false}
!128 = !{ptr @jfs_rmdir._entry_ptr.76, !126, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @.str.77, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../fs/jfs/namei.c", i32 1361, i32 2}
!131 = !{ptr @.str.78, !130, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @jfs_mknod._entry, !130, !"_entry", i1 false, i1 false}
!133 = !{ptr @jfs_mknod._entry_ptr, !130, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @.str.80, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../fs/jfs/namei.c", i32 1438, i32 2}
!136 = !{ptr @jfs_mknod._entry.79, !135, !"_entry", i1 false, i1 false}
!137 = !{ptr @jfs_mknod._entry_ptr.81, !135, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @.str.82, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../fs/jfs/namei.c", i32 1086, i32 2}
!140 = !{ptr @.str.83, !139, !"<string literal>", i1 false, i1 false}
!141 = !{ptr @jfs_rename._entry, !139, !"_entry", i1 false, i1 false}
!142 = !{ptr @jfs_rename._entry_ptr, !139, !"_entry_ptr", i1 false, i1 false}
!143 = !{ptr @.str.84, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../fs/jfs/namei.c", i32 1185, i32 8}
!145 = !{ptr @jfs_rename._entry.85, !146, !"_entry", i1 false, i1 false}
!146 = !{!"../fs/jfs/namei.c", i32 1192, i32 4}
!147 = !{ptr @jfs_rename._entry_ptr.86, !146, !"_entry_ptr", i1 false, i1 false}
!148 = !{ptr @.str.87, !146, !"<string literal>", i1 false, i1 false}
!149 = !{ptr @.str.89, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../fs/jfs/namei.c", i32 1213, i32 4}
!151 = !{ptr @jfs_rename._entry.88, !150, !"_entry", i1 false, i1 false}
!152 = !{ptr @jfs_rename._entry_ptr.90, !150, !"_entry_ptr", i1 false, i1 false}
!153 = !{ptr @.str.92, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../fs/jfs/namei.c", i32 1222, i32 5}
!155 = !{ptr @jfs_rename._entry.91, !154, !"_entry", i1 false, i1 false}
!156 = !{ptr @jfs_rename._entry_ptr.93, !154, !"_entry_ptr", i1 false, i1 false}
!157 = !{ptr @.str.95, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../fs/jfs/namei.c", i32 1235, i32 3}
!159 = !{ptr @jfs_rename._entry.94, !158, !"_entry", i1 false, i1 false}
!160 = !{ptr @jfs_rename._entry_ptr.96, !158, !"_entry_ptr", i1 false, i1 false}
!161 = !{ptr @jfs_rename._entry.97, !162, !"_entry", i1 false, i1 false}
!162 = !{!"../fs/jfs/namei.c", i32 1255, i32 4}
!163 = !{ptr @jfs_rename._entry_ptr.98, !162, !"_entry_ptr", i1 false, i1 false}
!164 = !{ptr @.str.99, !162, !"<string literal>", i1 false, i1 false}
!165 = !{ptr @.str.101, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../fs/jfs/namei.c", i32 1338, i32 2}
!167 = !{ptr @jfs_rename._entry.100, !166, !"_entry", i1 false, i1 false}
!168 = !{ptr @jfs_rename._entry_ptr.102, !166, !"_entry_ptr", i1 false, i1 false}
!169 = !{i32 1, !"wchar_size", i32 2}
!170 = !{i32 1, !"min_enum_size", i32 4}
!171 = !{i32 8, !"branch-target-enforcement", i32 0}
!172 = !{i32 8, !"sign-return-address", i32 0}
!173 = !{i32 8, !"sign-return-address-all", i32 0}
!174 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!175 = !{i32 7, !"uwtable", i32 1}
!176 = !{i32 7, !"frame-pointer", i32 2}
!177 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!178 = !{!"auto-init"}
!179 = !{i64 2153984410, i64 2153984889, i64 2153984447, i64 2153984503, i64 2153984537, i64 2153984561, i64 2153984602, i64 2153984623, i64 2153984651, i64 2153984685}
!180 = !{i64 2153987703, i64 2153988182, i64 2153987740, i64 2153987796, i64 2153987830, i64 2153987854, i64 2153987895, i64 2153987916, i64 2153987944, i64 2153987978}
!181 = !{i64 2154017846, i64 2154018326, i64 2154017883, i64 2154017939, i64 2154017973, i64 2154017997, i64 2154018038, i64 2154018059, i64 2154018087, i64 2154018121}
!182 = !{i64 2154026492, i64 2154026972, i64 2154026529, i64 2154026585, i64 2154026619, i64 2154026643, i64 2154026684, i64 2154026705, i64 2154026733, i64 2154026767}
!183 = !{i64 2153998775, i64 2153999254, i64 2153998812, i64 2153998868, i64 2153998902, i64 2153998926, i64 2153998967, i64 2153998988, i64 2153999016, i64 2153999050}
