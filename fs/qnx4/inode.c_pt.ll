; ModuleID = '/llk/IR_all_yes/fs/qnx4/inode.c_pt.bc'
source_filename = "../fs/qnx4/inode.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.address_space_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.inode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [36 x i8] }
%struct.file_system_type = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.hlist_head = type { ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.super_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.76, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.77, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.78, ptr, %struct.address_space, %struct.list_head, %union.anon.79, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.76 = type { i32 }
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
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.buffer_head = type { i32, ptr, ptr, i64, i32, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.spinlock }
%struct.qnx4_xblk = type { i32, i32, i8, [3 x i8], i32, [60 x %struct.qnx4_xtnt_t], [8 x i8], %struct.qnx4_xtnt_t }
%struct.qnx4_xtnt_t = type { i32, i32 }
%struct.qnx4_inode_entry = type { [16 x i8], i32, %struct.qnx4_xtnt_t, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, [4 x i8], i8, i8 }
%struct.qnx4_sb_info = type { i32, ptr }
%struct.qnx4_inode_info = type { %struct.qnx4_inode_entry, i64, %struct.inode }
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
%struct.block_device = type { i64, i64, ptr, i32, i8, i32, i32, ptr, ptr, ptr, %struct.device, ptr, i32, i8, ptr, i8, %struct.spinlock, ptr, ptr, i32, %struct.mutex, ptr, ptr, i8 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.kstatfs = type { i32, i32, i64, i64, i64, i64, i64, %struct.__kernel_fsid_t, i32, i32, i32, [4 x i32] }
%struct.__kernel_fsid_t = type { [2 x i32] }

@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"IamXblk\00", [24 x i8] zeroinitializer }, align 32
@qnx4_iget._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 283, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\013qnx4: bad inode number on dev %s: %lu is out of range\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"qnx4_iget\00", [22 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fs/qnx4/inode.c\00", [16 x i8] zeroinitializer }, align 32
@qnx4_iget._entry_ptr = internal global ptr @qnx4_iget._entry, section ".printk_index", align 4
@qnx4_iget._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.2, ptr @.str.3, i32 291, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\013qnx4: major problem: unable to read inode from dev %s\0A\00", [39 x i8] zeroinitializer }, align 32
@qnx4_iget._entry_ptr.6 = internal global ptr @qnx4_iget._entry.4, section ".printk_index", align 4
@generic_ro_fops = external dso_local constant %struct.file_operations, align 4
@qnx4_aops = internal constant { %struct.address_space_operations, [40 x i8] } { %struct.address_space_operations { ptr null, ptr @qnx4_readpage, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @qnx4_bmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@qnx4_dir_inode_operations = external dso_local constant %struct.inode_operations, align 128
@qnx4_dir_operations = external dso_local constant %struct.file_operations, align 4
@page_symlink_inode_operations = external dso_local constant %struct.inode_operations, align 128
@qnx4_iget._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 326, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013qnx4: bad inode %lu on dev %s\0A\00", [63 x i8] zeroinitializer }, align 32
@qnx4_iget._entry_ptr.9 = internal global ptr @qnx4_iget._entry.7, section ".printk_index", align 4
@__UNIQUE_ID_alias270 = internal constant [19 x i8] c"qnx4.alias=fs-qnx4\00", section ".modinfo", align 1
@qnx4_fs_type = internal global { %struct.file_system_type, [44 x i8] } { %struct.file_system_type { ptr @.str.10, i32 1, ptr null, ptr null, ptr @qnx4_mount, ptr @qnx4_kill_sb, ptr null, ptr null, %struct.hlist_head zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, [3 x %struct.lock_class_key] zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@__initcall__kmod_qnx4__271_420_init_qnx4_fs6 = internal global ptr @init_qnx4_fs, section ".initcall6.init", align 4
@__exitcall_exit_qnx4_fs = internal global ptr @exit_qnx4_fs, section ".exitcall.exit", align 4
@__UNIQUE_ID_file272 = internal constant [23 x i8] c"qnx4.file=fs/qnx4/qnx4\00", section ".modinfo", align 1
@__UNIQUE_ID_license273 = internal constant [17 x i8] c"qnx4.license=GPL\00", section ".modinfo", align 1
@.str.10 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"qnx4\00", [27 x i8] zeroinitializer }, align 32
@qnx4_sops = internal constant { %struct.super_operations, [60 x i8] } { %struct.super_operations { ptr @qnx4_alloc_inode, ptr null, ptr @qnx4_free_inode, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @qnx4_statfs, ptr @qnx4_remount, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@qnx4_fill_super._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.3, i32 211, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013qnx4: unable to read the superblock\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"qnx4_fill_super\00", [16 x i8] zeroinitializer }, align 32
@qnx4_fill_super._entry_ptr = internal global ptr @qnx4_fill_super._entry, section ".printk_index", align 4
@qnx4_fill_super._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.12, ptr @.str.3, i32 220, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"\013qnx4: %s\0A\00", [20 x i8] zeroinitializer }, align 32
@qnx4_fill_super._entry_ptr.15 = internal global ptr @qnx4_fill_super._entry.13, section ".printk_index", align 4
@qnx4_fill_super._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.12, ptr @.str.3, i32 227, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\013qnx4: get inode failed\0A\00", [38 x i8] zeroinitializer }, align 32
@qnx4_fill_super._entry_ptr.18 = internal global ptr @qnx4_fill_super._entry.16, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@qnx4_inode_cachep = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.19 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"no qnx4 filesystem (no root dir).\00", [62 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"unable to read root entry.\00", [37 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c".bitmap\00", [24 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"not enough memory for bitmap inode\00", [61 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"bitmap file not found.\00", [41 x i8] zeroinitializer }, align 32
@init_qnx4_fs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.3, i32 410, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\016QNX4 filesystem 0.2.3 registered.\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"init_qnx4_fs\00", [19 x i8] zeroinitializer }, align 32
@init_qnx4_fs._entry_ptr = internal global ptr @init_qnx4_fs._entry, section ".printk_index", align 4
@.str.26 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"qnx4_inode_cache\00", [47 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 16, i64 16384, i64 32768, i64 40960]
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 104, i32 40 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 281, i32 3 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 290, i32 3 }
@___asan_gen_.48 = private unnamed_addr constant [10 x i8] c"qnx4_aops\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 257, i32 46 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 325, i32 3 }
@___asan_gen_.57 = private unnamed_addr constant [13 x i8] c"qnx4_fs_type\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 387, i32 32 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 389, i32 11 }
@___asan_gen_.63 = private unnamed_addr constant [10 x i8] c"qnx4_sops\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 36, i32 38 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 211, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 220, i32 4 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 227, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant [18 x i8] c"qnx4_inode_cachep\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 336, i32 27 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 159, i32 10 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 166, i32 11 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 170, i32 34 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 177, i32 12 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 183, i32 9 }
@___asan_gen_.105 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 410, i32 2 }
@___asan_gen_.114 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.115 = private constant [19 x i8] c"../fs/qnx4/inode.c\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 361, i32 40 }
@llvm.compiler.used = appending global [43 x ptr] [ptr @__UNIQUE_ID_alias270, ptr @__UNIQUE_ID_file272, ptr @__UNIQUE_ID_license273, ptr @__exitcall_exit_qnx4_fs, ptr @__initcall__kmod_qnx4__271_420_init_qnx4_fs6, ptr @exit_qnx4_fs, ptr @init_qnx4_fs._entry, ptr @init_qnx4_fs._entry_ptr, ptr @qnx4_fill_super._entry, ptr @qnx4_fill_super._entry.13, ptr @qnx4_fill_super._entry.16, ptr @qnx4_fill_super._entry_ptr, ptr @qnx4_fill_super._entry_ptr.15, ptr @qnx4_fill_super._entry_ptr.18, ptr @qnx4_iget._entry, ptr @qnx4_iget._entry.4, ptr @qnx4_iget._entry.7, ptr @qnx4_iget._entry_ptr, ptr @qnx4_iget._entry_ptr.6, ptr @qnx4_iget._entry_ptr.9, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @qnx4_aops, ptr @.str.8, ptr @qnx4_fs_type, ptr @.str.10, ptr @qnx4_sops, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.17, ptr @qnx4_inode_cachep, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26], section "llvm.metadata"
@0 = internal global [30 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qnx4_iget._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qnx4_iget._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qnx4_aops to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qnx4_iget._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qnx4_fs_type to i32), i32 116, i32 160, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qnx4_sops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qnx4_fill_super._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qnx4_fill_super._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qnx4_fill_super._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qnx4_inode_cachep to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_qnx4_fs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qnx4_block_map(ptr nocapture noundef readonly %inode, i32 noundef %iblock) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %di_num_xtnts = getelementptr i8, ptr %inode, i32 -24
  %0 = ptrtoint ptr %di_num_xtnts to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %di_num_xtnts, align 4
  %xtnt_size.i = getelementptr i8, ptr %inode, i32 -48
  %2 = ptrtoint ptr %xtnt_size.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %xtnt_size.i, align 4
  %4 = tail call i32 @llvm.bswap.i32(i32 %3) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %iblock)
  %cmp.i = icmp ugt i32 %4, %iblock
  br i1 %cmp.i, label %try_extent.exit, label %try_extent.exit.thread

try_extent.exit.thread:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %sub1.i = sub i32 %iblock, %4
  br label %if.else

try_extent.exit:                                  ; preds = %entry
  %di_first_xtnt = getelementptr i8, ptr %inode, i32 -52
  %5 = ptrtoint ptr %di_first_xtnt to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %di_first_xtnt, align 4
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #8
  %add.i = add i32 %iblock, -1
  %sub.i = add i32 %add.i, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %tobool.not = icmp eq i32 %sub.i, 0
  br i1 %tobool.not, label %try_extent.exit.if.else_crit_edge, label %try_extent.exit.cleanup_crit_edge

try_extent.exit.cleanup_crit_edge:                ; preds = %try_extent.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

try_extent.exit.if.else_crit_edge:                ; preds = %try_extent.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

if.else:                                          ; preds = %try_extent.exit.if.else_crit_edge, %try_extent.exit.thread
  %offset.068 = phi i32 [ %sub1.i, %try_extent.exit.thread ], [ %iblock, %try_extent.exit.if.else_crit_edge ]
  %8 = tail call i16 @llvm.bswap.i16(i16 %1)
  %dec73 = add i16 %8, -1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %dec73)
  %cmp.not74 = icmp eq i16 %dec73, 0
  br i1 %cmp.not74, label %if.else.cleanup_crit_edge, label %while.body.lr.ph

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

while.body.lr.ph:                                 ; preds = %if.else
  %di_xblk = getelementptr i8, ptr %inode, i32 -44
  %9 = ptrtoint ptr %di_xblk to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %di_xblk, align 4
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  br label %while.body

while.body:                                       ; preds = %if.end23.while.body_crit_edge, %while.body.lr.ph
  %dec81 = phi i16 [ %dec73, %while.body.lr.ph ], [ %dec, %if.end23.while.body_crit_edge ]
  %xblk.080 = phi ptr [ null, %while.body.lr.ph ], [ %xblk.1, %if.end23.while.body_crit_edge ]
  %bh.079 = phi ptr [ null, %while.body.lr.ph ], [ %bh.2, %if.end23.while.body_crit_edge ]
  %i_xblk.078 = phi i32 [ %11, %while.body.lr.ph ], [ %i_xblk.1, %if.end23.while.body_crit_edge ]
  %ix.076 = phi i32 [ 0, %while.body.lr.ph ], [ %ix.1, %if.end23.while.body_crit_edge ]
  %offset.175 = phi i32 [ %offset.068, %while.body.lr.ph ], [ %offset.272, %if.end23.while.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ix.076)
  %cmp3 = icmp eq i32 %ix.076, 0
  br i1 %cmp3, label %if.then5, label %while.body.if.end14_crit_edge

while.body.if.end14_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

if.then5:                                         ; preds = %while.body
  %12 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %i_sb, align 4
  %sub = add i32 %i_xblk.078, -1
  %conv6 = sext i32 %sub to i64
  %s_bdev.i = getelementptr inbounds %struct.super_block, ptr %13, i32 0, i32 26
  %14 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %s_bdev.i, align 4
  %s_blocksize.i = getelementptr inbounds %struct.super_block, ptr %13, i32 0, i32 3
  %16 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %s_blocksize.i, align 16
  %call.i = tail call ptr @__bread_gfp(ptr noundef %15, i64 noundef %conv6, i32 noundef %17, i32 noundef 8) #8
  %tobool8.not = icmp eq ptr %call.i, null
  br i1 %tobool8.not, label %if.then5.cleanup_crit_edge, label %if.end

if.then5.cleanup_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %if.then5
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %call.i, i32 0, i32 5
  %18 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %b_data, align 4
  %xblk_signature = getelementptr inbounds %struct.qnx4_xblk, ptr %19, i32 0, i32 6
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(7) %xblk_signature, ptr noundef nonnull dereferenceable(7) @.str, i32 7) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool11.not = icmp eq i32 %bcmp, 0
  br i1 %tobool11.not, label %if.end.if.end14_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

if.end14:                                         ; preds = %if.end.if.end14_crit_edge, %while.body.if.end14_crit_edge
  %bh.1 = phi ptr [ %call.i, %if.end.if.end14_crit_edge ], [ %bh.079, %while.body.if.end14_crit_edge ]
  %xblk.1 = phi ptr [ %19, %if.end.if.end14_crit_edge ], [ %xblk.080, %while.body.if.end14_crit_edge ]
  %xtnt_size.i49 = getelementptr %struct.qnx4_xblk, ptr %xblk.1, i32 0, i32 5, i32 %ix.076, i32 1
  %20 = ptrtoint ptr %xtnt_size.i49 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %xtnt_size.i49, align 4
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %offset.175, i32 %22)
  %cmp.i50 = icmp ult i32 %offset.175, %22
  br i1 %cmp.i50, label %try_extent.exit57, label %try_extent.exit57.thread

