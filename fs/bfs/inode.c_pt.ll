; ModuleID = '/llk/IR_all_yes/fs/bfs/inode.c_pt.bc'
source_filename = "../fs/bfs/inode.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.inode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [36 x i8] }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.address_space_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.bfs_sb_info = type { i32, i32, i32, i32, i32, [17 x i32], %struct.mutex }
%struct.buffer_head = type { i32, ptr, ptr, i64, i32, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.spinlock }
%struct.bfs_inode = type { i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32] }
%struct.bfs_super_block = type { i32, i32, i32, i32, i32, i32, i32, [6 x i8], [6 x i8], [118 x i32] }
%struct.bfs_inode_info = type { i32, i32, i32, %struct.inode }
%struct.writeback_control = type { i32, i32, i64, i64, i32, i16, ptr, ptr, i32, i32, i32, i32, i32, i32 }
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

@__UNIQUE_ID_author270 = internal constant [55 x i8] c"bfs.author=Tigran Aivazian <aivazian.tigran@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description271 = internal constant [54 x i8] c"bfs.description=SCO UnixWare BFS filesystem for Linux\00", section ".modinfo", align 1
@__UNIQUE_ID_file272 = internal constant [20 x i8] c"bfs.file=fs/bfs/bfs\00", section ".modinfo", align 1
@__UNIQUE_ID_license273 = internal constant [16 x i8] c"bfs.license=GPL\00", section ".modinfo", align 1
@bfs_iget._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 48, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013BFS-fs: %s(): Bad inode number %s:%08lx\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"bfs_iget\00", [23 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"fs/bfs/inode.c\00", [17 x i8] zeroinitializer }, align 32
@bfs_iget._entry_ptr = internal global ptr @bfs_iget._entry, section ".printk_index", align 4
@bfs_iget._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 56, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013BFS-fs: %s(): Unable to read inode %s:%08lx\0A\00", [49 x i8] zeroinitializer }, align 32
@bfs_iget._entry_ptr.5 = internal global ptr @bfs_iget._entry.3, section ".printk_index", align 4
@bfs_dir_inops = external dso_local constant %struct.inode_operations, align 128
@bfs_dir_operations = external dso_local constant %struct.file_operations, align 4
@bfs_file_inops = external dso_local constant %struct.inode_operations, align 128
@bfs_file_operations = external dso_local constant %struct.file_operations, align 4
@bfs_aops = external dso_local constant %struct.address_space_operations, align 4
@__UNIQUE_ID_alias274 = internal constant [17 x i8] c"bfs.alias=fs-bfs\00", section ".modinfo", align 1
@bfs_fs_type = internal global { %struct.file_system_type, [44 x i8] } { %struct.file_system_type { ptr @.str.6, i32 1, ptr null, ptr null, ptr @bfs_mount, ptr @kill_block_super, ptr null, ptr null, %struct.hlist_head zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, [3 x %struct.lock_class_key] zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@__initcall__kmod_bfs__275_488_init_bfs_fs6 = internal global ptr @init_bfs_fs, section ".initcall6.init", align 4
@__exitcall_exit_bfs_fs = internal global ptr @exit_bfs_fs, section ".exitcall.exit", align 4
@.str.6 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"bfs\00", [28 x i8] zeroinitializer }, align 32
@bfs_fill_super.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&info->bfs_lock\00", [16 x i8] zeroinitializer }, align 32
@bfs_fill_super._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.2, i32 337, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013BFS-fs: %s(): No BFS filesystem on %s (magic=%08x)\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"bfs_fill_super\00", [17 x i8] zeroinitializer }, align 32
@bfs_fill_super._entry_ptr = internal global ptr @bfs_fill_super._entry, section ".printk_index", align 4
@bfs_fill_super._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.9, ptr @.str.2, i32 341, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013BFS-fs: %s(): %s is unclean, continuing\0A\00", [53 x i8] zeroinitializer }, align 32
@bfs_fill_super._entry_ptr.12 = internal global ptr @bfs_fill_super._entry.10, section ".printk_index", align 4
@bfs_fill_super._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.9, ptr @.str.2, i32 347, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013BFS-fs: %s(): Superblock is corrupted on %s\0A\00", [49 x i8] zeroinitializer }, align 32
@bfs_fill_super._entry_ptr.15 = internal global ptr @bfs_fill_super._entry.13, section ".printk_index", align 4
@bfs_fill_super._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.9, ptr @.str.2, i32 353, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [107 x i8], [53 x i8] } { [107 x i8] c"\013BFS-fs: %s(): NOTE: filesystem %s was created with 512 inodes, the real maximum is 511, mounting anyway\0A\00", [53 x i8] zeroinitializer }, align 32
@bfs_fill_super._entry_ptr.18 = internal global ptr @bfs_fill_super._entry.16, section ".printk_index", align 4
@bfs_fill_super._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.9, ptr @.str.2, i32 355, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\013BFS-fs: %s(): Impossible last inode number %lu > %d on %s\0A\00", [35 x i8] zeroinitializer }, align 32
@bfs_fill_super._entry_ptr.21 = internal global ptr @bfs_fill_super._entry.19, section ".printk_index", align 4
@bfs_sops = internal constant { %struct.super_operations, [60 x i8] } { %struct.super_operations { ptr @bfs_alloc_inode, ptr null, ptr @bfs_free_inode, ptr null, ptr @bfs_write_inode, ptr null, ptr @bfs_evict_inode, ptr @bfs_put_super, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bfs_statfs, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@bfs_fill_super._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.9, ptr @.str.2, i32 381, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013BFS-fs: %s(): Last block not available on %s: %lu\0A\00", [43 x i8] zeroinitializer }, align 32
@bfs_fill_super._entry_ptr.24 = internal global ptr @bfs_fill_super._entry.22, section ".printk_index", align 4
@bfs_fill_super._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.9, ptr @.str.2, i32 417, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013BFS-fs: %s(): Inode 0x%08x corrupted on %s\0A\00", [50 x i8] zeroinitializer }, align 32
@bfs_fill_super._entry_ptr.27 = internal global ptr @bfs_fill_super._entry.25, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@bfs_inode_cachep = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@find_inode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.2, i32 102, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013BFS-fs: %s(): Bad inode number %s:%08x\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"find_inode\00", [21 x i8] zeroinitializer }, align 32
@find_inode._entry_ptr = internal global ptr @find_inode._entry, section ".printk_index", align 4
@find_inode._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.30, ptr @.str.2, i32 110, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013BFS-fs: %s(): Unable to read inode %s:%08x\0A\00", [50 x i8] zeroinitializer }, align 32
@find_inode._entry_ptr.33 = internal global ptr @find_inode._entry.31, section ".printk_index", align 4
@.str.35 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"bfs_inode_cache\00", [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 16777216, i64 33554432]
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 48, i32 3 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 55, i32 3 }
@___asan_gen_.54 = private unnamed_addr constant [12 x i8] c"bfs_fs_type\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 458, i32 32 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 460, i32 11 }
@___asan_gen_.60 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 324, i32 2 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 337, i32 4 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 341, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 347, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 353, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 355, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant [9 x i8] c"bfs_sops\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 282, i32 38 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 381, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 417, i32 4 }
@___asan_gen_.114 = private unnamed_addr constant [17 x i8] c"bfs_inode_cachep\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 237, i32 27 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 102, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 110, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.133 = private constant [18 x i8] c"../fs/bfs/inode.c\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 262, i32 39 }
@llvm.compiler.used = appending global [52 x ptr] [ptr @__UNIQUE_ID_alias274, ptr @__UNIQUE_ID_author270, ptr @__UNIQUE_ID_description271, ptr @__UNIQUE_ID_file272, ptr @__UNIQUE_ID_license273, ptr @__exitcall_exit_bfs_fs, ptr @__initcall__kmod_bfs__275_488_init_bfs_fs6, ptr @bfs_fill_super._entry, ptr @bfs_fill_super._entry.10, ptr @bfs_fill_super._entry.13, ptr @bfs_fill_super._entry.16, ptr @bfs_fill_super._entry.19, ptr @bfs_fill_super._entry.22, ptr @bfs_fill_super._entry.25, ptr @bfs_fill_super._entry_ptr, ptr @bfs_fill_super._entry_ptr.12, ptr @bfs_fill_super._entry_ptr.15, ptr @bfs_fill_super._entry_ptr.18, ptr @bfs_fill_super._entry_ptr.21, ptr @bfs_fill_super._entry_ptr.24, ptr @bfs_fill_super._entry_ptr.27, ptr @bfs_iget._entry, ptr @bfs_iget._entry.3, ptr @bfs_iget._entry_ptr, ptr @bfs_iget._entry_ptr.5, ptr @exit_bfs_fs, ptr @find_inode._entry, ptr @find_inode._entry.31, ptr @find_inode._entry_ptr, ptr @find_inode._entry_ptr.33, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @bfs_fs_type, ptr @.str.6, ptr @bfs_fill_super.__key, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.14, ptr @.str.17, ptr @.str.20, ptr @bfs_sops, ptr @.str.23, ptr @.str.26, ptr @bfs_inode_cachep, ptr @.str.29, ptr @.str.30, ptr @.str.32, ptr @.str.35], section "llvm.metadata"
@0 = internal global [33 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bfs_iget._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bfs_iget._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bfs_fs_type to i32), i32 116, i32 160, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bfs_fill_super.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bfs_fill_super._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bfs_fill_super._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bfs_fill_super._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bfs_fill_super._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 107, i32 160, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bfs_fill_super._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bfs_sops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bfs_fill_super._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bfs_fill_super._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bfs_inode_cachep to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @find_inode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @find_inode._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @bfs_iget(ptr noundef %sb, i32 noundef %ino) local_unnamed_addr #0 align 64 {
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
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %ino)
  %cmp = icmp ult i32 %ino, 2
  br i1 %cmp, label %if.end4.do.end_crit_edge, label %lor.lhs.false

