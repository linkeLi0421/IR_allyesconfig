; ModuleID = '/llk/IR_all_yes/fs/minix/inode.c_pt.bc'
source_filename = "../fs/minix/inode.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.inode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [36 x i8] }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.address_space_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i32, i8, %struct.list_head, ptr, %struct.rw_semaphore, ptr, %struct.work_struct, %struct.ctl_table_set, ptr, ptr, [16 x i32] }
%struct.uid_gid_map = type { i32, %union.anon.25 }
%union.anon.25 = type { [5 x %struct.uid_gid_extent] }
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
%struct.ctl_table_header = type { %union.anon.27, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.27 = type { %struct.anon.28 }
%struct.anon.28 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
%struct.file_system_type = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon.2 }
%union.anon.2 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.super_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.76, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.77, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.78, ptr, %struct.address_space, %struct.list_head, %union.anon.79, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.76 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.seqcount = type { i32, %struct.lockdep_map }
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
%struct.minix_sb_info = type { i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i16, i16 }
%struct.minix_inode = type { i16, i16, i32, i32, i8, i8, [9 x i16] }
%struct.minix2_inode = type { i16, i16, i16, i16, i32, i32, i32, i32, [10 x i32] }
%struct.path = type { ptr, ptr }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.59, %struct.list_head, %struct.list_head, %union.anon.60 }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.5, ptr }
%union.anon.5 = type { i64 }
%struct.lockref = type { %union.anon.7 }
%union.anon.7 = type { %struct.anon.8 }
%struct.anon.8 = type { %struct.spinlock, i32 }
%union.anon.59 = type { %struct.list_head }
%union.anon.60 = type { %struct.hlist_node }
%struct.kstat = type { i32, i16, i32, i32, i64, i64, i64, i32, i32, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.timespec64, i64, i64 }
%struct.buffer_head = type { i32, ptr, ptr, i64, i32, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.spinlock }
%struct.minix_super_block = type { i16, i16, i16, i16, i16, i16, i32, i16, i16, i32 }
%struct.minix3_super_block = type { i32, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i8 }
%struct.minix_inode_info = type { %union.anon.82, %struct.inode }
%union.anon.82 = type { [16 x i32] }
%struct.writeback_control = type { i32, i32, i64, i64, i32, i16, ptr, ptr, i32, i32, i32, i32, i32, i32 }
%struct.block_device = type { i64, i64, ptr, i32, i8, i32, i32, ptr, ptr, ptr, %struct.device, ptr, i32, i8, ptr, i8, %struct.spinlock, ptr, ptr, i32, %struct.mutex, ptr, ptr, i8 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
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

@minix_file_inode_operations = external dso_local constant %struct.inode_operations, align 128
@minix_file_operations = external dso_local constant %struct.file_operations, align 4
@minix_aops = internal constant { %struct.address_space_operations, [40 x i8] } { %struct.address_space_operations { ptr @minix_writepage, ptr @minix_readpage, ptr null, ptr @__set_page_dirty_buffers, ptr null, ptr null, ptr @minix_write_begin, ptr @generic_write_end, ptr @minix_bmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@minix_dir_inode_operations = external dso_local constant %struct.inode_operations, align 128
@minix_dir_operations = external dso_local constant %struct.file_operations, align 4
@minix_symlink_inode_operations = internal constant %struct.inode_operations { ptr null, ptr @page_get_link, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @minix_getattr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [36 x i8] undef }, align 128
@init_user_ns = external dso_local global %struct.user_namespace, align 4
@__UNIQUE_ID_alias272 = internal constant [21 x i8] c"minix.alias=fs-minix\00", section ".modinfo", align 1
@minix_fs_type = internal global { %struct.file_system_type, [44 x i8] } { %struct.file_system_type { ptr @.str.4, i32 1, ptr null, ptr null, ptr @minix_mount, ptr @kill_block_super, ptr null, ptr null, %struct.hlist_head zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, [3 x %struct.lock_class_key] zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@__initcall__kmod_minix__273_720_init_minix_fs6 = internal global ptr @init_minix_fs, section ".initcall6.init", align 4
@__exitcall_exit_minix_fs = internal global ptr @exit_minix_fs, section ".exitcall.exit", align 4
@__UNIQUE_ID_file274 = internal constant [26 x i8] c"minix.file=fs/minix/minix\00", section ".modinfo", align 1
@__UNIQUE_ID_license275 = internal constant [18 x i8] c"minix.license=GPL\00", section ".modinfo", align 1
@V1_minix_iget._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 493, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"MINIX-fs: deleted inode referenced: %lu\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"V1_minix_iget\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fs/minix/inode.c\00", [47 x i8] zeroinitializer }, align 32
@V1_minix_iget._entry_ptr = internal global ptr @V1_minix_iget._entry, section ".printk_index", align 4
@V2_minix_iget._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.3, ptr @.str.2, i32 533, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"V2_minix_iget\00", [18 x i8] zeroinitializer }, align 32
@V2_minix_iget._entry_ptr = internal global ptr @V2_minix_iget._entry, section ".printk_index", align 4
@.str.4 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"minix\00", [26 x i8] zeroinitializer }, align 32
@minix_fill_super._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 285, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [87 x i8], [41 x i8] } { [87 x i8] c"MINIX-fs: file system does not have enough imap blocks allocated.  Refusing to mount.\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"minix_fill_super\00", [47 x i8] zeroinitializer }, align 32
@minix_fill_super._entry_ptr = internal global ptr @minix_fill_super._entry, section ".printk_index", align 4
@minix_fill_super._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.6, ptr @.str.2, i32 294, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [87 x i8], [41 x i8] } { [87 x i8] c"MINIX-fs: file system does not have enough zmap blocks allocated.  Refusing to mount.\0A\00", [41 x i8] zeroinitializer }, align 32
@minix_fill_super._entry_ptr.9 = internal global ptr @minix_fill_super._entry.7, section ".printk_index", align 4
@minix_sops = internal constant { %struct.super_operations, [60 x i8] } { %struct.super_operations { ptr @minix_alloc_inode, ptr null, ptr @minix_free_in_core_inode, ptr null, ptr @minix_write_inode, ptr null, ptr @minix_evict_inode, ptr @minix_put_super, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @minix_statfs, ptr @minix_remount, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@minix_fill_super._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.6, ptr @.str.2, i32 320, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"MINIX-fs: mounting unchecked file system, running fsck is recommended\0A\00", [57 x i8] zeroinitializer }, align 32
@minix_fill_super._entry_ptr.12 = internal global ptr @minix_fill_super._entry.10, section ".printk_index", align 4
@minix_fill_super._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.6, ptr @.str.2, i32 323, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"MINIX-fs: mounting file system with errors, running fsck is recommended\0A\00", [55 x i8] zeroinitializer }, align 32
@minix_fill_super._entry_ptr.15 = internal global ptr @minix_fill_super._entry.13, section ".printk_index", align 4
@minix_fill_super._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.6, ptr @.str.2, i32 329, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"MINIX-fs: get root inode failed\0A\00", [63 x i8] zeroinitializer }, align 32
@minix_fill_super._entry_ptr.18 = internal global ptr @minix_fill_super._entry.16, section ".printk_index", align 4
@minix_fill_super._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.6, ptr @.str.2, i32 333, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"MINIX-fs: bad superblock or unable to read bitmaps\0A\00", [44 x i8] zeroinitializer }, align 32
@minix_fill_super._entry_ptr.21 = internal global ptr @minix_fill_super._entry.19, section ".printk_index", align 4
@minix_fill_super._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.6, ptr @.str.2, i32 345, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"MINIX-fs: can't allocate map\0A\00", [34 x i8] zeroinitializer }, align 32
@minix_fill_super._entry_ptr.24 = internal global ptr @minix_fill_super._entry.22, section ".printk_index", align 4
@minix_fill_super._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.6, ptr @.str.2, i32 350, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"MINIX-fs: bad superblock\0A\00", [38 x i8] zeroinitializer }, align 32
@minix_fill_super._entry_ptr.27 = internal global ptr @minix_fill_super._entry.25, section ".printk_index", align 4
@minix_fill_super._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.6, ptr @.str.2, i32 356, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"VFS: Can't find a Minix filesystem V1 | V2 | V3 on device %s.\0A\00", [33 x i8] zeroinitializer }, align 32
@minix_fill_super._entry_ptr.30 = internal global ptr @minix_fill_super._entry.28, section ".printk_index", align 4
@minix_fill_super._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.6, ptr @.str.2, i32 362, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"MINIX-fs: blocksize too small for device\0A\00", [54 x i8] zeroinitializer }, align 32
@minix_fill_super._entry_ptr.33 = internal global ptr @minix_fill_super._entry.31, section ".printk_index", align 4
@minix_fill_super._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.6, ptr @.str.2, i32 366, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"MINIX-fs: unable to read superblock\0A\00", [59 x i8] zeroinitializer }, align 32
@minix_fill_super._entry_ptr.36 = internal global ptr @minix_fill_super._entry.34, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@minix_inode_cachep = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@minix_write_inode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.2, i32 648, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"IO error syncing minix inode [%s:%08lx]\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"minix_write_inode\00", [46 x i8] zeroinitializer }, align 32
@minix_write_inode._entry_ptr = internal global ptr @minix_write_inode._entry, section ".printk_index", align 4
@fs_overflowuid = external dso_local local_unnamed_addr global i32, align 4
@fs_overflowgid = external dso_local local_unnamed_addr global i32, align 4
@minix_remount._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.2, i32 145, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"MINIX-fs warning: remounting unchecked fs, running fsck is recommended\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"minix_remount\00", [18 x i8] zeroinitializer }, align 32
@minix_remount._entry_ptr = internal global ptr @minix_remount._entry, section ".printk_index", align 4
@minix_remount._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.40, ptr @.str.2, i32 148, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"MINIX-fs warning: remounting fs with errors, running fsck is recommended\0A\00", [54 x i8] zeroinitializer }, align 32
@minix_remount._entry_ptr.43 = internal global ptr @minix_remount._entry.41, section ".printk_index", align 4
@.str.44 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"minix_inode_cache\00", [46 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 16, i64 16384, i64 32768, i64 40960]
@__sancov_gen_cov_switch_values.45 = internal global [5 x i64] [i64 3, i64 16, i64 16384, i64 32768, i64 40960]
@__sancov_gen_cov_switch_values.46 = internal global [5 x i64] [i64 3, i64 16, i64 16384, i64 32768, i64 40960]
@__sancov_gen_cov_switch_values.47 = internal global [5 x i64] [i64 3, i64 16, i64 16384, i64 32768, i64 40960]
@__sancov_gen_cov_switch_values.48 = internal global [5 x i64] [i64 3, i64 16, i64 16384, i64 32768, i64 40960]
@__sancov_gen_cov_switch_values.49 = internal global [6 x i64] [i64 4, i64 16, i64 4991, i64 5007, i64 9320, i64 9336]
@__sancov_gen_cov_switch_values.50 = internal global [4 x i64] [i64 2, i64 16, i64 8192, i64 24576]
@__sancov_gen_cov_switch_values.51 = internal global [4 x i64] [i64 2, i64 16, i64 8192, i64 24576]
@__sancov_gen_cov_switch_values.52 = internal global [5 x i64] [i64 3, i64 16, i64 16384, i64 32768, i64 40960]
@___asan_gen_.53 = private unnamed_addr constant [11 x i8] c"minix_aops\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 444, i32 46 }
@___asan_gen_.56 = private unnamed_addr constant [14 x i8] c"minix_fs_type\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 690, i32 32 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 492, i32 3 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 532, i32 3 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 692, i32 11 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 284, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 293, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant [11 x i8] c"minix_sops\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 106, i32 38 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 319, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 322, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 329, i32 3 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 333, i32 2 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 345, i32 3 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 350, i32 3 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 355, i32 3 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 362, i32 2 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 366, i32 2 }
@___asan_gen_.152 = private unnamed_addr constant [19 x i8] c"minix_inode_cachep\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 61, i32 28 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 647, i32 4 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 144, i32 4 }
@___asan_gen_.173 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 147, i32 4 }
@___asan_gen_.179 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.180 = private constant [20 x i8] c"../fs/minix/inode.c\00", align 1
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 86, i32 41 }
@llvm.compiler.used = appending global [65 x ptr] [ptr @V1_minix_iget._entry, ptr @V1_minix_iget._entry_ptr, ptr @V2_minix_iget._entry, ptr @V2_minix_iget._entry_ptr, ptr @__UNIQUE_ID_alias272, ptr @__UNIQUE_ID_file274, ptr @__UNIQUE_ID_license275, ptr @__exitcall_exit_minix_fs, ptr @__initcall__kmod_minix__273_720_init_minix_fs6, ptr @exit_minix_fs, ptr @minix_fill_super._entry, ptr @minix_fill_super._entry.10, ptr @minix_fill_super._entry.13, ptr @minix_fill_super._entry.16, ptr @minix_fill_super._entry.19, ptr @minix_fill_super._entry.22, ptr @minix_fill_super._entry.25, ptr @minix_fill_super._entry.28, ptr @minix_fill_super._entry.31, ptr @minix_fill_super._entry.34, ptr @minix_fill_super._entry.7, ptr @minix_fill_super._entry_ptr, ptr @minix_fill_super._entry_ptr.12, ptr @minix_fill_super._entry_ptr.15, ptr @minix_fill_super._entry_ptr.18, ptr @minix_fill_super._entry_ptr.21, ptr @minix_fill_super._entry_ptr.24, ptr @minix_fill_super._entry_ptr.27, ptr @minix_fill_super._entry_ptr.30, ptr @minix_fill_super._entry_ptr.33, ptr @minix_fill_super._entry_ptr.36, ptr @minix_fill_super._entry_ptr.9, ptr @minix_remount._entry, ptr @minix_remount._entry.41, ptr @minix_remount._entry_ptr, ptr @minix_remount._entry_ptr.43, ptr @minix_write_inode._entry, ptr @minix_write_inode._entry_ptr, ptr @minix_aops, ptr @minix_fs_type, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @minix_sops, ptr @.str.11, ptr @.str.14, ptr @.str.17, ptr @.str.20, ptr @.str.23, ptr @.str.26, ptr @.str.29, ptr @.str.32, ptr @.str.35, ptr @minix_inode_cachep, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.42, ptr @.str.44], section "llvm.metadata"
@0 = internal global [43 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @minix_aops to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @minix_fs_type to i32), i32 116, i32 160, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @V1_minix_iget._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @V2_minix_iget._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @minix_fill_super._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 87, i32 128, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @minix_fill_super._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 87, i32 128, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @minix_sops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @minix_fill_super._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @minix_fill_super._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @minix_fill_super._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @minix_fill_super._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @minix_fill_super._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @minix_fill_super._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @minix_fill_super._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @minix_fill_super._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @minix_fill_super._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @minix_inode_cachep to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @minix_write_inode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @minix_remount._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @minix_remount._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @minix_prepare_chunk(ptr noundef %page, i64 noundef %pos, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__block_write_begin(ptr noundef %page, i64 noundef %pos, i32 noundef %len, ptr noundef nonnull @minix_get_block) #7
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__block_write_begin(ptr noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @minix_get_block(ptr noundef %inode, i64 noundef %block, ptr noundef %bh_result, i32 noundef %create) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %s_version = getelementptr inbounds %struct.minix_sb_info, ptr %3, i32 0, i32 13
  %4 = ptrtoint ptr %s_version to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %s_version, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %5)
  %cmp = icmp eq i16 %5, 1
  %conv2 = trunc i64 %block to i32
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call3 = tail call i32 @V1_minix_get_block(ptr noundef %inode, i32 noundef %conv2, ptr noundef %bh_result, i32 noundef %create) #7
  br label %return

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call5 = tail call i32 @V2_minix_get_block(ptr noundef %inode, i32 noundef %conv2, ptr noundef %bh_result, i32 noundef %create) #7
  br label %return

return:                                           ; preds = %if.else, %if.then
  %retval.0 = phi i32 [ %call3, %if.then ], [ %call5, %if.else ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @minix_set_inode(ptr noundef %inode, i32 noundef %rdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %inode, align 8
  %2 = and i16 %1, -4096
  %3 = zext i16 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values)
  switch i16 %2, label %if.else21 [
    i16 -32768, label %if.then
    i16 16384, label %if.then7
    i16 -24576, label %if.then17
  ]

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %i_op = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 7
  %4 = ptrtoint ptr %i_op to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @minix_file_inode_operations, ptr %i_op, align 8
  %5 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 44
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @minix_file_operations, ptr %5, align 8
  %i_mapping = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 9
  %7 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %i_mapping, align 8
  %a_ops = getelementptr inbounds %struct.address_space, ptr %8, i32 0, i32 9
  %9 = ptrtoint ptr %a_ops to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @minix_aops, ptr %a_ops, align 4
  br label %if.end24

if.then7:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %i_op8 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 7
  %10 = ptrtoint ptr %i_op8 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @minix_dir_inode_operations, ptr %i_op8, align 8
  %11 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 44
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @minix_dir_operations, ptr %11, align 8
  %i_mapping9 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 9
  %13 = ptrtoint ptr %i_mapping9 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %i_mapping9, align 8
  %a_ops10 = getelementptr inbounds %struct.address_space, ptr %14, i32 0, i32 9
  %15 = ptrtoint ptr %a_ops10 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @minix_aops, ptr %a_ops10, align 4
  br label %if.end24

if.then17:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %i_op18 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 7
  %16 = ptrtoint ptr %i_op18 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @minix_symlink_inode_operations, ptr %i_op18, align 8
  tail call void @inode_nohighmem(ptr noundef %inode) #7
  %i_mapping19 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 9
  %17 = ptrtoint ptr %i_mapping19 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %i_mapping19, align 8
  %a_ops20 = getelementptr inbounds %struct.address_space, ptr %18, i32 0, i32 9
  %19 = ptrtoint ptr %a_ops20 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @minix_aops, ptr %a_ops20, align 4
  br label %if.end24

if.else21:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @init_special_inode(ptr noundef %inode, i16 noundef zeroext %1, i32 noundef %rdev) #7
  br label %if.end24

if.end24:                                         ; preds = %if.else21, %if.then17, %if.then7, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @inode_nohighmem(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_special_inode(ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @minix_iget(ptr noundef %sb, i32 noundef %ino) local_unnamed_addr #0 align 64 {
entry:
  %bh.i15 = alloca ptr, align 4
  %bh.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @iget_locked(ptr noundef %sb, i32 noundef %ino) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %i_sb = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info.i, align 16
  %s_version = getelementptr inbounds %struct.minix_sb_info, ptr %5, i32 0, i32 13
  %6 = ptrtoint ptr %s_version to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %s_version, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %7)
  %cmp = icmp eq i16 %7, 1
  br i1 %cmp, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.end4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bh.i) #7
  %8 = ptrtoint ptr %bh.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 -1 to ptr), ptr %bh.i, align 4, !annotation !101
  %add.ptr.i.i = getelementptr i8, ptr %call, i32 -64
  %i_ino.i = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 11
  %9 = ptrtoint ptr %i_ino.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %i_ino.i, align 8
  %call1.i = call ptr @minix_V1_raw_inode(ptr noundef %3, i32 noundef %10, ptr noundef nonnull %bh.i) #7
  %tobool.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #9
  call void @iget_failed(ptr noundef nonnull %call) #7
  br label %V1_minix_iget.exit

if.end.i:                                         ; preds = %if.then7
  %i_nlinks.i = getelementptr inbounds %struct.minix_inode, ptr %call1.i, i32 0, i32 5
  %11 = ptrtoint ptr %i_nlinks.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %i_nlinks.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %cmp.i = icmp eq i8 %12, 0
  br i1 %cmp.i, label %do.end.i, label %if.end8.i

do.end.i:                                         ; preds = %if.end.i
  %13 = ptrtoint ptr %i_ino.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %i_ino.i, align 8
  %call6.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %14) #10
  %15 = ptrtoint ptr %bh.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bh.i, align 4
  %tobool.not.i.i = icmp eq ptr %16, null
  br i1 %tobool.not.i.i, label %do.end.i.brelse.exit.i_crit_edge, label %if.then.i.i

