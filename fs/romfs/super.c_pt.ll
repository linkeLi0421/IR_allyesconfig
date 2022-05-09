; ModuleID = '/llk/IR_all_yes/fs/romfs/super.c_pt.bc'
source_filename = "../fs/romfs/super.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.file_system_type = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.hlist_head = type { ptr }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.fs_context_operations = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.super_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.inode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [36 x i8] }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.address_space_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [24 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [24 x i8] }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.3 }
%union.anon.3 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
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
%struct.atomic_t = type { i32 }
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
%struct.callback_head = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.fs_context = type { ptr, %struct.mutex, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.p_log, ptr, ptr, ptr, i32, i32, i32, i32, i24 }
%struct.p_log = type { ptr, ptr }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.77, %struct.list_head, %struct.list_head, %union.anon.78 }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.4, ptr }
%union.anon.4 = type { i64 }
%struct.lockref = type { %union.anon.75 }
%union.anon.75 = type { %struct.anon.76 }
%struct.anon.76 = type { %struct.spinlock, i32 }
%union.anon.77 = type { %struct.list_head }
%union.anon.78 = type { %struct.hlist_node }
%struct.romfs_super_block = type { i32, i32, i32, i32, [0 x i8] }
%struct.mtd_info = type { i8, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, %struct.notifier_block, %struct.mtd_ecc_stats, i32, ptr, ptr, %struct.device, i32, %struct.mtd_debug_info, ptr, ptr, ptr, ptr, %struct.list_head, %union.anon.68 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.mtd_ecc_stats = type { i32, i32, i32, i32 }
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
%struct.mtd_debug_info = type { ptr, ptr, ptr }
%union.anon.68 = type { %struct.mtd_part, [160 x i8] }
%struct.mtd_part = type { %struct.list_head, i64, i64, i32 }
%struct.romfs_inode = type { i32, i32, i32, i32, [0 x i8] }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.69, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.70, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.71, ptr, %struct.address_space, %struct.list_head, %union.anon.74, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.69 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%union.anon.70 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.71 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.74 = type { ptr }
%struct.romfs_inode_info = type { %struct.inode, i32, i32 }
%struct.block_device = type { i64, i64, ptr, i32, i8, i32, i32, ptr, ptr, ptr, %struct.device, ptr, i32, i8, ptr, i8, %struct.spinlock, ptr, ptr, i32, %struct.mutex, ptr, ptr, i8 }
%struct.kstatfs = type { i32, i32, i64, i64, i64, i64, i64, %struct.__kernel_fsid_t, i32, i32, i32, [4 x i32] }
%struct.__kernel_fsid_t = type { [2 x i32] }
%struct.file = type { %union.anon.0, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.0 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.dir_context = type { ptr, i64 }
%struct.page = type { i32, %union.anon.15, %union.anon.59, %struct.atomic_t, i32 }
%union.anon.15 = type { %struct.anon.16 }
%struct.anon.16 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.59 = type { %struct.atomic_t }

@__UNIQUE_ID_alias273 = internal constant [21 x i8] c"romfs.alias=fs-romfs\00", section ".modinfo", align 1
@romfs_fs_type = internal global { %struct.file_system_type, [44 x i8] } { %struct.file_system_type { ptr @.str, i32 1, ptr @romfs_init_fs_context, ptr null, ptr null, ptr @romfs_kill_sb, ptr null, ptr null, %struct.hlist_head zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, [3 x %struct.lock_class_key] zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@romfs_inode_cachep = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__initcall__kmod_romfs__274_663_init_romfs_fs6 = internal global ptr @init_romfs_fs, section ".initcall6.init", align 4
@__exitcall_exit_romfs_fs = internal global ptr @exit_romfs_fs, section ".exitcall.exit", align 4
@__UNIQUE_ID_description275 = internal constant [43 x i8] c"romfs.description=Direct-MTD Capable RomFS\00", section ".modinfo", align 1
@__UNIQUE_ID_author276 = internal constant [27 x i8] c"romfs.author=Red Hat, Inc.\00", section ".modinfo", align 1
@__UNIQUE_ID_file277 = internal constant [26 x i8] c"romfs.file=fs/romfs/romfs\00", section ".modinfo", align 1
@__UNIQUE_ID_license278 = internal constant [18 x i8] c"romfs.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"romfs\00", [26 x i8] zeroinitializer }, align 32
@romfs_context_ops = internal constant { %struct.fs_context_operations, [40 x i8] } { %struct.fs_context_operations { ptr null, ptr null, ptr null, ptr null, ptr @romfs_get_tree, ptr @romfs_reconfigure }, [40 x i8] zeroinitializer }, align 32
@romfs_super_ops = internal constant { %struct.super_operations, [60 x i8] } { %struct.super_operations { ptr @romfs_alloc_inode, ptr null, ptr @romfs_free_inode, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @romfs_statfs, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"VFS: Can't find a romfs filesystem on dev %s.\0A\00", [49 x i8] zeroinitializer }, align 32
@romfs_fill_super._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 515, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013romfs: bad initial checksum on dev %s.\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"romfs_fill_super\00", [47 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fs/romfs/super.c\00", [47 x i8] zeroinitializer }, align 32
@romfs_fill_super._entry_ptr = internal global ptr @romfs_fill_super._entry, section ".printk_index", align 4
@.str.5 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"MTD\00", [28 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"the block layer\00", [16 x i8] zeroinitializer }, align 32
@romfs_fill_super._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 524, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\015romfs: Mounting image '%*.*s' through %s\0A\00", [52 x i8] zeroinitializer }, align 32
@romfs_fill_super._entry_ptr.9 = internal global ptr @romfs_fill_super._entry.7, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@romfs_modemap = internal constant { [8 x i16], [16 x i8] } { [8 x i16] [i16 0, i16 16804, i16 -32348, i16 -24065, i16 24960, i16 8576, i16 -15964, i16 4516], [16 x i8] zeroinitializer }, align 32
@romfs_dir_inode_operations = internal constant %struct.inode_operations { ptr @romfs_lookup, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [36 x i8] undef }, align 128
@romfs_dir_operations = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @generic_read_dir, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @romfs_readdir, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@generic_ro_fops = external dso_local constant %struct.file_operations, align 4
@romfs_aops = internal constant { %struct.address_space_operations, [40 x i8] } { %struct.address_space_operations { ptr null, ptr @romfs_readpage, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@page_symlink_inode_operations = external dso_local constant %struct.inode_operations, align 128
@romfs_iget._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.4, i32 367, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013romfs: read error for inode 0x%lx\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"romfs_iget\00", [21 x i8] zeroinitializer }, align 32
@romfs_iget._entry_ptr = internal global ptr @romfs_iget._entry, section ".printk_index", align 4
@romfs_dtype_table = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\00\04\08\0A\06\02\0C\01", [24 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"./../include/linux/highmem-internal.h\00", [58 x i8] zeroinitializer }, align 32
@movable_zone = external dso_local local_unnamed_addr global i32, align 4
@.str.13 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"VM_BUG_ON_PAGE(1 && PageTail(page))\00", [60 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"VM_BUG_ON_PAGE(PagePoisoned(((typeof(page))_compound_head(page))))\00", [61 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"VM_BUG_ON_PAGE(PageTail(page))\00", [33 x i8] zeroinitializer }, align 32
@init_romfs_fs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.4, i32 625, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016romfs: ROMFS MTD (C) 2007 Red Hat, Inc.\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"init_romfs_fs\00", [18 x i8] zeroinitializer }, align 32
@init_romfs_fs._entry_ptr = internal global ptr @init_romfs_fs._entry, section ".printk_index", align 4
@.str.19 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"romfs_i\00", [24 x i8] zeroinitializer }, align 32
@init_romfs_fs._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.18, ptr @.str.4, i32 634, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013romfs: Failed to initialise inode cache\0A\00", [53 x i8] zeroinitializer }, align 32
@init_romfs_fs._entry_ptr.22 = internal global ptr @init_romfs_fs._entry.20, section ".printk_index", align 4
@init_romfs_fs._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.18, ptr @.str.4, i32 639, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013romfs: Failed to register filesystem\0A\00", [56 x i8] zeroinitializer }, align 32
@init_romfs_fs._entry_ptr.25 = internal global ptr @init_romfs_fs._entry.23, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.26 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.27 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@___asan_gen_.28 = private unnamed_addr constant [14 x i8] c"romfs_fs_type\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 599, i32 32 }
@___asan_gen_.31 = private unnamed_addr constant [19 x i8] c"romfs_inode_cachep\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 80, i32 27 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 601, i32 11 }
@___asan_gen_.37 = private unnamed_addr constant [18 x i8] c"romfs_context_ops\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 566, i32 43 }
@___asan_gen_.40 = private unnamed_addr constant [16 x i8] c"romfs_super_ops\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 433, i32 38 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 509, i32 4 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 515, i32 3 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 519, i32 24 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 519, i32 32 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 523, i32 3 }
@___asan_gen_.70 = private unnamed_addr constant [14 x i8] c"romfs_modemap\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 82, i32 22 }
@___asan_gen_.73 = private unnamed_addr constant [21 x i8] c"romfs_dir_operations\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 264, i32 37 }
@___asan_gen_.76 = private unnamed_addr constant [11 x i8] c"romfs_aops\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 144, i32 46 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 367, i32 2 }
@___asan_gen_.88 = private unnamed_addr constant [18 x i8] c"romfs_dtype_table\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 93, i32 28 }
@___asan_gen_.92 = private unnamed_addr constant [38 x i8] c"./../include/linux/highmem-internal.h\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 44, i32 2 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 416, i32 1 }
@___asan_gen_.101 = private unnamed_addr constant [30 x i8] c"../include/linux/page-flags.h\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 260, i32 2 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 625, i32 2 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 628, i32 21 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 634, i32 3 }
@___asan_gen_.121 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.124 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.125 = private constant [20 x i8] c"../fs/romfs/super.c\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 639, i32 3 }
@llvm.compiler.used = appending global [47 x ptr] [ptr @__UNIQUE_ID_alias273, ptr @__UNIQUE_ID_author276, ptr @__UNIQUE_ID_description275, ptr @__UNIQUE_ID_file277, ptr @__UNIQUE_ID_license278, ptr @__exitcall_exit_romfs_fs, ptr @__initcall__kmod_romfs__274_663_init_romfs_fs6, ptr @exit_romfs_fs, ptr @init_romfs_fs._entry, ptr @init_romfs_fs._entry.20, ptr @init_romfs_fs._entry.23, ptr @init_romfs_fs._entry_ptr, ptr @init_romfs_fs._entry_ptr.22, ptr @init_romfs_fs._entry_ptr.25, ptr @romfs_fill_super._entry, ptr @romfs_fill_super._entry.7, ptr @romfs_fill_super._entry_ptr, ptr @romfs_fill_super._entry_ptr.9, ptr @romfs_iget._entry, ptr @romfs_iget._entry_ptr, ptr @romfs_fs_type, ptr @romfs_inode_cachep, ptr @.str, ptr @romfs_context_ops, ptr @romfs_super_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @romfs_modemap, ptr @romfs_dir_operations, ptr @romfs_aops, ptr @.str.10, ptr @.str.11, ptr @romfs_dtype_table, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @.str.24], section "llvm.metadata"
@0 = internal global [33 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @romfs_fs_type to i32), i32 116, i32 160, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @romfs_inode_cachep to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @romfs_context_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @romfs_super_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @romfs_fill_super._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @romfs_fill_super._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @romfs_modemap to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @romfs_dir_operations to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @romfs_aops to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @romfs_iget._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @romfs_dtype_table to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_romfs_fs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_romfs_fs._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_romfs_fs._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @exit_romfs_fs() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 @unregister_filesystem(ptr noundef nonnull @romfs_fs_type) #11
  tail call void @rcu_barrier() #11
  %0 = load ptr, ptr @romfs_inode_cachep, align 4
  tail call void @kmem_cache_destroy(ptr noundef %0) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_filesystem(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_barrier() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @init_romfs_fs() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17) #14
  %call1 = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.19, i32 noundef 792, i32 noundef 0, i32 noundef 68288512, ptr noundef nonnull @romfs_i_init_once) #11
  store ptr %call1, ptr @romfs_inode_cachep, align 4
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %do.end4, label %if.end

do.end4:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %call7 = tail call i32 @register_filesystem(ptr noundef nonnull @romfs_fs_type) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end.cleanup_crit_edge, label %do.end12

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end12:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24) #14
  %0 = load ptr, ptr @romfs_inode_cachep, align 4
  tail call void @kmem_cache_destroy(ptr noundef %0) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end12, %if.end.cleanup_crit_edge, %do.end4
  %retval.0 = phi i32 [ %call7, %do.end12 ], [ -12, %do.end4 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @romfs_init_fs_context(ptr nocapture noundef writeonly %fc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %fc to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @romfs_context_ops, ptr %fc, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @romfs_kill_sb(ptr noundef %sb) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %s_bdev = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 26
  %0 = ptrtoint ptr %s_bdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_bdev, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kill_block_super(ptr noundef %sb) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @romfs_get_tree(ptr noundef %fc) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @get_tree_bdev(ptr noundef %fc, ptr noundef nonnull @romfs_fill_super) #11
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @romfs_reconfigure(ptr nocapture noundef %fc) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %root = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 5
  %0 = ptrtoint ptr %root to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %root, align 4
  %d_sb = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %d_sb, align 4
  %call = tail call i32 @sync_filesystem(ptr noundef %3) #11
  %sb_flags = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 13
  %4 = ptrtoint ptr %sb_flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sb_flags, align 4
  %or = or i32 %5, 1
  store i32 %or, ptr %sb_flags, align 4
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_tree_bdev(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @romfs_fill_super(ptr noundef %sb, ptr nocapture noundef readonly %fc) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %s_mtd = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 28
  %0 = ptrtoint ptr %s_mtd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_mtd, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 @sb_set_blocksize(ptr noundef %sb, i32 noundef 1024) #11
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 3
  %2 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1024, ptr %s_blocksize, align 16
  %s_blocksize_bits = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 2
  %3 = ptrtoint ptr %s_blocksize_bits to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 10, ptr %s_blocksize_bits, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %s_maxbytes = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 4
  %4 = ptrtoint ptr %s_maxbytes to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 4294967295, ptr %s_maxbytes, align 8
  %s_magic = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 12
  %5 = ptrtoint ptr %s_magic to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 29301, ptr %s_magic, align 4
  %s_flags = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 10
  %6 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %s_flags, align 4
  %or = or i32 %7, 1025
  store i32 %or, ptr %s_flags, align 4
  %s_time_min = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 35
  %s_op = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 6
  %8 = call ptr @memset(ptr %s_time_min, i32 0, i32 16)
  %9 = ptrtoint ptr %s_op to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @romfs_super_ops, ptr %s_op, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %10 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 3264, i32 noundef 512) #15
  %tobool3.not = icmp eq ptr %call7.i, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %11 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 512 to ptr), ptr %s_fs_info, align 16
  %call6 = tail call i32 @romfs_dev_read(ptr noundef %sb, i32 noundef 0, ptr noundef nonnull %call7.i, i32 noundef 512) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp = icmp slt i32 %call6, 0
  br i1 %cmp, label %if.end5.error_rsb_crit_edge, label %if.end9

if.end5.error_rsb_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %error_rsb

if.end9:                                          ; preds = %if.end5
  %size = getelementptr inbounds %struct.romfs_super_block, ptr %call7.i, i32 0, i32 2
  %12 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %size, align 8
  %14 = ptrtoint ptr %s_mtd to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %s_mtd, align 4
  %tobool11.not = icmp eq ptr %15, null
  br i1 %tobool11.not, label %if.end9.if.end18_crit_edge, label %land.lhs.true

if.end9.if.end18_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18

land.lhs.true:                                    ; preds = %if.end9
  %conv12 = zext i32 %13 to i64
  %size14 = getelementptr inbounds %struct.mtd_info, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %size14 to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %size14, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %17, i64 %conv12)
  %cmp15 = icmp ult i64 %17, %conv12
  br i1 %cmp15, label %land.lhs.true.error_rsb_crit_edge, label %land.lhs.true.if.end18_crit_edge

land.lhs.true.if.end18_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18

land.lhs.true.error_rsb_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %error_rsb

if.end18:                                         ; preds = %land.lhs.true.if.end18_crit_edge, %if.end9.if.end18_crit_edge
  %18 = inttoptr i32 %13 to ptr
  %19 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %18, ptr %s_fs_info, align 16
  %20 = ptrtoint ptr %call7.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %call7.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 762474349, i32 %21)
  %cmp20.not = icmp eq i32 %21, 762474349
  br i1 %cmp20.not, label %lor.lhs.false, label %if.end18.if.then27_crit_edge

if.end18.if.then27_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then27

lor.lhs.false:                                    ; preds = %if.end18
  %word1 = getelementptr inbounds %struct.romfs_super_block, ptr %call7.i, i32 0, i32 1
  %22 = ptrtoint ptr %word1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %word1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 828797741, i32 %23)
  %cmp22.not = icmp ne i32 %23, 828797741
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %13)
  %cmp25 = icmp ult i32 %13, 16
  %or.cond = select i1 %cmp22.not, i1 true, i1 %cmp25
  br i1 %or.cond, label %lor.lhs.false.if.then27_crit_edge, label %if.end32

lor.lhs.false.if.then27_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then27

if.then27:                                        ; preds = %lor.lhs.false.if.then27_crit_edge, %if.end18.if.then27_crit_edge
  %sb_flags = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 13
  %24 = ptrtoint ptr %sb_flags to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %sb_flags, align 4
  %and = and i32 %25, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool28.not = icmp eq i32 %and, 0
  br i1 %tobool28.not, label %if.then29, label %if.then27.error_rsb_crit_edge

if.then27.error_rsb_crit_edge:                    ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #13
  br label %error_rsb

if.then29:                                        ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #13
  %log30 = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 9, i32 1
  %26 = ptrtoint ptr %log30 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %log30, align 4
  %s_id = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 39
  tail call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef %27, ptr noundef null, i8 noundef zeroext 101, ptr noundef nonnull @.str.1, ptr noundef %s_id) #11
  br label %error_rsb