if.end4.do.end_crit_edge:                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

lor.lhs.false:                                    ; preds = %if.end4
  %i_sb = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info.i, align 16
  %si_lasti = getelementptr inbounds %struct.bfs_sb_info, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %si_lasti to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %si_lasti, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %ino)
  %cmp6 = icmp ult i32 %7, %ino
  br i1 %cmp6, label %lor.lhs.false.do.end_crit_edge, label %if.end10

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %if.end4.do.end_crit_edge
  %i_sb8 = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 8
  br label %error

if.end10:                                         ; preds = %lor.lhs.false
  %sub = add i32 %ino, -2
  %div146 = lshr i32 %sub, 3
  %add = add nuw nsw i32 %div146, 1
  %8 = zext i32 %add to i64
  %s_bdev.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 26
  %9 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %s_bdev.i, align 4
  %s_blocksize.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 3
  %11 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %s_blocksize.i, align 16
  %call.i = tail call ptr @__bread_gfp(ptr noundef %10, i64 noundef %8, i32 noundef %12, i32 noundef 8) #8
  %tobool13.not = icmp eq ptr %call.i, null
  br i1 %tobool13.not, label %if.end10.error_crit_edge, label %if.end23

if.end10.error_crit_edge:                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %error

if.end23:                                         ; preds = %if.end10
  %rem = and i32 %sub, 7
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %call.i, i32 0, i32 5
  %13 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %b_data, align 4
  %add.ptr = getelementptr %struct.bfs_inode, ptr %14, i32 %rem
  %i_mode = getelementptr %struct.bfs_inode, ptr %14, i32 %rem, i32 6
  %15 = ptrtoint ptr %i_mode to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %i_mode, align 4
  %17 = and i32 %16, -65536
  %18 = tail call i32 @llvm.bswap.i32(i32 %17)
  %conv26 = trunc i32 %18 to i16
  %19 = ptrtoint ptr %call to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %conv26, ptr %call, align 8
  %i_vtype = getelementptr %struct.bfs_inode, ptr %14, i32 %rem, i32 5
  %20 = ptrtoint ptr %i_vtype to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %i_vtype, align 4
  %22 = zext i32 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values)
  switch i32 %21, label %if.end23.if.end44_crit_edge [
    i32 33554432, label %if.then30
    i32 16777216, label %if.then37
  ]

if.end23.if.end44_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end44

if.then30:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  %conv33 = or i16 %conv26, 16384
  %23 = ptrtoint ptr %call to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %conv33, ptr %call, align 8
  %i_op = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 7
  %24 = ptrtoint ptr %i_op to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @bfs_dir_inops, ptr %i_op, align 8
  %25 = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 44
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @bfs_dir_operations, ptr %25, align 8
  br label %if.end44

if.then37:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  %conv41 = or i16 %conv26, -32768
  %27 = ptrtoint ptr %call to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %conv41, ptr %call, align 8
  %i_op42 = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 7
  %28 = ptrtoint ptr %i_op42 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @bfs_file_inops, ptr %i_op42, align 8
  %29 = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 44
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @bfs_file_operations, ptr %29, align 8
  %i_mapping = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 9
  %31 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %i_mapping, align 8
  %a_ops = getelementptr inbounds %struct.address_space, ptr %32, i32 0, i32 9
  %33 = ptrtoint ptr %a_ops to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @bfs_aops, ptr %a_ops, align 4
  br label %if.end44

if.end44:                                         ; preds = %if.then37, %if.then30, %if.end23.if.end44_crit_edge
  %i_sblock = getelementptr %struct.bfs_inode, ptr %14, i32 %rem, i32 2
  %34 = ptrtoint ptr %i_sblock to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %i_sblock, align 4
  %36 = tail call i32 @llvm.bswap.i32(i32 %35)
  %add.ptr.i = getelementptr i8, ptr %call, i32 -16
  %i_sblock46 = getelementptr i8, ptr %call, i32 -12
  %37 = ptrtoint ptr %i_sblock46 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %i_sblock46, align 4
  %i_eblock = getelementptr %struct.bfs_inode, ptr %14, i32 %rem, i32 3
  %38 = ptrtoint ptr %i_eblock to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %i_eblock, align 4
  %40 = tail call i32 @llvm.bswap.i32(i32 %39)
  %i_eblock48 = getelementptr i8, ptr %call, i32 -8
  %41 = ptrtoint ptr %i_eblock48 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %i_eblock48, align 8
  %42 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %add.ptr, align 4
  %44 = tail call i16 @llvm.bswap.i16(i16 %43)
  %conv49 = zext i16 %44 to i32
  %45 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %conv49, ptr %add.ptr.i, align 8
  %i_uid = getelementptr %struct.bfs_inode, ptr %14, i32 %rem, i32 7
  %46 = ptrtoint ptr %i_uid to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %i_uid, align 4
  %48 = tail call i32 @llvm.bswap.i32(i32 %47)
  %i_uid.i = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 2
  %49 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %i_sb, align 4
  %s_user_ns.i.i = getelementptr inbounds %struct.super_block, ptr %50, i32 0, i32 53
  %51 = ptrtoint ptr %s_user_ns.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %s_user_ns.i.i, align 8
  %call1.i = tail call i32 @make_kuid(ptr noundef %52, i32 noundef %48) #8
  %53 = ptrtoint ptr %i_uid.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %call1.i, ptr %i_uid.i, align 4
  %i_gid = getelementptr %struct.bfs_inode, ptr %14, i32 %rem, i32 8
  %54 = ptrtoint ptr %i_gid to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %i_gid, align 4
  %56 = tail call i32 @llvm.bswap.i32(i32 %55)
  %i_gid.i = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 3
  %57 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %i_sb, align 4
  %s_user_ns.i.i150 = getelementptr inbounds %struct.super_block, ptr %58, i32 0, i32 53
  %59 = ptrtoint ptr %s_user_ns.i.i150 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %s_user_ns.i.i150, align 8
  %call1.i151 = tail call i32 @make_kgid(ptr noundef %60, i32 noundef %56) #8
  %61 = ptrtoint ptr %i_gid.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %call1.i151, ptr %i_gid.i, align 8
  %i_nlink = getelementptr %struct.bfs_inode, ptr %14, i32 %rem, i32 9
  %62 = ptrtoint ptr %i_nlink to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %i_nlink, align 4
  %64 = tail call i32 @llvm.bswap.i32(i32 %63)
  tail call void @set_nlink(ptr noundef nonnull %call, i32 noundef %64) #8
  %65 = ptrtoint ptr %i_sblock to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %i_sblock, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %cmp52 = icmp eq i32 %66, 0
  br i1 %cmp52, label %if.end44.cond.end_crit_edge, label %cond.false

if.end44.cond.end_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.false:                                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #10
  %i_eoffset = getelementptr %struct.bfs_inode, ptr %14, i32 %rem, i32 4
  %67 = ptrtoint ptr %i_eoffset to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %i_eoffset, align 4
  %69 = tail call i32 @llvm.bswap.i32(i32 %68)
  %70 = tail call i32 @llvm.bswap.i32(i32 %66)
  %mul.neg = mul i32 %70, -512
  %add54 = or i32 %mul.neg, 1
  %sub56 = add i32 %add54, %69
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end44.cond.end_crit_edge
  %cond = phi i32 [ %sub56, %cond.false ], [ 0, %if.end44.cond.end_crit_edge ]
  %conv57 = zext i32 %cond to i64
  %i_size = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 14
  %71 = ptrtoint ptr %i_size to i32
  call void @__asan_store8_noabort(i32 %71)
  store i64 %conv57, ptr %i_size, align 8
  %72 = ptrtoint ptr %i_sblock to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %i_sblock, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %cmp59 = icmp eq i32 %73, 0
  br i1 %cmp59, label %cond.end.brelse.exit_crit_edge, label %cond.false62

cond.end.brelse.exit_crit_edge:                   ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %brelse.exit