do.end.i.brelse.exit.i_crit_edge:                 ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %brelse.exit.i

if.then.i.i:                                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__brelse(ptr noundef nonnull %16) #7
  br label %brelse.exit.i

brelse.exit.i:                                    ; preds = %if.then.i.i, %do.end.i.brelse.exit.i_crit_edge
  call void @iget_failed(ptr noundef nonnull %call) #7
  br label %V1_minix_iget.exit

if.end8.i:                                        ; preds = %if.end.i
  %17 = ptrtoint ptr %call1.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %call1.i, align 4
  %19 = ptrtoint ptr %call to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %18, ptr %call, align 8
  %i_uid.i = getelementptr inbounds %struct.minix_inode, ptr %call1.i, i32 0, i32 1
  %20 = ptrtoint ptr %i_uid.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %i_uid.i, align 2
  %conv10.i = zext i16 %21 to i32
  %i_uid.i.i = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 2
  %22 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %i_sb, align 4
  %s_user_ns.i.i.i = getelementptr inbounds %struct.super_block, ptr %23, i32 0, i32 53
  %24 = ptrtoint ptr %s_user_ns.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %s_user_ns.i.i.i, align 8
  %call1.i.i = call i32 @make_kuid(ptr noundef %25, i32 noundef %conv10.i) #7
  %26 = ptrtoint ptr %i_uid.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %call1.i.i, ptr %i_uid.i.i, align 4
  %i_gid.i = getelementptr inbounds %struct.minix_inode, ptr %call1.i, i32 0, i32 4
  %27 = ptrtoint ptr %i_gid.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %i_gid.i, align 4
  %conv11.i = zext i8 %28 to i32
  %i_gid.i.i = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 3
  %29 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %i_sb, align 4
  %s_user_ns.i.i66.i = getelementptr inbounds %struct.super_block, ptr %30, i32 0, i32 53
  %31 = ptrtoint ptr %s_user_ns.i.i66.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %s_user_ns.i.i66.i, align 8
  %call1.i67.i = call i32 @make_kgid(ptr noundef %32, i32 noundef %conv11.i) #7
  %33 = ptrtoint ptr %i_gid.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %call1.i67.i, ptr %i_gid.i.i, align 8
  %34 = ptrtoint ptr %i_nlinks.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %i_nlinks.i, align 1
  %conv13.i = zext i8 %35 to i32
  call void @set_nlink(ptr noundef nonnull %call, i32 noundef %conv13.i) #7
  %i_size.i = getelementptr inbounds %struct.minix_inode, ptr %call1.i, i32 0, i32 2
  %36 = ptrtoint ptr %i_size.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %i_size.i, align 4
  %conv14.i = zext i32 %37 to i64
  %i_size15.i = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 14
  %38 = ptrtoint ptr %i_size15.i to i32
  call void @__asan_store8_noabort(i32 %38)
  store i64 %conv14.i, ptr %i_size15.i, align 8
  %i_time.i = getelementptr inbounds %struct.minix_inode, ptr %call1.i, i32 0, i32 3
  %39 = ptrtoint ptr %i_time.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %i_time.i, align 4
  %conv16.i = zext i32 %40 to i64
  %i_ctime.i = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 17
  %41 = ptrtoint ptr %i_ctime.i to i32
  call void @__asan_store8_noabort(i32 %41)
  store i64 %conv16.i, ptr %i_ctime.i, align 8
  %i_atime.i = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 15
  %42 = ptrtoint ptr %i_atime.i to i32
  call void @__asan_store8_noabort(i32 %42)
  store i64 %conv16.i, ptr %i_atime.i, align 8
  %i_mtime.i = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 16
  %43 = ptrtoint ptr %i_mtime.i to i32
  call void @__asan_store8_noabort(i32 %43)
  store i64 %conv16.i, ptr %i_mtime.i, align 8
  %tv_nsec.i = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 16, i32 1
  %44 = ptrtoint ptr %tv_nsec.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %tv_nsec.i, align 8
  %tv_nsec21.i = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 15, i32 1
  %45 = ptrtoint ptr %tv_nsec21.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %tv_nsec21.i, align 8
  %tv_nsec23.i = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 17, i32 1
  %46 = ptrtoint ptr %tv_nsec23.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %tv_nsec23.i, align 8
  %i_blocks.i = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 22
  %47 = ptrtoint ptr %i_blocks.i to i32
  call void @__asan_store8_noabort(i32 %47)
  store i64 0, ptr %i_blocks.i, align 8
  %arrayidx.i = getelementptr %struct.minix_inode, ptr %call1.i, i32 0, i32 6, i32 0
  %48 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %arrayidx.i, align 2
  %50 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 %49, ptr %add.ptr.i.i, align 2
  %arrayidx.1.i = getelementptr %struct.minix_inode, ptr %call1.i, i32 0, i32 6, i32 1
  %51 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %arrayidx.1.i, align 2
  %arrayidx26.1.i = getelementptr i8, ptr %call, i32 -62
  %53 = ptrtoint ptr %arrayidx26.1.i to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 %52, ptr %arrayidx26.1.i, align 2
  %arrayidx.2.i = getelementptr %struct.minix_inode, ptr %call1.i, i32 0, i32 6, i32 2
  %54 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %arrayidx.2.i, align 2
  %arrayidx26.2.i = getelementptr i8, ptr %call, i32 -60
  %56 = ptrtoint ptr %arrayidx26.2.i to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 %55, ptr %arrayidx26.2.i, align 2
  %arrayidx.3.i = getelementptr %struct.minix_inode, ptr %call1.i, i32 0, i32 6, i32 3
  %57 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %arrayidx.3.i, align 2
  %arrayidx26.3.i = getelementptr i8, ptr %call, i32 -58
  %59 = ptrtoint ptr %arrayidx26.3.i to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 %58, ptr %arrayidx26.3.i, align 2
  %arrayidx.4.i = getelementptr %struct.minix_inode, ptr %call1.i, i32 0, i32 6, i32 4
  %60 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %arrayidx.4.i, align 2
  %arrayidx26.4.i = getelementptr i8, ptr %call, i32 -56
  %62 = ptrtoint ptr %arrayidx26.4.i to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 %61, ptr %arrayidx26.4.i, align 2
  %arrayidx.5.i = getelementptr %struct.minix_inode, ptr %call1.i, i32 0, i32 6, i32 5
  %63 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %arrayidx.5.i, align 2
  %arrayidx26.5.i = getelementptr i8, ptr %call, i32 -54
  %65 = ptrtoint ptr %arrayidx26.5.i to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 %64, ptr %arrayidx26.5.i, align 2
  %arrayidx.6.i = getelementptr %struct.minix_inode, ptr %call1.i, i32 0, i32 6, i32 6
  %66 = ptrtoint ptr %arrayidx.6.i to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %arrayidx.6.i, align 2
  %arrayidx26.6.i = getelementptr i8, ptr %call, i32 -52
  %68 = ptrtoint ptr %arrayidx26.6.i to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 %67, ptr %arrayidx26.6.i, align 2
  %arrayidx.7.i = getelementptr %struct.minix_inode, ptr %call1.i, i32 0, i32 6, i32 7
  %69 = ptrtoint ptr %arrayidx.7.i to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %arrayidx.7.i, align 2
  %arrayidx26.7.i = getelementptr i8, ptr %call, i32 -50
  %71 = ptrtoint ptr %arrayidx26.7.i to i32
  call void @__asan_store2_noabort(i32 %71)
  store i16 %70, ptr %arrayidx26.7.i, align 2
  %arrayidx.8.i = getelementptr %struct.minix_inode, ptr %call1.i, i32 0, i32 6, i32 8
  %72 = ptrtoint ptr %arrayidx.8.i to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %arrayidx.8.i, align 2
  %arrayidx26.8.i = getelementptr i8, ptr %call, i32 -48
  %74 = ptrtoint ptr %arrayidx26.8.i to i32
  call void @__asan_store2_noabort(i32 %74)
  store i16 %73, ptr %arrayidx26.8.i, align 2
  %75 = ptrtoint ptr %call to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %call, align 8
  %77 = and i16 %76, -4096
  %78 = zext i16 %77 to i64
  call void @__sanitizer_cov_trace_switch(i64 %78, ptr @__sancov_gen_cov_switch_values.45)
  switch i16 %77, label %if.else21.i.i [
    i16 -32768, label %if.then.i68.i
    i16 16384, label %if.then7.i.i
    i16 -24576, label %if.then17.i.i
  ]

if.then.i68.i:                                    ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  %i_op.i.i = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 7
  %79 = ptrtoint ptr %i_op.i.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr @minix_file_inode_operations, ptr %i_op.i.i, align 8
  %80 = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 44
  %81 = ptrtoint ptr %80 to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr @minix_file_operations, ptr %80, align 8
  %i_mapping.i.i = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 9
  %82 = ptrtoint ptr %i_mapping.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %i_mapping.i.i, align 8
  %a_ops.i.i = getelementptr inbounds %struct.address_space, ptr %83, i32 0, i32 9
  %84 = ptrtoint ptr %a_ops.i.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr @minix_aops, ptr %a_ops.i.i, align 4
  br label %minix_set_inode.exit.i

if.then7.i.i:                                     ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  %i_op8.i.i = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 7
  %85 = ptrtoint ptr %i_op8.i.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr @minix_dir_inode_operations, ptr %i_op8.i.i, align 8
  %86 = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 44
  %87 = ptrtoint ptr %86 to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr @minix_dir_operations, ptr %86, align 8
  %i_mapping9.i.i = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 9
  %88 = ptrtoint ptr %i_mapping9.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %i_mapping9.i.i, align 8
  %a_ops10.i.i = getelementptr inbounds %struct.address_space, ptr %89, i32 0, i32 9
  %90 = ptrtoint ptr %a_ops10.i.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr @minix_aops, ptr %a_ops10.i.i, align 4
  br label %minix_set_inode.exit.i

if.then17.i.i:                                    ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  %i_op18.i.i = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 7
  %91 = ptrtoint ptr %i_op18.i.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr @minix_symlink_inode_operations, ptr %i_op18.i.i, align 8
  call void @inode_nohighmem(ptr noundef nonnull %call) #7
  %i_mapping19.i.i = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 9
  %92 = ptrtoint ptr %i_mapping19.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %i_mapping19.i.i, align 8
  %a_ops20.i.i = getelementptr inbounds %struct.address_space, ptr %93, i32 0, i32 9
  %94 = ptrtoint ptr %a_ops20.i.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr @minix_aops, ptr %a_ops20.i.i, align 4
  br label %minix_set_inode.exit.i

if.else21.i.i:                                    ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  %95 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %95)
  %96 = load i16, ptr %arrayidx.i, align 2
  %conv.i.i = zext i16 %96 to i32
  %97 = shl nuw nsw i32 %conv.i.i, 12
  %shl.i.i = and i32 %97, 267386880
  %and2.i.i = and i32 %conv.i.i, 255
  %or.i.i = or i32 %shl.i.i, %and2.i.i
  call void @init_special_inode(ptr noundef nonnull %call, i16 noundef zeroext %76, i32 noundef %or.i.i) #7
  br label %minix_set_inode.exit.i

minix_set_inode.exit.i:                           ; preds = %if.else21.i.i, %if.then17.i.i, %if.then7.i.i, %if.then.i68.i
  %98 = ptrtoint ptr %bh.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %bh.i, align 4
  %tobool.not.i69.i = icmp eq ptr %99, null
  br i1 %tobool.not.i69.i, label %minix_set_inode.exit.i.brelse.exit71.i_crit_edge, label %if.then.i70.i

minix_set_inode.exit.i.brelse.exit71.i_crit_edge: ; preds = %minix_set_inode.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %brelse.exit71.i

if.then.i70.i:                                    ; preds = %minix_set_inode.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__brelse(ptr noundef nonnull %99) #7
  br label %brelse.exit71.i

brelse.exit71.i:                                  ; preds = %if.then.i70.i, %minix_set_inode.exit.i.brelse.exit71.i_crit_edge
  call void @unlock_new_inode(ptr noundef nonnull %call) #7
  br label %V1_minix_iget.exit

V1_minix_iget.exit:                               ; preds = %brelse.exit71.i, %brelse.exit.i, %if.then.i
  %retval.0.i = phi ptr [ inttoptr (i32 -116 to ptr), %brelse.exit.i ], [ %call, %brelse.exit71.i ], [ inttoptr (i32 -5 to ptr), %if.then.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bh.i) #7
  br label %cleanup

if.else:                                          ; preds = %if.end4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bh.i15) #7
  %100 = ptrtoint ptr %bh.i15 to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr inttoptr (i32 -1 to ptr), ptr %bh.i15, align 4, !annotation !101
  %add.ptr.i.i16 = getelementptr i8, ptr %call, i32 -64
  %i_ino.i18 = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 11
  %101 = ptrtoint ptr %i_ino.i18 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %i_ino.i18, align 8
  %call1.i19 = call ptr @minix_V2_raw_inode(ptr noundef %3, i32 noundef %102, ptr noundef nonnull %bh.i15) #7
  %tobool.not.i20 = icmp eq ptr %call1.i19, null
  br i1 %tobool.not.i20, label %if.then.i21, label %if.end.i24

if.then.i21:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  call void @iget_failed(ptr noundef nonnull %call) #7
  br label %V2_minix_iget.exit

if.end.i24:                                       ; preds = %if.else
  %i_nlinks.i22 = getelementptr inbounds %struct.minix2_inode, ptr %call1.i19, i32 0, i32 1
  %103 = ptrtoint ptr %i_nlinks.i22 to i32
  call void @__asan_load2_noabort(i32 %103)
  %104 = load i16, ptr %i_nlinks.i22, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %104)
  %cmp.i23 = icmp eq i16 %104, 0
  br i1 %cmp.i23, label %do.end.i27, label %if.end8.i57

do.end.i27:                                       ; preds = %if.end.i24
  %105 = ptrtoint ptr %i_ino.i18 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %i_ino.i18, align 8
  %call6.i25 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %106) #10
  %107 = ptrtoint ptr %bh.i15 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %bh.i15, align 4
  %tobool.not.i.i26 = icmp eq ptr %108, null
  br i1 %tobool.not.i.i26, label %do.end.i27.brelse.exit.i29_crit_edge, label %if.then.i.i28

do.end.i27.brelse.exit.i29_crit_edge:             ; preds = %do.end.i27
  call void @__sanitizer_cov_trace_pc() #9
  br label %brelse.exit.i29

if.then.i.i28:                                    ; preds = %do.end.i27
  call void @__sanitizer_cov_trace_pc() #9
  call void @__brelse(ptr noundef nonnull %108) #7
  br label %brelse.exit.i29

brelse.exit.i29:                                  ; preds = %if.then.i.i28, %do.end.i27.brelse.exit.i29_crit_edge
  call void @iget_failed(ptr noundef nonnull %call) #7
  br label %V2_minix_iget.exit