if.end32:                                         ; preds = %lor.lhs.false
  %28 = tail call i32 @llvm.umin.i32(i32 %13, i32 512)
  %shr8.i = lshr i32 %28, 2
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.end32
  %sum.07.i = phi i32 [ %add.i, %while.body.i.while.body.i_crit_edge ], [ 0, %if.end32 ]
  %ptr.06.i = phi ptr [ %incdec.ptr.i, %while.body.i.while.body.i_crit_edge ], [ %call7.i, %if.end32 ]
  %size.addr.05.i = phi i32 [ %dec.i, %while.body.i.while.body.i_crit_edge ], [ %shr8.i, %if.end32 ]
  %incdec.ptr.i = getelementptr i32, ptr %ptr.06.i, i32 1
  %29 = ptrtoint ptr %ptr.06.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %ptr.06.i, align 4
  %add.i = add i32 %30, %sum.07.i
  %dec.i = add nsw i32 %size.addr.05.i, -1
  %cmp.i = icmp ugt i32 %size.addr.05.i, 1
  br i1 %cmp.i, label %while.body.i.while.body.i_crit_edge, label %romfs_checksum.exit

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i

romfs_checksum.exit:                              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i)
  %tobool36.not = icmp eq i32 %add.i, 0
  br i1 %tobool36.not, label %if.end42, label %do.end