cond.false62:                                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  %74 = ptrtoint ptr %i_eblock to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %i_eblock, align 4
  %76 = tail call i32 @llvm.bswap.i32(i32 %75)
  %77 = tail call i32 @llvm.bswap.i32(i32 %73)
  %add64 = sub i32 1, %77
  %sub66 = add i32 %add64, %76
  br label %brelse.exit

brelse.exit:                                      ; preds = %cond.false62, %cond.end.brelse.exit_crit_edge
  %cond68 = phi i32 [ %sub66, %cond.false62 ], [ 0, %cond.end.brelse.exit_crit_edge ]
  %conv69 = zext i32 %cond68 to i64
  %i_blocks = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 22
  %78 = ptrtoint ptr %i_blocks to i32
  call void @__asan_store8_noabort(i32 %78)
  store i64 %conv69, ptr %i_blocks, align 8
  %i_atime = getelementptr %struct.bfs_inode, ptr %14, i32 %rem, i32 10
  %79 = ptrtoint ptr %i_atime to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %i_atime, align 4
  %81 = tail call i32 @llvm.bswap.i32(i32 %80)
  %conv70 = zext i32 %81 to i64
  %i_atime71 = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 15
  %82 = ptrtoint ptr %i_atime71 to i32
  call void @__asan_store8_noabort(i32 %82)
  store i64 %conv70, ptr %i_atime71, align 8
  %i_mtime = getelementptr %struct.bfs_inode, ptr %14, i32 %rem, i32 11
  %83 = ptrtoint ptr %i_mtime to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %i_mtime, align 4
  %85 = tail call i32 @llvm.bswap.i32(i32 %84)
  %conv72 = zext i32 %85 to i64
  %i_mtime73 = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 16
  %86 = ptrtoint ptr %i_mtime73 to i32
  call void @__asan_store8_noabort(i32 %86)
  store i64 %conv72, ptr %i_mtime73, align 8
  %i_ctime = getelementptr %struct.bfs_inode, ptr %14, i32 %rem, i32 12
  %87 = ptrtoint ptr %i_ctime to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %i_ctime, align 4
  %89 = tail call i32 @llvm.bswap.i32(i32 %88)
  %conv75 = zext i32 %89 to i64
  %i_ctime76 = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 17
  %90 = ptrtoint ptr %i_ctime76 to i32
  call void @__asan_store8_noabort(i32 %90)
  store i64 %conv75, ptr %i_ctime76, align 8
  %tv_nsec = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 15, i32 1
  %91 = ptrtoint ptr %tv_nsec to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 0, ptr %tv_nsec, align 8
  %tv_nsec80 = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 16, i32 1
  %92 = ptrtoint ptr %tv_nsec80 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 0, ptr %tv_nsec80, align 8
  %tv_nsec82 = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 17, i32 1
  %93 = ptrtoint ptr %tv_nsec82 to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 0, ptr %tv_nsec82, align 8
  tail call void @__brelse(ptr noundef nonnull %call.i) #8
  tail call void @unlock_new_inode(ptr noundef nonnull %call) #8
  br label %cleanup

error:                                            ; preds = %if.end10.error_crit_edge, %do.end
  %i_sb.sink = phi ptr [ %i_sb8, %do.end ], [ %i_sb, %if.end10.error_crit_edge ]
  %.str.4.sink = phi ptr [ @.str, %do.end ], [ @.str.4, %if.end10.error_crit_edge ]
  %94 = ptrtoint ptr %i_sb.sink to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %i_sb.sink, align 4
  %s_id20 = getelementptr inbounds %struct.super_block, ptr %95, i32 0, i32 39
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.4.sink, ptr noundef nonnull @.str.1, ptr noundef %s_id20, i32 noundef %ino) #11
  tail call void @iget_failed(ptr noundef nonnull %call) #8
  br label %cleanup

cleanup:                                          ; preds = %error, %brelse.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -5 to ptr), %error ], [ %call, %brelse.exit ], [ %call, %if.end.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iget_locked(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_nlink(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_new_inode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iget_failed(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @bfs_dump_imap(ptr nocapture %prefix, ptr nocapture %s) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @exit_bfs_fs() #5 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 @unregister_filesystem(ptr noundef nonnull @bfs_fs_type) #8
  tail call void @rcu_barrier() #8
  %0 = load ptr, ptr @bfs_inode_cachep, align 4
  tail call void @kmem_cache_destroy(ptr noundef %0) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_filesystem(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @init_bfs_fs() #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.35, i32 noundef 800, i32 noundef 0, i32 noundef 68288512, ptr noundef nonnull @init_once) #8
  store ptr %call.i, ptr @bfs_inode_cachep, align 4
  %cmp.i.not = icmp eq ptr %call.i, null
  br i1 %cmp.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @register_filesystem(ptr noundef nonnull @bfs_fs_type) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %out

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

out:                                              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @rcu_barrier() #8
  %0 = load ptr, ptr @bfs_inode_cachep, align 4
  tail call void @kmem_cache_destroy(ptr noundef %0) #8
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end.cleanup_crit_edge ], [ -12, %entry.cleanup_crit_edge ], [ %call1, %out ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__bread_gfp(ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kuid(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kgid(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__brelse(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @bfs_mount(ptr noundef %fs_type, i32 noundef %flags, ptr noundef %dev_name, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @mount_bdev(ptr noundef %fs_type, i32 noundef %flags, ptr noundef %dev_name, ptr noundef %data, ptr noundef nonnull @bfs_fill_super) #8
  ret ptr %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kill_block_super(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mount_bdev(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bfs_fill_super(ptr noundef %s, ptr nocapture noundef readnone %data, i32 noundef %silent) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 180) #12
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup185_crit_edge, label %do.body

entry.cleanup185_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup185

do.body:                                          ; preds = %entry
  %bfs_lock = getelementptr inbounds %struct.bfs_sb_info, ptr %call7.i.i, i32 0, i32 6
  tail call void @__mutex_init(ptr noundef %bfs_lock, ptr noundef nonnull @.str.7, ptr noundef nonnull @bfs_fill_super.__key) #8
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 33
  %1 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i, ptr %s_fs_info, align 16
  %s_time_min = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 35
  %2 = ptrtoint ptr %s_time_min to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 0, ptr %s_time_min, align 8
  %s_time_max = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 36
  %3 = ptrtoint ptr %s_time_max to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 4294967295, ptr %s_time_max, align 64
  %call1 = tail call i32 @sb_set_blocksize(ptr noundef %s, i32 noundef 512) #8
  %s_bdev.i = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 26
  %4 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_bdev.i, align 4
  %s_blocksize.i = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 3
  %6 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %s_blocksize.i, align 16
  %call.i = tail call ptr @__bread_gfp(ptr noundef %5, i64 noundef 0, i32 noundef %7, i32 noundef 8) #8
  %tobool3.not = icmp eq ptr %call.i, null
  br i1 %tobool3.not, label %do.body.out_crit_edge, label %if.end5

do.body.out_crit_edge:                            ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end5:                                          ; preds = %do.body
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %call.i, i32 0, i32 5
  %8 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %b_data, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -822432485, i32 %11)
  %cmp.not = icmp eq i32 %11, -822432485
  br i1 %cmp.not, label %if.end15, label %if.then6

if.then6:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %silent)
  %tobool7.not = icmp eq i32 %silent, 0
  br i1 %tobool7.not, label %do.end11, label %if.then6.brelse.exit321_crit_edge

if.then6.brelse.exit321_crit_edge:                ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  br label %brelse.exit321

do.end11:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  %s_id = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 39
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, ptr noundef %s_id, i32 noundef %12) #11
  br label %brelse.exit321

if.end15:                                         ; preds = %if.end5
  %s_from = getelementptr inbounds %struct.bfs_super_block, ptr %9, i32 0, i32 3
  %13 = ptrtoint ptr %s_from to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %s_from, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %14)
  %cmp16.not = icmp eq i32 %14, -1
  br i1 %cmp16.not, label %if.end15.if.end30_crit_edge, label %land.lhs.true

if.end15.if.end30_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30

land.lhs.true:                                    ; preds = %if.end15
  %s_to = getelementptr inbounds %struct.bfs_super_block, ptr %9, i32 0, i32 4
  %15 = ptrtoint ptr %s_to to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %s_to, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %16)
  %cmp17.not = icmp eq i32 %16, -1
  br i1 %cmp17.not, label %land.lhs.true.if.end30_crit_edge, label %land.lhs.true18

land.lhs.true.if.end30_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30

land.lhs.true18:                                  ; preds = %land.lhs.true
  %s_flags = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 10
  %17 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %s_flags, align 4
  %and = and i32 %18, 1
  %19 = or i32 %and, %silent
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %do.end25, label %land.lhs.true18.if.end30_crit_edge

land.lhs.true18.if.end30_crit_edge:               ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30

do.end25:                                         ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #10
  %s_id27 = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 39
  %call29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.9, ptr noundef %s_id27) #11
  br label %if.end30

if.end30:                                         ; preds = %do.end25, %land.lhs.true18.if.end30_crit_edge, %land.lhs.true.if.end30_crit_edge, %if.end15.if.end30_crit_edge
  %s_magic31 = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 12
  %21 = ptrtoint ptr %s_magic31 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 464386766, ptr %s_magic31, align 4
  %s_start = getelementptr inbounds %struct.bfs_super_block, ptr %9, i32 0, i32 1
  %22 = ptrtoint ptr %s_start to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %s_start, align 4
  %24 = tail call i32 @llvm.bswap.i32(i32 %23)
  %s_end = getelementptr inbounds %struct.bfs_super_block, ptr %9, i32 0, i32 2
  %25 = ptrtoint ptr %s_end to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %s_end, align 4
  %27 = tail call i32 @llvm.bswap.i32(i32 %26)
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %27)
  %cmp32 = icmp ugt i32 %24, %27
  call void @__sanitizer_cov_trace_const_cmp4(i32 528, i32 %24)
  %cmp34 = icmp ult i32 %24, 528
  %or.cond296 = or i1 %cmp34, %cmp32
  br i1 %or.cond296, label %do.end38, label %if.end43

do.end38:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  %s_id40 = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 39
  %call42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.9, ptr noundef %s_id40) #11
  br label %brelse.exit321

if.end43:                                         ; preds = %if.end30
  %sub = add i32 %24, -512
  %div294 = lshr i32 %sub, 6
  %sub45 = add nuw nsw i32 %div294, 1
  %si_lasti = getelementptr inbounds %struct.bfs_sb_info, ptr %call7.i.i, i32 0, i32 4
  %28 = ptrtoint ptr %si_lasti to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %sub45, ptr %si_lasti, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 513, i32 %sub45)
  %cmp47 = icmp eq i32 %sub45, 513
  br i1 %cmp47, label %do.end51, label %if.else

do.end51:                                         ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #10
  %s_id53 = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 39
  %call55 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.9, ptr noundef %s_id53) #11
  br label %if.end68

if.else:                                          ; preds = %if.end43
  call void @__sanitizer_cov_trace_const_cmp4(i32 32831, i32 %sub)
  %cmp57 = icmp ugt i32 %sub, 32831
  br i1 %cmp57, label %do.end61, label %if.else.if.end68_crit_edge

if.else.if.end68_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end68

do.end61:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %s_id64 = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 39
  %call66 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.9, i32 noundef %sub45, i32 noundef 513, ptr noundef %s_id64) #11
  br label %brelse.exit321