if.end8.i57:                                      ; preds = %if.end.i24
  %109 = ptrtoint ptr %call1.i19 to i32
  call void @__asan_load2_noabort(i32 %109)
  %110 = load i16, ptr %call1.i19, align 4
  %111 = ptrtoint ptr %call to i32
  call void @__asan_store2_noabort(i32 %111)
  store i16 %110, ptr %call, align 8
  %i_uid.i30 = getelementptr inbounds %struct.minix2_inode, ptr %call1.i19, i32 0, i32 2
  %112 = ptrtoint ptr %i_uid.i30 to i32
  call void @__asan_load2_noabort(i32 %112)
  %113 = load i16, ptr %i_uid.i30, align 4
  %conv10.i31 = zext i16 %113 to i32
  %i_uid.i.i32 = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 2
  %114 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %i_sb, align 4
  %s_user_ns.i.i.i33 = getelementptr inbounds %struct.super_block, ptr %115, i32 0, i32 53
  %116 = ptrtoint ptr %s_user_ns.i.i.i33 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %s_user_ns.i.i.i33, align 8
  %call1.i.i34 = call i32 @make_kuid(ptr noundef %117, i32 noundef %conv10.i31) #7
  %118 = ptrtoint ptr %i_uid.i.i32 to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 %call1.i.i34, ptr %i_uid.i.i32, align 4
  %i_gid.i35 = getelementptr inbounds %struct.minix2_inode, ptr %call1.i19, i32 0, i32 3
  %119 = ptrtoint ptr %i_gid.i35 to i32
  call void @__asan_load2_noabort(i32 %119)
  %120 = load i16, ptr %i_gid.i35, align 2
  %conv11.i36 = zext i16 %120 to i32
  %i_gid.i.i37 = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 3
  %121 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %i_sb, align 4
  %s_user_ns.i.i74.i = getelementptr inbounds %struct.super_block, ptr %122, i32 0, i32 53
  %123 = ptrtoint ptr %s_user_ns.i.i74.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %s_user_ns.i.i74.i, align 8
  %call1.i75.i = call i32 @make_kgid(ptr noundef %124, i32 noundef %conv11.i36) #7
  %125 = ptrtoint ptr %i_gid.i.i37 to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 %call1.i75.i, ptr %i_gid.i.i37, align 8
  %126 = ptrtoint ptr %i_nlinks.i22 to i32
  call void @__asan_load2_noabort(i32 %126)
  %127 = load i16, ptr %i_nlinks.i22, align 2
  %conv13.i38 = zext i16 %127 to i32
  call void @set_nlink(ptr noundef nonnull %call, i32 noundef %conv13.i38) #7
  %i_size.i39 = getelementptr inbounds %struct.minix2_inode, ptr %call1.i19, i32 0, i32 4
  %128 = ptrtoint ptr %i_size.i39 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %i_size.i39, align 4
  %conv14.i40 = zext i32 %129 to i64
  %i_size15.i41 = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 14
  %130 = ptrtoint ptr %i_size15.i41 to i32
  call void @__asan_store8_noabort(i32 %130)
  store i64 %conv14.i40, ptr %i_size15.i41, align 8
  %i_mtime.i42 = getelementptr inbounds %struct.minix2_inode, ptr %call1.i19, i32 0, i32 6
  %131 = ptrtoint ptr %i_mtime.i42 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %i_mtime.i42, align 4
  %conv16.i43 = zext i32 %132 to i64
  %i_mtime17.i = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 16
  %133 = ptrtoint ptr %i_mtime17.i to i32
  call void @__asan_store8_noabort(i32 %133)
  store i64 %conv16.i43, ptr %i_mtime17.i, align 8
  %i_atime.i44 = getelementptr inbounds %struct.minix2_inode, ptr %call1.i19, i32 0, i32 5
  %134 = ptrtoint ptr %i_atime.i44 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %i_atime.i44, align 4
  %conv18.i = zext i32 %135 to i64
  %i_atime19.i = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 15
  %136 = ptrtoint ptr %i_atime19.i to i32
  call void @__asan_store8_noabort(i32 %136)
  store i64 %conv18.i, ptr %i_atime19.i, align 8
  %i_ctime.i45 = getelementptr inbounds %struct.minix2_inode, ptr %call1.i19, i32 0, i32 7
  %137 = ptrtoint ptr %i_ctime.i45 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %i_ctime.i45, align 4
  %conv21.i = zext i32 %138 to i64
  %i_ctime22.i = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 17
  %139 = ptrtoint ptr %i_ctime22.i to i32
  call void @__asan_store8_noabort(i32 %139)
  store i64 %conv21.i, ptr %i_ctime22.i, align 8
  %tv_nsec.i46 = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 16, i32 1
  %140 = ptrtoint ptr %tv_nsec.i46 to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 0, ptr %tv_nsec.i46, align 8
  %tv_nsec26.i = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 15, i32 1
  %141 = ptrtoint ptr %tv_nsec26.i to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 0, ptr %tv_nsec26.i, align 8
  %tv_nsec28.i = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 17, i32 1
  %142 = ptrtoint ptr %tv_nsec28.i to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 0, ptr %tv_nsec28.i, align 8
  %i_blocks.i47 = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 22
  %143 = ptrtoint ptr %i_blocks.i47 to i32
  call void @__asan_store8_noabort(i32 %143)
  store i64 0, ptr %i_blocks.i47, align 8
  %arrayidx.i48 = getelementptr %struct.minix2_inode, ptr %call1.i19, i32 0, i32 8, i32 0
  %144 = ptrtoint ptr %arrayidx.i48 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %arrayidx.i48, align 4
  %146 = ptrtoint ptr %add.ptr.i.i16 to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 %145, ptr %add.ptr.i.i16, align 4
  %arrayidx.1.i49 = getelementptr %struct.minix2_inode, ptr %call1.i19, i32 0, i32 8, i32 1
  %147 = ptrtoint ptr %arrayidx.1.i49 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %arrayidx.1.i49, align 4
  %arrayidx31.1.i = getelementptr i8, ptr %call, i32 -60
  %149 = ptrtoint ptr %arrayidx31.1.i to i32
  call void @__asan_store4_noabort(i32 %149)
  store i32 %148, ptr %arrayidx31.1.i, align 4
  %arrayidx.2.i50 = getelementptr %struct.minix2_inode, ptr %call1.i19, i32 0, i32 8, i32 2
  %150 = ptrtoint ptr %arrayidx.2.i50 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %arrayidx.2.i50, align 4
  %arrayidx31.2.i = getelementptr i8, ptr %call, i32 -56
  %152 = ptrtoint ptr %arrayidx31.2.i to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 %151, ptr %arrayidx31.2.i, align 4
  %arrayidx.3.i51 = getelementptr %struct.minix2_inode, ptr %call1.i19, i32 0, i32 8, i32 3
  %153 = ptrtoint ptr %arrayidx.3.i51 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %arrayidx.3.i51, align 4
  %arrayidx31.3.i = getelementptr i8, ptr %call, i32 -52
  %155 = ptrtoint ptr %arrayidx31.3.i to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 %154, ptr %arrayidx31.3.i, align 4
  %arrayidx.4.i52 = getelementptr %struct.minix2_inode, ptr %call1.i19, i32 0, i32 8, i32 4
  %156 = ptrtoint ptr %arrayidx.4.i52 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %arrayidx.4.i52, align 4
  %arrayidx31.4.i = getelementptr i8, ptr %call, i32 -48
  %158 = ptrtoint ptr %arrayidx31.4.i to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 %157, ptr %arrayidx31.4.i, align 4
  %arrayidx.5.i53 = getelementptr %struct.minix2_inode, ptr %call1.i19, i32 0, i32 8, i32 5
  %159 = ptrtoint ptr %arrayidx.5.i53 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %arrayidx.5.i53, align 4
  %arrayidx31.5.i = getelementptr i8, ptr %call, i32 -44
  %161 = ptrtoint ptr %arrayidx31.5.i to i32
  call void @__asan_store4_noabort(i32 %161)
  store i32 %160, ptr %arrayidx31.5.i, align 4
  %arrayidx.6.i54 = getelementptr %struct.minix2_inode, ptr %call1.i19, i32 0, i32 8, i32 6
  %162 = ptrtoint ptr %arrayidx.6.i54 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %arrayidx.6.i54, align 4
  %arrayidx31.6.i = getelementptr i8, ptr %call, i32 -40
  %164 = ptrtoint ptr %arrayidx31.6.i to i32
  call void @__asan_store4_noabort(i32 %164)
  store i32 %163, ptr %arrayidx31.6.i, align 4
  %arrayidx.7.i55 = getelementptr %struct.minix2_inode, ptr %call1.i19, i32 0, i32 8, i32 7
  %165 = ptrtoint ptr %arrayidx.7.i55 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %arrayidx.7.i55, align 4
  %arrayidx31.7.i = getelementptr i8, ptr %call, i32 -36
  %167 = ptrtoint ptr %arrayidx31.7.i to i32
  call void @__asan_store4_noabort(i32 %167)
  store i32 %166, ptr %arrayidx31.7.i, align 4
  %arrayidx.8.i56 = getelementptr %struct.minix2_inode, ptr %call1.i19, i32 0, i32 8, i32 8
  %168 = ptrtoint ptr %arrayidx.8.i56 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %arrayidx.8.i56, align 4
  %arrayidx31.8.i = getelementptr i8, ptr %call, i32 -32
  %170 = ptrtoint ptr %arrayidx31.8.i to i32
  call void @__asan_store4_noabort(i32 %170)
  store i32 %169, ptr %arrayidx31.8.i, align 4
  %arrayidx.9.i = getelementptr %struct.minix2_inode, ptr %call1.i19, i32 0, i32 8, i32 9
  %171 = ptrtoint ptr %arrayidx.9.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %arrayidx.9.i, align 4
  %arrayidx31.9.i = getelementptr i8, ptr %call, i32 -28
  %173 = ptrtoint ptr %arrayidx31.9.i to i32
  call void @__asan_store4_noabort(i32 %173)
  store i32 %172, ptr %arrayidx31.9.i, align 4
  %174 = ptrtoint ptr %call to i32
  call void @__asan_load2_noabort(i32 %174)
  %175 = load i16, ptr %call, align 8
  %176 = and i16 %175, -4096
  %177 = zext i16 %176 to i64
  call void @__sanitizer_cov_trace_switch(i64 %177, ptr @__sancov_gen_cov_switch_values.46)
  switch i16 %176, label %if.else21.i.i73 [
    i16 -32768, label %if.then.i76.i
    i16 16384, label %if.then7.i.i64
    i16 -24576, label %if.then17.i.i68
  ]

if.then.i76.i:                                    ; preds = %if.end8.i57
  call void @__sanitizer_cov_trace_pc() #9
  %i_op.i.i58 = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 7
  %178 = ptrtoint ptr %i_op.i.i58 to i32
  call void @__asan_store4_noabort(i32 %178)
  store ptr @minix_file_inode_operations, ptr %i_op.i.i58, align 8
  %179 = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 44
  %180 = ptrtoint ptr %179 to i32
  call void @__asan_store4_noabort(i32 %180)
  store ptr @minix_file_operations, ptr %179, align 8
  %i_mapping.i.i59 = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 9
  %181 = ptrtoint ptr %i_mapping.i.i59 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %i_mapping.i.i59, align 8
  %a_ops.i.i60 = getelementptr inbounds %struct.address_space, ptr %182, i32 0, i32 9
  %183 = ptrtoint ptr %a_ops.i.i60 to i32
  call void @__asan_store4_noabort(i32 %183)
  store ptr @minix_aops, ptr %a_ops.i.i60, align 4
  br label %minix_set_inode.exit.i74

if.then7.i.i64:                                   ; preds = %if.end8.i57
  call void @__sanitizer_cov_trace_pc() #9
  %i_op8.i.i61 = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 7
  %184 = ptrtoint ptr %i_op8.i.i61 to i32
  call void @__asan_store4_noabort(i32 %184)
  store ptr @minix_dir_inode_operations, ptr %i_op8.i.i61, align 8
  %185 = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 44
  %186 = ptrtoint ptr %185 to i32
  call void @__asan_store4_noabort(i32 %186)
  store ptr @minix_dir_operations, ptr %185, align 8
  %i_mapping9.i.i62 = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 9
  %187 = ptrtoint ptr %i_mapping9.i.i62 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %i_mapping9.i.i62, align 8
  %a_ops10.i.i63 = getelementptr inbounds %struct.address_space, ptr %188, i32 0, i32 9
  %189 = ptrtoint ptr %a_ops10.i.i63 to i32
  call void @__asan_store4_noabort(i32 %189)
  store ptr @minix_aops, ptr %a_ops10.i.i63, align 4
  br label %minix_set_inode.exit.i74

if.then17.i.i68:                                  ; preds = %if.end8.i57
  call void @__sanitizer_cov_trace_pc() #9
  %i_op18.i.i65 = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 7
  %190 = ptrtoint ptr %i_op18.i.i65 to i32
  call void @__asan_store4_noabort(i32 %190)
  store ptr @minix_symlink_inode_operations, ptr %i_op18.i.i65, align 8
  call void @inode_nohighmem(ptr noundef nonnull %call) #7
  %i_mapping19.i.i66 = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 9
  %191 = ptrtoint ptr %i_mapping19.i.i66 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %i_mapping19.i.i66, align 8
  %a_ops20.i.i67 = getelementptr inbounds %struct.address_space, ptr %192, i32 0, i32 9
  %193 = ptrtoint ptr %a_ops20.i.i67 to i32
  call void @__asan_store4_noabort(i32 %193)
  store ptr @minix_aops, ptr %a_ops20.i.i67, align 4
  br label %minix_set_inode.exit.i74

if.else21.i.i73:                                  ; preds = %if.end8.i57
  call void @__sanitizer_cov_trace_pc() #9
  %194 = ptrtoint ptr %arrayidx.i48 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %arrayidx.i48, align 4
  %conv.i.i69 = shl i32 %195, 12
  %shl.i.i70 = and i32 %conv.i.i69, 267386880
  %and2.i.i71 = and i32 %195, 255
  %or.i.i72 = or i32 %shl.i.i70, %and2.i.i71
  call void @init_special_inode(ptr noundef nonnull %call, i16 noundef zeroext %175, i32 noundef %or.i.i72) #7
  br label %minix_set_inode.exit.i74

minix_set_inode.exit.i74:                         ; preds = %if.else21.i.i73, %if.then17.i.i68, %if.then7.i.i64, %if.then.i76.i
  %196 = ptrtoint ptr %bh.i15 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %bh.i15, align 4
  %tobool.not.i77.i = icmp eq ptr %197, null
  br i1 %tobool.not.i77.i, label %minix_set_inode.exit.i74.brelse.exit79.i_crit_edge, label %if.then.i78.i

minix_set_inode.exit.i74.brelse.exit79.i_crit_edge: ; preds = %minix_set_inode.exit.i74
  call void @__sanitizer_cov_trace_pc() #9
  br label %brelse.exit79.i

if.then.i78.i:                                    ; preds = %minix_set_inode.exit.i74
  call void @__sanitizer_cov_trace_pc() #9
  call void @__brelse(ptr noundef nonnull %197) #7
  br label %brelse.exit79.i

brelse.exit79.i:                                  ; preds = %if.then.i78.i, %minix_set_inode.exit.i74.brelse.exit79.i_crit_edge
  call void @unlock_new_inode(ptr noundef nonnull %call) #7
  br label %V2_minix_iget.exit

V2_minix_iget.exit:                               ; preds = %brelse.exit79.i, %brelse.exit.i29, %if.then.i21
  %retval.0.i75 = phi ptr [ inttoptr (i32 -116 to ptr), %brelse.exit.i29 ], [ %call, %brelse.exit79.i ], [ inttoptr (i32 -5 to ptr), %if.then.i21 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bh.i15) #7
  br label %cleanup