try_extent.exit57.thread:                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  %sub1.i54 = sub i32 %offset.175, %22
  br label %if.end18

try_extent.exit57:                                ; preds = %if.end14
  %arrayidx = getelementptr %struct.qnx4_xblk, ptr %xblk.1, i32 0, i32 5, i32 %ix.076
  %23 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx, align 4
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #8
  %add.i51 = add i32 %offset.175, -1
  %sub.i52 = add i32 %add.i51, %25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i52)
  %tobool16.not = icmp eq i32 %sub.i52, 0
  br i1 %tobool16.not, label %try_extent.exit57.if.end18_crit_edge, label %try_extent.exit57.while.end_crit_edge

try_extent.exit57.while.end_crit_edge:            ; preds = %try_extent.exit57
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

try_extent.exit57.if.end18_crit_edge:             ; preds = %try_extent.exit57
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18

if.end18:                                         ; preds = %try_extent.exit57.if.end18_crit_edge, %try_extent.exit57.thread
  %offset.272 = phi i32 [ %sub1.i54, %try_extent.exit57.thread ], [ %offset.175, %try_extent.exit57.if.end18_crit_edge ]
  %inc = add i32 %ix.076, 1
  %xblk_num_xtnts = getelementptr inbounds %struct.qnx4_xblk, ptr %xblk.1, i32 0, i32 2
  %26 = ptrtoint ptr %xblk_num_xtnts to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %xblk_num_xtnts, align 4
  %conv19 = zext i8 %27 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %conv19)
  %cmp20.not = icmp slt i32 %inc, %conv19
  br i1 %cmp20.not, label %if.end18.if.end23_crit_edge, label %if.then22