if.end68:                                         ; preds = %if.else.if.end68_crit_edge, %do.end51
  %si_imap = getelementptr inbounds %struct.bfs_sb_info, ptr %call7.i.i, i32 0, i32 5
  tail call void @_set_bit(i32 noundef 0, ptr noundef %si_imap) #8
  tail call void @_set_bit(i32 noundef 1, ptr noundef %si_imap) #8
  %s_op = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 6
  %29 = ptrtoint ptr %s_op to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @bfs_sops, ptr %s_op, align 4
  %call71 = tail call ptr @bfs_iget(ptr noundef %s, i32 noundef 2)
  %cmp.i = icmp ugt ptr %call71, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then73, label %if.end75

if.then73:                                        ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #10
  %30 = ptrtoint ptr %call71 to i32
  br label %brelse.exit321

if.end75:                                         ; preds = %if.end68
  %call76 = tail call ptr @d_make_root(ptr noundef %call71) #8
  %s_root = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 13
  %31 = ptrtoint ptr %s_root to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call76, ptr %s_root, align 64
  %tobool78.not = icmp eq ptr %call76, null
  br i1 %tobool78.not, label %if.end75.brelse.exit321_crit_edge, label %if.end80

if.end75.brelse.exit321_crit_edge:                ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #10
  br label %brelse.exit321

if.end80:                                         ; preds = %if.end75
  %32 = ptrtoint ptr %s_end to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %s_end, align 4
  %34 = tail call i32 @llvm.bswap.i32(i32 %33)
  %add82 = add i32 %34, 1
  %shr = lshr i32 %add82, 9
  %35 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %shr, ptr %call7.i.i, align 8
  %36 = ptrtoint ptr %s_end to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %s_end, align 4
  %38 = tail call i32 @llvm.bswap.i32(i32 %37)
  %add84 = add i32 %38, 1
  %39 = ptrtoint ptr %s_start to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %s_start, align 4
  %41 = tail call i32 @llvm.bswap.i32(i32 %40)
  %sub86 = sub i32 %add84, %41
  %shr87 = lshr i32 %sub86, 9
  %si_freeb = getelementptr inbounds %struct.bfs_sb_info, ptr %call7.i.i, i32 0, i32 1
  %42 = ptrtoint ptr %si_freeb to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %shr87, ptr %si_freeb, align 4
  %si_freei = getelementptr inbounds %struct.bfs_sb_info, ptr %call7.i.i, i32 0, i32 2
  %43 = ptrtoint ptr %si_freei to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %si_freei, align 8
  %si_lf_eblk = getelementptr inbounds %struct.bfs_sb_info, ptr %call7.i.i, i32 0, i32 3
  %44 = ptrtoint ptr %si_lf_eblk to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %si_lf_eblk, align 4
  %sub89 = add nsw i32 %shr, -1
  %conv = zext i32 %sub89 to i64
  %45 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %s_bdev.i, align 4
  %47 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %s_blocksize.i, align 16
  %call.i303 = tail call ptr @__bread_gfp(ptr noundef %46, i64 noundef %conv, i32 noundef %48, i32 noundef 8) #8
  %tobool91.not = icmp eq ptr %call.i303, null
  br i1 %tobool91.not, label %do.end95, label %brelse.exit

do.end95:                                         ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #10
  %s_id97 = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 39
  %49 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %call7.i.i, align 8
  %sub100 = add i32 %50, -1
  %call101 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.9, ptr noundef %s_id97, i32 noundef %sub100) #11
  br label %out2

brelse.exit:                                      ; preds = %if.end80
  tail call void @__brelse(ptr noundef nonnull %call.i303) #8
  %51 = ptrtoint ptr %si_lasti to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %si_lasti, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %52)
  %cmp105.not328 = icmp ult i32 %52, 2
  br i1 %cmp105.not328, label %brelse.exit.brelse.exit318_crit_edge, label %brelse.exit.for.body107_crit_edge

brelse.exit.for.body107_crit_edge:                ; preds = %brelse.exit
  br label %for.body107

brelse.exit.brelse.exit318_crit_edge:             ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %brelse.exit318

for.body107:                                      ; preds = %for.inc178.for.body107_crit_edge, %brelse.exit.for.body107_crit_edge
  %bh.0331 = phi ptr [ %bh.1, %for.inc178.for.body107_crit_edge ], [ null, %brelse.exit.for.body107_crit_edge ]
  %i.1329 = phi i32 [ %inc179, %for.inc178.for.body107_crit_edge ], [ 2, %brelse.exit.for.body107_crit_edge ]
  %sub108 = add i32 %i.1329, -2
  %rem = and i32 %sub108, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool112.not = icmp eq i32 %rem, 0
  br i1 %tobool112.not, label %if.then113, label %for.body107.if.end116_crit_edge

for.body107.if.end116_crit_edge:                  ; preds = %for.body107
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end116

if.then113:                                       ; preds = %for.body107
  %div109295 = lshr i32 %sub108, 3
  %add110 = add nuw nsw i32 %div109295, 1
  %tobool.not.i304 = icmp eq ptr %bh.0331, null
  br i1 %tobool.not.i304, label %if.then113.brelse.exit306_crit_edge, label %if.then.i305

if.then113.brelse.exit306_crit_edge:              ; preds = %if.then113
  call void @__sanitizer_cov_trace_pc() #10
  br label %brelse.exit306

if.then.i305:                                     ; preds = %if.then113
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__brelse(ptr noundef nonnull %bh.0331) #8
  br label %brelse.exit306

brelse.exit306:                                   ; preds = %if.then.i305, %if.then113.brelse.exit306_crit_edge
  %53 = zext i32 %add110 to i64
  %54 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %s_bdev.i, align 4
  %56 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %s_blocksize.i, align 16
  %call.i309 = tail call ptr @__bread_gfp(ptr noundef %55, i64 noundef %53, i32 noundef %57, i32 noundef 8) #8
  br label %if.end116

if.end116:                                        ; preds = %brelse.exit306, %for.body107.if.end116_crit_edge
  %bh.1 = phi ptr [ %bh.0331, %for.body107.if.end116_crit_edge ], [ %call.i309, %brelse.exit306 ]
  %tobool117.not = icmp eq ptr %bh.1, null
  br i1 %tobool117.not, label %if.end116.for.inc178_crit_edge, label %if.end119

if.end116.for.inc178_crit_edge:                   ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc178