cleanup:                                          ; preds = %V2_minix_iget.exit, %V1_minix_iget.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %retval.0.i, %V1_minix_iget.exit ], [ %retval.0.i75, %V2_minix_iget.exit ], [ %call, %if.end.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iget_locked(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @minix_getattr(ptr nocapture readnone %mnt_userns, ptr nocapture noundef readonly %path, ptr noundef %stat, i32 %request_mask, i32 %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dentry = getelementptr inbounds %struct.path, ptr %path, i32 0, i32 1
  %0 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dentry, align 4
  %d_sb = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %d_sb, align 4
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %d_inode.i, align 8
  tail call void @generic_fillattr(ptr noundef nonnull @init_user_ns, ptr noundef %5, ptr noundef %stat) #7
  %i_sb = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %7, i32 0, i32 33
  %8 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %s_fs_info.i, align 16
  %s_version = getelementptr inbounds %struct.minix_sb_info, ptr %9, i32 0, i32 13
  %10 = ptrtoint ptr %s_version to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %s_version, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %11)
  %cmp = icmp eq i16 %11, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %size = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 11
  %12 = ptrtoint ptr %size to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %size, align 8
  %call4 = tail call i32 @V1_minix_blocks(i64 noundef %13, ptr noundef %3) #7
  %mul = shl i32 %call4, 1
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 3
  %14 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %s_blocksize, align 16
  %div22 = lshr i32 %15, 9
  %size6 = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 11
  %16 = ptrtoint ptr %size6 to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %size6, align 8
  %call7 = tail call i32 @V2_minix_blocks(i64 noundef %17, ptr noundef %3) #7
  %mul8 = mul i32 %call7, %div22
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %conv9.sink.in = phi i32 [ %mul, %if.then ], [ %mul8, %if.else ]
  %conv9.sink = zext i32 %conv9.sink.in to i64
  %18 = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 16
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %conv9.sink, ptr %18, align 8
  %s_blocksize11 = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 3
  %20 = ptrtoint ptr %s_blocksize11 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %s_blocksize11, align 16
  %blksize = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 3
  %22 = ptrtoint ptr %blksize to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %blksize, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_fillattr(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @V1_minix_blocks(i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @V2_minix_blocks(i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @minix_truncate(ptr noundef %inode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %inode, align 8
  %2 = and i16 %1, -4096
  %3 = zext i16 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.47)
  switch i16 %2, label %entry.if.end17_crit_edge [
    i16 -32768, label %entry.if.end_crit_edge
    i16 16384, label %entry.if.end_crit_edge23
    i16 -24576, label %entry.if.end_crit_edge24
  ]

entry.if.end_crit_edge24:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

entry.if.end_crit_edge23:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

entry.if.end17_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17

if.end:                                           ; preds = %entry.if.end_crit_edge, %entry.if.end_crit_edge23, %entry.if.end_crit_edge24
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %4 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 33
  %6 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s_fs_info.i, align 16
  %s_version = getelementptr inbounds %struct.minix_sb_info, ptr %7, i32 0, i32 13
  %8 = ptrtoint ptr %s_version to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %s_version, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %9)
  %cmp14 = icmp eq i16 %9, 1
  br i1 %cmp14, label %if.then16, label %if.else

if.then16:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @V1_minix_truncate(ptr noundef %inode) #7
  br label %if.end17

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @V2_minix_truncate(ptr noundef %inode) #7
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.then16, %entry.if.end17_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @V1_minix_truncate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @V2_minix_truncate(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @exit_minix_fs() #3 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 @unregister_filesystem(ptr noundef nonnull @minix_fs_type) #7
  tail call void @rcu_barrier() #7
  %0 = load ptr, ptr @minix_inode_cachep, align 4
  tail call void @kmem_cache_destroy(ptr noundef %0) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_filesystem(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @init_minix_fs() #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.44, i32 noundef 848, i32 noundef 0, i32 noundef 68288512, ptr noundef nonnull @init_once) #7
  store ptr %call.i, ptr @minix_inode_cachep, align 4
  %cmp.i.not = icmp eq ptr %call.i, null
  br i1 %cmp.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @register_filesystem(ptr noundef nonnull @minix_fs_type) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %out

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

out:                                              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @rcu_barrier() #7
  %0 = load ptr, ptr @minix_inode_cachep, align 4
  tail call void @kmem_cache_destroy(ptr noundef %0) #7
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end.cleanup_crit_edge ], [ -12, %entry.cleanup_crit_edge ], [ %call1, %out ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @V1_minix_get_block(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @V2_minix_get_block(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @minix_writepage(ptr noundef %page, ptr noundef %wbc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @block_write_full_page(ptr noundef %page, ptr noundef nonnull @minix_get_block, ptr noundef %wbc) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @minix_readpage(ptr nocapture noundef readnone %file, ptr noundef %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @block_read_full_page(ptr noundef %page, ptr noundef nonnull @minix_get_block) #7
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__set_page_dirty_buffers(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @minix_write_begin(ptr nocapture noundef readnone %file, ptr noundef %mapping, i64 noundef %pos, i32 noundef %len, i32 noundef %flags, ptr noundef %pagep, ptr nocapture noundef readnone %fsdata) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @block_write_begin(ptr noundef %mapping, i64 noundef %pos, i32 noundef %len, i32 noundef %flags, ptr noundef %pagep, ptr noundef nonnull @minix_get_block) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then, !prof !102

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %conv = zext i32 %len to i64
  %add = add i64 %conv, %pos
  tail call fastcc void @minix_write_failed(ptr noundef %mapping, i64 noundef %add)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_write_end(ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @minix_bmap(ptr noundef %mapping, i64 noundef %block) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i64 @generic_block_bmap(ptr noundef %mapping, i64 noundef %block, ptr noundef nonnull @minix_get_block) #7
  ret i64 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @block_write_full_page(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @block_read_full_page(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @block_write_begin(ptr noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @minix_write_failed(ptr nocapture noundef readonly %mapping, i64 noundef %to) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mapping, align 4
  %i_size = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %i_size, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %3, i64 %to)
  %cmp = icmp slt i64 %3, %to
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  tail call void @truncate_pagecache(ptr noundef %1, i64 noundef %3) #7
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %1, align 8
  %6 = and i16 %5, -4096
  %7 = zext i16 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.48)
  switch i16 %6, label %if.then.if.end_crit_edge [
    i16 -32768, label %if.then.if.end.i_crit_edge
    i16 16384, label %if.then.if.end.i_crit_edge5
    i16 -24576, label %if.then.if.end.i_crit_edge6
  ]

if.then.if.end.i_crit_edge6:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.if.end.i_crit_edge5:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.if.end.i_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i:                                         ; preds = %if.then.if.end.i_crit_edge, %if.then.if.end.i_crit_edge5, %if.then.if.end.i_crit_edge6
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %8 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %9, i32 0, i32 33
  %10 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %s_fs_info.i.i, align 16
  %s_version.i = getelementptr inbounds %struct.minix_sb_info, ptr %11, i32 0, i32 13
  %12 = ptrtoint ptr %s_version.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %s_version.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %13)
  %cmp14.i = icmp eq i16 %13, 1
  br i1 %cmp14.i, label %if.then16.i, label %if.else.i

if.then16.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @V1_minix_truncate(ptr noundef %1) #7
  br label %if.end

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @V2_minix_truncate(ptr noundef %1) #7
  br label %if.end

if.end:                                           ; preds = %if.else.i, %if.then16.i, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @truncate_pagecache(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_block_bmap(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_get_link(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @minix_V1_raw_inode(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iget_failed(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_nlink(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_new_inode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__brelse(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kuid(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kgid(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @minix_V2_raw_inode(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @minix_mount(ptr noundef %fs_type, i32 noundef %flags, ptr noundef %dev_name, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @mount_bdev(ptr noundef %fs_type, i32 noundef %flags, ptr noundef %dev_name, ptr noundef %data, ptr noundef nonnull @minix_fill_super) #7
  ret ptr %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kill_block_super(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mount_bdev(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @minix_fill_super(ptr noundef %s, ptr nocapture noundef readnone %data, i32 noundef %silent) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 52) #11
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 33
  %1 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i, ptr %s_fs_info, align 16
  %call4 = tail call i32 @sb_set_blocksize(ptr noundef %s, i32 noundef 1024) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %do.end276, label %if.end7

if.end7:                                          ; preds = %if.end
  %s_bdev.i = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 26
  %2 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_bdev.i, align 4
  %s_blocksize.i = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 3
  %4 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %s_blocksize.i, align 16
  %call.i = tail call ptr @__bread_gfp(ptr noundef %3, i64 noundef 1, i32 noundef %5, i32 noundef 8) #7
  %tobool9.not = icmp eq ptr %call.i, null
  br i1 %tobool9.not, label %do.end281, label %if.end11

if.end11:                                         ; preds = %if.end7
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %call.i, i32 0, i32 5
  %6 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %b_data, align 4
  %s_ms = getelementptr inbounds %struct.minix_sb_info, ptr %call7.i.i, i32 0, i32 11
  %8 = ptrtoint ptr %s_ms to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %s_ms, align 4
  %s_sbh = getelementptr inbounds %struct.minix_sb_info, ptr %call7.i.i, i32 0, i32 10
  %9 = ptrtoint ptr %s_sbh to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call.i, ptr %s_sbh, align 8
  %s_state = getelementptr inbounds %struct.minix_super_block, ptr %7, i32 0, i32 8
  %10 = ptrtoint ptr %s_state to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %s_state, align 2
  %s_mount_state = getelementptr inbounds %struct.minix_sb_info, ptr %call7.i.i, i32 0, i32 12
  %12 = ptrtoint ptr %s_mount_state to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %11, ptr %s_mount_state, align 8
  %13 = ptrtoint ptr %7 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %7, align 4
  %conv = zext i16 %14 to i32
  %15 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %conv, ptr %call7.i.i, align 8
  %s_nzones = getelementptr inbounds %struct.minix_super_block, ptr %7, i32 0, i32 1
  %16 = ptrtoint ptr %s_nzones to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %s_nzones, align 2
  %conv13 = zext i16 %17 to i32
  %s_nzones14 = getelementptr inbounds %struct.minix_sb_info, ptr %call7.i.i, i32 0, i32 1
  %18 = ptrtoint ptr %s_nzones14 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %conv13, ptr %s_nzones14, align 4
  %s_imap_blocks = getelementptr inbounds %struct.minix_super_block, ptr %7, i32 0, i32 2
  %19 = ptrtoint ptr %s_imap_blocks to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %s_imap_blocks, align 4
  %conv15 = zext i16 %20 to i32
  %s_imap_blocks16 = getelementptr inbounds %struct.minix_sb_info, ptr %call7.i.i, i32 0, i32 2
  %21 = ptrtoint ptr %s_imap_blocks16 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %conv15, ptr %s_imap_blocks16, align 8
  %s_zmap_blocks = getelementptr inbounds %struct.minix_super_block, ptr %7, i32 0, i32 3
  %22 = ptrtoint ptr %s_zmap_blocks to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %s_zmap_blocks, align 2
  %conv17 = zext i16 %23 to i32
  %s_zmap_blocks18 = getelementptr inbounds %struct.minix_sb_info, ptr %call7.i.i, i32 0, i32 3
  %24 = ptrtoint ptr %s_zmap_blocks18 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %conv17, ptr %s_zmap_blocks18, align 4
  %s_firstdatazone = getelementptr inbounds %struct.minix_super_block, ptr %7, i32 0, i32 4
  %25 = ptrtoint ptr %s_firstdatazone to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %s_firstdatazone, align 4
  %conv19 = zext i16 %26 to i32
  %s_firstdatazone20 = getelementptr inbounds %struct.minix_sb_info, ptr %call7.i.i, i32 0, i32 4
  %27 = ptrtoint ptr %s_firstdatazone20 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %conv19, ptr %s_firstdatazone20, align 8
  %s_log_zone_size = getelementptr inbounds %struct.minix_super_block, ptr %7, i32 0, i32 5
  %28 = ptrtoint ptr %s_log_zone_size to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %s_log_zone_size, align 2
  %conv21 = zext i16 %29 to i32
  %s_log_zone_size22 = getelementptr inbounds %struct.minix_sb_info, ptr %call7.i.i, i32 0, i32 5
  %30 = ptrtoint ptr %s_log_zone_size22 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %conv21, ptr %s_log_zone_size22, align 4
  %s_max_size = getelementptr inbounds %struct.minix_super_block, ptr %7, i32 0, i32 6
  %31 = ptrtoint ptr %s_max_size to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %s_max_size, align 4
  %conv23 = zext i32 %32 to i64
  %s_maxbytes = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 4
  %33 = ptrtoint ptr %s_maxbytes to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 %conv23, ptr %s_maxbytes, align 8
  %s_magic = getelementptr inbounds %struct.minix_super_block, ptr %7, i32 0, i32 7
  %34 = ptrtoint ptr %s_magic to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %s_magic, align 4
  %conv24 = zext i16 %35 to i32
  %s_magic25 = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 12
  %36 = ptrtoint ptr %s_magic25 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %conv24, ptr %s_magic25, align 4
  %37 = zext i16 %35 to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values.49)
  switch i16 %35, label %if.else58 [
    i16 4991, label %if.then28
    i16 5007, label %if.then32
    i16 9320, label %if.then41
    i16 9336, label %if.then51
  ]

if.then28:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  %s_version = getelementptr inbounds %struct.minix_sb_info, ptr %call7.i.i, i32 0, i32 13
  %38 = ptrtoint ptr %s_version to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 1, ptr %s_version, align 2
  %s_dirsize = getelementptr inbounds %struct.minix_sb_info, ptr %call7.i.i, i32 0, i32 6
  %39 = ptrtoint ptr %s_dirsize to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 16, ptr %s_dirsize, align 8
  %s_namelen = getelementptr inbounds %struct.minix_sb_info, ptr %call7.i.i, i32 0, i32 7
  %40 = ptrtoint ptr %s_namelen to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 14, ptr %s_namelen, align 4
  br label %if.end99

if.then32:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  %s_version33 = getelementptr inbounds %struct.minix_sb_info, ptr %call7.i.i, i32 0, i32 13
  %41 = ptrtoint ptr %s_version33 to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 1, ptr %s_version33, align 2
  %s_dirsize34 = getelementptr inbounds %struct.minix_sb_info, ptr %call7.i.i, i32 0, i32 6
  %42 = ptrtoint ptr %s_dirsize34 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 32, ptr %s_dirsize34, align 8
  %s_namelen35 = getelementptr inbounds %struct.minix_sb_info, ptr %call7.i.i, i32 0, i32 7
  %43 = ptrtoint ptr %s_namelen35 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 30, ptr %s_namelen35, align 4
  br label %if.end99

if.then41:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  %s_version42 = getelementptr inbounds %struct.minix_sb_info, ptr %call7.i.i, i32 0, i32 13
  %44 = ptrtoint ptr %s_version42 to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 2, ptr %s_version42, align 2
  %s_zones = getelementptr inbounds %struct.minix_super_block, ptr %7, i32 0, i32 9
  %45 = ptrtoint ptr %s_zones to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %s_zones, align 4
  %47 = ptrtoint ptr %s_nzones14 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %s_nzones14, align 4
  %s_dirsize44 = getelementptr inbounds %struct.minix_sb_info, ptr %call7.i.i, i32 0, i32 6
  %48 = ptrtoint ptr %s_dirsize44 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 16, ptr %s_dirsize44, align 8
  %s_namelen45 = getelementptr inbounds %struct.minix_sb_info, ptr %call7.i.i, i32 0, i32 7
  %49 = ptrtoint ptr %s_namelen45 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 14, ptr %s_namelen45, align 4
  br label %if.end99

if.then51:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  %s_version52 = getelementptr inbounds %struct.minix_sb_info, ptr %call7.i.i, i32 0, i32 13
  %50 = ptrtoint ptr %s_version52 to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 2, ptr %s_version52, align 2
  %s_zones53 = getelementptr inbounds %struct.minix_super_block, ptr %7, i32 0, i32 9
  %51 = ptrtoint ptr %s_zones53 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %s_zones53, align 4
  %53 = ptrtoint ptr %s_nzones14 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %s_nzones14, align 4
  %s_dirsize55 = getelementptr inbounds %struct.minix_sb_info, ptr %call7.i.i, i32 0, i32 6
  %54 = ptrtoint ptr %s_dirsize55 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 32, ptr %s_dirsize55, align 8
  %s_namelen56 = getelementptr inbounds %struct.minix_sb_info, ptr %call7.i.i, i32 0, i32 7
  %55 = ptrtoint ptr %s_namelen56 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 30, ptr %s_namelen56, align 4
  br label %if.end99

if.else58:                                        ; preds = %if.end11
  %56 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %b_data, align 4
  %add.ptr = getelementptr i8, ptr %57, i32 24
  %58 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %add.ptr, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 19802, i16 %59)
  %cmp61 = icmp eq i16 %59, 19802
  br i1 %cmp61, label %if.then63, label %out_no_fs

if.then63:                                        ; preds = %if.else58
  call void @__sanitizer_cov_trace_pc() #9
  %60 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %add.ptr, align 4
  %conv66 = zext i16 %61 to i32
  %62 = ptrtoint ptr %s_magic25 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %conv66, ptr %s_magic25, align 4
  %s_imap_blocks68 = getelementptr inbounds %struct.minix3_super_block, ptr %57, i32 0, i32 2
  %63 = ptrtoint ptr %s_imap_blocks68 to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %s_imap_blocks68, align 2
  %conv69 = zext i16 %64 to i32
  %65 = ptrtoint ptr %s_imap_blocks16 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %conv69, ptr %s_imap_blocks16, align 8
  %s_zmap_blocks71 = getelementptr inbounds %struct.minix3_super_block, ptr %57, i32 0, i32 3
  %66 = ptrtoint ptr %s_zmap_blocks71 to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %s_zmap_blocks71, align 4
  %conv72 = zext i16 %67 to i32
  %68 = ptrtoint ptr %s_zmap_blocks18 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %conv72, ptr %s_zmap_blocks18, align 4
  %s_firstdatazone74 = getelementptr inbounds %struct.minix3_super_block, ptr %57, i32 0, i32 4
  %69 = ptrtoint ptr %s_firstdatazone74 to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %s_firstdatazone74, align 2
  %conv75 = zext i16 %70 to i32
  %71 = ptrtoint ptr %s_firstdatazone20 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %conv75, ptr %s_firstdatazone20, align 8
  %s_log_zone_size77 = getelementptr inbounds %struct.minix3_super_block, ptr %57, i32 0, i32 5
  %72 = ptrtoint ptr %s_log_zone_size77 to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %s_log_zone_size77, align 4
  %conv78 = zext i16 %73 to i32
  %74 = ptrtoint ptr %s_log_zone_size22 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %conv78, ptr %s_log_zone_size22, align 4
  %s_max_size80 = getelementptr inbounds %struct.minix3_super_block, ptr %57, i32 0, i32 7
  %75 = ptrtoint ptr %s_max_size80 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %s_max_size80, align 4
  %conv81 = zext i32 %76 to i64
  %77 = ptrtoint ptr %s_maxbytes to i32
  call void @__asan_store8_noabort(i32 %77)
  store i64 %conv81, ptr %s_maxbytes, align 8
  %78 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %57, align 4
  %80 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %79, ptr %call7.i.i, align 8
  %s_zones85 = getelementptr inbounds %struct.minix3_super_block, ptr %57, i32 0, i32 8
  %81 = ptrtoint ptr %s_zones85 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %s_zones85, align 4
  %83 = ptrtoint ptr %s_nzones14 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %82, ptr %s_nzones14, align 4
  %s_dirsize87 = getelementptr inbounds %struct.minix_sb_info, ptr %call7.i.i, i32 0, i32 6
  %84 = ptrtoint ptr %s_dirsize87 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 64, ptr %s_dirsize87, align 8
  %s_namelen88 = getelementptr inbounds %struct.minix_sb_info, ptr %call7.i.i, i32 0, i32 7
  %85 = ptrtoint ptr %s_namelen88 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 60, ptr %s_namelen88, align 4
  %s_version89 = getelementptr inbounds %struct.minix_sb_info, ptr %call7.i.i, i32 0, i32 13
  %86 = ptrtoint ptr %s_version89 to i32
  call void @__asan_store2_noabort(i32 %86)
  store i16 3, ptr %s_version89, align 2
  %87 = ptrtoint ptr %s_mount_state to i32
  call void @__asan_store2_noabort(i32 %87)
  store i16 1, ptr %s_mount_state, align 8
  %s_blocksize = getelementptr inbounds %struct.minix3_super_block, ptr %57, i32 0, i32 11
  %88 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %s_blocksize, align 4
  %conv91 = zext i16 %89 to i32
  %call92 = tail call i32 @sb_set_blocksize(ptr noundef %s, i32 noundef %conv91) #7
  br label %if.end99

if.end99:                                         ; preds = %if.then63, %if.then51, %if.then41, %if.then32, %if.then28
  %.sink = phi i32 [ 250, %if.then32 ], [ 65530, %if.then51 ], [ 65530, %if.then63 ], [ 65530, %if.then41 ], [ 250, %if.then28 ]
  %s_max_links36 = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 41
  %90 = ptrtoint ptr %s_max_links36 to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %.sink, ptr %s_max_links36, align 128
  %91 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %s_fs_info, align 16
  %s_imap_blocks.i = getelementptr inbounds %struct.minix_sb_info, ptr %92, i32 0, i32 2
  %93 = ptrtoint ptr %s_imap_blocks.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %s_imap_blocks.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %94)
  %cmp.i = icmp eq i32 %94, 0
  br i1 %cmp.i, label %if.end99.out_illegal_sb_crit_edge, label %lor.lhs.false.i

if.end99.out_illegal_sb_crit_edge:                ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_illegal_sb

lor.lhs.false.i:                                  ; preds = %if.end99
  %s_zmap_blocks.i = getelementptr inbounds %struct.minix_sb_info, ptr %92, i32 0, i32 3
  %95 = ptrtoint ptr %s_zmap_blocks.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %s_zmap_blocks.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %96)
  %cmp1.i = icmp eq i32 %96, 0
  br i1 %cmp1.i, label %lor.lhs.false.i.out_illegal_sb_crit_edge, label %if.end.i

lor.lhs.false.i.out_illegal_sb_crit_edge:         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_illegal_sb

if.end.i:                                         ; preds = %lor.lhs.false.i
  %s_version.i = getelementptr inbounds %struct.minix_sb_info, ptr %92, i32 0, i32 13
  %97 = ptrtoint ptr %s_version.i to i32
  call void @__asan_load2_noabort(i32 %97)
  %98 = load i16, ptr %s_version.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %98)
  %cmp2.i = icmp eq i16 %98, 1
  br i1 %cmp2.i, label %land.lhs.true.i, label %if.end.i.if.end8.i.i_crit_edge

if.end.i.if.end8.i.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8.i.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %99 = ptrtoint ptr %s_maxbytes to i32
  call void @__asan_load8_noabort(i32 %99)
  %100 = load i64, ptr %s_maxbytes, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 268966912, i64 %100)
  %cmp4.i = icmp sgt i64 %100, 268966912
  br i1 %cmp4.i, label %land.lhs.true.i.out_illegal_sb_crit_edge, label %land.lhs.true.i.if.end8.i.i_crit_edge

land.lhs.true.i.if.end8.i.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8.i.i

land.lhs.true.i.out_illegal_sb_crit_edge:         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_illegal_sb

if.end8.i.i:                                      ; preds = %land.lhs.true.i.if.end8.i.i_crit_edge, %if.end.i.if.end8.i.i_crit_edge
  %101 = ptrtoint ptr %s_zmap_blocks18 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %s_zmap_blocks18, align 4
  %103 = ptrtoint ptr %s_imap_blocks16 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %s_imap_blocks16, align 8
  %add = add i32 %102, %104
  %mul = shl i32 %add, 2
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %mul, i32 noundef 3520) #12
  %tobool106.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool106.not, label %out_no_map, label %if.end108

if.end108:                                        ; preds = %if.end8.i.i
  %s_imap = getelementptr inbounds %struct.minix_sb_info, ptr %call7.i.i, i32 0, i32 8
  %105 = ptrtoint ptr %s_imap to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr %call9.i.i, ptr %s_imap, align 8
  %106 = ptrtoint ptr %s_imap_blocks16 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %s_imap_blocks16, align 8
  %arrayidx110 = getelementptr ptr, ptr %call9.i.i, i32 %107
  %s_zmap = getelementptr inbounds %struct.minix_sb_info, ptr %call7.i.i, i32 0, i32 9
  %108 = ptrtoint ptr %s_zmap to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr %arrayidx110, ptr %s_zmap, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %107)
  %cmp112458.not = icmp eq i32 %107, 0
  br i1 %cmp112458.not, label %if.end108.for.cond122.preheader_crit_edge, label %if.end108.for.body_crit_edge

if.end108.for.body_crit_edge:                     ; preds = %if.end108
  br label %for.body

if.end108.for.cond122.preheader_crit_edge:        ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond122.preheader

for.cond122.preheader:                            ; preds = %if.end120.for.cond122.preheader_crit_edge, %if.end108.for.cond122.preheader_crit_edge
  %block.0.lcssa = phi i32 [ 2, %if.end108.for.cond122.preheader_crit_edge ], [ %inc, %if.end120.for.cond122.preheader_crit_edge ]
  %109 = ptrtoint ptr %s_zmap_blocks18 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %s_zmap_blocks18, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %110)
  %cmp124461.not = icmp eq i32 %110, 0
  br i1 %cmp124461.not, label %for.cond122.preheader.for.end137_crit_edge, label %for.cond122.preheader.for.body126_crit_edge

for.cond122.preheader.for.body126_crit_edge:      ; preds = %for.cond122.preheader
  br label %for.body126

for.cond122.preheader.for.end137_crit_edge:       ; preds = %for.cond122.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end137

for.body:                                         ; preds = %if.end120.for.body_crit_edge, %if.end108.for.body_crit_edge
  %i.0460 = phi i32 [ %inc121, %if.end120.for.body_crit_edge ], [ 0, %if.end108.for.body_crit_edge ]
  %block.0459 = phi i32 [ %inc, %if.end120.for.body_crit_edge ], [ 2, %if.end108.for.body_crit_edge ]
  %conv114 = zext i32 %block.0459 to i64
  %111 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %s_bdev.i, align 4
  %113 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %s_blocksize.i, align 16
  %call.i434 = tail call ptr @__bread_gfp(ptr noundef %112, i64 noundef %conv114, i32 noundef %114, i32 noundef 8) #7
  %115 = ptrtoint ptr %s_imap to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %s_imap, align 8
  %arrayidx117 = getelementptr ptr, ptr %116, i32 %i.0460
  %117 = ptrtoint ptr %arrayidx117 to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr %call.i434, ptr %arrayidx117, align 4
  %tobool118.not = icmp eq ptr %call.i434, null
  br i1 %tobool118.not, label %for.body.out_freemap.sink.split_crit_edge, label %if.end120

for.body.out_freemap.sink.split_crit_edge:        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_freemap.sink.split

if.end120:                                        ; preds = %for.body
  %inc = add i32 %block.0459, 1
  %inc121 = add nuw i32 %i.0460, 1
  %118 = ptrtoint ptr %s_imap_blocks16 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %s_imap_blocks16, align 8
  %cmp112 = icmp ult i32 %inc121, %119
  br i1 %cmp112, label %if.end120.for.body_crit_edge, label %if.end120.for.cond122.preheader_crit_edge

if.end120.for.cond122.preheader_crit_edge:        ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond122.preheader

if.end120.for.body_crit_edge:                     ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body126:                                      ; preds = %if.end133.for.body126_crit_edge, %for.cond122.preheader.for.body126_crit_edge
  %i.1463 = phi i32 [ %inc136, %if.end133.for.body126_crit_edge ], [ 0, %for.cond122.preheader.for.body126_crit_edge ]
  %block.1462 = phi i32 [ %inc134, %if.end133.for.body126_crit_edge ], [ %block.0.lcssa, %for.cond122.preheader.for.body126_crit_edge ]
  %conv127 = zext i32 %block.1462 to i64
  %120 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %s_bdev.i, align 4
  %122 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %s_blocksize.i, align 16
  %call.i437 = tail call ptr @__bread_gfp(ptr noundef %121, i64 noundef %conv127, i32 noundef %123, i32 noundef 8) #7
  %124 = ptrtoint ptr %s_zmap to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %s_zmap, align 4
  %arrayidx130 = getelementptr ptr, ptr %125, i32 %i.1463
  %126 = ptrtoint ptr %arrayidx130 to i32
  call void @__asan_store4_noabort(i32 %126)
  store ptr %call.i437, ptr %arrayidx130, align 4
  %tobool131.not = icmp eq ptr %call.i437, null
  br i1 %tobool131.not, label %for.body126.out_freemap.sink.split_crit_edge, label %if.end133

for.body126.out_freemap.sink.split_crit_edge:     ; preds = %for.body126
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_freemap.sink.split

if.end133:                                        ; preds = %for.body126
  %inc134 = add i32 %block.1462, 1
  %inc136 = add nuw i32 %i.1463, 1
  %127 = ptrtoint ptr %s_zmap_blocks18 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %s_zmap_blocks18, align 4
  %cmp124 = icmp ult i32 %inc136, %128
  br i1 %cmp124, label %if.end133.for.body126_crit_edge, label %if.end133.for.end137_crit_edge

if.end133.for.end137_crit_edge:                   ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end137

if.end133.for.body126_crit_edge:                  ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body126

for.end137:                                       ; preds = %if.end133.for.end137_crit_edge, %for.cond122.preheader.for.end137_crit_edge
  %129 = ptrtoint ptr %s_imap to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %s_imap, align 8
  %131 = ptrtoint ptr %130 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %130, align 4
  %b_data140 = getelementptr inbounds %struct.buffer_head, ptr %132, i32 0, i32 5
  %133 = ptrtoint ptr %b_data140 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %b_data140, align 4
  %135 = ptrtoint ptr %134 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %134, align 4
  %or.i.i = or i32 %136, 16777216
  store i32 %or.i.i, ptr %134, align 4
  %137 = ptrtoint ptr %s_zmap to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %s_zmap, align 4
  %139 = ptrtoint ptr %138 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %138, align 4
  %b_data143 = getelementptr inbounds %struct.buffer_head, ptr %140, i32 0, i32 5
  %141 = ptrtoint ptr %b_data143 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %b_data143, align 4
  %143 = ptrtoint ptr %142 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %142, align 4
  %or.i.i438 = or i32 %144, 16777216
  store i32 %or.i.i438, ptr %142, align 4
  %145 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %call7.i.i, align 8
  %147 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %s_blocksize.i, align 16
  %mul.i = shl i32 %148, 3
  %add.i = add i32 %146, -1
  %sub.i = add i32 %add.i, %mul.i
  %div.i = udiv i32 %sub.i, %mul.i
  %149 = ptrtoint ptr %s_imap_blocks16 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %s_imap_blocks16, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %150, i32 %div.i)
  %cmp148 = icmp ult i32 %150, %div.i
  br i1 %cmp148, label %for.end137.do.end226.sink.split_crit_edge, label %if.end155

for.end137.do.end226.sink.split_crit_edge:        ; preds = %for.end137
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end226.sink.split

if.end155:                                        ; preds = %for.end137
  %151 = ptrtoint ptr %s_nzones14 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %s_nzones14, align 4
  %153 = ptrtoint ptr %s_firstdatazone20 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %s_firstdatazone20, align 8
  %sub = add i32 %152, %mul.i
  %sub.i440 = sub i32 %sub, %154
  %div.i441 = udiv i32 %sub.i440, %mul.i
  %155 = ptrtoint ptr %s_zmap_blocks18 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %s_zmap_blocks18, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %156, i32 %div.i441)
  %cmp162 = icmp ult i32 %156, %div.i441
  br i1 %cmp162, label %if.end155.do.end226.sink.split_crit_edge, label %if.end170

if.end155.do.end226.sink.split_crit_edge:         ; preds = %if.end155
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end226.sink.split

if.end170:                                        ; preds = %if.end155
  %s_op = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 6
  %157 = ptrtoint ptr %s_op to i32
  call void @__asan_store4_noabort(i32 %157)
  store ptr @minix_sops, ptr %s_op, align 4
  %s_time_min = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 35
  %158 = ptrtoint ptr %s_time_min to i32
  call void @__asan_store8_noabort(i32 %158)
  store i64 0, ptr %s_time_min, align 8
  %s_time_max = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 36
  %159 = ptrtoint ptr %s_time_max to i32
  call void @__asan_store8_noabort(i32 %159)
  store i64 4294967295, ptr %s_time_max, align 64
  %call171 = tail call ptr @minix_iget(ptr noundef %s, i32 noundef 1)
  %cmp.i442 = icmp ugt ptr %call171, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i442, label %if.then173, label %if.end175

if.then173:                                       ; preds = %if.end170
  call void @__sanitizer_cov_trace_pc() #9
  %160 = ptrtoint ptr %call171 to i32
  br label %out_no_root

if.end175:                                        ; preds = %if.end170
  %call176 = tail call ptr @d_make_root(ptr noundef %call171) #7
  %s_root = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 13
  %161 = ptrtoint ptr %s_root to i32
  call void @__asan_store4_noabort(i32 %161)
  store ptr %call176, ptr %s_root, align 64
  %tobool178.not = icmp eq ptr %call176, null
  br i1 %tobool178.not, label %if.end175.out_no_root_crit_edge, label %if.end180

if.end175.out_no_root_crit_edge:                  ; preds = %if.end175
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_no_root

if.end180:                                        ; preds = %if.end175
  %s_flags.i = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 10
  %162 = ptrtoint ptr %s_flags.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %s_flags.i, align 4
  %and.i = and i32 %163, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.then182, label %if.end180.if.end192_crit_edge

if.end180.if.end192_crit_edge:                    ; preds = %if.end180
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end192

if.then182:                                       ; preds = %if.end180
  %s_version183 = getelementptr inbounds %struct.minix_sb_info, ptr %call7.i.i, i32 0, i32 13
  %164 = ptrtoint ptr %s_version183 to i32
  call void @__asan_load2_noabort(i32 %164)
  %165 = load i16, ptr %s_version183, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %165)
  %cmp185.not = icmp eq i16 %165, 3
  br i1 %cmp185.not, label %if.then182.if.end191_crit_edge, label %if.then187

if.then182.if.end191_crit_edge:                   ; preds = %if.then182
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end191

if.then187:                                       ; preds = %if.then182
  call void @__sanitizer_cov_trace_pc() #9
  %166 = ptrtoint ptr %s_state to i32
  call void @__asan_load2_noabort(i32 %166)
  %167 = load i16, ptr %s_state, align 2
  %168 = and i16 %167, -2
  store i16 %168, ptr %s_state, align 2
  br label %if.end191

if.end191:                                        ; preds = %if.then187, %if.then182.if.end191_crit_edge
  tail call void @mark_buffer_dirty(ptr noundef nonnull %call.i) #7
  br label %if.end192

if.end192:                                        ; preds = %if.end191, %if.end180.if.end192_crit_edge
  %169 = ptrtoint ptr %s_mount_state to i32
  call void @__asan_load2_noabort(i32 %169)
  %170 = load i16, ptr %s_mount_state, align 8
  %conv194 = zext i16 %170 to i32
  %and195 = and i32 %conv194, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and195)
  %tobool196.not = icmp eq i32 %and195, 0
  br i1 %tobool196.not, label %do.end200, label %if.else203

do.end200:                                        ; preds = %if.end192
  call void @__sanitizer_cov_trace_pc() #9
  %call202 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11) #10
  br label %cleanup

if.else203:                                       ; preds = %if.end192
  %and206 = and i32 %conv194, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and206)
  %tobool207.not = icmp eq i32 %and206, 0
  br i1 %tobool207.not, label %if.else203.cleanup_crit_edge, label %do.end211

if.else203.cleanup_crit_edge:                     ; preds = %if.else203
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end211:                                        ; preds = %if.else203
  call void @__sanitizer_cov_trace_pc() #9
  %call213 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14) #10
  br label %cleanup

out_no_root:                                      ; preds = %if.end175.out_no_root_crit_edge, %if.then173
  %ret.0 = phi i32 [ %160, %if.then173 ], [ -12, %if.end175.out_no_root_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %silent)
  %tobool216.not = icmp eq i32 %silent, 0
  br i1 %tobool216.not, label %out_no_root.out_freemap.sink.split_crit_edge, label %out_no_root.out_freemap_crit_edge

out_no_root.out_freemap_crit_edge:                ; preds = %out_no_root
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_freemap

out_no_root.out_freemap.sink.split_crit_edge:     ; preds = %out_no_root
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_freemap.sink.split

do.end226.sink.split:                             ; preds = %if.end155.do.end226.sink.split_crit_edge, %for.end137.do.end226.sink.split_crit_edge
  %.str.5.sink = phi ptr [ @.str.5, %for.end137.do.end226.sink.split_crit_edge ], [ @.str.8, %if.end155.do.end226.sink.split_crit_edge ]
  %call154 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.5.sink) #10
  br label %out_freemap.sink.split

out_freemap.sink.split:                           ; preds = %do.end226.sink.split, %out_no_root.out_freemap.sink.split_crit_edge, %for.body126.out_freemap.sink.split_crit_edge, %for.body.out_freemap.sink.split_crit_edge
  %.str.17.sink = phi ptr [ @.str.17, %out_no_root.out_freemap.sink.split_crit_edge ], [ @.str.20, %do.end226.sink.split ], [ @.str.20, %for.body126.out_freemap.sink.split_crit_edge ], [ @.str.20, %for.body.out_freemap.sink.split_crit_edge ]
  %ret.1.ph = phi i32 [ %ret.0, %out_no_root.out_freemap.sink.split_crit_edge ], [ -22, %do.end226.sink.split ], [ -22, %for.body126.out_freemap.sink.split_crit_edge ], [ -22, %for.body.out_freemap.sink.split_crit_edge ]
  %call222 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.17.sink) #10
  br label %out_freemap

out_freemap:                                      ; preds = %out_freemap.sink.split, %out_no_root.out_freemap_crit_edge
  %ret.1 = phi i32 [ %ret.0, %out_no_root.out_freemap_crit_edge ], [ %ret.1.ph, %out_freemap.sink.split ]
  %171 = ptrtoint ptr %s_imap_blocks16 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %s_imap_blocks16, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %172)
  %cmp231464.not = icmp eq i32 %172, 0
  br i1 %cmp231464.not, label %out_freemap.for.cond239.preheader_crit_edge, label %out_freemap.for.body233_crit_edge

out_freemap.for.body233_crit_edge:                ; preds = %out_freemap
  br label %for.body233

out_freemap.for.cond239.preheader_crit_edge:      ; preds = %out_freemap
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond239.preheader

for.cond239.preheader:                            ; preds = %brelse.exit.for.cond239.preheader_crit_edge, %out_freemap.for.cond239.preheader_crit_edge
  %173 = ptrtoint ptr %s_zmap_blocks18 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %s_zmap_blocks18, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %174)
  %cmp241466.not = icmp eq i32 %174, 0
  br i1 %cmp241466.not, label %for.cond239.preheader.for.end248_crit_edge, label %for.cond239.preheader.for.body243_crit_edge

for.cond239.preheader.for.body243_crit_edge:      ; preds = %for.cond239.preheader
  br label %for.body243

for.cond239.preheader.for.end248_crit_edge:       ; preds = %for.cond239.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end248

for.body233:                                      ; preds = %brelse.exit.for.body233_crit_edge, %out_freemap.for.body233_crit_edge
  %i.2465 = phi i32 [ %inc237, %brelse.exit.for.body233_crit_edge ], [ 0, %out_freemap.for.body233_crit_edge ]
  %175 = ptrtoint ptr %s_imap to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %s_imap, align 8
  %arrayidx235 = getelementptr ptr, ptr %176, i32 %i.2465
  %177 = ptrtoint ptr %arrayidx235 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %arrayidx235, align 4
  %tobool.not.i = icmp eq ptr %178, null
  br i1 %tobool.not.i, label %for.body233.brelse.exit_crit_edge, label %if.then.i

for.body233.brelse.exit_crit_edge:                ; preds = %for.body233
  call void @__sanitizer_cov_trace_pc() #9
  br label %brelse.exit

if.then.i:                                        ; preds = %for.body233
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__brelse(ptr noundef nonnull %178) #7
  br label %brelse.exit

brelse.exit:                                      ; preds = %if.then.i, %for.body233.brelse.exit_crit_edge
  %inc237 = add nuw i32 %i.2465, 1
  %179 = ptrtoint ptr %s_imap_blocks16 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %s_imap_blocks16, align 8
  %cmp231 = icmp ult i32 %inc237, %180
  br i1 %cmp231, label %brelse.exit.for.body233_crit_edge, label %brelse.exit.for.cond239.preheader_crit_edge

brelse.exit.for.cond239.preheader_crit_edge:      ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond239.preheader

brelse.exit.for.body233_crit_edge:                ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body233

for.body243:                                      ; preds = %brelse.exit447.for.body243_crit_edge, %for.cond239.preheader.for.body243_crit_edge
  %i.3467 = phi i32 [ %inc247, %brelse.exit447.for.body243_crit_edge ], [ 0, %for.cond239.preheader.for.body243_crit_edge ]
  %181 = ptrtoint ptr %s_zmap to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %s_zmap, align 4
  %arrayidx245 = getelementptr ptr, ptr %182, i32 %i.3467
  %183 = ptrtoint ptr %arrayidx245 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %arrayidx245, align 4
  %tobool.not.i444 = icmp eq ptr %184, null
  br i1 %tobool.not.i444, label %for.body243.brelse.exit447_crit_edge, label %if.then.i445

for.body243.brelse.exit447_crit_edge:             ; preds = %for.body243
  call void @__sanitizer_cov_trace_pc() #9
  br label %brelse.exit447

if.then.i445:                                     ; preds = %for.body243
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__brelse(ptr noundef nonnull %184) #7
  br label %brelse.exit447

brelse.exit447:                                   ; preds = %if.then.i445, %for.body243.brelse.exit447_crit_edge
  %inc247 = add nuw i32 %i.3467, 1
  %185 = ptrtoint ptr %s_zmap_blocks18 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %s_zmap_blocks18, align 4
  %cmp241 = icmp ult i32 %inc247, %186
  br i1 %cmp241, label %brelse.exit447.for.body243_crit_edge, label %brelse.exit447.for.end248_crit_edge

brelse.exit447.for.end248_crit_edge:              ; preds = %brelse.exit447
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end248

brelse.exit447.for.body243_crit_edge:             ; preds = %brelse.exit447
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body243

for.end248:                                       ; preds = %brelse.exit447.for.end248_crit_edge, %for.cond239.preheader.for.end248_crit_edge
  %187 = ptrtoint ptr %s_imap to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %s_imap, align 8
  tail call void @kfree(ptr noundef %188) #7
  br label %brelse.exit451

out_no_map:                                       ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %silent)
  %tobool250.not = icmp eq i32 %silent, 0
  br i1 %tobool250.not, label %do.end254, label %out_no_map.brelse.exit451_crit_edge

out_no_map.brelse.exit451_crit_edge:              ; preds = %out_no_map
  call void @__sanitizer_cov_trace_pc() #9
  br label %brelse.exit451

do.end254:                                        ; preds = %out_no_map
  call void @__sanitizer_cov_trace_pc() #9
  %call256 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23) #10
  br label %brelse.exit451

out_illegal_sb:                                   ; preds = %land.lhs.true.i.out_illegal_sb_crit_edge, %lor.lhs.false.i.out_illegal_sb_crit_edge, %if.end99.out_illegal_sb_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %silent)
  %tobool258.not = icmp eq i32 %silent, 0
  br i1 %tobool258.not, label %do.end262, label %out_illegal_sb.brelse.exit451_crit_edge

out_illegal_sb.brelse.exit451_crit_edge:          ; preds = %out_illegal_sb
  call void @__sanitizer_cov_trace_pc() #9
  br label %brelse.exit451

do.end262:                                        ; preds = %out_illegal_sb
  call void @__sanitizer_cov_trace_pc() #9
  %call264 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26) #10
  br label %brelse.exit451