if.end18.if.end23_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23

if.then22:                                        ; preds = %if.end18
  %28 = ptrtoint ptr %xblk.1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %xblk.1, align 4
  %30 = tail call i32 @llvm.bswap.i32(i32 %29)
  %tobool.not.i = icmp eq ptr %bh.1, null
  br i1 %tobool.not.i, label %if.then22.if.end23_crit_edge, label %if.then.i58

if.then22.if.end23_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23

if.then.i58:                                      ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__brelse(ptr noundef nonnull %bh.1) #8
  br label %if.end23

if.end23:                                         ; preds = %if.then.i58, %if.then22.if.end23_crit_edge, %if.end18.if.end23_crit_edge
  %ix.1 = phi i32 [ %inc, %if.end18.if.end23_crit_edge ], [ 0, %if.then22.if.end23_crit_edge ], [ 0, %if.then.i58 ]
  %i_xblk.1 = phi i32 [ %i_xblk.078, %if.end18.if.end23_crit_edge ], [ %30, %if.then22.if.end23_crit_edge ], [ %30, %if.then.i58 ]
  %bh.2 = phi ptr [ %bh.1, %if.end18.if.end23_crit_edge ], [ null, %if.then22.if.end23_crit_edge ], [ null, %if.then.i58 ]
  %dec = add i16 %dec81, -1
  %cmp.not = icmp eq i16 %dec, 0
  br i1 %cmp.not, label %if.end23.while.end_crit_edge, label %if.end23.while.body_crit_edge

if.end23.while.body_crit_edge:                    ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

if.end23.while.end_crit_edge:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.end:                                        ; preds = %if.end23.while.end_crit_edge, %try_extent.exit57.while.end_crit_edge
  %bh.3 = phi ptr [ %bh.2, %if.end23.while.end_crit_edge ], [ %bh.1, %try_extent.exit57.while.end_crit_edge ]
  %block.1 = phi i32 [ 0, %if.end23.while.end_crit_edge ], [ %sub.i52, %try_extent.exit57.while.end_crit_edge ]
  %tobool24.not = icmp eq ptr %bh.3, null
  br i1 %tobool24.not, label %while.end.cleanup_crit_edge, label %brelse.exit63

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

brelse.exit63:                                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__brelse(ptr noundef nonnull %bh.3) #8
  br label %cleanup

cleanup:                                          ; preds = %brelse.exit63, %while.end.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then5.cleanup_crit_edge, %if.else.cleanup_crit_edge, %try_extent.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %sub.i, %try_extent.exit.cleanup_crit_edge ], [ %block.1, %brelse.exit63 ], [ %block.1, %while.end.cleanup_crit_edge ], [ 0, %if.else.cleanup_crit_edge ], [ -5, %if.then5.cleanup_crit_edge ], [ -5, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @qnx4_iget(ptr noundef %sb, i32 noundef %ino) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @iget_locked(ptr noundef %sb, i32 noundef %ino) #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %i_state = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 24
  %0 = ptrtoint ptr %i_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %i_state, align 8
  %and = and i32 %1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %add.ptr.i.i = getelementptr i8, ptr %call, i32 -72
  %2 = ptrtoint ptr %call to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 0, ptr %call, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ino)
  %tobool6.not = icmp eq i32 %ino, 0
  br i1 %tobool6.not, label %do.end, label %if.end10

do.end:                                           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  %s_id = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 39
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %s_id, i32 noundef 0) #12
  tail call void @iget_failed(ptr noundef nonnull %call) #8
  br label %cleanup

if.end10:                                         ; preds = %if.end4
  %div136 = lshr i32 %ino, 3
  %3 = zext i32 %div136 to i64
  %s_bdev.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 26
  %4 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_bdev.i, align 4
  %s_blocksize.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 3
  %6 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %s_blocksize.i, align 16
  %call.i = tail call ptr @__bread_gfp(ptr noundef %5, i64 noundef %3, i32 noundef %7, i32 noundef 8) #8
  %tobool12.not = icmp eq ptr %call.i, null
  br i1 %tobool12.not, label %do.end16, label %if.end22

do.end16:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  %s_id18 = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 39
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %s_id18) #12
  tail call void @iget_failed(ptr noundef nonnull %call) #8
  br label %cleanup