if.end119:                                        ; preds = %if.end116
  %b_data120 = getelementptr inbounds %struct.buffer_head, ptr %bh.1, i32 0, i32 5
  %58 = ptrtoint ptr %b_data120 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %b_data120, align 4
  %add.ptr = getelementptr %struct.bfs_inode, ptr %59, i32 %rem
  %i_sblock121 = getelementptr %struct.bfs_inode, ptr %59, i32 %rem, i32 2
  %60 = ptrtoint ptr %i_sblock121 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %i_sblock121, align 4
  %62 = tail call i32 @llvm.bswap.i32(i32 %61)
  %i_eblock122 = getelementptr %struct.bfs_inode, ptr %59, i32 %rem, i32 3
  %63 = ptrtoint ptr %i_eblock122 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %i_eblock122, align 4
  %65 = tail call i32 @llvm.bswap.i32(i32 %64)
  %66 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %call7.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %62, i32 %67)
  %cmp125 = icmp ugt i32 %62, %67
  call void @__sanitizer_cov_trace_cmp4(i32 %65, i32 %67)
  %cmp129 = icmp ugt i32 %65, %67
  %or.cond297 = select i1 %cmp125, i1 true, i1 %cmp129
  call void @__sanitizer_cov_trace_cmp4(i32 %62, i32 %65)
  %cmp132 = icmp ugt i32 %62, %65
  %or.cond298 = select i1 %or.cond297, i1 true, i1 %cmp132
  br i1 %or.cond298, label %if.end119.cleanup_crit_edge, label %lor.lhs.false134

if.end119.cleanup_crit_edge:                      ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false134:                                 ; preds = %if.end119
  %68 = ptrtoint ptr %s_end to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %s_end, align 4
  %70 = tail call i32 @llvm.bswap.i32(i32 %69)
  %i_eoffset = getelementptr %struct.bfs_inode, ptr %59, i32 %rem, i32 4
  %71 = ptrtoint ptr %i_eoffset to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %i_eoffset, align 4
  %73 = tail call i32 @llvm.bswap.i32(i32 %72)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %72)
  %cmp135.not = icmp ne i32 %72, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %73, i32 %70)
  %cmp138 = icmp ugt i32 %73, %70
  %or.cond299 = select i1 %cmp135.not, i1 %cmp138, i1 false
  %mul = shl i32 %62, 9
  call void @__sanitizer_cov_trace_cmp4(i32 %mul, i32 %73)
  %cmp141 = icmp ugt i32 %mul, %73
  %or.cond300 = select i1 %or.cond299, i1 true, i1 %cmp141
  br i1 %or.cond300, label %lor.lhs.false134.cleanup_crit_edge, label %if.end151

lor.lhs.false134.cleanup_crit_edge:               ; preds = %lor.lhs.false134
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end151:                                        ; preds = %lor.lhs.false134
  %74 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %add.ptr, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %75)
  %tobool152.not = icmp eq i16 %75, 0
  br i1 %tobool152.not, label %if.then153, label %if.end156

if.then153:                                       ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #10
  %76 = ptrtoint ptr %si_freei to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %si_freei, align 8
  %inc155 = add i32 %77, 1
  store i32 %inc155, ptr %si_freei, align 8
  br label %for.inc178

if.end156:                                        ; preds = %if.end151
  tail call void @_set_bit(i32 noundef %i.1329, ptr noundef %si_imap) #8
  %78 = ptrtoint ptr %i_sblock121 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %i_sblock121, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %cmp160 = icmp eq i32 %79, 0
  br i1 %cmp160, label %if.end156.cond.end_crit_edge, label %cond.false

if.end156.cond.end_crit_edge:                     ; preds = %if.end156
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.false:                                       ; preds = %if.end156
  call void @__sanitizer_cov_trace_pc() #10
  %80 = ptrtoint ptr %i_eblock122 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %i_eblock122, align 4
  %82 = xor i32 %81, -1
  %83 = tail call i32 @llvm.bswap.i32(i32 %82)
  %84 = tail call i32 @llvm.bswap.i32(i32 %79)
  %sub165.neg = add i32 %83, %84
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end156.cond.end_crit_edge
  %cond.neg = phi i32 [ %sub165.neg, %cond.false ], [ 0, %if.end156.cond.end_crit_edge ]
  %85 = ptrtoint ptr %si_freeb to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %si_freeb, align 4
  %sub167 = add i32 %86, %cond.neg
  store i32 %sub167, ptr %si_freeb, align 4
  %87 = ptrtoint ptr %i_eblock122 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %i_eblock122, align 4
  %89 = tail call i32 @llvm.bswap.i32(i32 %88)
  %90 = ptrtoint ptr %si_lf_eblk to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %si_lf_eblk, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %89, i32 %91)
  %cmp170 = icmp ugt i32 %89, %91
  br i1 %cmp170, label %if.then172, label %cond.end.for.inc178_crit_edge

cond.end.for.inc178_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc178

if.then172:                                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  %92 = ptrtoint ptr %si_lf_eblk to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %89, ptr %si_lf_eblk, align 4
  br label %for.inc178

cleanup:                                          ; preds = %lor.lhs.false134.cleanup_crit_edge, %if.end119.cleanup_crit_edge
  %s_id148 = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 39
  %call150 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.9, i32 noundef %i.1329, ptr noundef %s_id148) #11
  tail call void @__brelse(ptr noundef nonnull %bh.1) #8
  br label %out2

for.inc178:                                       ; preds = %if.then172, %cond.end.for.inc178_crit_edge, %if.then153, %if.end116.for.inc178_crit_edge
  %inc179 = add i32 %i.1329, 1
  %93 = ptrtoint ptr %si_lasti to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %si_lasti, align 8
  %cmp105.not = icmp ugt i32 %inc179, %94
  br i1 %cmp105.not, label %for.end180, label %for.inc178.for.body107_crit_edge

for.inc178.for.body107_crit_edge:                 ; preds = %for.inc178
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body107

for.end180:                                       ; preds = %for.inc178
  %tobool.not.i313 = icmp eq ptr %bh.1, null
  br i1 %tobool.not.i313, label %for.end180.brelse.exit318_crit_edge, label %if.then.i314

for.end180.brelse.exit318_crit_edge:              ; preds = %for.end180
  call void @__sanitizer_cov_trace_pc() #10
  br label %brelse.exit318

if.then.i314:                                     ; preds = %for.end180
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__brelse(ptr noundef nonnull %bh.1) #8
  br label %brelse.exit318

brelse.exit318:                                   ; preds = %if.then.i314, %for.end180.brelse.exit318_crit_edge, %brelse.exit.brelse.exit318_crit_edge
  tail call void @__brelse(ptr noundef nonnull %call.i) #8
  br label %cleanup185

out2:                                             ; preds = %cleanup, %do.end95
  %95 = ptrtoint ptr %s_root to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %s_root, align 64
  tail call void @dput(ptr noundef %96) #8
  %97 = ptrtoint ptr %s_root to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr null, ptr %s_root, align 64
  br label %brelse.exit321

brelse.exit321:                                   ; preds = %out2, %if.end75.brelse.exit321_crit_edge, %if.then73, %do.end61, %do.end38, %do.end11, %if.then6.brelse.exit321_crit_edge
  %ret.3 = phi i32 [ -22, %if.then6.brelse.exit321_crit_edge ], [ -22, %do.end11 ], [ -22, %do.end38 ], [ %30, %if.then73 ], [ -5, %out2 ], [ -22, %do.end61 ], [ -12, %if.end75.brelse.exit321_crit_edge ]
  tail call void @__brelse(ptr noundef nonnull %call.i) #8
  br label %out

out:                                              ; preds = %brelse.exit321, %do.body.out_crit_edge
  %ret.4 = phi i32 [ %ret.3, %brelse.exit321 ], [ -22, %do.body.out_crit_edge ]
  tail call void @mutex_destroy(ptr noundef %bfs_lock) #8
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #8
  %98 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr null, ptr %s_fs_info, align 16
  br label %cleanup185