out_no_fs:                                        ; preds = %if.else58
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %silent)
  %tobool266.not = icmp eq i32 %silent, 0
  br i1 %tobool266.not, label %do.end270, label %out_no_fs.brelse.exit451_crit_edge

out_no_fs.brelse.exit451_crit_edge:               ; preds = %out_no_fs
  call void @__sanitizer_cov_trace_pc() #9
  br label %brelse.exit451

do.end270:                                        ; preds = %out_no_fs
  call void @__sanitizer_cov_trace_pc() #9
  %s_id = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 39
  %call272 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef %s_id) #10
  br label %brelse.exit451

brelse.exit451:                                   ; preds = %do.end270, %out_no_fs.brelse.exit451_crit_edge, %do.end262, %out_illegal_sb.brelse.exit451_crit_edge, %do.end254, %out_no_map.brelse.exit451_crit_edge, %for.end248
  %ret.2 = phi i32 [ %ret.1, %for.end248 ], [ -12, %out_no_map.brelse.exit451_crit_edge ], [ -12, %do.end254 ], [ -22, %out_illegal_sb.brelse.exit451_crit_edge ], [ -22, %do.end262 ], [ -22, %out_no_fs.brelse.exit451_crit_edge ], [ -22, %do.end270 ]
  tail call void @__brelse(ptr noundef nonnull %call.i) #7
  br label %out