if.end22:                                         ; preds = %if.end10
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %call.i, i32 0, i32 5
  %8 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %b_data, align 4
  %rem = and i32 %ino, 7
  %add.ptr = getelementptr %struct.qnx4_inode_entry, ptr %9, i32 %rem
  %di_mode = getelementptr %struct.qnx4_inode_entry, ptr %9, i32 %rem, i32 9
  %10 = ptrtoint ptr %di_mode to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %di_mode, align 2
  %12 = tail call i16 @llvm.bswap.i16(i16 %11)
  %13 = ptrtoint ptr %call to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %12, ptr %call, align 8
  %di_uid = getelementptr %struct.qnx4_inode_entry, ptr %9, i32 %rem, i32 10
  %14 = ptrtoint ptr %di_uid to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %di_uid, align 4
  %16 = tail call i16 @llvm.bswap.i16(i16 %15)
  %conv24 = zext i16 %16 to i32
  %i_uid.i = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 2
  %i_sb.i.i = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 8
  %17 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %i_sb.i.i, align 4
  %s_user_ns.i.i = getelementptr inbounds %struct.super_block, ptr %18, i32 0, i32 53
  %19 = ptrtoint ptr %s_user_ns.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %s_user_ns.i.i, align 8
  %call1.i = tail call i32 @make_kuid(ptr noundef %20, i32 noundef %conv24) #8
  %21 = ptrtoint ptr %i_uid.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %call1.i, ptr %i_uid.i, align 4
  %di_gid = getelementptr %struct.qnx4_inode_entry, ptr %9, i32 %rem, i32 11
  %22 = ptrtoint ptr %di_gid to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %di_gid, align 2
  %24 = tail call i16 @llvm.bswap.i16(i16 %23)
  %conv25 = zext i16 %24 to i32
  %i_gid.i = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 3
  %25 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %i_sb.i.i, align 4
  %s_user_ns.i.i138 = getelementptr inbounds %struct.super_block, ptr %26, i32 0, i32 53
  %27 = ptrtoint ptr %s_user_ns.i.i138 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %s_user_ns.i.i138, align 8
  %call1.i139 = tail call i32 @make_kgid(ptr noundef %28, i32 noundef %conv25) #8
  %29 = ptrtoint ptr %i_gid.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %call1.i139, ptr %i_gid.i, align 8
  %di_nlink = getelementptr %struct.qnx4_inode_entry, ptr %9, i32 %rem, i32 12
  %30 = ptrtoint ptr %di_nlink to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %di_nlink, align 4
  %32 = tail call i16 @llvm.bswap.i16(i16 %31)
  %conv26 = zext i16 %32 to i32
  tail call void @set_nlink(ptr noundef nonnull %call, i32 noundef %conv26) #8
  %di_size = getelementptr %struct.qnx4_inode_entry, ptr %9, i32 %rem, i32 1
  %33 = ptrtoint ptr %di_size to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %di_size, align 4
  %35 = tail call i32 @llvm.bswap.i32(i32 %34)
  %conv27 = zext i32 %35 to i64
  %i_size = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 14
  %36 = ptrtoint ptr %i_size to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 %conv27, ptr %i_size, align 8
  %di_mtime = getelementptr %struct.qnx4_inode_entry, ptr %9, i32 %rem, i32 5
  %37 = ptrtoint ptr %di_mtime to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %di_mtime, align 4
  %39 = tail call i32 @llvm.bswap.i32(i32 %38)
  %conv28 = zext i32 %39 to i64
  %i_mtime = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 16
  %40 = ptrtoint ptr %i_mtime to i32
  call void @__asan_store8_noabort(i32 %40)
  store i64 %conv28, ptr %i_mtime, align 8
  %tv_nsec = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 16, i32 1
  %41 = ptrtoint ptr %tv_nsec to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %tv_nsec, align 8
  %di_atime = getelementptr %struct.qnx4_inode_entry, ptr %9, i32 %rem, i32 6
  %42 = ptrtoint ptr %di_atime to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %di_atime, align 4
  %44 = tail call i32 @llvm.bswap.i32(i32 %43)
  %conv30 = zext i32 %44 to i64
  %i_atime = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 15
  %45 = ptrtoint ptr %i_atime to i32
  call void @__asan_store8_noabort(i32 %45)
  store i64 %conv30, ptr %i_atime, align 8
  %tv_nsec33 = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 15, i32 1
  %46 = ptrtoint ptr %tv_nsec33 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %tv_nsec33, align 8
  %di_ctime = getelementptr %struct.qnx4_inode_entry, ptr %9, i32 %rem, i32 7
  %47 = ptrtoint ptr %di_ctime to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %di_ctime, align 4
  %49 = tail call i32 @llvm.bswap.i32(i32 %48)
  %conv34 = zext i32 %49 to i64
  %i_ctime = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 17
  %50 = ptrtoint ptr %i_ctime to i32
  call void @__asan_store8_noabort(i32 %50)
  store i64 %conv34, ptr %i_ctime, align 8
  %tv_nsec37 = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 17, i32 1
  %51 = ptrtoint ptr %tv_nsec37 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 0, ptr %tv_nsec37, align 8
  %xtnt_size = getelementptr %struct.qnx4_inode_entry, ptr %9, i32 %rem, i32 2, i32 1
  %52 = ptrtoint ptr %xtnt_size to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %xtnt_size, align 4
  %54 = tail call i32 @llvm.bswap.i32(i32 %53)
  %conv38 = zext i32 %54 to i64
  %i_blocks = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 22
  %55 = ptrtoint ptr %i_blocks to i32
  call void @__asan_store8_noabort(i32 %55)
  store i64 %conv38, ptr %i_blocks, align 8
  %56 = call ptr @memcpy(ptr %add.ptr.i.i, ptr %add.ptr, i32 64)
  %57 = ptrtoint ptr %call to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %call, align 8
  %59 = and i16 %58, -4096
  %60 = zext i16 %59 to i64
  call void @__sanitizer_cov_trace_switch(i64 %60, ptr @__sancov_gen_cov_switch_values)
  switch i16 %59, label %brelse.exit [
    i16 -32768, label %if.then43
    i16 16384, label %if.then51
    i16 -24576, label %if.then58
  ]

if.then43:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  %61 = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 44
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr @generic_ro_fops, ptr %61, align 8
  %i_mapping = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 9
  %63 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %i_mapping, align 8
  %a_ops = getelementptr inbounds %struct.address_space, ptr %64, i32 0, i32 9
  %65 = ptrtoint ptr %a_ops to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr @qnx4_aops, ptr %a_ops, align 4
  %66 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %66)
  %67 = load i64, ptr %i_size, align 8
  %mmu_private = getelementptr i8, ptr %call, i32 -8
  %68 = ptrtoint ptr %mmu_private to i32
  call void @__asan_store8_noabort(i32 %68)
  store i64 %67, ptr %mmu_private, align 8
  br label %brelse.exit143

if.then51:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  %i_op = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 7
  %69 = ptrtoint ptr %i_op to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr @qnx4_dir_inode_operations, ptr %i_op, align 8
  %70 = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 44
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr @qnx4_dir_operations, ptr %70, align 8
  br label %brelse.exit143

if.then58:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  %i_op59 = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 7
  %72 = ptrtoint ptr %i_op59 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr @page_symlink_inode_operations, ptr %i_op59, align 8
  tail call void @inode_nohighmem(ptr noundef nonnull %call) #8
  %i_mapping60 = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 9
  %73 = ptrtoint ptr %i_mapping60 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %i_mapping60, align 8
  %a_ops61 = getelementptr inbounds %struct.address_space, ptr %74, i32 0, i32 9
  %75 = ptrtoint ptr %a_ops61 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr @qnx4_aops, ptr %a_ops61, align 4
  %76 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %76)
  %77 = load i64, ptr %i_size, align 8
  %mmu_private64 = getelementptr i8, ptr %call, i32 -8
  %78 = ptrtoint ptr %mmu_private64 to i32
  call void @__asan_store8_noabort(i32 %78)
  store i64 %77, ptr %mmu_private64, align 8
  br label %brelse.exit143