do.end:                                           ; preds = %romfs_checksum.exit
  call void @__sanitizer_cov_trace_pc() #13
  %s_id39 = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 39
  %call41 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef %s_id39) #14
  br label %error_rsb

if.end42:                                         ; preds = %romfs_checksum.exit
  %name = getelementptr inbounds %struct.romfs_super_block, ptr %call7.i, i32 0, i32 4
  %call47 = tail call i32 @strnlen(ptr noundef %name, i32 noundef 128) #16
  %sb_flags48 = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 13
  %31 = ptrtoint ptr %sb_flags48 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %sb_flags48, align 4
  %and49 = and i32 %32, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49)
  %tobool50.not = icmp eq i32 %and49, 0
  br i1 %tobool50.not, label %do.end54, label %if.end42.if.end59_crit_edge

if.end42.if.end59_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end59

do.end54:                                         ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #13
  %cond45 = select i1 %tobool11.not, ptr @.str.6, ptr @.str.5
  %call58 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, i32 noundef %call47, i32 noundef %call47, ptr noundef %name, ptr noundef nonnull %cond45) #14
  br label %if.end59

if.end59:                                         ; preds = %do.end54, %if.end42.if.end59_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i) #11
  %add61 = add i32 %call47, 32
  %and62 = and i32 %add61, -16
  %call63 = tail call fastcc ptr @romfs_iget(ptr noundef %sb, i32 noundef %and62)
  %cmp.i122 = icmp ugt ptr %call63, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i122, label %if.then65, label %if.end67

if.then65:                                        ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #13
  %33 = ptrtoint ptr %call63 to i32
  br label %cleanup

if.end67:                                         ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #13
  %call68 = tail call ptr @d_make_root(ptr noundef %call63) #11
  %s_root = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 13
  %34 = ptrtoint ptr %s_root to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call68, ptr %s_root, align 64
  %tobool70.not = icmp eq ptr %call68, null
  %.121 = select i1 %tobool70.not, i32 -12, i32 0
  br label %cleanup

error_rsb:                                        ; preds = %do.end, %if.then29, %if.then27.error_rsb_crit_edge, %land.lhs.true.error_rsb_crit_edge, %if.end5.error_rsb_crit_edge
  %ret.0 = phi i32 [ %call6, %if.end5.error_rsb_crit_edge ], [ -22, %if.then27.error_rsb_crit_edge ], [ -22, %if.then29 ], [ -22, %land.lhs.true.error_rsb_crit_edge ], [ -22, %do.end ]
  tail call void @kfree(ptr noundef nonnull %call7.i) #11
  br label %cleanup

cleanup:                                          ; preds = %error_rsb, %if.end67, %if.then65, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %error_rsb ], [ %33, %if.then65 ], [ -12, %if.end.cleanup_crit_edge ], [ %.121, %if.end67 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sb_set_blocksize(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @romfs_dev_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @logfc(ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strnlen(ptr nocapture noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @romfs_iget(ptr noundef %sb, i32 noundef %pos) unnamed_addr #3 align 64 {
entry:
  %ri = alloca %struct.romfs_inode, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ri) #11
  %0 = getelementptr inbounds %struct.romfs_inode, ptr %ri, i32 0, i32 1
  %1 = getelementptr inbounds %struct.romfs_inode, ptr %ri, i32 0, i32 2
  %2 = call ptr @memset(ptr %ri, i32 255, i32 16)
  %call124 = call i32 @romfs_dev_read(ptr noundef %sb, i32 noundef %pos, ptr noundef nonnull %ri, i32 noundef 16) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call124)
  %cmp125 = icmp slt i32 %call124, 0
  br i1 %cmp125, label %entry.do.end_crit_edge, label %if.end.preheader

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

if.end.preheader:                                 ; preds = %entry
  %3 = ptrtoint ptr %ri to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %ri, align 4
  %and137 = and i32 %4, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and137)
  %cmp1.not138 = icmp eq i32 %and137, 0
  br i1 %cmp1.not138, label %if.end.preheader.if.end3_crit_edge, label %if.end.preheader.for.end_crit_edge

if.end.preheader.for.end_crit_edge:               ; preds = %if.end.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

if.end.preheader.if.end3_crit_edge:               ; preds = %if.end.preheader
  br label %if.end3

if.end:                                           ; preds = %if.end3
  %5 = ptrtoint ptr %ri to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ri, align 4
  %and = and i32 %6, 7
  %cmp1.not = icmp eq i32 %and, 0
  br i1 %cmp1.not, label %if.end.if.end3_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end3

if.end3:                                          ; preds = %if.end.if.end3_crit_edge, %if.end.preheader.if.end3_crit_edge
  %7 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %0, align 4
  %and4 = and i32 %8, -16
  %call = call i32 @romfs_dev_read(ptr noundef %sb, i32 noundef %and4, ptr noundef nonnull %ri, i32 noundef 16) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.end3.do.end_crit_edge, label %if.end

if.end3.do.end_crit_edge:                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

for.end:                                          ; preds = %if.end.for.end_crit_edge, %if.end.preheader.for.end_crit_edge
  %pos.addr.0126.lcssa = phi i32 [ %pos, %if.end.preheader.for.end_crit_edge ], [ %and4, %if.end.for.end_crit_edge ]
  %.lcssa = phi i32 [ %4, %if.end.preheader.for.end_crit_edge ], [ %6, %if.end.for.end_crit_edge ]
  %and.lcssa = phi i32 [ %and137, %if.end.preheader.for.end_crit_edge ], [ %and, %if.end.for.end_crit_edge ]
  %add = add i32 %pos.addr.0126.lcssa, 16
  %call5 = call i32 @romfs_dev_strnlen(ptr noundef %sb, i32 noundef %add, i32 noundef 128) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4096, i32 %call5)
  %cmp6 = icmp ugt i32 %call5, -4096
  br i1 %cmp6, label %for.end.do.end_crit_edge, label %if.end9, !prof !87

for.end.do.end_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