do.end276:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call278 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32) #10
  br label %out

do.end281:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  %call283 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35) #10
  br label %out

out:                                              ; preds = %do.end281, %do.end276, %brelse.exit451
  %ret.3 = phi i32 [ %ret.2, %brelse.exit451 ], [ -22, %do.end281 ], [ -22, %do.end276 ]
  %189 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_store4_noabort(i32 %189)
  store ptr null, ptr %s_fs_info, align 16
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %cleanup

cleanup:                                          ; preds = %out, %do.end211, %if.else203.cleanup_crit_edge, %do.end200, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.3, %out ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.else203.cleanup_crit_edge ], [ 0, %do.end211 ], [ 0, %do.end200 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sb_set_blocksize(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_make_root(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mark_buffer_dirty(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__bread_gfp(ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal noalias ptr @minix_alloc_inode(ptr nocapture noundef readnone %sb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @minix_inode_cachep, align 4
  %call = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %0, i32 noundef 3264) #7
  %tobool.not = icmp eq ptr %call, null
  %vfs_inode = getelementptr inbounds %struct.minix_inode_info, ptr %call, i32 0, i32 1
  %retval.0 = select i1 %tobool.not, ptr null, ptr %vfs_inode
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @minix_free_in_core_inode(ptr noundef %inode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @minix_inode_cachep, align 4
  %add.ptr.i = getelementptr i8, ptr %inode, i32 -64
  tail call void @kmem_cache_free(ptr noundef %0, ptr noundef %add.ptr.i) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @minix_write_inode(ptr noundef readonly %inode, ptr nocapture noundef readonly %wbc) #0 align 64 {
entry:
  %bh.i35 = alloca ptr, align 4
  %bh.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %s_version = getelementptr inbounds %struct.minix_sb_info, ptr %3, i32 0, i32 13
  %4 = ptrtoint ptr %s_version to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %s_version, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %5)
  %cmp = icmp eq i16 %5, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bh.i) #7
  %6 = ptrtoint ptr %bh.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 -1 to ptr), ptr %bh.i, align 4, !annotation !101
  %add.ptr.i.i = getelementptr i8, ptr %inode, i32 -64
  %i_ino.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %7 = ptrtoint ptr %i_ino.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %i_ino.i, align 8
  %call1.i = call ptr @minix_V1_raw_inode(ptr noundef %1, i32 noundef %8, ptr noundef nonnull %bh.i) #7
  %tobool.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool.not.i, label %if.then.V1_minix_update_inode.exit_crit_edge, label %if.end.i

if.then.V1_minix_update_inode.exit_crit_edge:     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %V1_minix_update_inode.exit

if.end.i:                                         ; preds = %if.then
  %9 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %inode, align 8
  %11 = ptrtoint ptr %call1.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %10, ptr %call1.i, align 4
  %12 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %i_sb, align 4
  %s_user_ns.i.i.i = getelementptr inbounds %struct.super_block, ptr %13, i32 0, i32 53
  %14 = ptrtoint ptr %s_user_ns.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %s_user_ns.i.i.i, align 8
  %i_uid.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 2
  %16 = ptrtoint ptr %i_uid.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %.unpack.i.i = load i32, ptr %i_uid.i.i, align 4
  %17 = insertvalue [1 x i32] undef, i32 %.unpack.i.i, 0
  %call1.i.i = call i32 @from_kuid(ptr noundef %15, [1 x i32] %17) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %call1.i.i)
  %tobool4.not.i = icmp ult i32 %call1.i.i, 65536
  br i1 %tobool4.not.i, label %cond.false.i, label %cond.true.i

cond.true.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @fs_overflowuid to i32))
  %18 = load i32, ptr @fs_overflowuid, align 4
  br label %cond.end.i

cond.false.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %i_sb, align 4
  %s_user_ns.i.i72.i = getelementptr inbounds %struct.super_block, ptr %20, i32 0, i32 53
  %21 = ptrtoint ptr %s_user_ns.i.i72.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %s_user_ns.i.i72.i, align 8
  %23 = ptrtoint ptr %i_uid.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %.unpack.i74.i = load i32, ptr %i_uid.i.i, align 4
  %24 = insertvalue [1 x i32] undef, i32 %.unpack.i74.i, 0
  %call1.i75.i = call i32 @from_kuid(ptr noundef %22, [1 x i32] %24) #7
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %cond.true.i
  %cond.in.i = phi i32 [ %18, %cond.true.i ], [ %call1.i75.i, %cond.false.i ]
  %conv9.i = trunc i32 %cond.in.i to i16
  %i_uid.i = getelementptr inbounds %struct.minix_inode, ptr %call1.i, i32 0, i32 1
  %25 = ptrtoint ptr %i_uid.i to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %conv9.i, ptr %i_uid.i, align 2
  %26 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %i_sb, align 4
  %s_user_ns.i.i77.i = getelementptr inbounds %struct.super_block, ptr %27, i32 0, i32 53
  %28 = ptrtoint ptr %s_user_ns.i.i77.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %s_user_ns.i.i77.i, align 8
  %i_gid.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 3
  %30 = ptrtoint ptr %i_gid.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %.unpack.i78.i = load i32, ptr %i_gid.i.i, align 8
  %31 = insertvalue [1 x i32] undef, i32 %.unpack.i78.i, 0
  %call1.i79.i = call i32 @from_kgid(ptr noundef %29, [1 x i32] %31) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %call1.i79.i)
  %tobool12.not.i = icmp ult i32 %call1.i79.i, 65536
  br i1 %tobool12.not.i, label %cond.false16.i, label %cond.true13.i

cond.true13.i:                                    ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @fs_overflowgid to i32))
  %32 = load i32, ptr @fs_overflowgid, align 4
  br label %cond.end20.i

cond.false16.i:                                   ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %33 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %i_sb, align 4
  %s_user_ns.i.i81.i = getelementptr inbounds %struct.super_block, ptr %34, i32 0, i32 53
  %35 = ptrtoint ptr %s_user_ns.i.i81.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %s_user_ns.i.i81.i, align 8
  %37 = ptrtoint ptr %i_gid.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %.unpack.i83.i = load i32, ptr %i_gid.i.i, align 8
  %38 = insertvalue [1 x i32] undef, i32 %.unpack.i83.i, 0
  %call1.i84.i = call i32 @from_kgid(ptr noundef %36, [1 x i32] %38) #7
  br label %cond.end20.i

cond.end20.i:                                     ; preds = %cond.false16.i, %cond.true13.i
  %cond21.in.i = phi i32 [ %32, %cond.true13.i ], [ %call1.i84.i, %cond.false16.i ]
  %conv22.i = trunc i32 %cond21.in.i to i8
  %i_gid.i = getelementptr inbounds %struct.minix_inode, ptr %call1.i, i32 0, i32 4
  %39 = ptrtoint ptr %i_gid.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %conv22.i, ptr %i_gid.i, align 4
  %40 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 12
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %40, align 4
  %conv23.i = trunc i32 %42 to i8
  %i_nlinks.i = getelementptr inbounds %struct.minix_inode, ptr %call1.i, i32 0, i32 5
  %43 = ptrtoint ptr %i_nlinks.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %conv23.i, ptr %i_nlinks.i, align 1
  %i_size.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  %44 = ptrtoint ptr %i_size.i to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %i_size.i, align 8
  %conv24.i = trunc i64 %45 to i32
  %i_size25.i = getelementptr inbounds %struct.minix_inode, ptr %call1.i, i32 0, i32 2
  %46 = ptrtoint ptr %i_size25.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %conv24.i, ptr %i_size25.i, align 4
  %i_mtime.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 16
  %47 = ptrtoint ptr %i_mtime.i to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %i_mtime.i, align 8
  %conv26.i = trunc i64 %48 to i32
  %i_time.i = getelementptr inbounds %struct.minix_inode, ptr %call1.i, i32 0, i32 3
  %49 = ptrtoint ptr %i_time.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %conv26.i, ptr %i_time.i, align 4
  %50 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %inode, align 8
  %52 = and i16 %51, -4096
  %53 = zext i16 %52 to i64
  call void @__sanitizer_cov_trace_switch(i64 %53, ptr @__sancov_gen_cov_switch_values.50)
  switch i16 %52, label %for.body.preheader.i [
    i16 8192, label %cond.end20.i.if.then36.i_crit_edge
    i16 24576, label %cond.end20.i.if.then36.i_crit_edge75
  ]

cond.end20.i.if.then36.i_crit_edge75:             ; preds = %cond.end20.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then36.i

cond.end20.i.if.then36.i_crit_edge:               ; preds = %cond.end20.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then36.i

for.body.preheader.i:                             ; preds = %cond.end20.i
  call void @__sanitizer_cov_trace_pc() #9
  %54 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %add.ptr.i.i, align 2
  %arrayidx42.i = getelementptr %struct.minix_inode, ptr %call1.i, i32 0, i32 6, i32 0
  %56 = ptrtoint ptr %arrayidx42.i to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 %55, ptr %arrayidx42.i, align 2
  %arrayidx40.1.i = getelementptr i8, ptr %inode, i32 -62
  %57 = ptrtoint ptr %arrayidx40.1.i to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %arrayidx40.1.i, align 2
  %arrayidx42.1.i = getelementptr %struct.minix_inode, ptr %call1.i, i32 0, i32 6, i32 1
  %59 = ptrtoint ptr %arrayidx42.1.i to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 %58, ptr %arrayidx42.1.i, align 2
  %arrayidx40.2.i = getelementptr i8, ptr %inode, i32 -60
  %60 = ptrtoint ptr %arrayidx40.2.i to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %arrayidx40.2.i, align 2
  %arrayidx42.2.i = getelementptr %struct.minix_inode, ptr %call1.i, i32 0, i32 6, i32 2
  %62 = ptrtoint ptr %arrayidx42.2.i to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 %61, ptr %arrayidx42.2.i, align 2
  %arrayidx40.3.i = getelementptr i8, ptr %inode, i32 -58
  %63 = ptrtoint ptr %arrayidx40.3.i to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %arrayidx40.3.i, align 2
  %arrayidx42.3.i = getelementptr %struct.minix_inode, ptr %call1.i, i32 0, i32 6, i32 3
  %65 = ptrtoint ptr %arrayidx42.3.i to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 %64, ptr %arrayidx42.3.i, align 2
  %arrayidx40.4.i = getelementptr i8, ptr %inode, i32 -56
  %66 = ptrtoint ptr %arrayidx40.4.i to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %arrayidx40.4.i, align 2
  %arrayidx42.4.i = getelementptr %struct.minix_inode, ptr %call1.i, i32 0, i32 6, i32 4
  %68 = ptrtoint ptr %arrayidx42.4.i to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 %67, ptr %arrayidx42.4.i, align 2
  %arrayidx40.5.i = getelementptr i8, ptr %inode, i32 -54
  %69 = ptrtoint ptr %arrayidx40.5.i to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %arrayidx40.5.i, align 2
  %arrayidx42.5.i = getelementptr %struct.minix_inode, ptr %call1.i, i32 0, i32 6, i32 5
  %71 = ptrtoint ptr %arrayidx42.5.i to i32
  call void @__asan_store2_noabort(i32 %71)
  store i16 %70, ptr %arrayidx42.5.i, align 2
  %arrayidx40.6.i = getelementptr i8, ptr %inode, i32 -52
  %72 = ptrtoint ptr %arrayidx40.6.i to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %arrayidx40.6.i, align 2
  %arrayidx42.6.i = getelementptr %struct.minix_inode, ptr %call1.i, i32 0, i32 6, i32 6
  %74 = ptrtoint ptr %arrayidx42.6.i to i32
  call void @__asan_store2_noabort(i32 %74)
  store i16 %73, ptr %arrayidx42.6.i, align 2
  %arrayidx40.7.i = getelementptr i8, ptr %inode, i32 -50
  %75 = ptrtoint ptr %arrayidx40.7.i to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %arrayidx40.7.i, align 2
  %arrayidx42.7.i = getelementptr %struct.minix_inode, ptr %call1.i, i32 0, i32 6, i32 7
  %77 = ptrtoint ptr %arrayidx42.7.i to i32
  call void @__asan_store2_noabort(i32 %77)
  store i16 %76, ptr %arrayidx42.7.i, align 2
  %arrayidx40.8.i = getelementptr i8, ptr %inode, i32 -48
  %78 = ptrtoint ptr %arrayidx40.8.i to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %arrayidx40.8.i, align 2
  %arrayidx42.8.i = getelementptr %struct.minix_inode, ptr %call1.i, i32 0, i32 6, i32 8
  %80 = ptrtoint ptr %arrayidx42.8.i to i32
  call void @__asan_store2_noabort(i32 %80)
  store i16 %79, ptr %arrayidx42.8.i, align 2
  br label %if.end43.i

if.then36.i:                                      ; preds = %cond.end20.i.if.then36.i_crit_edge, %cond.end20.i.if.then36.i_crit_edge75
  %i_rdev.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 13
  %81 = ptrtoint ptr %i_rdev.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %i_rdev.i, align 8
  %83 = lshr i32 %82, 12
  %shl.i.i = and i32 %83, 65280
  %or.i.i = or i32 %shl.i.i, %82
  %conv.i.i = trunc i32 %or.i.i to i16
  %i_zone.i = getelementptr inbounds %struct.minix_inode, ptr %call1.i, i32 0, i32 6
  %84 = ptrtoint ptr %i_zone.i to i32
  call void @__asan_store2_noabort(i32 %84)
  store i16 %conv.i.i, ptr %i_zone.i, align 2
  br label %if.end43.i

if.end43.i:                                       ; preds = %if.then36.i, %for.body.preheader.i
  %85 = ptrtoint ptr %bh.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %bh.i, align 4
  call void @mark_buffer_dirty(ptr noundef %86) #7
  %87 = ptrtoint ptr %bh.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %bh.i, align 4
  br label %V1_minix_update_inode.exit

V1_minix_update_inode.exit:                       ; preds = %if.end43.i, %if.then.V1_minix_update_inode.exit_crit_edge
  %retval.0.i = phi ptr [ %88, %if.end43.i ], [ null, %if.then.V1_minix_update_inode.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bh.i) #7
  br label %if.end

if.else:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bh.i35) #7
  %89 = ptrtoint ptr %bh.i35 to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr inttoptr (i32 -1 to ptr), ptr %bh.i35, align 4, !annotation !101
  %add.ptr.i.i36 = getelementptr i8, ptr %inode, i32 -64
  %i_ino.i38 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %90 = ptrtoint ptr %i_ino.i38 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %i_ino.i38, align 8
  %call1.i39 = call ptr @minix_V2_raw_inode(ptr noundef %1, i32 noundef %91, ptr noundef nonnull %bh.i35) #7
  %tobool.not.i40 = icmp eq ptr %call1.i39, null
  br i1 %tobool.not.i40, label %if.else.V2_minix_update_inode.exit_crit_edge, label %if.end.i46

if.else.V2_minix_update_inode.exit_crit_edge:     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %V2_minix_update_inode.exit

if.end.i46:                                       ; preds = %if.else
  %92 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %inode, align 8
  %94 = ptrtoint ptr %call1.i39 to i32
  call void @__asan_store2_noabort(i32 %94)
  store i16 %93, ptr %call1.i39, align 4
  %95 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %i_sb, align 4
  %s_user_ns.i.i.i41 = getelementptr inbounds %struct.super_block, ptr %96, i32 0, i32 53
  %97 = ptrtoint ptr %s_user_ns.i.i.i41 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %s_user_ns.i.i.i41, align 8
  %i_uid.i.i42 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 2
  %99 = ptrtoint ptr %i_uid.i.i42 to i32
  call void @__asan_load4_noabort(i32 %99)
  %.unpack.i.i43 = load i32, ptr %i_uid.i.i42, align 4
  %100 = insertvalue [1 x i32] undef, i32 %.unpack.i.i43, 0
  %call1.i.i44 = call i32 @from_kuid(ptr noundef %98, [1 x i32] %100) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %call1.i.i44)
  %tobool4.not.i45 = icmp ult i32 %call1.i.i44, 65536
  br i1 %tobool4.not.i45, label %cond.false.i48, label %cond.true.i47

cond.true.i47:                                    ; preds = %if.end.i46
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @fs_overflowuid to i32))
  %101 = load i32, ptr @fs_overflowuid, align 4
  br label %cond.end.i54

cond.false.i48:                                   ; preds = %if.end.i46
  call void @__sanitizer_cov_trace_pc() #9
  %102 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %i_sb, align 4
  %s_user_ns.i.i84.i = getelementptr inbounds %struct.super_block, ptr %103, i32 0, i32 53
  %104 = ptrtoint ptr %s_user_ns.i.i84.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %s_user_ns.i.i84.i, align 8
  %106 = ptrtoint ptr %i_uid.i.i42 to i32
  call void @__asan_load4_noabort(i32 %106)
  %.unpack.i86.i = load i32, ptr %i_uid.i.i42, align 4
  %107 = insertvalue [1 x i32] undef, i32 %.unpack.i86.i, 0
  %call1.i87.i = call i32 @from_kuid(ptr noundef %105, [1 x i32] %107) #7
  br label %cond.end.i54

cond.end.i54:                                     ; preds = %cond.false.i48, %cond.true.i47
  %cond.in.i49 = phi i32 [ %101, %cond.true.i47 ], [ %call1.i87.i, %cond.false.i48 ]
  %conv9.i50 = trunc i32 %cond.in.i49 to i16
  %i_uid.i51 = getelementptr inbounds %struct.minix2_inode, ptr %call1.i39, i32 0, i32 2
  %108 = ptrtoint ptr %i_uid.i51 to i32
  call void @__asan_store2_noabort(i32 %108)
  store i16 %conv9.i50, ptr %i_uid.i51, align 4
  %109 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %i_sb, align 4
  %s_user_ns.i.i89.i = getelementptr inbounds %struct.super_block, ptr %110, i32 0, i32 53
  %111 = ptrtoint ptr %s_user_ns.i.i89.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %s_user_ns.i.i89.i, align 8
  %i_gid.i.i52 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 3
  %113 = ptrtoint ptr %i_gid.i.i52 to i32
  call void @__asan_load4_noabort(i32 %113)
  %.unpack.i90.i = load i32, ptr %i_gid.i.i52, align 8
  %114 = insertvalue [1 x i32] undef, i32 %.unpack.i90.i, 0
  %call1.i91.i = call i32 @from_kgid(ptr noundef %112, [1 x i32] %114) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %call1.i91.i)
  %tobool12.not.i53 = icmp ult i32 %call1.i91.i, 65536
  br i1 %tobool12.not.i53, label %cond.false16.i56, label %cond.true13.i55