cleanup185:                                       ; preds = %out, %brelse.exit318, %entry.cleanup185_crit_edge
  %retval.0 = phi i32 [ %ret.4, %out ], [ 0, %brelse.exit318 ], [ -12, %entry.cleanup185_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sb_set_blocksize(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_make_root(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dput(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal noalias ptr @bfs_alloc_inode(ptr nocapture noundef readnone %sb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @bfs_inode_cachep, align 4
  %call = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %0, i32 noundef 3264) #8
  %tobool.not = icmp eq ptr %call, null
  %vfs_inode = getelementptr inbounds %struct.bfs_inode_info, ptr %call, i32 0, i32 3
  %retval.0 = select i1 %tobool.not, ptr null, ptr %vfs_inode
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bfs_free_inode(ptr noundef %inode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @bfs_inode_cachep, align 4
  %add.ptr.i = getelementptr i8, ptr %inode, i32 -16
  tail call void @kmem_cache_free(ptr noundef %0, ptr noundef %add.ptr.i) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bfs_write_inode(ptr nocapture noundef readonly %inode, ptr nocapture noundef readonly %wbc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %i_ino = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %4 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %i_ino, align 8
  %conv = trunc i32 %5 to i16
  %conv.i = and i32 %5, 65535
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %conv)
  %cmp.i = icmp ult i16 %conv, 2
  br i1 %cmp.i, label %entry.do.end.i_crit_edge, label %lor.lhs.false.i

entry.do.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

lor.lhs.false.i:                                  ; preds = %entry
  %si_lasti.i = getelementptr inbounds %struct.bfs_sb_info, ptr %3, i32 0, i32 4
  %6 = ptrtoint ptr %si_lasti.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %si_lasti.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %conv.i)
  %cmp3.i = icmp ult i32 %7, %conv.i
  br i1 %cmp3.i, label %lor.lhs.false.i.do.end.i_crit_edge, label %if.end.i

lor.lhs.false.i.do.end.i_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

do.end.i:                                         ; preds = %lor.lhs.false.i.do.end.i_crit_edge, %entry.do.end.i_crit_edge
  %s_id.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 39
  %call6.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.30, ptr noundef %s_id.i, i32 noundef %conv.i) #11
  br label %if.then

if.end.i:                                         ; preds = %lor.lhs.false.i
  %sub.i = add i32 %5, 65534
  %conv10.i = and i32 %sub.i, 65535
  %div35.i = lshr i32 %conv10.i, 3
  %add.i = add nuw nsw i32 %div35.i, 1
  %8 = zext i32 %add.i to i64
  %s_bdev.i.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 26
  %9 = ptrtoint ptr %s_bdev.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %s_bdev.i.i, align 4
  %s_blocksize.i.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 3
  %11 = ptrtoint ptr %s_blocksize.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %s_blocksize.i.i, align 16
  %call.i.i = tail call ptr @__bread_gfp(ptr noundef %10, i64 noundef %8, i32 noundef %12, i32 noundef 8) #8
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %do.end15.i, label %find_inode.exit

do.end15.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %s_id17.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 39
  %call20.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.30, ptr noundef %s_id17.i, i32 noundef %conv10.i) #11
  br label %if.then

find_inode.exit:                                  ; preds = %if.end.i
  %b_data.i = getelementptr inbounds %struct.buffer_head, ptr %call.i.i, i32 0, i32 5
  %13 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %b_data.i, align 4
  %rem.i = and i32 %sub.i, 7
  %add.ptr.i = getelementptr %struct.bfs_inode, ptr %14, i32 %rem.i
  %cmp.i79 = icmp ugt ptr %add.ptr.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i79, label %find_inode.exit.if.then_crit_edge, label %if.end

find_inode.exit.if.then_crit_edge:                ; preds = %find_inode.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then:                                          ; preds = %find_inode.exit.if.then_crit_edge, %do.end15.i, %do.end.i
  %retval.0.i96 = phi ptr [ %add.ptr.i, %find_inode.exit.if.then_crit_edge ], [ inttoptr (i32 -5 to ptr), %do.end.i ], [ inttoptr (i32 -5 to ptr), %do.end15.i ]
  %15 = ptrtoint ptr %retval.0.i96 to i32
  br label %cleanup

if.end:                                           ; preds = %find_inode.exit
  %bfs_lock = getelementptr inbounds %struct.bfs_sb_info, ptr %3, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %bfs_lock, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %conv.i)
  %cmp = icmp eq i32 %conv.i, 2
  %spec.select97 = select i1 %cmp, i32 33554432, i32 16777216
  %16 = getelementptr %struct.bfs_inode, ptr %14, i32 %rem.i, i32 5
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %spec.select97, ptr %16, align 4
  %18 = tail call i16 @llvm.bswap.i16(i16 %conv)
  %19 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %18, ptr %add.ptr.i, align 4
  %20 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %inode, align 8
  %conv13 = zext i16 %21 to i32
  %22 = tail call i32 @llvm.bswap.i32(i32 %conv13)
  %i_mode14 = getelementptr %struct.bfs_inode, ptr %14, i32 %rem.i, i32 6
  %23 = ptrtoint ptr %i_mode14 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %i_mode14, align 4
  %24 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %i_sb, align 4
  %s_user_ns.i.i = getelementptr inbounds %struct.super_block, ptr %25, i32 0, i32 53
  %26 = ptrtoint ptr %s_user_ns.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %s_user_ns.i.i, align 8
  %i_uid.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 2
  %28 = ptrtoint ptr %i_uid.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %.unpack.i = load i32, ptr %i_uid.i, align 4
  %29 = insertvalue [1 x i32] undef, i32 %.unpack.i, 0
  %call1.i = tail call i32 @from_kuid(ptr noundef %27, [1 x i32] %29) #8
  %30 = tail call i32 @llvm.bswap.i32(i32 %call1.i)
  %i_uid = getelementptr %struct.bfs_inode, ptr %14, i32 %rem.i, i32 7
  %31 = ptrtoint ptr %i_uid to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %i_uid, align 4
  %32 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %i_sb, align 4
  %s_user_ns.i.i81 = getelementptr inbounds %struct.super_block, ptr %33, i32 0, i32 53
  %34 = ptrtoint ptr %s_user_ns.i.i81 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %s_user_ns.i.i81, align 8
  %i_gid.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 3
  %36 = ptrtoint ptr %i_gid.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %.unpack.i82 = load i32, ptr %i_gid.i, align 8
  %37 = insertvalue [1 x i32] undef, i32 %.unpack.i82, 0
  %call1.i83 = tail call i32 @from_kgid(ptr noundef %35, [1 x i32] %37) #8
  %38 = tail call i32 @llvm.bswap.i32(i32 %call1.i83)
  %i_gid = getelementptr %struct.bfs_inode, ptr %14, i32 %rem.i, i32 8
  %39 = ptrtoint ptr %i_gid to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %i_gid, align 4
  %40 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 12
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %40, align 4
  %43 = tail call i32 @llvm.bswap.i32(i32 %42)
  %i_nlink = getelementptr %struct.bfs_inode, ptr %14, i32 %rem.i, i32 9
  %44 = ptrtoint ptr %i_nlink to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %i_nlink, align 4
  %i_atime = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 15
  %45 = ptrtoint ptr %i_atime to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %i_atime, align 8
  %conv17 = trunc i64 %46 to i32
  %47 = tail call i32 @llvm.bswap.i32(i32 %conv17)
  %i_atime18 = getelementptr %struct.bfs_inode, ptr %14, i32 %rem.i, i32 10
  %48 = ptrtoint ptr %i_atime18 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %i_atime18, align 4
  %i_mtime = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 16
  %49 = ptrtoint ptr %i_mtime to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %i_mtime, align 8
  %conv20 = trunc i64 %50 to i32
  %51 = tail call i32 @llvm.bswap.i32(i32 %conv20)
  %i_mtime21 = getelementptr %struct.bfs_inode, ptr %14, i32 %rem.i, i32 11
  %52 = ptrtoint ptr %i_mtime21 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %i_mtime21, align 4
  %i_ctime = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 17
  %53 = ptrtoint ptr %i_ctime to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %i_ctime, align 8
  %conv23 = trunc i64 %54 to i32
  %55 = tail call i32 @llvm.bswap.i32(i32 %conv23)
  %i_ctime24 = getelementptr %struct.bfs_inode, ptr %14, i32 %rem.i, i32 12
  %56 = ptrtoint ptr %i_ctime24 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %i_ctime24, align 4
  %i_sblock26 = getelementptr i8, ptr %inode, i32 -12
  %57 = ptrtoint ptr %i_sblock26 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %i_sblock26, align 4
  %59 = tail call i32 @llvm.bswap.i32(i32 %58)
  %i_sblock27 = getelementptr %struct.bfs_inode, ptr %14, i32 %rem.i, i32 2
  %60 = ptrtoint ptr %i_sblock27 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %59, ptr %i_sblock27, align 4
  %i_eblock = getelementptr i8, ptr %inode, i32 -8
  %61 = ptrtoint ptr %i_eblock to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %i_eblock, align 8
  %63 = tail call i32 @llvm.bswap.i32(i32 %62)
  %i_eblock29 = getelementptr %struct.bfs_inode, ptr %14, i32 %rem.i, i32 3
  %64 = ptrtoint ptr %i_eblock29 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %i_eblock29, align 4
  %mul = shl i32 %58, 9
  %i_size = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  %65 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %65)
  %66 = load i64, ptr %i_size, align 8
  %67 = trunc i64 %66 to i32
  %68 = add i32 %mul, -1
  %conv31 = add i32 %68, %67
  %69 = tail call i32 @llvm.bswap.i32(i32 %conv31)
  %i_eoffset = getelementptr %struct.bfs_inode, ptr %14, i32 %rem.i, i32 4
  %70 = ptrtoint ptr %i_eoffset to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %69, ptr %i_eoffset, align 4
  tail call void @mark_buffer_dirty(ptr noundef nonnull %call.i.i) #8
  %sync_mode = getelementptr inbounds %struct.writeback_control, ptr %wbc, i32 0, i32 4
  %71 = ptrtoint ptr %sync_mode to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %sync_mode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %72)
  %cmp32 = icmp eq i32 %72, 1
  br i1 %cmp32, label %if.then34, label %if.end.brelse.exit_crit_edge