if.end9:                                          ; preds = %for.end
  %call10 = call ptr @iget_locked(ptr noundef %sb, i32 noundef %pos.addr.0126.lcssa) #11
  %tobool11.not = icmp eq ptr %call10, null
  br i1 %tobool11.not, label %if.end9.cleanup_crit_edge, label %if.end14

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end14:                                         ; preds = %if.end9
  %i_state = getelementptr inbounds %struct.inode, ptr %call10, i32 0, i32 24
  %9 = ptrtoint ptr %i_state to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %i_state, align 8
  %and15 = and i32 %10, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %if.end14.cleanup_crit_edge, label %if.end18

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end18:                                         ; preds = %if.end14
  %add22 = add nuw i32 %call5, 32
  %and23 = and i32 %add22, -16
  %i_metasize = getelementptr inbounds %struct.romfs_inode_info, ptr %call10, i32 0, i32 1
  %11 = ptrtoint ptr %i_metasize to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %and23, ptr %i_metasize, align 8
  %add25 = add i32 %and23, %pos.addr.0126.lcssa
  %i_dataoffset = getelementptr inbounds %struct.romfs_inode_info, ptr %call10, i32 0, i32 2
  %12 = ptrtoint ptr %i_dataoffset to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %add25, ptr %i_dataoffset, align 4
  call void @set_nlink(ptr noundef nonnull %call10, i32 noundef 1) #11
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %1, align 4
  %conv = zext i32 %14 to i64
  %i_size = getelementptr inbounds %struct.inode, ptr %call10, i32 0, i32 14
  %15 = ptrtoint ptr %i_size to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %conv, ptr %i_size, align 8
  %i_ctime = getelementptr inbounds %struct.inode, ptr %call10, i32 0, i32 17
  %16 = ptrtoint ptr %i_ctime to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 0, ptr %i_ctime, align 8
  %i_atime = getelementptr inbounds %struct.inode, ptr %call10, i32 0, i32 15
  %17 = ptrtoint ptr %i_atime to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 0, ptr %i_atime, align 8
  %i_mtime = getelementptr inbounds %struct.inode, ptr %call10, i32 0, i32 16
  %18 = ptrtoint ptr %i_mtime to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 0, ptr %i_mtime, align 8
  %tv_nsec = getelementptr inbounds %struct.inode, ptr %call10, i32 0, i32 17, i32 1
  %19 = ptrtoint ptr %tv_nsec to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %tv_nsec, align 8
  %tv_nsec30 = getelementptr inbounds %struct.inode, ptr %call10, i32 0, i32 15, i32 1
  %20 = ptrtoint ptr %tv_nsec30 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %tv_nsec30, align 8
  %tv_nsec32 = getelementptr inbounds %struct.inode, ptr %call10, i32 0, i32 16, i32 1
  %21 = ptrtoint ptr %tv_nsec32 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %tv_nsec32, align 8
  %arrayidx = getelementptr [8 x i16], ptr @romfs_modemap, i32 0, i32 %and.lcssa
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %arrayidx, align 2
  %24 = zext i32 %and.lcssa to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and.lcssa, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb45
    i32 3, label %sw.bb53
  ]

sw.bb:                                            ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  %25 = ptrtoint ptr %i_metasize to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %i_metasize, align 8
  %conv37 = zext i32 %26 to i64
  %27 = ptrtoint ptr %i_size to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %conv37, ptr %i_size, align 8
  %i_op = getelementptr inbounds %struct.inode, ptr %call10, i32 0, i32 7
  %28 = ptrtoint ptr %i_op to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @romfs_dir_inode_operations, ptr %i_op, align 8
  %29 = getelementptr inbounds %struct.inode, ptr %call10, i32 0, i32 44
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @romfs_dir_operations, ptr %29, align 8
  %and39 = and i32 %.lcssa, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39)
  %tobool40.not = icmp eq i32 %and39, 0
  %31 = or i16 %23, 73
  %spec.select = select i1 %tobool40.not, i16 %23, i16 %31
  br label %sw.epilog

sw.bb45:                                          ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  %32 = getelementptr inbounds %struct.inode, ptr %call10, i32 0, i32 44
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @generic_ro_fops, ptr %32, align 8
  %a_ops = getelementptr inbounds %struct.inode, ptr %call10, i32 0, i32 46, i32 9
  %34 = ptrtoint ptr %a_ops to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @romfs_aops, ptr %a_ops, align 8
  %and46 = and i32 %.lcssa, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46)
  %tobool47.not = icmp eq i32 %and46, 0
  %35 = or i16 %23, 73
  %spec.select120 = select i1 %tobool47.not, i16 %23, i16 %35
  br label %sw.epilog

sw.bb53:                                          ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  %i_op54 = getelementptr inbounds %struct.inode, ptr %call10, i32 0, i32 7
  %36 = ptrtoint ptr %i_op54 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @page_symlink_inode_operations, ptr %i_op54, align 8
  call void @inode_nohighmem(ptr noundef nonnull %call10) #11
  %a_ops56 = getelementptr inbounds %struct.inode, ptr %call10, i32 0, i32 46, i32 9
  %37 = ptrtoint ptr %a_ops56 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @romfs_aops, ptr %a_ops56, align 8
  %38 = or i16 %23, 511
  br label %sw.epilog

sw.default:                                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  %39 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %0, align 4
  %41 = shl i32 %40, 4
  %shl = and i32 %41, -1048576
  %and61 = and i32 %40, 65535
  %or62 = or i32 %shl, %and61
  call void @init_special_inode(ptr noundef nonnull %call10, i16 noundef zeroext %23, i32 noundef %or62) #11
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb53, %sw.bb45, %sw.bb
  %mode.0 = phi i16 [ %23, %sw.default ], [ %38, %sw.bb53 ], [ %spec.select, %sw.bb ], [ %spec.select120, %sw.bb45 ]
  %42 = ptrtoint ptr %call10 to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %mode.0, ptr %call10, align 8
  %43 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %i_size, align 8
  %add64 = add i64 %44, 511
  %shr65 = ashr i64 %add64, 9
  %i_blocks = getelementptr inbounds %struct.inode, ptr %call10, i32 0, i32 22
  %45 = ptrtoint ptr %i_blocks to i32
  call void @__asan_store8_noabort(i32 %45)
  store i64 %shr65, ptr %i_blocks, align 8
  call void @unlock_new_inode(ptr noundef nonnull %call10) #11
  br label %cleanup

do.end:                                           ; preds = %for.end.do.end_crit_edge, %if.end3.do.end_crit_edge, %entry.do.end_crit_edge
  %pos.addr.0123 = phi i32 [ %pos.addr.0126.lcssa, %for.end.do.end_crit_edge ], [ %pos, %entry.do.end_crit_edge ], [ %and4, %if.end3.do.end_crit_edge ]
  %ret.0 = phi i32 [ -5, %for.end.do.end_crit_edge ], [ %call124, %entry.do.end_crit_edge ], [ %call, %if.end3.do.end_crit_edge ]
  %call66 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %pos.addr.0123) #14
  %46 = inttoptr i32 %ret.0 to ptr
  br label %cleanup

cleanup:                                          ; preds = %do.end, %sw.epilog, %if.end14.cleanup_crit_edge, %if.end9.cleanup_crit_edge
  %retval.0 = phi ptr [ %46, %do.end ], [ %call10, %sw.epilog ], [ %call10, %if.end14.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end9.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ri) #11
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_make_root(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal noalias ptr @romfs_alloc_inode(ptr nocapture noundef readnone %sb) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @romfs_inode_cachep, align 4
  %call = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %0, i32 noundef 3264) #11
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @romfs_free_inode(ptr noundef %inode) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @romfs_inode_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %0, ptr noundef %inode) #11
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @romfs_statfs(ptr nocapture noundef readonly %dentry, ptr nocapture noundef %buf) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %d_sb = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 9
  %0 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_sb, align 4
  %s_bdev = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 26
  %2 = ptrtoint ptr %s_bdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_bdev, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
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
  br label %if.end6

if.else:                                          ; preds = %entry
  %s_dev = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %s_dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %s_dev, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool2.not = icmp eq i32 %8, 0
  br i1 %tobool2.not, label %if.else.if.end6_crit_edge, label %if.then3

if.else.if.end6_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6

if.then3:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %and1.i.i21 = and i32 %8, 255
  %9 = lshr i32 %8, 12
  %shl.i.i22 = and i32 %9, 1048320
  %or.i.i23 = or i32 %shl.i.i22, %and1.i.i21
  %and2.i.i24 = shl i32 %8, 12
  %shl3.i.i25 = and i32 %and2.i.i24, -1048576
  %or4.i.i26 = or i32 %or.i.i23, %shl3.i.i25
  br label %if.end6