cond.true13.i55:                                  ; preds = %cond.end.i54
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @fs_overflowgid to i32))
  %115 = load i32, ptr @fs_overflowgid, align 4
  br label %cond.end20.i67

cond.false16.i56:                                 ; preds = %cond.end.i54
  call void @__sanitizer_cov_trace_pc() #9
  %116 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %i_sb, align 4
  %s_user_ns.i.i93.i = getelementptr inbounds %struct.super_block, ptr %117, i32 0, i32 53
  %118 = ptrtoint ptr %s_user_ns.i.i93.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %s_user_ns.i.i93.i, align 8
  %120 = ptrtoint ptr %i_gid.i.i52 to i32
  call void @__asan_load4_noabort(i32 %120)
  %.unpack.i95.i = load i32, ptr %i_gid.i.i52, align 8
  %121 = insertvalue [1 x i32] undef, i32 %.unpack.i95.i, 0
  %call1.i96.i = call i32 @from_kgid(ptr noundef %119, [1 x i32] %121) #7
  br label %cond.end20.i67

cond.end20.i67:                                   ; preds = %cond.false16.i56, %cond.true13.i55
  %cond21.in.i57 = phi i32 [ %115, %cond.true13.i55 ], [ %call1.i96.i, %cond.false16.i56 ]
  %conv22.i58 = trunc i32 %cond21.in.i57 to i16
  %i_gid.i59 = getelementptr inbounds %struct.minix2_inode, ptr %call1.i39, i32 0, i32 3
  %122 = ptrtoint ptr %i_gid.i59 to i32
  call void @__asan_store2_noabort(i32 %122)
  store i16 %conv22.i58, ptr %i_gid.i59, align 2
  %123 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 12
  %124 = ptrtoint ptr %123 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %123, align 4
  %conv23.i60 = trunc i32 %125 to i16
  %i_nlinks.i61 = getelementptr inbounds %struct.minix2_inode, ptr %call1.i39, i32 0, i32 1
  %126 = ptrtoint ptr %i_nlinks.i61 to i32
  call void @__asan_store2_noabort(i32 %126)
  store i16 %conv23.i60, ptr %i_nlinks.i61, align 2
  %i_size.i62 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  %127 = ptrtoint ptr %i_size.i62 to i32
  call void @__asan_load8_noabort(i32 %127)
  %128 = load i64, ptr %i_size.i62, align 8
  %conv24.i63 = trunc i64 %128 to i32
  %i_size25.i64 = getelementptr inbounds %struct.minix2_inode, ptr %call1.i39, i32 0, i32 4
  %129 = ptrtoint ptr %i_size25.i64 to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 %conv24.i63, ptr %i_size25.i64, align 4
  %i_mtime.i65 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 16
  %130 = ptrtoint ptr %i_mtime.i65 to i32
  call void @__asan_load8_noabort(i32 %130)
  %131 = load i64, ptr %i_mtime.i65, align 8
  %conv26.i66 = trunc i64 %131 to i32
  %i_mtime27.i = getelementptr inbounds %struct.minix2_inode, ptr %call1.i39, i32 0, i32 6
  %132 = ptrtoint ptr %i_mtime27.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 %conv26.i66, ptr %i_mtime27.i, align 4
  %i_atime.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 15
  %133 = ptrtoint ptr %i_atime.i to i32
  call void @__asan_load8_noabort(i32 %133)
  %134 = load i64, ptr %i_atime.i, align 8
  %conv29.i = trunc i64 %134 to i32
  %i_atime30.i = getelementptr inbounds %struct.minix2_inode, ptr %call1.i39, i32 0, i32 5
  %135 = ptrtoint ptr %i_atime30.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 %conv29.i, ptr %i_atime30.i, align 4
  %i_ctime.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 17
  %136 = ptrtoint ptr %i_ctime.i to i32
  call void @__asan_load8_noabort(i32 %136)
  %137 = load i64, ptr %i_ctime.i, align 8
  %conv32.i = trunc i64 %137 to i32
  %i_ctime33.i = getelementptr inbounds %struct.minix2_inode, ptr %call1.i39, i32 0, i32 7
  %138 = ptrtoint ptr %i_ctime33.i to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 %conv32.i, ptr %i_ctime33.i, align 4
  %139 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %139)
  %140 = load i16, ptr %inode, align 8
  %141 = and i16 %140, -4096
  %142 = zext i16 %141 to i64
  call void @__sanitizer_cov_trace_switch(i64 %142, ptr @__sancov_gen_cov_switch_values.51)
  switch i16 %141, label %for.body.preheader.i68 [
    i16 8192, label %cond.end20.i67.if.then43.i_crit_edge
    i16 24576, label %cond.end20.i67.if.then43.i_crit_edge76
  ]

cond.end20.i67.if.then43.i_crit_edge76:           ; preds = %cond.end20.i67
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then43.i

cond.end20.i67.if.then43.i_crit_edge:             ; preds = %cond.end20.i67
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then43.i

for.body.preheader.i68:                           ; preds = %cond.end20.i67
  call void @__sanitizer_cov_trace_pc() #9
  %143 = ptrtoint ptr %add.ptr.i.i36 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %add.ptr.i.i36, align 4
  %arrayidx50.i = getelementptr %struct.minix2_inode, ptr %call1.i39, i32 0, i32 8, i32 0
  %145 = ptrtoint ptr %arrayidx50.i to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 %144, ptr %arrayidx50.i, align 4
  %arrayidx48.1.i = getelementptr i8, ptr %inode, i32 -60
  %146 = ptrtoint ptr %arrayidx48.1.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %arrayidx48.1.i, align 4
  %arrayidx50.1.i = getelementptr %struct.minix2_inode, ptr %call1.i39, i32 0, i32 8, i32 1
  %148 = ptrtoint ptr %arrayidx50.1.i to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 %147, ptr %arrayidx50.1.i, align 4
  %arrayidx48.2.i = getelementptr i8, ptr %inode, i32 -56
  %149 = ptrtoint ptr %arrayidx48.2.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %arrayidx48.2.i, align 4
  %arrayidx50.2.i = getelementptr %struct.minix2_inode, ptr %call1.i39, i32 0, i32 8, i32 2
  %151 = ptrtoint ptr %arrayidx50.2.i to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 %150, ptr %arrayidx50.2.i, align 4
  %arrayidx48.3.i = getelementptr i8, ptr %inode, i32 -52
  %152 = ptrtoint ptr %arrayidx48.3.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %arrayidx48.3.i, align 4
  %arrayidx50.3.i = getelementptr %struct.minix2_inode, ptr %call1.i39, i32 0, i32 8, i32 3
  %154 = ptrtoint ptr %arrayidx50.3.i to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 %153, ptr %arrayidx50.3.i, align 4
  %arrayidx48.4.i = getelementptr i8, ptr %inode, i32 -48
  %155 = ptrtoint ptr %arrayidx48.4.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %arrayidx48.4.i, align 4
  %arrayidx50.4.i = getelementptr %struct.minix2_inode, ptr %call1.i39, i32 0, i32 8, i32 4
  %157 = ptrtoint ptr %arrayidx50.4.i to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 %156, ptr %arrayidx50.4.i, align 4
  %arrayidx48.5.i = getelementptr i8, ptr %inode, i32 -44
  %158 = ptrtoint ptr %arrayidx48.5.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %arrayidx48.5.i, align 4
  %arrayidx50.5.i = getelementptr %struct.minix2_inode, ptr %call1.i39, i32 0, i32 8, i32 5
  %160 = ptrtoint ptr %arrayidx50.5.i to i32
  call void @__asan_store4_noabort(i32 %160)
  store i32 %159, ptr %arrayidx50.5.i, align 4
  %arrayidx48.6.i = getelementptr i8, ptr %inode, i32 -40
  %161 = ptrtoint ptr %arrayidx48.6.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %arrayidx48.6.i, align 4
  %arrayidx50.6.i = getelementptr %struct.minix2_inode, ptr %call1.i39, i32 0, i32 8, i32 6
  %163 = ptrtoint ptr %arrayidx50.6.i to i32
  call void @__asan_store4_noabort(i32 %163)
  store i32 %162, ptr %arrayidx50.6.i, align 4
  %arrayidx48.7.i = getelementptr i8, ptr %inode, i32 -36
  %164 = ptrtoint ptr %arrayidx48.7.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %arrayidx48.7.i, align 4
  %arrayidx50.7.i = getelementptr %struct.minix2_inode, ptr %call1.i39, i32 0, i32 8, i32 7
  %166 = ptrtoint ptr %arrayidx50.7.i to i32
  call void @__asan_store4_noabort(i32 %166)
  store i32 %165, ptr %arrayidx50.7.i, align 4
  %arrayidx48.8.i = getelementptr i8, ptr %inode, i32 -32
  %167 = ptrtoint ptr %arrayidx48.8.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %arrayidx48.8.i, align 4
  %arrayidx50.8.i = getelementptr %struct.minix2_inode, ptr %call1.i39, i32 0, i32 8, i32 8
  %169 = ptrtoint ptr %arrayidx50.8.i to i32
  call void @__asan_store4_noabort(i32 %169)
  store i32 %168, ptr %arrayidx50.8.i, align 4
  %arrayidx48.9.i = getelementptr i8, ptr %inode, i32 -28
  %170 = ptrtoint ptr %arrayidx48.9.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %arrayidx48.9.i, align 4
  %arrayidx50.9.i = getelementptr %struct.minix2_inode, ptr %call1.i39, i32 0, i32 8, i32 9
  %172 = ptrtoint ptr %arrayidx50.9.i to i32
  call void @__asan_store4_noabort(i32 %172)
  store i32 %171, ptr %arrayidx50.9.i, align 4
  br label %if.end51.i

if.then43.i:                                      ; preds = %cond.end20.i67.if.then43.i_crit_edge, %cond.end20.i67.if.then43.i_crit_edge76
  %i_rdev.i69 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 13
  %173 = ptrtoint ptr %i_rdev.i69 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %i_rdev.i69, align 8
  %175 = lshr i32 %174, 12
  %shl.i.i70 = and i32 %175, 65280
  %.masked.i = and i32 %174, 65535
  %conv45.i = or i32 %shl.i.i70, %.masked.i
  %i_zone.i71 = getelementptr inbounds %struct.minix2_inode, ptr %call1.i39, i32 0, i32 8
  %176 = ptrtoint ptr %i_zone.i71 to i32
  call void @__asan_store4_noabort(i32 %176)
  store i32 %conv45.i, ptr %i_zone.i71, align 4
  br label %if.end51.i

if.end51.i:                                       ; preds = %if.then43.i, %for.body.preheader.i68
  %177 = ptrtoint ptr %bh.i35 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %bh.i35, align 4
  call void @mark_buffer_dirty(ptr noundef %178) #7
  %179 = ptrtoint ptr %bh.i35 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %bh.i35, align 4
  br label %V2_minix_update_inode.exit

V2_minix_update_inode.exit:                       ; preds = %if.end51.i, %if.else.V2_minix_update_inode.exit_crit_edge
  %retval.0.i72 = phi ptr [ %180, %if.end51.i ], [ null, %if.else.V2_minix_update_inode.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bh.i35) #7
  br label %if.end

if.end:                                           ; preds = %V2_minix_update_inode.exit, %V1_minix_update_inode.exit
  %bh.0 = phi ptr [ %retval.0.i, %V1_minix_update_inode.exit ], [ %retval.0.i72, %V2_minix_update_inode.exit ]
  %tobool.not = icmp eq ptr %bh.0, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %sync_mode = getelementptr inbounds %struct.writeback_control, ptr %wbc, i32 0, i32 4
  %181 = ptrtoint ptr %sync_mode to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %sync_mode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %182)
  %cmp6 = icmp eq i32 %182, 1
  br i1 %cmp6, label %land.lhs.true, label %if.end5.brelse.exit_crit_edge

if.end5.brelse.exit_crit_edge:                    ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %brelse.exit

land.lhs.true:                                    ; preds = %if.end5
  %183 = ptrtoint ptr %bh.0 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load volatile i32, ptr %bh.0, align 4
  %185 = and i32 %184, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %185)
  %tobool9.not = icmp eq i32 %185, 0
  br i1 %tobool9.not, label %land.lhs.true.brelse.exit_crit_edge, label %if.then10

land.lhs.true.brelse.exit_crit_edge:              ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %brelse.exit

if.then10:                                        ; preds = %land.lhs.true
  %call11 = call i32 @sync_dirty_buffer(ptr noundef nonnull %bh.0) #7
  %186 = ptrtoint ptr %bh.0 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load volatile i32, ptr %bh.0, align 4
  %188 = and i32 %187, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %188)
  %tobool13.not = icmp eq i32 %188, 0
  br i1 %tobool13.not, label %if.then10.brelse.exit_crit_edge, label %land.lhs.true14

if.then10.brelse.exit_crit_edge:                  ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #9
  br label %brelse.exit

land.lhs.true14:                                  ; preds = %if.then10
  %189 = ptrtoint ptr %bh.0 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load volatile i32, ptr %bh.0, align 4
  %and1.i.i34 = and i32 %190, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i34)
  %tobool16.not = icmp eq i32 %and1.i.i34, 0
  br i1 %tobool16.not, label %do.end, label %land.lhs.true14.brelse.exit_crit_edge

land.lhs.true14.brelse.exit_crit_edge:            ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #9
  br label %brelse.exit

do.end:                                           ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #9
  %191 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %i_sb, align 4
  %s_id = getelementptr inbounds %struct.super_block, ptr %192, i32 0, i32 39
  %i_ino = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %193 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %i_ino, align 8
  %call19 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef %s_id, i32 noundef %194) #10
  br label %brelse.exit

brelse.exit:                                      ; preds = %do.end, %land.lhs.true14.brelse.exit_crit_edge, %if.then10.brelse.exit_crit_edge, %land.lhs.true.brelse.exit_crit_edge, %if.end5.brelse.exit_crit_edge
  %err.0 = phi i32 [ 0, %land.lhs.true14.brelse.exit_crit_edge ], [ -5, %do.end ], [ 0, %if.then10.brelse.exit_crit_edge ], [ 0, %land.lhs.true.brelse.exit_crit_edge ], [ 0, %if.end5.brelse.exit_crit_edge ]
  call void @__brelse(ptr noundef nonnull %bh.0) #7
  br label %cleanup

cleanup:                                          ; preds = %brelse.exit, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %brelse.exit ], [ -5, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @minix_evict_inode(ptr noundef %inode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %i_data = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 46
  tail call void @truncate_inode_pages_final(ptr noundef %i_data) #7
  %0 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 12
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  %i_size = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  %3 = ptrtoint ptr %i_size to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 0, ptr %i_size, align 8
  %4 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %inode, align 8
  %6 = and i16 %5, -4096
  %7 = zext i16 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.52)
  switch i16 %6, label %if.then.if.end_crit_edge [
    i16 -32768, label %if.then.if.end.i_crit_edge
    i16 16384, label %if.then.if.end.i_crit_edge11
    i16 -24576, label %if.then.if.end.i_crit_edge12
  ]

if.then.if.end.i_crit_edge12:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.if.end.i_crit_edge11:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.if.end.i_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i:                                         ; preds = %if.then.if.end.i_crit_edge, %if.then.if.end.i_crit_edge11, %if.then.if.end.i_crit_edge12
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %8 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %9, i32 0, i32 33
  %10 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %s_fs_info.i.i, align 16
  %s_version.i = getelementptr inbounds %struct.minix_sb_info, ptr %11, i32 0, i32 13
  %12 = ptrtoint ptr %s_version.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %s_version.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %13)
  %cmp14.i = icmp eq i16 %13, 1
  br i1 %cmp14.i, label %if.then16.i, label %if.else.i

if.then16.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @V1_minix_truncate(ptr noundef %inode) #7
  br label %if.end

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @V2_minix_truncate(ptr noundef %inode) #7
  br label %if.end

if.end:                                           ; preds = %if.else.i, %if.then16.i, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  tail call void @invalidate_inode_buffers(ptr noundef %inode) #7
  tail call void @clear_inode(ptr noundef %inode) #7
  %14 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool1.not = icmp eq i32 %15, 0
  br i1 %tobool1.not, label %if.then2, label %if.end.if.end3_crit_edge

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @minix_free_inode(ptr noundef %inode) #7
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end.if.end3_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @minix_put_super(ptr nocapture noundef %sb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  %s_flags.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 10
  %2 = ptrtoint ptr %s_flags.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %s_flags.i, align 4
  %and.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.then, label %entry.if.end4_crit_edge

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

if.then:                                          ; preds = %entry
  %s_version = getelementptr inbounds %struct.minix_sb_info, ptr %1, i32 0, i32 13
  %4 = ptrtoint ptr %s_version to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %s_version, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %5)
  %cmp.not = icmp eq i16 %5, 3
  br i1 %cmp.not, label %if.then.if.end_crit_edge, label %if.then3

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %s_mount_state = getelementptr inbounds %struct.minix_sb_info, ptr %1, i32 0, i32 12
  %6 = ptrtoint ptr %s_mount_state to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %s_mount_state, align 4
  %s_ms = getelementptr inbounds %struct.minix_sb_info, ptr %1, i32 0, i32 11
  %8 = ptrtoint ptr %s_ms to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %s_ms, align 4
  %s_state = getelementptr inbounds %struct.minix_super_block, ptr %9, i32 0, i32 8
  %10 = ptrtoint ptr %s_state to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %7, ptr %s_state, align 2
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.then.if.end_crit_edge
  %s_sbh = getelementptr inbounds %struct.minix_sb_info, ptr %1, i32 0, i32 10
  %11 = ptrtoint ptr %s_sbh to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %s_sbh, align 4
  tail call void @mark_buffer_dirty(ptr noundef %12) #7
  br label %if.end4

if.end4:                                          ; preds = %if.end, %entry.if.end4_crit_edge
  %s_imap_blocks = getelementptr inbounds %struct.minix_sb_info, ptr %1, i32 0, i32 2
  %13 = ptrtoint ptr %s_imap_blocks to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %s_imap_blocks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp540.not = icmp eq i32 %14, 0
  br i1 %cmp540.not, label %if.end4.for.cond7.preheader_crit_edge, label %for.body.lr.ph

if.end4.for.cond7.preheader_crit_edge:            ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond7.preheader

for.body.lr.ph:                                   ; preds = %if.end4
  %s_imap = getelementptr inbounds %struct.minix_sb_info, ptr %1, i32 0, i32 8
  br label %for.body