if.end.brelse.exit_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %brelse.exit

if.then34:                                        ; preds = %if.end
  %call35 = tail call i32 @sync_dirty_buffer(ptr noundef nonnull %call.i.i) #8
  %73 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load volatile i32, ptr %call.i.i, align 4
  %75 = and i32 %74, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %tobool.not = icmp eq i32 %75, 0
  br i1 %tobool.not, label %if.then34.brelse.exit_crit_edge, label %land.lhs.true

if.then34.brelse.exit_crit_edge:                  ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #10
  br label %brelse.exit

land.lhs.true:                                    ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #10
  %76 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load volatile i32, ptr %call.i.i, align 4
  %and1.i.i78 = and i32 %77, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i78)
  %tobool38.not = icmp eq i32 %and1.i.i78, 0
  %spec.select = select i1 %tobool38.not, i32 -5, i32 0
  br label %brelse.exit

brelse.exit:                                      ; preds = %land.lhs.true, %if.then34.brelse.exit_crit_edge, %if.end.brelse.exit_crit_edge
  %err.0 = phi i32 [ 0, %if.then34.brelse.exit_crit_edge ], [ 0, %if.end.brelse.exit_crit_edge ], [ %spec.select, %land.lhs.true ]
  tail call void @__brelse(ptr noundef nonnull %call.i.i) #8
  tail call void @mutex_unlock(ptr noundef %bfs_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %brelse.exit, %if.then
  %retval.0 = phi i32 [ %15, %if.then ], [ %err.0, %brelse.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bfs_evict_inode(ptr noundef %inode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %i_ino = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %0 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %i_ino, align 8
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info.i, align 16
  %add.ptr.i = getelementptr i8, ptr %inode, i32 -16
  %i_data = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 46
  tail call void @truncate_inode_pages_final(ptr noundef %i_data) #8
  tail call void @invalidate_inode_buffers(ptr noundef %inode) #8
  tail call void @clear_inode(ptr noundef %inode) #8
  %6 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 12
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %9 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %i_ino, align 8
  %conv.i = and i32 %10, 65535
  %11 = and i32 %10, 65534
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp.i = icmp eq i32 %11, 0
  br i1 %cmp.i, label %if.end.do.end.i_crit_edge, label %lor.lhs.false.i

if.end.do.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

lor.lhs.false.i:                                  ; preds = %if.end
  %12 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %s_fs_info.i, align 16
  %si_lasti.i = getelementptr inbounds %struct.bfs_sb_info, ptr %13, i32 0, i32 4
  %14 = ptrtoint ptr %si_lasti.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %si_lasti.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %conv.i)
  %cmp3.i = icmp ult i32 %15, %conv.i
  br i1 %cmp3.i, label %lor.lhs.false.i.do.end.i_crit_edge, label %if.end.i

lor.lhs.false.i.do.end.i_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

do.end.i:                                         ; preds = %lor.lhs.false.i.do.end.i_crit_edge, %if.end.do.end.i_crit_edge
  %s_id.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 39
  %call6.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.30, ptr noundef %s_id.i, i32 noundef %conv.i) #11
  br label %cleanup

if.end.i:                                         ; preds = %lor.lhs.false.i
  %sub.i = add i32 %10, 65534
  %conv10.i = and i32 %sub.i, 65535
  %div35.i = lshr i32 %conv10.i, 3
  %add.i = add nuw nsw i32 %div35.i, 1
  %16 = zext i32 %add.i to i64
  %s_bdev.i.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 26
  %17 = ptrtoint ptr %s_bdev.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %s_bdev.i.i, align 4
  %s_blocksize.i.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 3
  %19 = ptrtoint ptr %s_blocksize.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %s_blocksize.i.i, align 16
  %call.i.i = tail call ptr @__bread_gfp(ptr noundef %18, i64 noundef %16, i32 noundef %20, i32 noundef 8) #8
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %do.end15.i, label %find_inode.exit

do.end15.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %s_id17.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 39
  %call20.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.30, ptr noundef %s_id17.i, i32 noundef %conv10.i) #11
  br label %cleanup

find_inode.exit:                                  ; preds = %if.end.i
  %b_data.i = getelementptr inbounds %struct.buffer_head, ptr %call.i.i, i32 0, i32 5
  %21 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %b_data.i, align 4
  %rem.i = and i32 %sub.i, 7
  %add.ptr.i49 = getelementptr %struct.bfs_inode, ptr %22, i32 %rem.i
  %cmp.i50 = icmp ugt ptr %add.ptr.i49, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i50, label %find_inode.exit.cleanup_crit_edge, label %brelse.exit

find_inode.exit.cleanup_crit_edge:                ; preds = %find_inode.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

brelse.exit:                                      ; preds = %find_inode.exit
  %bfs_lock = getelementptr inbounds %struct.bfs_sb_info, ptr %5, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %bfs_lock, i32 noundef 0) #8
  %23 = call ptr @memset(ptr %add.ptr.i49, i32 0, i32 64)
  tail call void @mark_buffer_dirty(ptr noundef nonnull %call.i.i) #8
  tail call void @__brelse(ptr noundef nonnull %call.i.i) #8
  %24 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %add.ptr.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool7.not = icmp eq i32 %25, 0
  br i1 %tobool7.not, label %brelse.exit.if.end14_crit_edge, label %if.then8

brelse.exit.if.end14_crit_edge:                   ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

if.then8:                                         ; preds = %brelse.exit
  %i_sblock = getelementptr i8, ptr %inode, i32 -12
  %26 = ptrtoint ptr %i_sblock to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %i_sblock, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool9.not = icmp eq i32 %27, 0
  br i1 %tobool9.not, label %if.then8.if.end13_crit_edge, label %if.then10

if.then8.if.end13_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

if.then10:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #10
  %i_eblock = getelementptr i8, ptr %inode, i32 -8
  %28 = ptrtoint ptr %i_eblock to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %i_eblock, align 8
  %si_freeb = getelementptr inbounds %struct.bfs_sb_info, ptr %5, i32 0, i32 1
  %30 = ptrtoint ptr %si_freeb to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %si_freeb, align 4
  %add = sub i32 1, %27
  %sub = add i32 %add, %29
  %add12 = add i32 %sub, %31
  store i32 %add12, ptr %si_freeb, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then10, %if.then8.if.end13_crit_edge
  %si_freei = getelementptr inbounds %struct.bfs_sb_info, ptr %5, i32 0, i32 2
  %32 = ptrtoint ptr %si_freei to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %si_freei, align 4
  %inc = add i32 %33, 1
  store i32 %inc, ptr %si_freei, align 4
  %si_imap = getelementptr inbounds %struct.bfs_sb_info, ptr %5, i32 0, i32 5
  tail call void @_clear_bit(i32 noundef %1, ptr noundef %si_imap) #8
  br label %if.end14

if.end14:                                         ; preds = %if.end13, %brelse.exit.if.end14_crit_edge
  %si_lf_eblk = getelementptr inbounds %struct.bfs_sb_info, ptr %5, i32 0, i32 3
  %34 = ptrtoint ptr %si_lf_eblk to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %si_lf_eblk, align 4
  %i_eblock15 = getelementptr i8, ptr %inode, i32 -8
  %36 = ptrtoint ptr %i_eblock15 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %i_eblock15, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %37)
  %cmp = icmp eq i32 %35, %37
  br i1 %cmp, label %if.then17, label %if.end14.if.end21_crit_edge

if.end14.if.end21_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