if.end6:                                          ; preds = %if.then3, %if.else.if.end6_crit_edge, %if.then
  %id.0.shrunk = phi i32 [ %or4.i.i, %if.then ], [ %or4.i.i26, %if.then3 ], [ 0, %if.else.if.end6_crit_edge ]
  %10 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 29301, ptr %buf, align 8
  %f_namelen = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 8
  %11 = ptrtoint ptr %f_namelen to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 128, ptr %f_namelen, align 8
  %f_bsize = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 1
  %12 = ptrtoint ptr %f_bsize to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1024, ptr %f_bsize, align 4
  %f_ffree = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 6
  %13 = ptrtoint ptr %f_ffree to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %f_ffree, align 8
  %f_bavail = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 4
  %15 = ptrtoint ptr %f_bavail to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %14, ptr %f_bavail, align 8
  %f_bfree = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 3
  %16 = ptrtoint ptr %f_bfree to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %14, ptr %f_bfree, align 8
  %17 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %d_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %18, i32 0, i32 33
  %19 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %s_fs_info.i, align 16
  %21 = ptrtoint ptr %20 to i32
  %sub = add i32 %21, 1023
  %shr = lshr i32 %sub, 10
  %conv = zext i32 %shr to i64
  %f_blocks = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 2
  %22 = ptrtoint ptr %f_blocks to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %conv, ptr %f_blocks, align 8
  %f_fsid = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 7
  %tmp.sroa.0.0.insert.ext = zext i32 %id.0.shrunk to i64
  %tmp.sroa.0.0.insert.shift = shl nuw i64 %tmp.sroa.0.0.insert.ext, 32
  %23 = ptrtoint ptr %f_fsid to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %tmp.sroa.0.0.insert.shift, ptr %f_fsid, align 8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @romfs_dev_strnlen(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iget_locked(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_nlink(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @inode_nohighmem(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_special_inode(ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_new_inode(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @romfs_lookup(ptr nocapture noundef readonly %dir, ptr noundef %dentry, i32 noundef %flags) #3 align 64 {
entry:
  %ri = alloca %struct.romfs_inode, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ri) #11
  %0 = getelementptr inbounds %struct.romfs_inode, ptr %ri, i32 0, i32 1
  %i_ino = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 11
  %1 = call ptr @memset(ptr %ri, i32 255, i32 16)
  %2 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %i_ino, align 8
  %and = and i32 %3, -16
  %i_sb = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  %4 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_sb, align 4
  %call = call i32 @romfs_dev_read(ptr noundef %5, i32 noundef %and, ptr noundef nonnull %ri, i32 noundef 16) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.error_crit_edge, label %if.end

entry.error_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %error

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %7, i32 0, i32 33
  %8 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %s_fs_info.i, align 16
  %10 = ptrtoint ptr %9 to i32
  %11 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %0, align 4
  %d_name = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4
  %name4 = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4, i32 1
  %13 = ptrtoint ptr %name4 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %name4, align 8
  %15 = ptrtoint ptr %d_name to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %d_name, align 8
  %offset.059 = and i32 %12, -16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %offset.059)
  %tobool.not60 = icmp ne i32 %offset.059, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %offset.059, i32 %10)
  %cmp7.not61 = icmp ult i32 %offset.059, %10
  %or.cond62 = select i1 %tobool.not60, i1 %cmp7.not61, i1 false
  br i1 %or.cond62, label %if.end.if.end9_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

if.end.if.end9_crit_edge:                         ; preds = %if.end
  br label %if.end9

if.end9:                                          ; preds = %if.end30.if.end9_crit_edge, %if.end.if.end9_crit_edge
  %offset.063 = phi i32 [ %offset.0, %if.end30.if.end9_crit_edge ], [ %offset.059, %if.end.if.end9_crit_edge ]
  %17 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %i_sb, align 4
  %call11 = call i32 @romfs_dev_read(ptr noundef %18, i32 noundef %offset.063, ptr noundef nonnull %ri, i32 noundef 16) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp12 = icmp slt i32 %call11, 0
  br i1 %cmp12, label %if.end9.error_crit_edge, label %if.end14

if.end9.error_crit_edge:                          ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %error

if.end14:                                         ; preds = %if.end9
  %19 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %i_sb, align 4
  %add = add i32 %offset.063, 16
  %call16 = call i32 @romfs_dev_strcmp(ptr noundef %20, i32 noundef %add, ptr noundef %14, i32 noundef %16) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp17 = icmp slt i32 %call16, 0
  br i1 %cmp17, label %if.end14.error_crit_edge, label %if.end19

if.end14.error_crit_edge:                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  br label %error

if.end19:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call16)
  %cmp20 = icmp eq i32 %call16, 1
  %21 = ptrtoint ptr %ri to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %ri, align 4
  br i1 %cmp20, label %if.then21, label %if.end30

if.then21:                                        ; preds = %if.end19
  %and22 = and i32 %22, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %cmp23 = icmp eq i32 %and22, 0
  br i1 %cmp23, label %if.then24, label %if.then21.if.end27_crit_edge

if.then21.if.end27_crit_edge:                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end27

if.then24:                                        ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #13
  %23 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %0, align 4
  %and26 = and i32 %24, -16
  br label %if.end27

if.end27:                                         ; preds = %if.then24, %if.then21.if.end27_crit_edge
  %offset.1 = phi i32 [ %and26, %if.then24 ], [ %offset.063, %if.then21.if.end27_crit_edge ]
  %25 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %i_sb, align 4
  %call29 = call fastcc ptr @romfs_iget(ptr noundef %26, i32 noundef %offset.1)
  br label %for.end

if.end30:                                         ; preds = %if.end19
  %offset.0 = and i32 %22, -16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %offset.0)
  %tobool.not = icmp ne i32 %offset.0, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %offset.0, i32 %10)
  %cmp7.not = icmp ult i32 %offset.0, %10
  %or.cond = select i1 %tobool.not, i1 %cmp7.not, i1 false
  br i1 %or.cond, label %if.end30.if.end9_crit_edge, label %if.end30.for.end_crit_edge

if.end30.for.end_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

if.end30.if.end9_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9

for.end:                                          ; preds = %if.end30.for.end_crit_edge, %if.end27, %if.end.for.end_crit_edge
  %inode.0 = phi ptr [ %call29, %if.end27 ], [ null, %if.end.for.end_crit_edge ], [ null, %if.end30.for.end_crit_edge ]
  %call33 = call ptr @d_splice_alias(ptr noundef %inode.0, ptr noundef %dentry) #11
  br label %cleanup

error:                                            ; preds = %if.end14.error_crit_edge, %if.end9.error_crit_edge, %entry.error_crit_edge
  %ret.0 = phi i32 [ %call, %entry.error_crit_edge ], [ %call16, %if.end14.error_crit_edge ], [ %call11, %if.end9.error_crit_edge ]
  %27 = inttoptr i32 %ret.0 to ptr
  br label %cleanup

cleanup:                                          ; preds = %error, %for.end
  %retval.0 = phi ptr [ %27, %error ], [ %call33, %for.end ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ri) #11
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @romfs_dev_strcmp(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_splice_alias(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_file_llseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_read_dir(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @romfs_readdir(ptr nocapture noundef readonly %file, ptr noundef %ctx) #3 align 64 {
entry:
  %ri = alloca %struct.romfs_inode, align 4
  %fsname = alloca [128 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ri) #11
  %2 = getelementptr inbounds %struct.romfs_inode, ptr %ri, i32 0, i32 1
  %3 = call ptr @memset(ptr %ri, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %fsname) #11
  %4 = call ptr @memset(ptr %fsname, i32 255, i32 128)
  %i_sb = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %5 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %6, i32 0, i32 33
  %7 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %s_fs_info.i, align 16
  %9 = ptrtoint ptr %8 to i32
  %pos = getelementptr inbounds %struct.dir_context, ptr %ctx, i32 0, i32 1
  %10 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %pos, align 8
  %conv = trunc i64 %11 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv)
  %tobool.not = icmp eq i32 %conv, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end7_crit_edge

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7

if.then:                                          ; preds = %entry
  %i_ino = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 11
  %12 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %i_ino, align 8
  %and = and i32 %13, -16
  %call3 = call i32 @romfs_dev_read(ptr noundef %6, i32 noundef %and, ptr noundef nonnull %ri, i32 noundef 16) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %if.then.out_crit_edge, label %if.end

if.then.out_crit_edge:                            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %14 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %2, align 4
  %and6 = and i32 %15, -16
  br label %if.end7

if.end7:                                          ; preds = %if.end, %entry.if.end7_crit_edge
  %offset.0 = phi i32 [ %conv, %entry.if.end7_crit_edge ], [ %and6, %if.end ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %offset.0)
  %tobool8.not76 = icmp ne i32 %offset.0, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %offset.0, i32 %9)
  %cmp9.not77 = icmp ult i32 %offset.0, %9
  %or.cond78 = select i1 %tobool8.not76, i1 %cmp9.not77, i1 false
  br i1 %or.cond78, label %if.end7.if.end14_crit_edge, label %if.end7.if.then11_crit_edge

if.end7.if.then11_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11

if.end7.if.end14_crit_edge:                       ; preds = %if.end7
  br label %if.end14

for.cond:                                         ; preds = %if.end41
  %and50 = and i32 %26, -16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and50)
  %tobool8.not = icmp ne i32 %and50, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and50, i32 %9)
  %cmp9.not = icmp ult i32 %and50, %9
  %or.cond = select i1 %tobool8.not, i1 %cmp9.not, i1 false
  br i1 %or.cond, label %for.cond.if.end14_crit_edge, label %for.cond.if.then11_crit_edge