for.cond7.preheader:                              ; preds = %brelse.exit.for.cond7.preheader_crit_edge, %if.end4.for.cond7.preheader_crit_edge
  %s_zmap_blocks = getelementptr inbounds %struct.minix_sb_info, ptr %1, i32 0, i32 3
  %15 = ptrtoint ptr %s_zmap_blocks to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %s_zmap_blocks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp842.not = icmp eq i32 %16, 0
  br i1 %cmp842.not, label %for.cond7.preheader.for.end14_crit_edge, label %for.body10.lr.ph

for.cond7.preheader.for.end14_crit_edge:          ; preds = %for.cond7.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end14

for.body10.lr.ph:                                 ; preds = %for.cond7.preheader
  %s_zmap = getelementptr inbounds %struct.minix_sb_info, ptr %1, i32 0, i32 9
  br label %for.body10

for.body:                                         ; preds = %brelse.exit.for.body_crit_edge, %for.body.lr.ph
  %i.041 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %brelse.exit.for.body_crit_edge ]
  %17 = ptrtoint ptr %s_imap to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %s_imap, align 4
  %arrayidx = getelementptr ptr, ptr %18, i32 %i.041
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx, align 4
  %tobool.not.i = icmp eq ptr %20, null
  br i1 %tobool.not.i, label %for.body.brelse.exit_crit_edge, label %if.then.i

for.body.brelse.exit_crit_edge:                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %brelse.exit

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__brelse(ptr noundef nonnull %20) #7
  br label %brelse.exit

brelse.exit:                                      ; preds = %if.then.i, %for.body.brelse.exit_crit_edge
  %inc = add nuw i32 %i.041, 1
  %21 = ptrtoint ptr %s_imap_blocks to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %s_imap_blocks, align 4
  %cmp5 = icmp ult i32 %inc, %22
  br i1 %cmp5, label %brelse.exit.for.body_crit_edge, label %brelse.exit.for.cond7.preheader_crit_edge

brelse.exit.for.cond7.preheader_crit_edge:        ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond7.preheader

brelse.exit.for.body_crit_edge:                   ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body10:                                       ; preds = %brelse.exit36.for.body10_crit_edge, %for.body10.lr.ph
  %i.143 = phi i32 [ 0, %for.body10.lr.ph ], [ %inc13, %brelse.exit36.for.body10_crit_edge ]
  %23 = ptrtoint ptr %s_zmap to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %s_zmap, align 4
  %arrayidx11 = getelementptr ptr, ptr %24, i32 %i.143
  %25 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx11, align 4
  %tobool.not.i34 = icmp eq ptr %26, null
  br i1 %tobool.not.i34, label %for.body10.brelse.exit36_crit_edge, label %if.then.i35

for.body10.brelse.exit36_crit_edge:               ; preds = %for.body10
  call void @__sanitizer_cov_trace_pc() #9
  br label %brelse.exit36

if.then.i35:                                      ; preds = %for.body10
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__brelse(ptr noundef nonnull %26) #7
  br label %brelse.exit36

brelse.exit36:                                    ; preds = %if.then.i35, %for.body10.brelse.exit36_crit_edge
  %inc13 = add nuw i32 %i.143, 1
  %27 = ptrtoint ptr %s_zmap_blocks to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %s_zmap_blocks, align 4
  %cmp8 = icmp ult i32 %inc13, %28
  br i1 %cmp8, label %brelse.exit36.for.body10_crit_edge, label %brelse.exit36.for.end14_crit_edge

brelse.exit36.for.end14_crit_edge:                ; preds = %brelse.exit36
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end14

brelse.exit36.for.body10_crit_edge:               ; preds = %brelse.exit36
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body10

for.end14:                                        ; preds = %brelse.exit36.for.end14_crit_edge, %for.cond7.preheader.for.end14_crit_edge
  %s_sbh15 = getelementptr inbounds %struct.minix_sb_info, ptr %1, i32 0, i32 10
  %29 = ptrtoint ptr %s_sbh15 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %s_sbh15, align 4
  %tobool.not.i37 = icmp eq ptr %30, null
  br i1 %tobool.not.i37, label %for.end14.brelse.exit39_crit_edge, label %if.then.i38

for.end14.brelse.exit39_crit_edge:                ; preds = %for.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %brelse.exit39

if.then.i38:                                      ; preds = %for.end14
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__brelse(ptr noundef nonnull %30) #7
  br label %brelse.exit39

brelse.exit39:                                    ; preds = %if.then.i38, %for.end14.brelse.exit39_crit_edge
  %s_imap16 = getelementptr inbounds %struct.minix_sb_info, ptr %1, i32 0, i32 8
  %31 = ptrtoint ptr %s_imap16 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %s_imap16, align 4
  tail call void @kfree(ptr noundef %32) #7
  %33 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr null, ptr %s_fs_info.i, align 16
  tail call void @kfree(ptr noundef %1) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @minix_statfs(ptr nocapture noundef readonly %dentry, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
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
  %s_magic = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 12
  %9 = ptrtoint ptr %s_magic to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %s_magic, align 4
  %11 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %buf, align 8
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 3
  %12 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %s_blocksize, align 16
  %f_bsize = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 1
  %14 = ptrtoint ptr %f_bsize to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %f_bsize, align 4
  %s_nzones = getelementptr inbounds %struct.minix_sb_info, ptr %3, i32 0, i32 1
  %15 = ptrtoint ptr %s_nzones to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %s_nzones, align 4
  %s_firstdatazone = getelementptr inbounds %struct.minix_sb_info, ptr %3, i32 0, i32 4
  %17 = ptrtoint ptr %s_firstdatazone to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %s_firstdatazone, align 4
  %sub = sub i32 %16, %18
  %s_log_zone_size = getelementptr inbounds %struct.minix_sb_info, ptr %3, i32 0, i32 5
  %19 = ptrtoint ptr %s_log_zone_size to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %s_log_zone_size, align 4
  %shl = shl i32 %sub, %20
  %conv = zext i32 %shl to i64
  %f_blocks = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 2
  %21 = ptrtoint ptr %f_blocks to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %conv, ptr %f_blocks, align 8
  %call2 = tail call i32 @minix_count_free_blocks(ptr noundef %1) #7
  %conv3 = zext i32 %call2 to i64
  %f_bfree = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 3
  %22 = ptrtoint ptr %f_bfree to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %conv3, ptr %f_bfree, align 8
  %f_bavail = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 4
  %23 = ptrtoint ptr %f_bavail to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %conv3, ptr %f_bavail, align 8
  %24 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %3, align 4
  %conv5 = zext i32 %25 to i64
  %f_files = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 5
  %26 = ptrtoint ptr %f_files to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 %conv5, ptr %f_files, align 8
  %call6 = tail call i32 @minix_count_free_inodes(ptr noundef %1) #7
  %conv7 = zext i32 %call6 to i64
  %f_ffree = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 6
  %27 = ptrtoint ptr %f_ffree to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %conv7, ptr %f_ffree, align 8
  %s_namelen = getelementptr inbounds %struct.minix_sb_info, ptr %3, i32 0, i32 7
  %28 = ptrtoint ptr %s_namelen to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %s_namelen, align 4
  %f_namelen = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 8
  %30 = ptrtoint ptr %f_namelen to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %f_namelen, align 8
  %f_fsid = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 7
  %tmp.sroa.0.0.insert.ext = zext i32 %or4.i.i to i64
  %tmp.sroa.0.0.insert.shift = shl nuw i64 %tmp.sroa.0.0.insert.ext, 32
  %31 = ptrtoint ptr %f_fsid to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 %tmp.sroa.0.0.insert.shift, ptr %f_fsid, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @minix_remount(ptr noundef %sb, ptr nocapture noundef readonly %flags, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  %call1 = tail call i32 @sync_filesystem(ptr noundef %sb) #7
  %s_ms = getelementptr inbounds %struct.minix_sb_info, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %s_ms to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_ms, align 4
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 4
  %s_flags.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 10
  %6 = ptrtoint ptr %s_flags.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %s_flags.i, align 4
  %and.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i = icmp ne i32 %and.i, 0
  %8 = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %9 = icmp eq i32 %8, 0
  %cmp = xor i1 %9, %tobool.i
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  br i1 %9, label %if.else, label %if.then7

if.then7:                                         ; preds = %if.end
  %s_state = getelementptr inbounds %struct.minix_super_block, ptr %3, i32 0, i32 8
  %10 = ptrtoint ptr %s_state to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %s_state, align 2
  %12 = and i16 %11, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %tobool10.not = icmp eq i16 %12, 0
  br i1 %tobool10.not, label %lor.lhs.false, label %if.then7.cleanup_crit_edge

if.then7.cleanup_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.then7
  %s_mount_state = getelementptr inbounds %struct.minix_sb_info, ptr %1, i32 0, i32 12
  %13 = ptrtoint ptr %s_mount_state to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %s_mount_state, align 4
  %15 = and i16 %14, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %tobool13.not = icmp eq i16 %15, 0
  br i1 %tobool13.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end15

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end15:                                         ; preds = %lor.lhs.false
  %s_version = getelementptr inbounds %struct.minix_sb_info, ptr %1, i32 0, i32 13
  %16 = ptrtoint ptr %s_version to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %s_version, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %17)
  %cmp17.not = icmp eq i16 %17, 3
  br i1 %cmp17.not, label %if.end15.if.end22_crit_edge, label %if.then19

if.end15.if.end22_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22

if.then19:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %s_state to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %14, ptr %s_state, align 2
  br label %if.end22

if.end22:                                         ; preds = %if.then19, %if.end15.if.end22_crit_edge
  %s_sbh = getelementptr inbounds %struct.minix_sb_info, ptr %1, i32 0, i32 10
  %19 = ptrtoint ptr %s_sbh to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %s_sbh, align 4
  tail call void @mark_buffer_dirty(ptr noundef %20) #7
  br label %cleanup

if.else:                                          ; preds = %if.end
  %s_version23 = getelementptr inbounds %struct.minix_sb_info, ptr %1, i32 0, i32 13
  %21 = ptrtoint ptr %s_version23 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %s_version23, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %22)
  %cmp25.not = icmp eq i16 %22, 3
  br i1 %cmp25.not, label %if.else34, label %if.then27

if.then27:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %s_state28 = getelementptr inbounds %struct.minix_super_block, ptr %3, i32 0, i32 8
  %23 = ptrtoint ptr %s_state28 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %s_state28, align 2
  %s_mount_state29 = getelementptr inbounds %struct.minix_sb_info, ptr %1, i32 0, i32 12
  %25 = ptrtoint ptr %s_mount_state29 to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %24, ptr %s_mount_state29, align 4
  %26 = load i16, ptr %s_state28, align 2
  %27 = and i16 %26, -2
  store i16 %27, ptr %s_state28, align 2
  br label %if.end36

if.else34:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %s_mount_state35 = getelementptr inbounds %struct.minix_sb_info, ptr %1, i32 0, i32 12
  %28 = ptrtoint ptr %s_mount_state35 to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 1, ptr %s_mount_state35, align 4
  br label %if.end36

if.end36:                                         ; preds = %if.else34, %if.then27
  %s_sbh37 = getelementptr inbounds %struct.minix_sb_info, ptr %1, i32 0, i32 10
  %29 = ptrtoint ptr %s_sbh37 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %s_sbh37, align 4
  tail call void @mark_buffer_dirty(ptr noundef %30) #7
  %s_mount_state38 = getelementptr inbounds %struct.minix_sb_info, ptr %1, i32 0, i32 12
  %31 = ptrtoint ptr %s_mount_state38 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %s_mount_state38, align 4
  %conv39 = zext i16 %32 to i32
  %and40 = and i32 %conv39, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40)
  %tobool41.not = icmp eq i32 %and40, 0
  br i1 %tobool41.not, label %do.end, label %if.else44

do.end:                                           ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #9
  %call43 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39) #10
  br label %cleanup

if.else44:                                        ; preds = %if.end36
  %and47 = and i32 %conv39, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and47)
  %tobool48.not = icmp eq i32 %and47, 0
  br i1 %tobool48.not, label %if.else44.cleanup_crit_edge, label %do.end52

if.else44.cleanup_crit_edge:                      ; preds = %if.else44
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end52:                                         ; preds = %if.else44
  call void @__sanitizer_cov_trace_pc() #9
  %call54 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end52, %if.else44.cleanup_crit_edge, %do.end, %if.end22, %lor.lhs.false.cleanup_crit_edge, %if.then7.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sync_dirty_buffer(ptr noundef) local_unnamed_addr #1

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
declare dso_local void @minix_free_inode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @minix_count_free_blocks(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @minix_count_free_inodes(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sync_filesystem(ptr noundef) local_unnamed_addr #1

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
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %vfs_inode = getelementptr inbounds %struct.minix_inode_info, ptr %foo, i32 0, i32 1
  tail call void @inode_init_once(ptr noundef %vfs_inode) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @inode_init_once(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 43)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 43)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !13, !15, !16, !17, !18, !19, !21, !22, !23, !25, !27, !29, !30, !31, !32, !34, !35, !36, !38, !39, !40, !42, !43, !44, !46, !47, !48, !50, !51, !52, !54, !55, !56, !58, !59, !60, !62, !63, !64, !66, !67, !68, !70, !71, !72, !74, !76, !78, !79, !80, !81, !83, !84, !85, !86, !88, !89, !90}
!llvm.module.flags = !{!92, !93, !94, !95, !96, !97, !98, !99}
!llvm.ident = !{!100}

!0 = !{ptr @__UNIQUE_ID_alias272, !1, !"__UNIQUE_ID_alias272", i1 false, i1 false}
!1 = !{!"../fs/minix/inode.c", i32 697, i32 1}
!2 = !{ptr @__initcall__kmod_minix__273_720_init_minix_fs6, !3, !"__initcall__kmod_minix__273_720_init_minix_fs6", i1 false, i1 false}
!3 = !{!"../fs/minix/inode.c", i32 720, i32 1}
!4 = !{ptr @__exitcall_exit_minix_fs, !5, !"__exitcall_exit_minix_fs", i1 false, i1 false}
!5 = !{!"../fs/minix/inode.c", i32 721, i32 1}
!6 = !{ptr @__UNIQUE_ID_file274, !7, !"__UNIQUE_ID_file274", i1 false, i1 false}
!7 = !{!"../fs/minix/inode.c", i32 722, i32 1}
!8 = !{ptr @__UNIQUE_ID_license275, !7, !"__UNIQUE_ID_license275", i1 false, i1 false}
!9 = !{ptr @minix_aops, !10, !"minix_aops", i1 false, i1 false}
!10 = !{!"../fs/minix/inode.c", i32 444, i32 46}
!11 = !{ptr @minix_symlink_inode_operations, !12, !"minix_symlink_inode_operations", i1 false, i1 false}
!12 = !{!"../fs/minix/inode.c", i32 453, i32 38}
!13 = !{ptr @.str, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../fs/minix/inode.c", i32 492, i32 3}
!15 = !{ptr @.str.1, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.2, !14, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @V1_minix_iget._entry, !14, !"_entry", i1 false, i1 false}
!18 = !{ptr @V1_minix_iget._entry_ptr, !14, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../fs/minix/inode.c", i32 532, i32 3}
!21 = !{ptr @V2_minix_iget._entry, !20, !"_entry", i1 false, i1 false}
!22 = !{ptr @V2_minix_iget._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.4, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../fs/minix/inode.c", i32 692, i32 11}
!25 = !{ptr @minix_fs_type, !26, !"minix_fs_type", i1 false, i1 false}
!26 = !{!"../fs/minix/inode.c", i32 690, i32 32}
!27 = !{ptr @.str.5, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../fs/minix/inode.c", i32 284, i32 3}
!29 = !{ptr @.str.6, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @minix_fill_super._entry, !28, !"_entry", i1 false, i1 false}
!31 = !{ptr @minix_fill_super._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.8, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../fs/minix/inode.c", i32 293, i32 3}
!34 = !{ptr @minix_fill_super._entry.7, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @minix_fill_super._entry_ptr.9, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.11, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../fs/minix/inode.c", i32 319, i32 3}
!38 = !{ptr @minix_fill_super._entry.10, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @minix_fill_super._entry_ptr.12, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.14, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../fs/minix/inode.c", i32 322, i32 3}
!42 = !{ptr @minix_fill_super._entry.13, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @minix_fill_super._entry_ptr.15, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.17, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../fs/minix/inode.c", i32 329, i32 3}
!46 = !{ptr @minix_fill_super._entry.16, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @minix_fill_super._entry_ptr.18, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.20, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../fs/minix/inode.c", i32 333, i32 2}
!50 = !{ptr @minix_fill_super._entry.19, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @minix_fill_super._entry_ptr.21, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.23, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../fs/minix/inode.c", i32 345, i32 3}
!54 = !{ptr @minix_fill_super._entry.22, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @minix_fill_super._entry_ptr.24, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.26, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../fs/minix/inode.c", i32 350, i32 3}
!58 = !{ptr @minix_fill_super._entry.25, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @minix_fill_super._entry_ptr.27, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.29, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../fs/minix/inode.c", i32 355, i32 3}
!62 = !{ptr @minix_fill_super._entry.28, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @minix_fill_super._entry_ptr.30, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.32, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../fs/minix/inode.c", i32 362, i32 2}
!66 = !{ptr @minix_fill_super._entry.31, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @minix_fill_super._entry_ptr.33, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.35, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../fs/minix/inode.c", i32 366, i32 2}
!70 = !{ptr @minix_fill_super._entry.34, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @minix_fill_super._entry_ptr.36, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @minix_sops, !73, !"minix_sops", i1 false, i1 false}
!73 = !{!"../fs/minix/inode.c", i32 106, i32 38}
!74 = !{ptr @minix_inode_cachep, !75, !"minix_inode_cachep", i1 false, i1 false}
!75 = !{!"../fs/minix/inode.c", i32 61, i32 28}
!76 = !{ptr @.str.37, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../fs/minix/inode.c", i32 647, i32 4}
!78 = !{ptr @.str.38, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @minix_write_inode._entry, !77, !"_entry", i1 false, i1 false}
!80 = !{ptr @minix_write_inode._entry_ptr, !77, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.39, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../fs/minix/inode.c", i32 144, i32 4}
!83 = !{ptr @.str.40, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @minix_remount._entry, !82, !"_entry", i1 false, i1 false}
!85 = !{ptr @minix_remount._entry_ptr, !82, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.42, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../fs/minix/inode.c", i32 147, i32 4}
!88 = !{ptr @minix_remount._entry.41, !87, !"_entry", i1 false, i1 false}
!89 = !{ptr @minix_remount._entry_ptr.43, !87, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.44, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../fs/minix/inode.c", i32 86, i32 41}
!92 = !{i32 1, !"wchar_size", i32 2}
!93 = !{i32 1, !"min_enum_size", i32 4}
!94 = !{i32 8, !"branch-target-enforcement", i32 0}
!95 = !{i32 8, !"sign-return-address", i32 0}
!96 = !{i32 8, !"sign-return-address-all", i32 0}
!97 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!98 = !{i32 7, !"uwtable", i32 1}
!99 = !{i32 7, !"frame-pointer", i32 2}
!100 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!101 = !{!"auto-init"}
!102 = !{!"branch_weights", i32 2000, i32 1}