brelse.exit:                                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  %s_id70 = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 39
  %call72 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, i32 noundef %ino, ptr noundef %s_id70) #12
  tail call void @iget_failed(ptr noundef nonnull %call) #8
  tail call void @__brelse(ptr noundef nonnull %call.i) #8
  br label %cleanup

brelse.exit143:                                   ; preds = %if.then58, %if.then51, %if.then43
  tail call void @__brelse(ptr noundef nonnull %call.i) #8
  tail call void @unlock_new_inode(ptr noundef nonnull %call) #8
  br label %cleanup

cleanup:                                          ; preds = %brelse.exit143, %brelse.exit, %do.end16, %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call, %brelse.exit143 ], [ inttoptr (i32 -5 to ptr), %brelse.exit ], [ inttoptr (i32 -5 to ptr), %do.end16 ], [ inttoptr (i32 -5 to ptr), %do.end ], [ %call, %if.end.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iget_locked(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @iget_failed(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_nlink(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @inode_nohighmem(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_new_inode(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @exit_qnx4_fs() #4 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 @unregister_filesystem(ptr noundef nonnull @qnx4_fs_type) #8
  tail call void @rcu_barrier() #8
  %0 = load ptr, ptr @qnx4_inode_cachep, align 4
  tail call void @kmem_cache_destroy(ptr noundef %0) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_filesystem(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @init_qnx4_fs() #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.26, i32 noundef 856, i32 noundef 0, i32 noundef 68288512, ptr noundef nonnull @init_once) #8
  store ptr %call.i, ptr @qnx4_inode_cachep, align 4
  %cmp.i.not = icmp eq ptr %call.i, null
  br i1 %cmp.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @register_filesystem(ptr noundef nonnull @qnx4_fs_type) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %do.end, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @rcu_barrier() #8
  %0 = load ptr, ptr @qnx4_inode_cachep, align 4
  tail call void @kmem_cache_destroy(ptr noundef %0) #8
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.then3 ], [ 0, %do.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__bread_gfp(ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__brelse(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kuid(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kgid(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qnx4_readpage(ptr nocapture noundef readnone %file, ptr noundef %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @block_read_full_page(ptr noundef %page, ptr noundef nonnull @qnx4_get_block) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @qnx4_bmap(ptr noundef %mapping, i64 noundef %block) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i64 @generic_block_bmap(ptr noundef %mapping, i64 noundef %block, ptr noundef nonnull @qnx4_get_block) #8
  ret i64 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @block_read_full_page(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qnx4_get_block(ptr nocapture noundef readonly %inode, i64 noundef %iblock, ptr noundef %bh, i32 noundef %create) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = trunc i64 %iblock to i32
  %call = tail call i32 @qnx4_block_map(ptr noundef %inode, i32 noundef %conv)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %conv1 = zext i32 %call to i64
  %2 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %bh, align 4
  %4 = and i32 %3, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.then.map_bh.exit_crit_edge

if.then.map_bh.exit_crit_edge:                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %map_bh.exit

if.then.i.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_set_bit(i32 noundef 4, ptr noundef %bh) #8
  br label %map_bh.exit

map_bh.exit:                                      ; preds = %if.then.i.i, %if.then.map_bh.exit_crit_edge
  %s_bdev.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 26
  %5 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %s_bdev.i, align 4
  %b_bdev.i = getelementptr inbounds %struct.buffer_head, ptr %bh, i32 0, i32 6
  %7 = ptrtoint ptr %b_bdev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %b_bdev.i, align 8
  %b_blocknr.i = getelementptr inbounds %struct.buffer_head, ptr %bh, i32 0, i32 3
  %8 = ptrtoint ptr %b_blocknr.i to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %conv1, ptr %b_blocknr.i, align 8
  %s_blocksize.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 3
  %9 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %s_blocksize.i, align 16
  %b_size.i = getelementptr inbounds %struct.buffer_head, ptr %bh, i32 0, i32 4
  %11 = ptrtoint ptr %b_size.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %b_size.i, align 8
  br label %if.end

if.end:                                           ; preds = %map_bh.exit, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_block_bmap(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @qnx4_mount(ptr noundef %fs_type, i32 noundef %flags, ptr noundef %dev_name, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @mount_bdev(ptr noundef %fs_type, i32 noundef %flags, ptr noundef %dev_name, ptr noundef %data, ptr noundef nonnull @qnx4_fill_super) #8
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qnx4_kill_sb(ptr noundef %sb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  tail call void @kill_block_super(ptr noundef %sb) #8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %BitMap = getelementptr inbounds %struct.qnx4_sb_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %BitMap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %BitMap, align 4
  tail call void @kfree(ptr noundef %3) #8
  tail call void @kfree(ptr noundef nonnull %1) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mount_bdev(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qnx4_fill_super(ptr noundef %s, ptr nocapture noundef readnone %data, i32 noundef %silent) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 8) #13
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 33
  %1 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i, ptr %s_fs_info, align 16
  %call1 = tail call i32 @sb_set_blocksize(ptr noundef %s, i32 noundef 512) #8
  %s_op = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 6
  %2 = ptrtoint ptr %s_op to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @qnx4_sops, ptr %s_op, align 4
  %s_magic = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 12
  %3 = ptrtoint ptr %s_magic to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 47, ptr %s_magic, align 4
  %s_flags = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 10
  %4 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %s_flags, align 4
  %or = or i32 %5, 1
  store i32 %or, ptr %s_flags, align 4
  %s_time_min = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 35
  %6 = ptrtoint ptr %s_time_min to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 0, ptr %s_time_min, align 8
  %s_time_max = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 36
  %7 = ptrtoint ptr %s_time_max to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 4294967295, ptr %s_time_max, align 64
  %s_bdev.i = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 26
  %8 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %s_bdev.i, align 4
  %s_blocksize.i = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 3
  %10 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %s_blocksize.i, align 16
  %call.i = tail call ptr @__bread_gfp(ptr noundef %9, i64 noundef 1, i32 noundef %11, i32 noundef 8) #8
  %tobool3.not = icmp eq ptr %call.i, null
  br i1 %tobool3.not, label %do.end, label %if.end6

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11) #12
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %call.i, i32 0, i32 5
  %12 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %b_data, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %13, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 47, i8 %15)
  %cmp.not.i = icmp eq i8 %15, 47
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %if.end6.if.then8_crit_edge

if.end6.if.then8_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then8

lor.lhs.false.i:                                  ; preds = %if.end6
  %arrayidx4.i = getelementptr [16 x i8], ptr %13, i32 0, i32 1
  %16 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx4.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %cmp6.not.i = icmp eq i8 %17, 0
  br i1 %cmp6.not.i, label %if.end.i, label %lor.lhs.false.i.if.then8_crit_edge

lor.lhs.false.i.if.then8_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then8

if.end.i:                                         ; preds = %lor.lhs.false.i
  %di_first_xtnt.i = getelementptr inbounds %struct.qnx4_inode_entry, ptr %13, i32 0, i32 2
  %18 = ptrtoint ptr %di_first_xtnt.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %di_first_xtnt.i, align 4
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #8
  %sub.i = add i32 %20, -1
  %xtnt_size.i = getelementptr inbounds %struct.qnx4_inode_entry, ptr %13, i32 0, i32 2, i32 1
  %21 = ptrtoint ptr %xtnt_size.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %xtnt_size.i, align 4
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp1162.i = icmp sgt i32 %23, 0
  br i1 %cmp1162.i, label %if.end.i.for.body.i_crit_edge, label %if.end.i.if.then8_crit_edge

if.end.i.if.then8_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then8

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.7.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %j.063.i = phi i32 [ %inc35.i, %for.inc.7.i.for.body.i_crit_edge ], [ 0, %if.end.i.for.body.i_crit_edge ]
  %add.i = add i32 %sub.i, %j.063.i
  %conv13.i = sext i32 %add.i to i64
  %24 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %s_bdev.i, align 4
  %26 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %s_blocksize.i, align 16
  %call.i.i = tail call ptr @__bread_gfp(ptr noundef %25, i64 noundef %conv13.i, i32 noundef %27, i32 noundef 8) #8
  %cmp14.i = icmp eq ptr %call.i.i, null
  br i1 %cmp14.i, label %for.body.i.if.then8_crit_edge, label %if.end17.i

for.body.i.if.then8_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then8

if.end17.i:                                       ; preds = %for.body.i
  %b_data.i = getelementptr inbounds %struct.buffer_head, ptr %call.i.i, i32 0, i32 5
  %28 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %b_data.i, align 4
  %call23.i = tail call i32 @strcmp(ptr noundef %29, ptr noundef nonnull dereferenceable(8) @.str.21) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.i)
  %cmp24.not.i = icmp eq i32 %call23.i, 0
  br i1 %cmp24.not.i, label %if.end17.i.brelse.exit.i_crit_edge, label %for.inc.i

if.end17.i.brelse.exit.i_crit_edge:               ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %brelse.exit.i

brelse.exit.i:                                    ; preds = %for.inc.6.i.brelse.exit.i_crit_edge, %for.inc.5.i.brelse.exit.i_crit_edge, %for.inc.4.i.brelse.exit.i_crit_edge, %for.inc.3.i.brelse.exit.i_crit_edge, %for.inc.2.i.brelse.exit.i_crit_edge, %for.inc.1.i.brelse.exit.i_crit_edge, %for.inc.i.brelse.exit.i_crit_edge, %if.end17.i.brelse.exit.i_crit_edge
  %rootdir.060.lcssa.i = phi ptr [ %29, %if.end17.i.brelse.exit.i_crit_edge ], [ %incdec.ptr.i, %for.inc.i.brelse.exit.i_crit_edge ], [ %incdec.ptr.1.i, %for.inc.1.i.brelse.exit.i_crit_edge ], [ %incdec.ptr.2.i, %for.inc.2.i.brelse.exit.i_crit_edge ], [ %incdec.ptr.3.i, %for.inc.3.i.brelse.exit.i_crit_edge ], [ %incdec.ptr.4.i, %for.inc.4.i.brelse.exit.i_crit_edge ], [ %incdec.ptr.5.i, %for.inc.5.i.brelse.exit.i_crit_edge ], [ %incdec.ptr.6.i, %for.inc.6.i.brelse.exit.i_crit_edge ]
  %call28.i = tail call ptr @kmemdup(ptr noundef %rootdir.060.lcssa.i, i32 noundef 64, i32 noundef 3264) #8
  %30 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %s_fs_info, align 16
  %BitMap.i = getelementptr inbounds %struct.qnx4_sb_info, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %BitMap.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call28.i, ptr %BitMap.i, align 4
  tail call void @__brelse(ptr noundef nonnull %call.i.i) #8
  %33 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %s_fs_info, align 16
  %BitMap31.i = getelementptr inbounds %struct.qnx4_sb_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %BitMap31.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %BitMap31.i, align 4
  %tobool.not.i = icmp eq ptr %36, null
  br i1 %tobool.not.i, label %brelse.exit.i.if.then8_crit_edge, label %if.end17

brelse.exit.i.if.then8_crit_edge:                 ; preds = %brelse.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then8

for.inc.i:                                        ; preds = %if.end17.i
  %incdec.ptr.i = getelementptr %struct.qnx4_inode_entry, ptr %29, i32 1
  %call23.1.i = tail call i32 @strcmp(ptr noundef %incdec.ptr.i, ptr noundef nonnull dereferenceable(8) @.str.21) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.1.i)
  %cmp24.not.1.i = icmp eq i32 %call23.1.i, 0
  br i1 %cmp24.not.1.i, label %for.inc.i.brelse.exit.i_crit_edge, label %for.inc.1.i

for.inc.i.brelse.exit.i_crit_edge:                ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %brelse.exit.i

for.inc.1.i:                                      ; preds = %for.inc.i
  %incdec.ptr.1.i = getelementptr %struct.qnx4_inode_entry, ptr %29, i32 2
  %call23.2.i = tail call i32 @strcmp(ptr noundef %incdec.ptr.1.i, ptr noundef nonnull dereferenceable(8) @.str.21) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.2.i)
  %cmp24.not.2.i = icmp eq i32 %call23.2.i, 0
  br i1 %cmp24.not.2.i, label %for.inc.1.i.brelse.exit.i_crit_edge, label %for.inc.2.i

for.inc.1.i.brelse.exit.i_crit_edge:              ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %brelse.exit.i

for.inc.2.i:                                      ; preds = %for.inc.1.i
  %incdec.ptr.2.i = getelementptr %struct.qnx4_inode_entry, ptr %29, i32 3
  %call23.3.i = tail call i32 @strcmp(ptr noundef %incdec.ptr.2.i, ptr noundef nonnull dereferenceable(8) @.str.21) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.3.i)
  %cmp24.not.3.i = icmp eq i32 %call23.3.i, 0
  br i1 %cmp24.not.3.i, label %for.inc.2.i.brelse.exit.i_crit_edge, label %for.inc.3.i

for.inc.2.i.brelse.exit.i_crit_edge:              ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %brelse.exit.i

for.inc.3.i:                                      ; preds = %for.inc.2.i
  %incdec.ptr.3.i = getelementptr %struct.qnx4_inode_entry, ptr %29, i32 4
  %call23.4.i = tail call i32 @strcmp(ptr noundef %incdec.ptr.3.i, ptr noundef nonnull dereferenceable(8) @.str.21) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.4.i)
  %cmp24.not.4.i = icmp eq i32 %call23.4.i, 0
  br i1 %cmp24.not.4.i, label %for.inc.3.i.brelse.exit.i_crit_edge, label %for.inc.4.i

for.inc.3.i.brelse.exit.i_crit_edge:              ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %brelse.exit.i

for.inc.4.i:                                      ; preds = %for.inc.3.i
  %incdec.ptr.4.i = getelementptr %struct.qnx4_inode_entry, ptr %29, i32 5
  %call23.5.i = tail call i32 @strcmp(ptr noundef %incdec.ptr.4.i, ptr noundef nonnull dereferenceable(8) @.str.21) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.5.i)
  %cmp24.not.5.i = icmp eq i32 %call23.5.i, 0
  br i1 %cmp24.not.5.i, label %for.inc.4.i.brelse.exit.i_crit_edge, label %for.inc.5.i

for.inc.4.i.brelse.exit.i_crit_edge:              ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %brelse.exit.i

for.inc.5.i:                                      ; preds = %for.inc.4.i
  %incdec.ptr.5.i = getelementptr %struct.qnx4_inode_entry, ptr %29, i32 6
  %call23.6.i = tail call i32 @strcmp(ptr noundef %incdec.ptr.5.i, ptr noundef nonnull dereferenceable(8) @.str.21) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.6.i)
  %cmp24.not.6.i = icmp eq i32 %call23.6.i, 0
  br i1 %cmp24.not.6.i, label %for.inc.5.i.brelse.exit.i_crit_edge, label %for.inc.6.i

for.inc.5.i.brelse.exit.i_crit_edge:              ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %brelse.exit.i

for.inc.6.i:                                      ; preds = %for.inc.5.i
  %incdec.ptr.6.i = getelementptr %struct.qnx4_inode_entry, ptr %29, i32 7
  %call23.7.i = tail call i32 @strcmp(ptr noundef %incdec.ptr.6.i, ptr noundef nonnull dereferenceable(8) @.str.21) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.7.i)
  %cmp24.not.7.i = icmp eq i32 %call23.7.i, 0
  br i1 %cmp24.not.7.i, label %for.inc.6.i.brelse.exit.i_crit_edge, label %for.inc.7.i

for.inc.6.i.brelse.exit.i_crit_edge:              ; preds = %for.inc.6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %brelse.exit.i

for.inc.7.i:                                      ; preds = %for.inc.6.i
  tail call void @__brelse(ptr noundef nonnull %call.i.i) #8
  %inc35.i = add nuw nsw i32 %j.063.i, 1
  %exitcond.not.i = icmp eq i32 %inc35.i, %23
  br i1 %exitcond.not.i, label %for.inc.7.i.if.then8_crit_edge, label %for.inc.7.i.for.body.i_crit_edge

for.inc.7.i.for.body.i_crit_edge:                 ; preds = %for.inc.7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.inc.7.i.if.then8_crit_edge:                   ; preds = %for.inc.7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then8

if.then8:                                         ; preds = %for.inc.7.i.if.then8_crit_edge, %brelse.exit.i.if.then8_crit_edge, %for.body.i.if.then8_crit_edge, %if.end.i.if.then8_crit_edge, %lor.lhs.false.i.if.then8_crit_edge, %if.end6.if.then8_crit_edge
  %retval.0.i.ph = phi ptr [ @.str.23, %if.end.i.if.then8_crit_edge ], [ @.str.19, %if.end6.if.then8_crit_edge ], [ @.str.19, %lor.lhs.false.i.if.then8_crit_edge ], [ @.str.22, %brelse.exit.i.if.then8_crit_edge ], [ @.str.20, %for.body.i.if.then8_crit_edge ], [ @.str.23, %for.inc.7.i.if.then8_crit_edge ]
  tail call void @__brelse(ptr noundef nonnull %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %silent)
  %tobool9.not = icmp eq i32 %silent, 0
  br i1 %tobool9.not, label %do.end13, label %if.then8.cleanup_crit_edge

if.then8.cleanup_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end13:                                         ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #10
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull %retval.0.i.ph) #12
  br label %cleanup

if.end17:                                         ; preds = %brelse.exit.i
  tail call void @__brelse(ptr noundef nonnull %call.i) #8
  %call18 = tail call ptr @qnx4_iget(ptr noundef %s, i32 noundef 8)
  %cmp.i = icmp ugt ptr %call18, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end23, label %if.end27

do.end23:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  %call25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17) #12
  %37 = ptrtoint ptr %call18 to i32
  br label %cleanup

if.end27:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  %call28 = tail call ptr @d_make_root(ptr noundef %call18) #8
  %s_root = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 13
  %38 = ptrtoint ptr %s_root to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call28, ptr %s_root, align 64
  %cmp30 = icmp eq ptr %call28, null
  %. = select i1 %cmp30, i32 -12, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end27, %do.end23, %do.end13, %if.then8.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %37, %do.end23 ], [ -22, %do.end ], [ -12, %entry.cleanup_crit_edge ], [ -22, %do.end13 ], [ -22, %if.then8.cleanup_crit_edge ], [ %., %if.end27 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sb_set_blocksize(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_make_root(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal noalias ptr @qnx4_alloc_inode(ptr nocapture noundef readnone %sb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @qnx4_inode_cachep, align 4
  %call = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %0, i32 noundef 3264) #8
  %tobool.not = icmp eq ptr %call, null
  %vfs_inode = getelementptr inbounds %struct.qnx4_inode_info, ptr %call, i32 0, i32 2
  %retval.0 = select i1 %tobool.not, ptr null, ptr %vfs_inode
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qnx4_free_inode(ptr noundef %inode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @qnx4_inode_cachep, align 4
  %add.ptr.i = getelementptr i8, ptr %inode, i32 -72
  tail call void @kmem_cache_free(ptr noundef %0, ptr noundef %add.ptr.i) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qnx4_statfs(ptr nocapture noundef readonly %dentry, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %d_sb = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 9
  %0 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_sb, align 4
  %s_bdev = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 26
  %2 = ptrtoint ptr %s_bdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_bdev, align 4
  %bd_dev = getelementptr inbounds %struct.block_device, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %bd_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bd_dev, align 4
  %and1.i.i = and i32 %5, 255
  %6 = lshr i32 %5, 12
  %shl.i.i = and i32 %6, 1048320
  %or.i.i = or i32 %shl.i.i, %and1.i.i
  %and2.i.i = shl i32 %5, 12
  %shl3.i.i = and i32 %and2.i.i, -1048576
  %or4.i.i = or i32 %or.i.i, %shl3.i.i
  %s_magic = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 12
  %7 = ptrtoint ptr %s_magic to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %s_magic, align 4
  %9 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %buf, align 8
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %s_blocksize, align 16
  %f_bsize = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 1
  %12 = ptrtoint ptr %f_bsize to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %f_bsize, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %13 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %s_fs_info.i, align 16
  %BitMap = getelementptr inbounds %struct.qnx4_sb_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %BitMap to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %BitMap, align 4
  %di_size = getelementptr inbounds %struct.qnx4_inode_entry, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %di_size to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %di_size, align 4
  %19 = tail call i32 @llvm.bswap.i32(i32 %18)
  %mul = shl i32 %19, 3
  %conv = zext i32 %mul to i64
  %f_blocks = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 2
  %20 = ptrtoint ptr %f_blocks to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %conv, ptr %f_blocks, align 8
  %call2 = tail call i32 @qnx4_count_free_blocks(ptr noundef %1) #8
  %conv3 = zext i32 %call2 to i64
  %f_bfree = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 3
  %21 = ptrtoint ptr %f_bfree to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %conv3, ptr %f_bfree, align 8
  %f_bavail = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 4
  %22 = ptrtoint ptr %f_bavail to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %conv3, ptr %f_bavail, align 8
  %f_namelen = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 8
  %23 = ptrtoint ptr %f_namelen to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 48, ptr %f_namelen, align 8
  %f_fsid = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 7
  %tmp.sroa.0.0.insert.ext = zext i32 %or4.i.i to i64
  %tmp.sroa.0.0.insert.shift = shl nuw i64 %tmp.sroa.0.0.insert.ext, 32
  %24 = ptrtoint ptr %f_fsid to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %tmp.sroa.0.0.insert.shift, ptr %f_fsid, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qnx4_remount(ptr noundef %sb, ptr nocapture noundef %flags, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @sync_filesystem(ptr noundef %sb) #8
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 4, ptr %1, align 4
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %flags, align 4
  %or = or i32 %4, 1
  store i32 %or, ptr %flags, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qnx4_count_free_blocks(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sync_filesystem(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kill_block_super(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_barrier() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_filesystem(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @init_once(ptr noundef %foo) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %vfs_inode = getelementptr inbounds %struct.qnx4_inode_info, ptr %foo, i32 0, i32 2
  tail call void @inode_init_once(ptr noundef %vfs_inode) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @inode_init_once(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

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

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly nofree nounwind readonly willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nobuiltin }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !16, !18, !20, !22, !24, !25, !27, !29, !31, !33, !34, !35, !36, !38, !39, !40, !42, !43, !44, !46, !48, !50, !52, !54, !56, !58, !60, !61, !62, !63}
!llvm.module.flags = !{!65, !66, !67, !68, !69, !70, !71, !72}
!llvm.ident = !{!73}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/qnx4/inode.c", i32 104, i32 40}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../fs/qnx4/inode.c", i32 281, i32 3}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @qnx4_iget._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @qnx4_iget._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../fs/qnx4/inode.c", i32 290, i32 3}
!10 = !{ptr @qnx4_iget._entry.4, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @qnx4_iget._entry_ptr.6, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../fs/qnx4/inode.c", i32 325, i32 3}
!14 = !{ptr @qnx4_iget._entry.7, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @qnx4_iget._entry_ptr.9, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @__UNIQUE_ID_alias270, !17, !"__UNIQUE_ID_alias270", i1 false, i1 false}
!17 = !{!"../fs/qnx4/inode.c", i32 394, i32 1}
!18 = !{ptr @__initcall__kmod_qnx4__271_420_init_qnx4_fs6, !19, !"__initcall__kmod_qnx4__271_420_init_qnx4_fs6", i1 false, i1 false}
!19 = !{!"../fs/qnx4/inode.c", i32 420, i32 1}
!20 = !{ptr @__exitcall_exit_qnx4_fs, !21, !"__exitcall_exit_qnx4_fs", i1 false, i1 false}
!21 = !{!"../fs/qnx4/inode.c", i32 421, i32 1}
!22 = !{ptr @__UNIQUE_ID_file272, !23, !"__UNIQUE_ID_file272", i1 false, i1 false}
!23 = !{!"../fs/qnx4/inode.c", i32 422, i32 1}
!24 = !{ptr @__UNIQUE_ID_license273, !23, !"__UNIQUE_ID_license273", i1 false, i1 false}
!25 = !{ptr @qnx4_aops, !26, !"qnx4_aops", i1 false, i1 false}
!26 = !{!"../fs/qnx4/inode.c", i32 257, i32 46}
!27 = !{ptr @.str.10, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../fs/qnx4/inode.c", i32 389, i32 11}
!29 = !{ptr @qnx4_fs_type, !30, !"qnx4_fs_type", i1 false, i1 false}
!30 = !{!"../fs/qnx4/inode.c", i32 387, i32 32}
!31 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../fs/qnx4/inode.c", i32 211, i32 3}
!33 = !{ptr @.str.12, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @qnx4_fill_super._entry, !32, !"_entry", i1 false, i1 false}
!35 = !{ptr @qnx4_fill_super._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../fs/qnx4/inode.c", i32 220, i32 4}
!38 = !{ptr @qnx4_fill_super._entry.13, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @qnx4_fill_super._entry_ptr.15, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.17, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../fs/qnx4/inode.c", i32 227, i32 3}
!42 = !{ptr @qnx4_fill_super._entry.16, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @qnx4_fill_super._entry_ptr.18, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @qnx4_sops, !45, !"qnx4_sops", i1 false, i1 false}
!45 = !{!"../fs/qnx4/inode.c", i32 36, i32 38}
!46 = !{ptr @qnx4_inode_cachep, !47, !"qnx4_inode_cachep", i1 false, i1 false}
!47 = !{!"../fs/qnx4/inode.c", i32 336, i32 27}
!48 = !{ptr @.str.19, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../fs/qnx4/inode.c", i32 159, i32 10}
!50 = !{ptr @.str.20, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../fs/qnx4/inode.c", i32 166, i32 11}
!52 = !{ptr @.str.21, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../fs/qnx4/inode.c", i32 170, i32 34}
!54 = !{ptr @.str.22, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../fs/qnx4/inode.c", i32 177, i32 12}
!56 = !{ptr @.str.23, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../fs/qnx4/inode.c", i32 183, i32 9}
!58 = !{ptr @.str.24, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../fs/qnx4/inode.c", i32 410, i32 2}
!60 = !{ptr @.str.25, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @init_qnx4_fs._entry, !59, !"_entry", i1 false, i1 false}
!62 = !{ptr @init_qnx4_fs._entry_ptr, !59, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.26, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../fs/qnx4/inode.c", i32 361, i32 40}
!65 = !{i32 1, !"wchar_size", i32 2}
!66 = !{i32 1, !"min_enum_size", i32 4}
!67 = !{i32 8, !"branch-target-enforcement", i32 0}
!68 = !{i32 8, !"sign-return-address", i32 0}
!69 = !{i32 8, !"sign-return-address-all", i32 0}
!70 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!71 = !{i32 7, !"uwtable", i32 1}
!72 = !{i32 7, !"frame-pointer", i32 2}
!73 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