for.cond.if.then11_crit_edge:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11

for.cond.if.end14_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14

if.then11:                                        ; preds = %for.cond.if.then11_crit_edge, %if.end7.if.then11_crit_edge
  %conv12 = zext i32 %9 to i64
  %16 = ptrtoint ptr %pos to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %conv12, ptr %pos, align 8
  br label %out

if.end14:                                         ; preds = %for.cond.if.end14_crit_edge, %if.end7.if.end14_crit_edge
  %offset.179 = phi i32 [ %and50, %for.cond.if.end14_crit_edge ], [ %offset.0, %if.end7.if.end14_crit_edge ]
  %conv15 = zext i32 %offset.179 to i64
  %17 = ptrtoint ptr %pos to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %conv15, ptr %pos, align 8
  %18 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %i_sb, align 4
  %call18 = call i32 @romfs_dev_read(ptr noundef %19, i32 noundef %offset.179, ptr noundef nonnull %ri, i32 noundef 16) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %cmp19 = icmp slt i32 %call18, 0
  br i1 %cmp19, label %if.end14.out_crit_edge, label %if.end22

if.end14.out_crit_edge:                           ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end22:                                         ; preds = %if.end14
  %20 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %i_sb, align 4
  %add = add i32 %offset.179, 16
  %call24 = call i32 @romfs_dev_strnlen(ptr noundef %21, i32 noundef %add, i32 noundef 127) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %cmp25 = icmp slt i32 %call24, 0
  br i1 %cmp25, label %if.end22.out_crit_edge, label %if.end28

if.end22.out_crit_edge:                           ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end28:                                         ; preds = %if.end22
  %22 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %i_sb, align 4
  %call31 = call i32 @romfs_dev_read(ptr noundef %23, i32 noundef %add, ptr noundef nonnull %fsname, i32 noundef %call24) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %cmp32 = icmp slt i32 %call31, 0
  br i1 %cmp32, label %if.end28.out_crit_edge, label %if.end35

if.end28.out_crit_edge:                           ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end35:                                         ; preds = %if.end28
  %arrayidx = getelementptr [128 x i8], ptr %fsname, i32 0, i32 %call24
  %24 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %arrayidx, align 1
  %25 = ptrtoint ptr %ri to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %ri, align 4
  %and36 = and i32 %26, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %cmp37 = icmp eq i32 %and36, 0
  br i1 %cmp37, label %if.then39, label %if.end35.if.end41_crit_edge

if.end35.if.end41_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end41

if.then39:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #13
  %27 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %2, align 4
  br label %if.end41

if.end41:                                         ; preds = %if.then39, %if.end35.if.end41_crit_edge
  %ino.0 = phi i32 [ %28, %if.then39 ], [ %offset.179, %if.end35.if.end41_crit_edge ]
  %conv43 = sext i32 %ino.0 to i64
  %arrayidx45 = getelementptr [8 x i8], ptr @romfs_dtype_table, i32 0, i32 %and36
  %29 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx45, align 1
  %conv46 = zext i8 %30 to i32
  %31 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ctx, align 8
  %33 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %pos, align 8
  %call.i = call i32 %32(ptr noundef %ctx, ptr noundef nonnull %fsname, i32 noundef %call24, i64 noundef %34, i64 noundef %conv43, i32 noundef %conv46) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %for.cond, label %if.end41.out_crit_edge

if.end41.out_crit_edge:                           ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

out:                                              ; preds = %if.end41.out_crit_edge, %if.end28.out_crit_edge, %if.end22.out_crit_edge, %if.end14.out_crit_edge, %if.then11, %if.then.out_crit_edge
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %fsname) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ri) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @romfs_readpage(ptr nocapture noundef readnone %file, ptr noundef %page) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %mapping = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 1
  %0 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mapping, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void @__might_sleep(ptr noundef nonnull @.str.12, i32 noundef 44) #11
  %4 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %page, align 4
  %shr.i.i = lshr i32 %5, 30
  %6 = zext i32 %shr.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.26)
  switch i32 %shr.i.i, label %entry.if.then.i50_crit_edge [
    i32 2, label %entry.if.else.i_crit_edge
    i32 3, label %is_highmem_idx.exit.i
  ]

entry.if.else.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i

entry.if.then.i50_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i50

is_highmem_idx.exit.i:                            ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %7 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp2.i.not.i = icmp eq i32 %7, 2
  br i1 %cmp2.i.not.i, label %is_highmem_idx.exit.i.if.else.i_crit_edge, label %is_highmem_idx.exit.i.if.then.i50_crit_edge

is_highmem_idx.exit.i.if.then.i50_crit_edge:      ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i50

is_highmem_idx.exit.i.if.else.i_crit_edge:        ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i

if.then.i50:                                      ; preds = %is_highmem_idx.exit.i.if.then.i50_crit_edge, %entry.if.then.i50_crit_edge
  %call5.i = tail call ptr @page_address(ptr noundef %page) #11
  br label %kmap.exit

if.else.i:                                        ; preds = %is_highmem_idx.exit.i.if.else.i_crit_edge, %entry.if.else.i_crit_edge
  %call6.i = tail call ptr @kmap_high(ptr noundef %page) #11
  br label %kmap.exit

kmap.exit:                                        ; preds = %if.else.i, %if.then.i50
  %addr.0.i = phi ptr [ %call6.i, %if.else.i ], [ %call5.i, %if.then.i50 ]
  %tobool.not = icmp eq ptr %addr.0.i, null
  br i1 %tobool.not, label %kmap.exit.cleanup_crit_edge, label %if.end

kmap.exit.cleanup_crit_edge:                      ; preds = %kmap.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %kmap.exit
  %index.i = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 2
  %8 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %index.i, align 4
  %conv.i = zext i32 %9 to i64
  %i_size_seqcount.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 23
  %dep_map.c48.i.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 23, i32 1
  %i_size18.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 14
  br label %do.body.i

do.body.i:                                        ; preds = %while.end.i.do.body.i_crit_edge, %if.end
  %10 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #11, !srcloc !88
  %and.i.i.i = and i32 %10, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i51 = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i51, label %if.then.i.i52, label %do.body24.critedge.i.i

if.then.i.i52:                                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @trace_hardirqs_off() #11
  %11 = tail call ptr @llvm.returnaddress(i32 0) #11
  %12 = ptrtoint ptr %11 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %12) #11
  tail call void @lock_release(ptr noundef %dep_map.c48.i.i, i32 noundef %12) #11
  tail call void @trace_hardirqs_on() #11
  br label %do.body24.i.i

do.body24.critedge.i.i:                           ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %13 = tail call ptr @llvm.returnaddress(i32 0) #11
  %14 = ptrtoint ptr %13 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %14) #11
  tail call void @lock_release(ptr noundef %dep_map.c48.i.i, i32 noundef %14) #11
  br label %do.body24.i.i

do.body24.i.i:                                    ; preds = %do.body24.critedge.i.i, %if.then.i.i52
  %15 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #11, !srcloc !89
  %and.i.i.i.i53 = and i32 %15, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i53)
  %tobool32.not.i.i = icmp eq i32 %and.i.i.i.i53, 0
  br i1 %tobool32.not.i.i, label %if.then36.i.i, label %do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge, !prof !87

do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge: ; preds = %do.body24.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %seqcount_lockdep_reader_access.exit.i

if.then36.i.i:                                    ; preds = %do.body24.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @warn_bogus_irq_restore() #11
  br label %seqcount_lockdep_reader_access.exit.i

seqcount_lockdep_reader_access.exit.i:            ; preds = %if.then36.i.i, %do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %10) #11, !srcloc !90
  %16 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %i_size_seqcount.i, align 4
  %and29.i = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29.i)
  %tobool.not30.i = icmp eq i32 %and29.i, 0
  br i1 %tobool.not30.i, label %seqcount_lockdep_reader_access.exit.i.while.end.i_crit_edge, label %seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge

seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i
  br label %do.end.i

seqcount_lockdep_reader_access.exit.i.while.end.i_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end.i

do.end.i:                                         ; preds = %do.end.i.do.end.i_crit_edge, %seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !91
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #11, !srcloc !92
  %18 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %i_size_seqcount.i, align 4
  %and.i = and i32 %19, 1
  %tobool.not.i54 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i54, label %do.end.i.while.end.i_crit_edge, label %do.end.i.do.end.i_crit_edge

do.end.i.do.end.i_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i

do.end.i.while.end.i_crit_edge:                   ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end.i

while.end.i:                                      ; preds = %do.end.i.while.end.i_crit_edge, %seqcount_lockdep_reader_access.exit.i.while.end.i_crit_edge
  %.lcssa.i = phi i32 [ %17, %seqcount_lockdep_reader_access.exit.i.while.end.i_crit_edge ], [ %19, %do.end.i.while.end.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !93
  %20 = ptrtoint ptr %i_size18.i to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %i_size18.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !94
  %22 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %i_size_seqcount.i, align 4
  %cmp.i.i.not.i = icmp eq i32 %23, %.lcssa.i
  br i1 %cmp.i.i.not.i, label %i_size_read.exit, label %while.end.i.do.body.i_crit_edge

while.end.i.do.body.i_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i

i_size_read.exit:                                 ; preds = %while.end.i
  %shl.i = shl nuw nsw i64 %conv.i, 12
  call void @__sanitizer_cov_trace_cmp8(i64 %21, i64 %shl.i)
  %cmp = icmp sgt i64 %21, %shl.i
  br i1 %cmp, label %if.then3, label %i_size_read.exit.if.then16_crit_edge

i_size_read.exit.if.then16_crit_edge:             ; preds = %i_size_read.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then16

if.then3:                                         ; preds = %i_size_read.exit
  %sub = sub i64 %21, %shl.i
  %24 = tail call i64 @llvm.smin.i64(i64 %sub, i64 4096)
  %25 = trunc i64 %24 to i32
  %i_dataoffset = getelementptr inbounds %struct.romfs_inode_info, ptr %3, i32 0, i32 2
  %26 = ptrtoint ptr %i_dataoffset to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %i_dataoffset, align 4
  %28 = trunc i64 %shl.i to i32
  %conv7 = add i32 %27, %28
  %i_sb = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 8
  %29 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %i_sb, align 4
  %call8 = tail call i32 @romfs_dev_read(ptr noundef %30, i32 noundef %conv7, ptr noundef nonnull %addr.0.i, i32 noundef %25) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp9 = icmp slt i32 %call8, 0
  br i1 %cmp9, label %if.then11, label %if.end13

if.then11:                                        ; preds = %if.then3
  %31 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %31, align 4
  %and.i.i = and i32 %33, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i, label %do.body7.i, label %if.then.i, !prof !95

if.then.i:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.13) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 416, 0\0A.popsection", ""() #11, !srcloc !96
  unreachable

do.body7.i:                                       ; preds = %if.then11
  %34 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %31, align 4
  %and.i31.i = and i32 %35, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i31.i)
  %tobool.not.i.i = icmp eq i32 %and.i31.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !95

if.then.i.i:                                      ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i = add i32 %35, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #13
  %36 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %36, %if.end.i.i ]
  %37 = inttoptr i32 %retval.0.i.i to ptr
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %37, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %39)
  %cmp.i.not.i = icmp eq i32 %39, -1
  %40 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %31, align 4
  %and.i32.i = and i32 %41, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i32.i)
  %tobool.not.i33.i = icmp eq i32 %and.i32.i, 0
  br i1 %cmp.i.not.i, label %if.then17.i, label %do.end24.i, !prof !87

if.then17.i:                                      ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i33.i, label %if.end.i36.i, label %if.then.i35.i, !prof !95

if.then.i35.i:                                    ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i34.i = add i32 %41, -1
  br label %_compound_head.exit38.i

if.end.i36.i:                                     ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #13
  %42 = ptrtoint ptr %page to i32
  br label %_compound_head.exit38.i

_compound_head.exit38.i:                          ; preds = %if.end.i36.i, %if.then.i35.i
  %retval.0.i37.i = phi i32 [ %sub.i34.i, %if.then.i35.i ], [ %42, %if.end.i36.i ]
  %43 = inttoptr i32 %retval.0.i37.i to ptr
  tail call void @dump_page(ptr noundef %43, ptr noundef nonnull @.str.14) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 416, 0\0A.popsection", ""() #11, !srcloc !97
  unreachable

do.end24.i:                                       ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i33.i, label %if.end.i43.i, label %if.then.i42.i, !prof !95

if.then.i42.i:                                    ; preds = %do.end24.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i41.i = add i32 %41, -1
  br label %SetPageError.exit

if.end.i43.i:                                     ; preds = %do.end24.i
  call void @__sanitizer_cov_trace_pc() #13
  %44 = ptrtoint ptr %page to i32
  br label %SetPageError.exit

SetPageError.exit:                                ; preds = %if.end.i43.i, %if.then.i42.i
  %retval.0.i44.i = phi i32 [ %sub.i41.i, %if.then.i42.i ], [ %44, %if.end.i43.i ]
  %45 = inttoptr i32 %retval.0.i44.i to ptr
  tail call void @_set_bit(i32 noundef 8, ptr noundef %45) #11
  br label %if.then16

if.end13:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %25)
  %cmp14 = icmp ult i32 %25, 4096
  br i1 %cmp14, label %if.end13.if.then16_crit_edge, label %if.end13.if.end18_crit_edge

if.end13.if.end18_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18

if.end13.if.then16_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then16

if.then16:                                        ; preds = %if.end13.if.then16_crit_edge, %SetPageError.exit, %i_size_read.exit.if.then16_crit_edge
  %ret.064 = phi i32 [ %call8, %if.end13.if.then16_crit_edge ], [ 0, %i_size_read.exit.if.then16_crit_edge ], [ -5, %SetPageError.exit ]
  %fillsize.062 = phi i32 [ %25, %if.end13.if.then16_crit_edge ], [ 0, %i_size_read.exit.if.then16_crit_edge ], [ 0, %SetPageError.exit ]
  %add.ptr = getelementptr i8, ptr %addr.0.i, i32 %fillsize.062
  %sub17 = sub nuw nsw i32 4096, %fillsize.062
  %46 = call ptr @memset(ptr %add.ptr, i32 0, i32 %sub17)
  br label %if.end18

if.end18:                                         ; preds = %if.then16, %if.end13.if.end18_crit_edge
  %ret.063 = phi i32 [ %ret.064, %if.then16 ], [ %call8, %if.end13.if.end18_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.063)
  %cmp19 = icmp eq i32 %ret.063, 0
  br i1 %cmp19, label %if.then21, label %if.end18.if.end22_crit_edge

if.end18.if.end22_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end22

if.then21:                                        ; preds = %if.end18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !98
  %47 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile i32, ptr %47, align 4
  %and.i.i.i.i = and i32 %49, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %SetPageUptodate.exit, label %if.then.i.i.i, !prof !95

if.then.i.i.i:                                    ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.15) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #11, !srcloc !99
  unreachable

SetPageUptodate.exit:                             ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_set_bit(i32 noundef 2, ptr noundef %page) #11
  br label %if.end22

if.end22:                                         ; preds = %SetPageUptodate.exit, %if.end18.if.end22_crit_edge
  tail call void @flush_dcache_page(ptr noundef %page) #11
  tail call void @__might_sleep(ptr noundef nonnull @.str.12, i32 noundef 55) #11
  %50 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %page, align 4
  %shr.i.i56 = lshr i32 %51, 30
  %52 = zext i32 %shr.i.i56 to i64
  call void @__sanitizer_cov_trace_switch(i64 %52, ptr @__sancov_gen_cov_switch_values.27)
  switch i32 %shr.i.i56, label %if.end22.kunmap.exit_crit_edge [
    i32 2, label %if.end22.if.end.i_crit_edge
    i32 3, label %is_highmem_idx.exit.i58
  ]

if.end22.if.end.i_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.end22.kunmap.exit_crit_edge:                   ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  br label %kunmap.exit

is_highmem_idx.exit.i58:                          ; preds = %if.end22
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %53 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %53)
  %cmp2.i.not.i57 = icmp eq i32 %53, 2
  br i1 %cmp2.i.not.i57, label %is_highmem_idx.exit.i58.if.end.i_crit_edge, label %is_highmem_idx.exit.i58.kunmap.exit_crit_edge