if.then17:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  %i_sblock18 = getelementptr i8, ptr %inode, i32 -12
  %38 = ptrtoint ptr %i_sblock18 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %i_sblock18, align 4
  %sub19 = add i32 %39, -1
  %40 = ptrtoint ptr %si_lf_eblk to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %sub19, ptr %si_lf_eblk, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.then17, %if.end14.if.end21_crit_edge
  tail call void @mutex_unlock(ptr noundef %bfs_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %find_inode.exit.cleanup_crit_edge, %do.end15.i, %do.end.i, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bfs_put_super(ptr nocapture noundef %s) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %bfs_lock = getelementptr inbounds %struct.bfs_sb_info, ptr %1, i32 0, i32 6
  tail call void @mutex_destroy(ptr noundef %bfs_lock) #8
  tail call void @kfree(ptr noundef nonnull %1) #8
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %s_fs_info.i, align 16
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @bfs_statfs(ptr nocapture noundef readonly %dentry, ptr nocapture noundef writeonly %buf) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %d_sb = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 9
  %0 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %s_bdev = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 26
  %4 = ptrtoint ptr %s_bdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_bdev, align 4
  %bd_dev = getelementptr inbounds %struct.block_device, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %bd_dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bd_dev, align 4
  %and1.i.i = and i32 %7, 255
  %8 = lshr i32 %7, 12
  %shl.i.i = and i32 %8, 1048320
  %or.i.i = or i32 %shl.i.i, %and1.i.i
  %and2.i.i = shl i32 %7, 12
  %shl3.i.i = and i32 %and2.i.i, -1048576
  %or4.i.i = or i32 %or.i.i, %shl3.i.i
  %9 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 464386766, ptr %buf, align 8
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %s_blocksize, align 16
  %f_bsize = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 1
  %12 = ptrtoint ptr %f_bsize to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %f_bsize, align 4
  %13 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %3, align 4
  %conv = zext i32 %14 to i64
  %f_blocks = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 2
  %15 = ptrtoint ptr %f_blocks to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %conv, ptr %f_blocks, align 8
  %si_freeb = getelementptr inbounds %struct.bfs_sb_info, ptr %3, i32 0, i32 1
  %16 = ptrtoint ptr %si_freeb to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %si_freeb, align 4
  %conv2 = zext i32 %17 to i64
  %f_bavail = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 4
  %18 = ptrtoint ptr %f_bavail to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %conv2, ptr %f_bavail, align 8
  %f_bfree = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 3
  %19 = ptrtoint ptr %f_bfree to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %conv2, ptr %f_bfree, align 8
  %si_lasti = getelementptr inbounds %struct.bfs_sb_info, ptr %3, i32 0, i32 4
  %20 = ptrtoint ptr %si_lasti to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %si_lasti, align 4
  %sub = add i32 %21, -1
  %conv3 = zext i32 %sub to i64
  %f_files = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 5
  %22 = ptrtoint ptr %f_files to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %conv3, ptr %f_files, align 8
  %si_freei = getelementptr inbounds %struct.bfs_sb_info, ptr %3, i32 0, i32 2
  %23 = ptrtoint ptr %si_freei to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %si_freei, align 4
  %conv4 = zext i32 %24 to i64
  %f_ffree = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 6
  %25 = ptrtoint ptr %f_ffree to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %conv4, ptr %f_ffree, align 8
  %f_fsid = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 7
  %tmp.sroa.0.0.insert.ext = zext i32 %or4.i.i to i64
  %tmp.sroa.0.0.insert.shift = shl nuw i64 %tmp.sroa.0.0.insert.ext, 32
  %26 = ptrtoint ptr %f_fsid to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 %tmp.sroa.0.0.insert.shift, ptr %f_fsid, align 8
  %f_namelen = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 8
  %27 = ptrtoint ptr %f_namelen to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 14, ptr %f_namelen, align 8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mark_buffer_dirty(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sync_dirty_buffer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kuid(ptr noundef, [1 x i32]) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kgid(ptr noundef, [1 x i32]) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @truncate_inode_pages_final(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @invalidate_inode_buffers(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clear_inode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_barrier() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_filesystem(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @init_once(ptr noundef %foo) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %vfs_inode = getelementptr inbounds %struct.bfs_inode_info, ptr %foo, i32 0, i32 3
  tail call void @inode_init_once(ptr noundef %vfs_inode) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @inode_init_once(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !11, !12, !13, !15, !16, !17, !19, !21, !23, !25, !27, !29, !30, !32, !33, !34, !35, !37, !38, !39, !41, !42, !43, !45, !46, !47, !49, !50, !51, !53, !54, !55, !57, !58, !59, !61, !63, !65, !67, !68, !69, !70, !72, !73, !74, !76}
!llvm.module.flags = !{!78, !79, !80, !81, !82, !83, !84, !85}
!llvm.ident = !{!86}

!0 = !{ptr @__UNIQUE_ID_author270, !1, !"__UNIQUE_ID_author270", i1 false, i1 false}
!1 = !{!"../fs/bfs/inode.c", i32 22, i32 1}
!2 = !{ptr @__UNIQUE_ID_description271, !3, !"__UNIQUE_ID_description271", i1 false, i1 false}
!3 = !{!"../fs/bfs/inode.c", i32 23, i32 1}
!4 = !{ptr @__UNIQUE_ID_file272, !5, !"__UNIQUE_ID_file272", i1 false, i1 false}
!5 = !{!"../fs/bfs/inode.c", i32 24, i32 1}
!6 = !{ptr @__UNIQUE_ID_license273, !5, !"__UNIQUE_ID_license273", i1 false, i1 false}
!7 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../fs/bfs/inode.c", i32 48, i32 3}
!9 = !{ptr @.str.1, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.2, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @bfs_iget._entry, !8, !"_entry", i1 false, i1 false}
!12 = !{ptr @bfs_iget._entry_ptr, !8, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.4, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../fs/bfs/inode.c", i32 55, i32 3}
!15 = !{ptr @bfs_iget._entry.3, !14, !"_entry", i1 false, i1 false}
!16 = !{ptr @bfs_iget._entry_ptr.5, !14, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @__UNIQUE_ID_alias274, !18, !"__UNIQUE_ID_alias274", i1 false, i1 false}
!18 = !{!"../fs/bfs/inode.c", i32 465, i32 1}
!19 = !{ptr @__initcall__kmod_bfs__275_488_init_bfs_fs6, !20, !"__initcall__kmod_bfs__275_488_init_bfs_fs6", i1 false, i1 false}
!20 = !{!"../fs/bfs/inode.c", i32 488, i32 1}
!21 = !{ptr @__exitcall_exit_bfs_fs, !22, !"__exitcall_exit_bfs_fs", i1 false, i1 false}
!22 = !{!"../fs/bfs/inode.c", i32 489, i32 1}
!23 = !{ptr @.str.6, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../fs/bfs/inode.c", i32 460, i32 11}
!25 = !{ptr @bfs_fs_type, !26, !"bfs_fs_type", i1 false, i1 false}
!26 = !{!"../fs/bfs/inode.c", i32 458, i32 32}
!27 = !{ptr @bfs_fill_super.__key, !28, !"__key", i1 false, i1 false}
!28 = !{!"../fs/bfs/inode.c", i32 324, i32 2}
!29 = !{ptr @.str.7, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.8, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../fs/bfs/inode.c", i32 337, i32 4}
!32 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @bfs_fill_super._entry, !31, !"_entry", i1 false, i1 false}
!34 = !{ptr @bfs_fill_super._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.11, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../fs/bfs/inode.c", i32 341, i32 3}
!37 = !{ptr @bfs_fill_super._entry.10, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @bfs_fill_super._entry_ptr.12, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.14, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../fs/bfs/inode.c", i32 347, i32 3}
!41 = !{ptr @bfs_fill_super._entry.13, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @bfs_fill_super._entry_ptr.15, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.17, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../fs/bfs/inode.c", i32 353, i32 3}
!45 = !{ptr @bfs_fill_super._entry.16, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @bfs_fill_super._entry_ptr.18, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.20, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../fs/bfs/inode.c", i32 355, i32 3}
!49 = !{ptr @bfs_fill_super._entry.19, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @bfs_fill_super._entry_ptr.21, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.23, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../fs/bfs/inode.c", i32 381, i32 3}
!53 = !{ptr @bfs_fill_super._entry.22, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @bfs_fill_super._entry_ptr.24, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.26, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../fs/bfs/inode.c", i32 417, i32 4}
!57 = !{ptr @bfs_fill_super._entry.25, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @bfs_fill_super._entry_ptr.27, !56, !"_entry_ptr", i1 false, i1 false}
!59 = distinct !{null, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../fs/bfs/inode.c", i32 437, i32 16}
!61 = !{ptr @bfs_sops, !62, !"bfs_sops", i1 false, i1 false}
!62 = !{!"../fs/bfs/inode.c", i32 282, i32 38}
!63 = !{ptr @bfs_inode_cachep, !64, !"bfs_inode_cachep", i1 false, i1 false}
!64 = !{!"../fs/bfs/inode.c", i32 237, i32 27}
!65 = !{ptr @.str.29, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../fs/bfs/inode.c", i32 102, i32 3}
!67 = !{ptr @.str.30, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @find_inode._entry, !66, !"_entry", i1 false, i1 false}
!69 = !{ptr @find_inode._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.32, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../fs/bfs/inode.c", i32 110, i32 3}
!72 = !{ptr @find_inode._entry.31, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @find_inode._entry_ptr.33, !71, !"_entry_ptr", i1 false, i1 false}
!74 = distinct !{null, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../fs/bfs/inode.c", i32 196, i32 17}
!76 = !{ptr @.str.35, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../fs/bfs/inode.c", i32 262, i32 39}
!78 = !{i32 1, !"wchar_size", i32 2}
!79 = !{i32 1, !"min_enum_size", i32 4}
!80 = !{i32 8, !"branch-target-enforcement", i32 0}
!81 = !{i32 8, !"sign-return-address", i32 0}
!82 = !{i32 8, !"sign-return-address-all", i32 0}
!83 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!84 = !{i32 7, !"uwtable", i32 1}
!85 = !{i32 7, !"frame-pointer", i32 2}
!86 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