is_highmem_idx.exit.i58.kunmap.exit_crit_edge:    ; preds = %is_highmem_idx.exit.i58
  call void @__sanitizer_cov_trace_pc() #13
  br label %kunmap.exit

is_highmem_idx.exit.i58.if.end.i_crit_edge:       ; preds = %is_highmem_idx.exit.i58
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.end.i:                                         ; preds = %is_highmem_idx.exit.i58.if.end.i_crit_edge, %if.end22.if.end.i_crit_edge
  tail call void @kunmap_high(ptr noundef %page) #11
  br label %kunmap.exit

kunmap.exit:                                      ; preds = %if.end.i, %is_highmem_idx.exit.i58.kunmap.exit_crit_edge, %if.end22.kunmap.exit_crit_edge
  tail call void @unlock_page(ptr noundef %page) #11
  br label %cleanup

cleanup:                                          ; preds = %kunmap.exit, %kmap.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.063, %kunmap.exit ], [ -12, %kmap.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_dcache_page(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_page(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmap_high(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_high(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sync_filesystem(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kill_block_super(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @romfs_i_init_once(ptr noundef %_inode) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @inode_init_once(ptr noundef %_inode) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_filesystem(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @inode_init_once(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smin.i64(i64, i64) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(2) }
attributes #16 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !15, !17, !19, !21, !23, !25, !26, !27, !28, !29, !31, !33, !35, !36, !37, !39, !41, !42, !43, !44, !46, !48, !50, !52, !54, !56, !58, !59, !61, !63, !65, !66, !67, !68, !70, !72, !73, !74, !76, !77}
!llvm.module.flags = !{!78, !79, !80, !81, !82, !83, !84, !85}
!llvm.ident = !{!86}

!0 = !{ptr @__UNIQUE_ID_alias273, !1, !"__UNIQUE_ID_alias273", i1 false, i1 false}
!1 = !{!"../fs/romfs/super.c", i32 606, i32 1}
!2 = !{ptr @__initcall__kmod_romfs__274_663_init_romfs_fs6, !3, !"__initcall__kmod_romfs__274_663_init_romfs_fs6", i1 false, i1 false}
!3 = !{!"../fs/romfs/super.c", i32 663, i32 1}
!4 = !{ptr @__exitcall_exit_romfs_fs, !5, !"__exitcall_exit_romfs_fs", i1 false, i1 false}
!5 = !{!"../fs/romfs/super.c", i32 664, i32 1}
!6 = !{ptr @__UNIQUE_ID_description275, !7, !"__UNIQUE_ID_description275", i1 false, i1 false}
!7 = !{!"../fs/romfs/super.c", i32 666, i32 1}
!8 = !{ptr @__UNIQUE_ID_author276, !9, !"__UNIQUE_ID_author276", i1 false, i1 false}
!9 = !{!"../fs/romfs/super.c", i32 667, i32 1}
!10 = !{ptr @__UNIQUE_ID_file277, !11, !"__UNIQUE_ID_file277", i1 false, i1 false}
!11 = !{!"../fs/romfs/super.c", i32 668, i32 1}
!12 = !{ptr @__UNIQUE_ID_license278, !11, !"__UNIQUE_ID_license278", i1 false, i1 false}
!13 = !{ptr @romfs_inode_cachep, !14, !"romfs_inode_cachep", i1 false, i1 false}
!14 = !{!"../fs/romfs/super.c", i32 80, i32 27}
!15 = !{ptr @.str, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../fs/romfs/super.c", i32 601, i32 11}
!17 = !{ptr @romfs_fs_type, !18, !"romfs_fs_type", i1 false, i1 false}
!18 = !{!"../fs/romfs/super.c", i32 599, i32 32}
!19 = !{ptr @romfs_context_ops, !20, !"romfs_context_ops", i1 false, i1 false}
!20 = !{!"../fs/romfs/super.c", i32 566, i32 43}
!21 = !{ptr @.str.1, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../fs/romfs/super.c", i32 509, i32 4}
!23 = !{ptr @.str.2, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../fs/romfs/super.c", i32 515, i32 3}
!25 = !{ptr @.str.3, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.4, !24, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @romfs_fill_super._entry, !24, !"_entry", i1 false, i1 false}
!28 = !{ptr @romfs_fill_super._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.5, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../fs/romfs/super.c", i32 519, i32 24}
!31 = !{ptr @.str.6, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../fs/romfs/super.c", i32 519, i32 32}
!33 = !{ptr @.str.8, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../fs/romfs/super.c", i32 523, i32 3}
!35 = !{ptr @romfs_fill_super._entry.7, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @romfs_fill_super._entry_ptr.9, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @romfs_super_ops, !38, !"romfs_super_ops", i1 false, i1 false}
!38 = !{!"../fs/romfs/super.c", i32 433, i32 38}
!39 = !{ptr @.str.10, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../fs/romfs/super.c", i32 367, i32 2}
!41 = !{ptr @.str.11, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @romfs_iget._entry, !40, !"_entry", i1 false, i1 false}
!43 = !{ptr @romfs_iget._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @romfs_modemap, !45, !"romfs_modemap", i1 false, i1 false}
!45 = !{!"../fs/romfs/super.c", i32 82, i32 22}
!46 = !{ptr @romfs_dir_inode_operations, !47, !"romfs_dir_inode_operations", i1 false, i1 false}
!47 = !{!"../fs/romfs/super.c", i32 270, i32 38}
!48 = !{ptr @romfs_dir_operations, !49, !"romfs_dir_operations", i1 false, i1 false}
!49 = !{!"../fs/romfs/super.c", i32 264, i32 37}
!50 = !{ptr @romfs_dtype_table, !51, !"romfs_dtype_table", i1 false, i1 false}
!51 = !{!"../fs/romfs/super.c", i32 93, i32 28}
!52 = !{ptr @romfs_aops, !53, !"romfs_aops", i1 false, i1 false}
!53 = !{!"../fs/romfs/super.c", i32 144, i32 46}
!54 = !{ptr @.str.12, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"./../include/linux/highmem-internal.h", i32 44, i32 2}
!56 = !{ptr @.str.13, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../include/linux/page-flags.h", i32 416, i32 1}
!58 = !{ptr @.str.14, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @.str.15, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../include/linux/page-flags.h", i32 260, i32 2}
!61 = distinct !{null, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../include/linux/page-flags.h", i32 261, i32 2}
!63 = !{ptr @.str.17, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../fs/romfs/super.c", i32 625, i32 2}
!65 = !{ptr @.str.18, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @init_romfs_fs._entry, !64, !"_entry", i1 false, i1 false}
!67 = !{ptr @init_romfs_fs._entry_ptr, !64, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.19, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../fs/romfs/super.c", i32 628, i32 21}
!70 = !{ptr @.str.21, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../fs/romfs/super.c", i32 634, i32 3}
!72 = !{ptr @init_romfs_fs._entry.20, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @init_romfs_fs._entry_ptr.22, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.24, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../fs/romfs/super.c", i32 639, i32 3}
!76 = !{ptr @init_romfs_fs._entry.23, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @init_romfs_fs._entry_ptr.25, !75, !"_entry_ptr", i1 false, i1 false}
!78 = !{i32 1, !"wchar_size", i32 2}
!79 = !{i32 1, !"min_enum_size", i32 4}
!80 = !{i32 8, !"branch-target-enforcement", i32 0}
!81 = !{i32 8, !"sign-return-address", i32 0}
!82 = !{i32 8, !"sign-return-address-all", i32 0}
!83 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!84 = !{i32 7, !"uwtable", i32 1}
!85 = !{i32 7, !"frame-pointer", i32 2}
!86 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!87 = !{!"branch_weights", i32 1, i32 2000}
!88 = !{i64 757299, i64 757360}
!89 = !{i64 760031}
!90 = !{i64 760316}
!91 = !{i64 2152716829}
!92 = !{i64 2152716671}
!93 = !{i64 2152716999}
!94 = !{i64 2149985425}
!95 = !{!"branch_weights", i32 2000, i32 1}
!96 = !{i64 2150241205, i64 2150241378, i64 2150241393, i64 2150241445, i64 2150241504, i64 2150241528, i64 2150241569, i64 2150241590, i64 2150241618, i64 2150241650}
!97 = !{i64 2150242080, i64 2150242253, i64 2150242268, i64 2150242320, i64 2150242379, i64 2150242403, i64 2150242444, i64 2150242465, i64 2150242493, i64 2150242525}
!98 = !{i64 2150930578}
!99 = !{i64 2150175554, i64 2150176045, i64 2150175591, i64 2150175647, i64 2150175681, i64 2150175705, i64 2150175746, i64 2150175767, i64 2150175795, i64 2150175829}
