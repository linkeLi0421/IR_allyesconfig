; ModuleID = '/llk/IR_all_yes/fs/hfsplus/super.c_pt.bc'
source_filename = "../fs/hfsplus/super.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.file_system_type = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.hlist_head = type { ptr }
%struct.address_space_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.super_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dentry_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [76 x i8] }
%struct.hfs_find_data = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32 }
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
%struct.hfsplus_sb_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t, ptr, ptr, ptr, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, %struct.mutex, i32, i32, i32, %struct.mutex, i32, i32, i16, %struct.kuid_t, %struct.kgid_t, i32, i32, i32, i32, %struct.delayed_work, %struct.spinlock }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hfsplus_vh = type { i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, [8 x i32], %struct.hfsplus_fork_raw, %struct.hfsplus_fork_raw, %struct.hfsplus_fork_raw, %struct.hfsplus_fork_raw, %struct.hfsplus_fork_raw }
%struct.hfsplus_fork_raw = type { i64, i32, i32, [8 x %struct.hfsplus_extent] }
%struct.hfsplus_extent = type { i32, i32 }
%union.hfsplus_cat_entry = type { %struct.hfsplus_cat_file, [272 x i8] }
%struct.hfsplus_cat_file = type { i16, i16, i32, i32, i32, i32, i32, i32, i32, %struct.hfsplus_perm, %union.anon.85, i32, i32, %struct.hfsplus_fork_raw, %struct.hfsplus_fork_raw }
%struct.hfsplus_perm = type { i32, i32, i8, i8, i16, i32 }
%union.anon.85 = type { %struct.anon.86 }
%struct.anon.86 = type { %struct.FInfo, %struct.FXInfo }
%struct.FInfo = type { i32, i32, i16, %struct.hfsp_point, i16 }
%struct.hfsp_point = type { i16, i16 }
%struct.FXInfo = type { i16, [8 x i8], i16, i32 }
%struct.qstr = type { %union.anon.2, ptr }
%union.anon.2 = type { i64 }
%struct.hfsplus_cat_folder = type { i16, i16, i32, i32, i32, i32, i32, i32, i32, %struct.hfsplus_perm, %union.anon.82, i32, i32 }
%union.anon.82 = type { %struct.anon.83 }
%struct.anon.83 = type { %struct.DInfo, %struct.DXInfo }
%struct.DInfo = type { %struct.hfsp_rect, i16, %struct.hfsp_point, i16 }
%struct.hfsp_rect = type { i16, i16, i16, i16 }
%struct.DXInfo = type { %struct.hfsp_point, i32, i16, i16, i32 }
%struct.hfs_btree = type { ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.mutex, i32, %struct.spinlock, [256 x ptr], i32 }
%struct.hfsplus_inode_info = type { %struct.atomic_t, i32, i32, i32, i32, i32, [8 x %struct.hfsplus_extent], [8 x %struct.hfsplus_extent], i32, %struct.mutex, ptr, i32, i32, i32, i64, i8, i32, %struct.list_head, %struct.spinlock, i64, %struct.inode }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.74, %struct.list_head, %struct.list_head, %union.anon.75 }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.hlist_bl_node = type { ptr, ptr }
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

@hfsplus_iget.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"&HFSPLUS_I(inode)->open_dir_lock\00", [63 x i8] zeroinitializer }, align 32
@hfsplus_iget.__key.1 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"&HFSPLUS_I(inode)->extents_lock\00", [32 x i8] zeroinitializer }, align 32
@dirty_writeback_interval = external dso_local local_unnamed_addr global i32, align 4
@system_long_wq = external dso_local local_unnamed_addr global ptr, align 4
@__UNIQUE_ID_author287 = internal constant [26 x i8] c"hfsplus.author=Brad Boyer\00", section ".modinfo", align 1
@__UNIQUE_ID_description288 = internal constant [50 x i8] c"hfsplus.description=Extended Macintosh Filesystem\00", section ".modinfo", align 1
@__UNIQUE_ID_file289 = internal constant [32 x i8] c"hfsplus.file=fs/hfsplus/hfsplus\00", section ".modinfo", align 1
@__UNIQUE_ID_license290 = internal constant [20 x i8] c"hfsplus.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias291 = internal constant [25 x i8] c"hfsplus.alias=fs-hfsplus\00", section ".modinfo", align 1
@hfsplus_fs_type = internal global { %struct.file_system_type, [44 x i8] } { %struct.file_system_type { ptr @.str.3, i32 1, ptr null, ptr null, ptr @hfsplus_mount, ptr @kill_block_super, ptr null, ptr null, %struct.hlist_head zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, [3 x %struct.lock_class_key] zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@hfsplus_inode_cachep = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__initcall__kmod_hfsplus__292_699_init_hfsplus_fs6 = internal global ptr @init_hfsplus_fs, section ".initcall6.init", align 4
@__exitcall_exit_hfsplus_fs = internal global ptr @exit_hfsplus_fs, section ".exitcall.exit", align 4
@hfsplus_btree_aops = external dso_local constant %struct.address_space_operations, align 4
@hfsplus_aops = external dso_local constant %struct.address_space_operations, align 4
@.str.3 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"hfsplus\00", [24 x i8] zeroinitializer }, align 32
@hfsplus_fill_super.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&sbi->alloc_mutex\00", [46 x i8] zeroinitializer }, align 32
@hfsplus_fill_super.__key.5 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&sbi->vh_mutex\00", [17 x i8] zeroinitializer }, align 32
@hfsplus_fill_super.__key.7 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&sbi->work_lock\00", [16 x i8] zeroinitializer }, align 32
@hfsplus_fill_super.__key.9 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"(work_completion)(&(&sbi->sync_work)->work)\00", [52 x i8] zeroinitializer }, align 32
@hfsplus_fill_super.__key.11 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"&(&sbi->sync_work)->timer\00", [38 x i8] zeroinitializer }, align 32
@hfsplus_fill_super._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.15, i32 400, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013hfsplus: unable to parse mount options\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"hfsplus_fill_super\00", [45 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fs/hfsplus/super.c\00", [45 x i8] zeroinitializer }, align 32
@hfsplus_fill_super._entry_ptr = internal global ptr @hfsplus_fill_super._entry, section ".printk_index", align 4
@.str.16 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"utf8\00", [27 x i8] zeroinitializer }, align 32
@hfsplus_fill_super._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.14, ptr @.str.15, i32 408, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013hfsplus: unable to load nls for utf8\0A\00", [56 x i8] zeroinitializer }, align 32
@hfsplus_fill_super._entry_ptr.19 = internal global ptr @hfsplus_fill_super._entry.17, section ".printk_index", align 4
@hfsplus_fill_super._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.14, ptr @.str.15, i32 415, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\014hfsplus: unable to find HFS+ superblock\0A\00", [53 x i8] zeroinitializer }, align 32
@hfsplus_fill_super._entry_ptr.22 = internal global ptr @hfsplus_fill_super._entry.20, section ".printk_index", align 4
@hfsplus_fill_super._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.14, ptr @.str.15, i32 424, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013hfsplus: wrong filesystem version\0A\00", [59 x i8] zeroinitializer }, align 32
@hfsplus_fill_super._entry_ptr.25 = internal global ptr @hfsplus_fill_super._entry.23, section ".printk_index", align 4
@hfsplus_fill_super._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.14, ptr @.str.15, i32 448, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013hfsplus: filesystem size too large\0A\00", [58 x i8] zeroinitializer }, align 32
@hfsplus_fill_super._entry_ptr.28 = internal global ptr @hfsplus_fill_super._entry.26, section ".printk_index", align 4
@hfsplus_sops = internal constant { %struct.super_operations, [60 x i8] } { %struct.super_operations { ptr @hfsplus_alloc_inode, ptr null, ptr @hfsplus_free_inode, ptr null, ptr @hfsplus_write_inode, ptr null, ptr @hfsplus_evict_inode, ptr @hfsplus_put_super, ptr @hfsplus_sync_fs, ptr null, ptr null, ptr null, ptr null, ptr @hfsplus_statfs, ptr @hfsplus_remount, ptr null, ptr @hfsplus_show_options, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@hfsplus_fill_super._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.14, ptr @.str.15, i32 457, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [108 x i8], [52 x i8] } { [108 x i8] c"\014hfsplus: Filesystem was not cleanly unmounted, running fsck.hfsplus is recommended.  mounting read-only.\0A\00", [52 x i8] zeroinitializer }, align 32
@hfsplus_fill_super._entry_ptr.31 = internal global ptr @hfsplus_fill_super._entry.29, section ".printk_index", align 4
@hfsplus_fill_super._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.14, ptr @.str.15, i32 462, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\014hfsplus: Filesystem is marked locked, mounting read-only.\0A\00", [35 x i8] zeroinitializer }, align 32
@hfsplus_fill_super._entry_ptr.34 = internal global ptr @hfsplus_fill_super._entry.32, section ".printk_index", align 4
@hfsplus_fill_super._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.14, ptr @.str.15, i32 466, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [128 x i8], [32 x i8] } { [128 x i8] c"\014hfsplus: write access to a journaled filesystem is not supported, use the force option at your own risk, mounting read-only.\0A\00", [32 x i8] zeroinitializer }, align 32
@hfsplus_fill_super._entry_ptr.37 = internal global ptr @hfsplus_fill_super._entry.35, section ".printk_index", align 4
@hfsplus_fill_super._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.14, ptr @.str.15, i32 475, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013hfsplus: failed to load extents file\0A\00", [56 x i8] zeroinitializer }, align 32
@hfsplus_fill_super._entry_ptr.40 = internal global ptr @hfsplus_fill_super._entry.38, section ".printk_index", align 4
@hfsplus_fill_super._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.14, ptr @.str.15, i32 480, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013hfsplus: failed to load catalog file\0A\00", [56 x i8] zeroinitializer }, align 32
@hfsplus_fill_super._entry_ptr.43 = internal global ptr @hfsplus_fill_super._entry.41, section ".printk_index", align 4
@hfsplus_fill_super._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.14, ptr @.str.15, i32 487, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013hfsplus: failed to load attributes file\0A\00", [53 x i8] zeroinitializer }, align 32
@hfsplus_fill_super._entry_ptr.46 = internal global ptr @hfsplus_fill_super._entry.44, section ".printk_index", align 4
@hfsplus_xattr_handlers = external dso_local global [0 x ptr], align 4
@hfsplus_fill_super._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.14, ptr @.str.15, i32 496, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013hfsplus: failed to load allocation file\0A\00", [53 x i8] zeroinitializer }, align 32
@hfsplus_fill_super._entry_ptr.49 = internal global ptr @hfsplus_fill_super._entry.47, section ".printk_index", align 4
@hfsplus_fill_super._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.14, ptr @.str.15, i32 505, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013hfsplus: failed to load root directory\0A\00", [54 x i8] zeroinitializer }, align 32
@hfsplus_fill_super._entry_ptr.52 = internal global ptr @hfsplus_fill_super._entry.50, section ".printk_index", align 4
@hfsplus_dentry_operations = external dso_local constant %struct.dentry_operations, align 128
@.str.53 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\E2\90\80\E2\90\80\E2\90\80\E2\90\80HFS+ Private Data\00", [34 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@delayed_sync_fs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.55, ptr @.str.15, i32 260, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013hfsplus: delayed sync fs err %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"delayed_sync_fs\00", [16 x i8] zeroinitializer }, align 32
@delayed_sync_fs._entry_ptr = internal global ptr @delayed_sync_fs._entry, section ".printk_index", align 4
@hfsplus_system_write_inode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.57, ptr @.str.15, i32 140, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013hfsplus: b-tree write err: %d, ino %lu\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"hfsplus_system_write_inode\00", [37 x i8] zeroinitializer }, align 32
@hfsplus_system_write_inode._entry_ptr = internal global ptr @hfsplus_system_write_inode._entry, section ".printk_index", align 4
@hfsplus_remount._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.59, ptr @.str.15, i32 342, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [107 x i8], [53 x i8] } { [107 x i8] c"\014hfsplus: filesystem was not cleanly unmounted, running fsck.hfsplus is recommended.  leaving read-only.\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"hfsplus_remount\00", [16 x i8] zeroinitializer }, align 32
@hfsplus_remount._entry_ptr = internal global ptr @hfsplus_remount._entry, section ".printk_index", align 4
@hfsplus_remount._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.59, ptr @.str.15, i32 349, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\014hfsplus: filesystem is marked locked, leaving read-only.\0A\00", [36 x i8] zeroinitializer }, align 32
@hfsplus_remount._entry_ptr.62 = internal global ptr @hfsplus_remount._entry.60, section ".printk_index", align 4
@hfsplus_remount._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.59, ptr @.str.15, i32 354, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\014hfsplus: filesystem is marked journaled, leaving read-only.\0A\00", [33 x i8] zeroinitializer }, align 32
@hfsplus_remount._entry_ptr.65 = internal global ptr @hfsplus_remount._entry.63, section ".printk_index", align 4
@.str.66 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"hfsplus_icache\00", [17 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 3, i64 4, i64 6, i64 7, i64 8]
@__sancov_gen_cov_switch_values.67 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967201]
@__sancov_gen_cov_switch_values.68 = internal global [7 x i64] [i64 5, i64 32, i64 3, i64 4, i64 6, i64 7, i64 8]
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 71, i32 2 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 72, i32 2 }
@___asan_gen_.81 = private unnamed_addr constant [16 x i8] c"hfsplus_fs_type\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 644, i32 32 }
@___asan_gen_.84 = private unnamed_addr constant [21 x i8] c"hfsplus_inode_cachep\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 621, i32 27 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 646, i32 11 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 392, i32 2 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 393, i32 2 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 394, i32 2 }
@___asan_gen_.114 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 395, i32 2 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 400, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 406, i32 22 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 408, i32 3 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 415, i32 4 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 424, i32 3 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 448, i32 3 }
@___asan_gen_.159 = private unnamed_addr constant [13 x i8] c"hfsplus_sops\00", align 1
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 362, i32 38 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 457, i32 3 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 462, i32 3 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 466, i32 3 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 475, i32 3 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 480, i32 3 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 487, i32 4 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 496, i32 3 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 505, i32 3 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 518, i32 13 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 260, i32 3 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 139, i32 4 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 342, i32 4 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 349, i32 4 }
@___asan_gen_.246 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 354, i32 4 }
@___asan_gen_.252 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.253 = private constant [22 x i8] c"../fs/hfsplus/super.c\00", align 1
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 664, i32 43 }
@llvm.compiler.used = appending global [88 x ptr] [ptr @__UNIQUE_ID_alias291, ptr @__UNIQUE_ID_author287, ptr @__UNIQUE_ID_description288, ptr @__UNIQUE_ID_file289, ptr @__UNIQUE_ID_license290, ptr @__exitcall_exit_hfsplus_fs, ptr @__initcall__kmod_hfsplus__292_699_init_hfsplus_fs6, ptr @delayed_sync_fs._entry, ptr @delayed_sync_fs._entry_ptr, ptr @exit_hfsplus_fs, ptr @hfsplus_fill_super._entry, ptr @hfsplus_fill_super._entry.17, ptr @hfsplus_fill_super._entry.20, ptr @hfsplus_fill_super._entry.23, ptr @hfsplus_fill_super._entry.26, ptr @hfsplus_fill_super._entry.29, ptr @hfsplus_fill_super._entry.32, ptr @hfsplus_fill_super._entry.35, ptr @hfsplus_fill_super._entry.38, ptr @hfsplus_fill_super._entry.41, ptr @hfsplus_fill_super._entry.44, ptr @hfsplus_fill_super._entry.47, ptr @hfsplus_fill_super._entry.50, ptr @hfsplus_fill_super._entry_ptr, ptr @hfsplus_fill_super._entry_ptr.19, ptr @hfsplus_fill_super._entry_ptr.22, ptr @hfsplus_fill_super._entry_ptr.25, ptr @hfsplus_fill_super._entry_ptr.28, ptr @hfsplus_fill_super._entry_ptr.31, ptr @hfsplus_fill_super._entry_ptr.34, ptr @hfsplus_fill_super._entry_ptr.37, ptr @hfsplus_fill_super._entry_ptr.40, ptr @hfsplus_fill_super._entry_ptr.43, ptr @hfsplus_fill_super._entry_ptr.46, ptr @hfsplus_fill_super._entry_ptr.49, ptr @hfsplus_fill_super._entry_ptr.52, ptr @hfsplus_remount._entry, ptr @hfsplus_remount._entry.60, ptr @hfsplus_remount._entry.63, ptr @hfsplus_remount._entry_ptr, ptr @hfsplus_remount._entry_ptr.62, ptr @hfsplus_remount._entry_ptr.65, ptr @hfsplus_system_write_inode._entry, ptr @hfsplus_system_write_inode._entry_ptr, ptr @hfsplus_iget.__key, ptr @.str, ptr @hfsplus_iget.__key.1, ptr @.str.2, ptr @hfsplus_fs_type, ptr @hfsplus_inode_cachep, ptr @.str.3, ptr @hfsplus_fill_super.__key, ptr @.str.4, ptr @hfsplus_fill_super.__key.5, ptr @.str.6, ptr @hfsplus_fill_super.__key.7, ptr @.str.8, ptr @hfsplus_fill_super.__key.9, ptr @.str.10, ptr @hfsplus_fill_super.__key.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.21, ptr @.str.24, ptr @.str.27, ptr @hfsplus_sops, ptr @.str.30, ptr @.str.33, ptr @.str.36, ptr @.str.39, ptr @.str.42, ptr @.str.45, ptr @.str.48, ptr @.str.51, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.61, ptr @.str.64, ptr @.str.66], section "llvm.metadata"
@0 = internal global [62 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hfsplus_iget.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hfsplus_iget.__key.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hfsplus_fs_type to i32), i32 116, i32 160, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hfsplus_inode_cachep to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hfsplus_fill_super.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hfsplus_fill_super.__key.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hfsplus_fill_super.__key.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hfsplus_fill_super.__key.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hfsplus_fill_super.__key.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hfsplus_fill_super._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hfsplus_fill_super._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hfsplus_fill_super._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hfsplus_fill_super._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hfsplus_fill_super._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hfsplus_sops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hfsplus_fill_super._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hfsplus_fill_super._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hfsplus_fill_super._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hfsplus_fill_super._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hfsplus_fill_super._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hfsplus_fill_super._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hfsplus_fill_super._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hfsplus_fill_super._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @delayed_sync_fs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hfsplus_system_write_inode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hfsplus_remount._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 107, i32 160, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hfsplus_remount._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hfsplus_remount._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @hfsplus_iget(ptr noundef %sb, i32 noundef %ino) local_unnamed_addr #0 align 64 {
entry:
  %fd = alloca %struct.hfs_find_data, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %fd) #8
  %0 = call ptr @memset(ptr %fd, i32 255, i32 36)
  %call = tail call ptr @iget_locked(ptr noundef %sb, i32 noundef %ino) #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %i_state = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 24
  %1 = ptrtoint ptr %i_state to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %i_state, align 8
  %and = and i32 %2, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %add.ptr.i = getelementptr i8, ptr %call, i32 -344
  %open_dir_list = getelementptr i8, ptr %call, i32 -64
  %3 = ptrtoint ptr %open_dir_list to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %open_dir_list, ptr %open_dir_list, align 4
  %prev.i = getelementptr i8, ptr %call, i32 -60
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %open_dir_list, ptr %prev.i, align 4
  %open_dir_lock = getelementptr i8, ptr %call, i32 -56
  tail call void @__raw_spin_lock_init(ptr noundef %open_dir_lock, ptr noundef nonnull @.str, ptr noundef nonnull @hfsplus_iget.__key, i16 noundef signext 3) #8
  %extents_lock = getelementptr i8, ptr %call, i32 -188
  tail call void @__mutex_init(ptr noundef %extents_lock, ptr noundef nonnull @.str.2, ptr noundef nonnull @hfsplus_iget.__key.1) #8
  %flags = getelementptr i8, ptr %call, i32 -84
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %flags, align 4
  %extent_state = getelementptr i8, ptr %call, i32 -192
  %6 = ptrtoint ptr %extent_state to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %extent_state, align 8
  %rsrc_inode = getelementptr i8, ptr %call, i32 -96
  %7 = ptrtoint ptr %rsrc_inode to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %rsrc_inode, align 8
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %add.ptr.i, i32 noundef 4) #8
  %8 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile i32 0, ptr %add.ptr.i, align 4
  %i_ino = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 11
  %9 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %i_ino, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %10)
  %cmp = icmp ugt i32 %10, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %10)
  %cmp17 = icmp eq i32 %10, 2
  %or.cond = or i1 %cmp, %cmp17
  %i_sb = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 8
  %11 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %12, i32 0, i32 33
  %13 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %s_fs_info.i, align 16
  br i1 %or.cond, label %if.then18, label %if.else

if.then18:                                        ; preds = %if.end4
  %cat_tree = getelementptr inbounds %struct.hfsplus_sb_info, ptr %14, i32 0, i32 5
  %15 = ptrtoint ptr %cat_tree to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %cat_tree, align 4
  %call20 = call i32 @hfsplus_find_init(ptr noundef %16, ptr noundef nonnull %fd) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.then22, label %if.then18.if.then34_crit_edge

if.then18.if.then34_crit_edge:                    ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then34

if.then22:                                        ; preds = %if.then18
  %17 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %i_sb, align 4
  %19 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %i_ino, align 8
  %call25 = call i32 @hfsplus_find_cat(ptr noundef %18, i32 noundef %20, ptr noundef nonnull %fd) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end32, label %if.end32.thread74

if.end32.thread74:                                ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #10
  call void @hfsplus_find_exit(ptr noundef nonnull %fd) #8
  br label %if.then34

if.else:                                          ; preds = %if.end4
  %s_vhdr.i = getelementptr inbounds %struct.hfsplus_sb_info, ptr %14, i32 0, i32 1
  %21 = ptrtoint ptr %s_vhdr.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %s_vhdr.i, align 4
  %23 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values)
  switch i32 %10, label %if.else.if.then34_crit_edge [
    i32 3, label %sw.bb.i
    i32 4, label %sw.bb1.i
    i32 6, label %sw.bb4.i
    i32 7, label %sw.bb7.i
    i32 8, label %sw.bb8.i
  ]

if.else.if.then34_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then34

sw.bb.i:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %ext_file.i = getelementptr inbounds %struct.hfsplus_vh, ptr %22, i32 0, i32 22
  tail call void @hfsplus_inode_read_fork(ptr noundef nonnull %call, ptr noundef %ext_file.i) #8
  %i_mapping.i = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 9
  %24 = ptrtoint ptr %i_mapping.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %i_mapping.i, align 8
  %a_ops.i = getelementptr inbounds %struct.address_space, ptr %25, i32 0, i32 9
  %26 = ptrtoint ptr %a_ops.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @hfsplus_btree_aops, ptr %a_ops.i, align 4
  br label %if.end36

sw.bb1.i:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %cat_file.i = getelementptr inbounds %struct.hfsplus_vh, ptr %22, i32 0, i32 23
  tail call void @hfsplus_inode_read_fork(ptr noundef nonnull %call, ptr noundef %cat_file.i) #8
  %i_mapping2.i = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 9
  %27 = ptrtoint ptr %i_mapping2.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %i_mapping2.i, align 8
  %a_ops3.i = getelementptr inbounds %struct.address_space, ptr %28, i32 0, i32 9
  %29 = ptrtoint ptr %a_ops3.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @hfsplus_btree_aops, ptr %a_ops3.i, align 4
  br label %if.end36

sw.bb4.i:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %alloc_file.i = getelementptr inbounds %struct.hfsplus_vh, ptr %22, i32 0, i32 21
  tail call void @hfsplus_inode_read_fork(ptr noundef nonnull %call, ptr noundef %alloc_file.i) #8
  %i_mapping5.i = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 9
  %30 = ptrtoint ptr %i_mapping5.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %i_mapping5.i, align 8
  %a_ops6.i = getelementptr inbounds %struct.address_space, ptr %31, i32 0, i32 9
  %32 = ptrtoint ptr %a_ops6.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @hfsplus_aops, ptr %a_ops6.i, align 4
  br label %if.end36

sw.bb7.i:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %start_file.i = getelementptr inbounds %struct.hfsplus_vh, ptr %22, i32 0, i32 25
  tail call void @hfsplus_inode_read_fork(ptr noundef nonnull %call, ptr noundef %start_file.i) #8
  br label %if.end36

sw.bb8.i:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %attr_file.i = getelementptr inbounds %struct.hfsplus_vh, ptr %22, i32 0, i32 24
  tail call void @hfsplus_inode_read_fork(ptr noundef nonnull %call, ptr noundef %attr_file.i) #8
  %i_mapping9.i = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 9
  %33 = ptrtoint ptr %i_mapping9.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %i_mapping9.i, align 8
  %a_ops10.i = getelementptr inbounds %struct.address_space, ptr %34, i32 0, i32 9
  %35 = ptrtoint ptr %a_ops10.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @hfsplus_btree_aops, ptr %a_ops10.i, align 4
  br label %if.end36

if.end32:                                         ; preds = %if.then22
  %call28 = call i32 @hfsplus_cat_read_inode(ptr noundef nonnull %call, ptr noundef nonnull %fd) #8
  call void @hfsplus_find_exit(ptr noundef nonnull %fd) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool33.not = icmp eq i32 %call28, 0
  br i1 %tobool33.not, label %if.end32.if.end36_crit_edge, label %if.end32.if.then34_crit_edge

if.end32.if.then34_crit_edge:                     ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then34

if.end32.if.end36_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36

if.then34:                                        ; preds = %if.end32.if.then34_crit_edge, %if.else.if.then34_crit_edge, %if.end32.thread74, %if.then18.if.then34_crit_edge
  %err.173 = phi i32 [ %call28, %if.end32.if.then34_crit_edge ], [ %call25, %if.end32.thread74 ], [ -5, %if.else.if.then34_crit_edge ], [ %call20, %if.then18.if.then34_crit_edge ]
  call void @iget_failed(ptr noundef nonnull %call) #8
  %36 = inttoptr i32 %err.173 to ptr
  br label %cleanup

if.end36:                                         ; preds = %if.end32.if.end36_crit_edge, %sw.bb8.i, %sw.bb7.i, %sw.bb4.i, %sw.bb1.i, %sw.bb.i
  call void @unlock_new_inode(ptr noundef nonnull %call) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end36, %if.then34, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %36, %if.then34 ], [ %call, %if.end36 ], [ %call, %if.end.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %fd) #8
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iget_locked(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hfsplus_find_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hfsplus_find_cat(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hfsplus_cat_read_inode(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @hfsplus_find_exit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iget_failed(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_new_inode(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hfsplus_mark_mdb_dirty(ptr nocapture noundef readonly %sb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  br i1 %tobool.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %work_lock = getelementptr inbounds %struct.hfsplus_sb_info, ptr %1, i32 0, i32 36
  tail call void @_raw_spin_lock(ptr noundef %work_lock) #8
  %work_queued = getelementptr inbounds %struct.hfsplus_sb_info, ptr %1, i32 0, i32 34
  %4 = ptrtoint ptr %work_queued to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %work_queued, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.else.i, label %if.end.if.end6_crit_edge

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

if.else.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dirty_writeback_interval to i32))
  %6 = load i32, ptr @dirty_writeback_interval, align 4
  %mul = mul i32 %6, 10
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %mul) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_long_wq to i32))
  %7 = load ptr, ptr @system_long_wq, align 4
  %sync_work = getelementptr inbounds %struct.hfsplus_sb_info, ptr %1, i32 0, i32 35
  %call.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %7, ptr noundef %sync_work, i32 noundef %call2.i) #8
  %8 = ptrtoint ptr %work_queued to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %work_queued, align 8
  br label %if.end6

if.end6:                                          ; preds = %if.else.i, %if.end.if.end6_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %work_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @exit_hfsplus_fs() #3 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 @unregister_filesystem(ptr noundef nonnull @hfsplus_fs_type) #8
  tail call void @rcu_barrier() #8
  tail call void @hfsplus_destroy_attr_tree_cache() #8
  %0 = load ptr, ptr @hfsplus_inode_cachep, align 4
  tail call void @kmem_cache_destroy(ptr noundef %0) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_filesystem(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_barrier() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @hfsplus_destroy_attr_tree_cache() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @init_hfsplus_fs() #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.66, i32 noundef 1128, i32 noundef 0, i32 noundef 67117056, ptr noundef nonnull @hfsplus_init_once) #8
  store ptr %call, ptr @hfsplus_inode_cachep, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @hfsplus_create_attr_tree_cache() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.destroy_inode_cache_crit_edge

if.end.destroy_inode_cache_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %destroy_inode_cache

if.end4:                                          ; preds = %if.end
  %call5 = tail call i32 @register_filesystem(ptr noundef nonnull @hfsplus_fs_type) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end4.cleanup_crit_edge, label %destroy_attr_tree_cache

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

destroy_attr_tree_cache:                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @hfsplus_destroy_attr_tree_cache() #8
  br label %destroy_inode_cache

destroy_inode_cache:                              ; preds = %destroy_attr_tree_cache, %if.end.destroy_inode_cache_crit_edge
  %err.0 = phi i32 [ %call1, %if.end.destroy_inode_cache_crit_edge ], [ %call5, %destroy_attr_tree_cache ]
  %0 = load ptr, ptr @hfsplus_inode_cachep, align 4
  tail call void @kmem_cache_destroy(ptr noundef %0) #8
  br label %cleanup

cleanup:                                          ; preds = %destroy_inode_cache, %if.end4.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %destroy_inode_cache ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @hfsplus_inode_read_fork(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @hfsplus_mount(ptr noundef %fs_type, i32 noundef %flags, ptr noundef %dev_name, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @mount_bdev(ptr noundef %fs_type, i32 noundef %flags, ptr noundef %dev_name, ptr noundef %data, ptr noundef nonnull @hfsplus_fill_super) #8
  ret ptr %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kill_block_super(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mount_bdev(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hfsplus_fill_super(ptr noundef %sb, ptr noundef %data, i32 noundef %silent) #0 align 64 {
entry:
  %entry1 = alloca %union.hfsplus_cat_entry, align 2
  %fd = alloca %struct.hfs_find_data, align 4
  %str = alloca %struct.qstr, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 520, ptr nonnull %entry1) #8
  %0 = call ptr @memset(ptr %entry1, i32 255, i32 520)
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %fd) #8
  %1 = call ptr @memset(ptr %fd, i32 255, i32 36)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %str) #8
  %2 = call ptr @memset(ptr %str, i32 255, i32 16)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 472) #12
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call7.i.i, ptr %s_fs_info, align 16
  %alloc_mutex = getelementptr inbounds %struct.hfsplus_sb_info, ptr %call7.i.i, i32 0, i32 21
  tail call void @__mutex_init(ptr noundef %alloc_mutex, ptr noundef nonnull @.str.4, ptr noundef nonnull @hfsplus_fill_super.__key) #8
  %vh_mutex = getelementptr inbounds %struct.hfsplus_sb_info, ptr %call7.i.i, i32 0, i32 25
  tail call void @__mutex_init(ptr noundef %vh_mutex, ptr noundef nonnull @.str.6, ptr noundef nonnull @hfsplus_fill_super.__key.5) #8
  %work_lock = getelementptr inbounds %struct.hfsplus_sb_info, ptr %call7.i.i, i32 0, i32 36
  tail call void @__raw_spin_lock_init(ptr noundef %work_lock, ptr noundef nonnull @.str.8, ptr noundef nonnull @hfsplus_fill_super.__key.7, i16 noundef signext 3) #8
  %sync_work = getelementptr inbounds %struct.hfsplus_sb_info, ptr %call7.i.i, i32 0, i32 35
  tail call void @__init_work(ptr noundef %sync_work, i32 noundef 0) #8
  %5 = ptrtoint ptr %sync_work to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -64, ptr %sync_work, align 4
  %lockdep_map = getelementptr inbounds %struct.hfsplus_sb_info, ptr %call7.i.i, i32 0, i32 35, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.10, ptr noundef nonnull @hfsplus_fill_super.__key.9, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  %entry18 = getelementptr inbounds %struct.hfsplus_sb_info, ptr %call7.i.i, i32 0, i32 35, i32 0, i32 1
  %6 = ptrtoint ptr %entry18 to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %entry18, ptr %entry18, align 8
  %prev.i = getelementptr inbounds %struct.hfsplus_sb_info, ptr %call7.i.i, i32 0, i32 35, i32 0, i32 1, i32 1
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %entry18, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.hfsplus_sb_info, ptr %call7.i.i, i32 0, i32 35, i32 0, i32 2
  %8 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @delayed_sync_fs, ptr %func, align 8
  %timer = getelementptr inbounds %struct.hfsplus_sb_info, ptr %call7.i.i, i32 0, i32 35, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.12, ptr noundef nonnull @hfsplus_fill_super.__key.11) #8
  tail call void @hfsplus_fill_defaults(ptr noundef nonnull %call7.i.i) #8
  %call29 = tail call i32 @hfsplus_parse_options(ptr noundef %data, ptr noundef nonnull %call7.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %do.end34, label %if.end36

do.end34:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call35 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13) #11
  br label %out_unload_nls

if.end36:                                         ; preds = %if.end
  %nls37 = getelementptr inbounds %struct.hfsplus_sb_info, ptr %call7.i.i, i32 0, i32 10
  %9 = ptrtoint ptr %nls37 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %nls37, align 8
  %call38 = tail call ptr @load_nls(ptr noundef nonnull @.str.16) #8
  %11 = ptrtoint ptr %nls37 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call38, ptr %nls37, align 8
  %tobool41.not = icmp eq ptr %call38, null
  br i1 %tobool41.not, label %do.end45, label %if.end48

do.end45:                                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  %call47 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18) #11
  br label %out_unload_nls

if.end48:                                         ; preds = %if.end36
  %call49 = tail call i32 @hfsplus_read_wrapper(ptr noundef %sb) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %if.end60, label %if.then51

if.then51:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %silent)
  %tobool52.not = icmp eq i32 %silent, 0
  br i1 %tobool52.not, label %do.end56, label %if.then51.out_unload_nls_crit_edge

if.then51.out_unload_nls_crit_edge:               ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_unload_nls

do.end56:                                         ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #10
  %call58 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21) #11
  br label %out_unload_nls

if.end60:                                         ; preds = %if.end48
  %s_vhdr = getelementptr inbounds %struct.hfsplus_sb_info, ptr %call7.i.i, i32 0, i32 1
  %12 = ptrtoint ptr %s_vhdr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %s_vhdr, align 4
  %s_magic = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 12
  %14 = ptrtoint ptr %s_magic to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 18475, ptr %s_magic, align 4
  %version = getelementptr inbounds %struct.hfsplus_vh, ptr %13, i32 0, i32 1
  %15 = ptrtoint ptr %version to i32
  call void @__asan_loadN_noabort(i32 %15, i32 2)
  %16 = load i16, ptr %version, align 1
  %17 = add i16 %16, -6
  call void @__sanitizer_cov_trace_const_cmp2(i16 -2, i16 %17)
  %18 = icmp ult i16 %17, -2
  br i1 %18, label %do.end69, label %if.end72

do.end69:                                         ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #10
  %call71 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24) #11
  br label %out_free_vhdr

if.end72:                                         ; preds = %if.end60
  %total_blocks = getelementptr inbounds %struct.hfsplus_vh, ptr %13, i32 0, i32 12
  %19 = ptrtoint ptr %total_blocks to i32
  call void @__asan_loadN_noabort(i32 %19, i32 4)
  %20 = load i32, ptr %total_blocks, align 1
  %total_blocks73 = getelementptr inbounds %struct.hfsplus_sb_info, ptr %call7.i.i, i32 0, i32 17
  %21 = ptrtoint ptr %total_blocks73 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %total_blocks73, align 4
  %free_blocks = getelementptr inbounds %struct.hfsplus_vh, ptr %13, i32 0, i32 13
  %22 = ptrtoint ptr %free_blocks to i32
  call void @__asan_loadN_noabort(i32 %22, i32 4)
  %23 = load i32, ptr %free_blocks, align 1
  %free_blocks74 = getelementptr inbounds %struct.hfsplus_sb_info, ptr %call7.i.i, i32 0, i32 20
  %24 = ptrtoint ptr %free_blocks74 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %free_blocks74, align 8
  %next_cnid = getelementptr inbounds %struct.hfsplus_vh, ptr %13, i32 0, i32 17
  %25 = ptrtoint ptr %next_cnid to i32
  call void @__asan_loadN_noabort(i32 %25, i32 4)
  %26 = load i32, ptr %next_cnid, align 1
  %next_cnid75 = getelementptr inbounds %struct.hfsplus_sb_info, ptr %call7.i.i, i32 0, i32 22
  %27 = ptrtoint ptr %next_cnid75 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %next_cnid75, align 8
  %file_count = getelementptr inbounds %struct.hfsplus_vh, ptr %13, i32 0, i32 9
  %28 = ptrtoint ptr %file_count to i32
  call void @__asan_loadN_noabort(i32 %28, i32 4)
  %29 = load i32, ptr %file_count, align 1
  %file_count76 = getelementptr inbounds %struct.hfsplus_sb_info, ptr %call7.i.i, i32 0, i32 23
  %30 = ptrtoint ptr %file_count76 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %file_count76, align 4
  %folder_count = getelementptr inbounds %struct.hfsplus_vh, ptr %13, i32 0, i32 10
  %31 = ptrtoint ptr %folder_count to i32
  call void @__asan_loadN_noabort(i32 %31, i32 4)
  %32 = load i32, ptr %folder_count, align 1
  %folder_count77 = getelementptr inbounds %struct.hfsplus_sb_info, ptr %call7.i.i, i32 0, i32 24
  %33 = ptrtoint ptr %folder_count77 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %folder_count77, align 8
  %data_clump_sz = getelementptr inbounds %struct.hfsplus_vh, ptr %13, i32 0, i32 16
  %34 = ptrtoint ptr %data_clump_sz to i32
  call void @__asan_loadN_noabort(i32 %34, i32 4)
  %35 = load i32, ptr %data_clump_sz, align 1
  %alloc_blksz_shift = getelementptr inbounds %struct.hfsplus_sb_info, ptr %call7.i.i, i32 0, i32 16
  %36 = ptrtoint ptr %alloc_blksz_shift to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %alloc_blksz_shift, align 8
  %shr = lshr i32 %35, %37
  %data_clump_blocks = getelementptr inbounds %struct.hfsplus_sb_info, ptr %call7.i.i, i32 0, i32 18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr)
  %tobool79.not = icmp eq i32 %shr, 0
  %spec.select = select i1 %tobool79.not, i32 1, i32 %shr
  %38 = ptrtoint ptr %data_clump_blocks to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %spec.select, ptr %data_clump_blocks, align 8
  %rsrc_clump_sz = getelementptr inbounds %struct.hfsplus_vh, ptr %13, i32 0, i32 15
  %39 = ptrtoint ptr %rsrc_clump_sz to i32
  call void @__asan_loadN_noabort(i32 %39, i32 4)
  %40 = load i32, ptr %rsrc_clump_sz, align 1
  %shr84 = lshr i32 %40, %37
  %rsrc_clump_blocks = getelementptr inbounds %struct.hfsplus_sb_info, ptr %call7.i.i, i32 0, i32 19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr84)
  %tobool86.not = icmp eq i32 %shr84, 0
  %storemerge432 = select i1 %tobool86.not, i32 1, i32 %shr84
  %41 = ptrtoint ptr %rsrc_clump_blocks to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %storemerge432, ptr %rsrc_clump_blocks, align 4
  %sub = add i32 %20, -1
  %conv91 = zext i32 %sub to i64
  %sub95 = add i32 %37, -9
  %sh_prom96 = zext i32 %sub95 to i64
  %shr97 = lshr i64 -1, %sh_prom96
  call void @__sanitizer_cov_trace_cmp8(i64 %shr97, i64 %conv91)
  %cmp98 = icmp ult i64 %shr97, %conv91
  br i1 %cmp98, label %if.end72.do.end106_crit_edge, label %lor.lhs.false100

if.end72.do.end106_crit_edge:                     ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end106

lor.lhs.false100:                                 ; preds = %if.end72
  %sh_prom = zext i32 %37 to i64
  %shl = shl i64 %conv91, %sh_prom
  call void @__sanitizer_cov_trace_const_cmp8(i64 17592186044415, i64 %shl)
  %cmp101 = icmp ugt i64 %shl, 17592186044415
  br i1 %cmp101, label %lor.lhs.false100.do.end106_crit_edge, label %if.end109

lor.lhs.false100.do.end106_crit_edge:             ; preds = %lor.lhs.false100
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end106

do.end106:                                        ; preds = %lor.lhs.false100.do.end106_crit_edge, %if.end72.do.end106_crit_edge
  %call108 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27) #11
  br label %out_free_vhdr

if.end109:                                        ; preds = %lor.lhs.false100
  %s_op = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 6
  %42 = ptrtoint ptr %s_op to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @hfsplus_sops, ptr %s_op, align 4
  %s_maxbytes = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 4
  %43 = ptrtoint ptr %s_maxbytes to i32
  call void @__asan_store8_noabort(i32 %43)
  store i64 17592186040320, ptr %s_maxbytes, align 8
  %attributes = getelementptr inbounds %struct.hfsplus_vh, ptr %13, i32 0, i32 2
  %44 = ptrtoint ptr %attributes to i32
  call void @__asan_loadN_noabort(i32 %44, i32 4)
  %45 = load i32, ptr %attributes, align 1
  %and = and i32 %45, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool110.not = icmp eq i32 %and, 0
  br i1 %tobool110.not, label %do.end114, label %if.else

do.end114:                                        ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #10
  %call116 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30) #11
  %s_flags = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 10
  br label %if.end148.sink.split

if.else:                                          ; preds = %if.end109
  %flags = getelementptr inbounds %struct.hfsplus_sb_info, ptr %call7.i.i, i32 0, i32 33
  %call117 = tail call i32 @_test_and_clear_bit(i32 noundef 2, ptr noundef %flags) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call117)
  %tobool118.not = icmp eq i32 %call117, 0
  br i1 %tobool118.not, label %if.else120, label %if.else.if.end148_crit_edge

if.else.if.end148_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end148

if.else120:                                       ; preds = %if.else
  %46 = ptrtoint ptr %attributes to i32
  call void @__asan_loadN_noabort(i32 %46, i32 4)
  %47 = load i32, ptr %attributes, align 1
  %and122 = and i32 %47, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and122)
  %tobool123.not = icmp eq i32 %and122, 0
  br i1 %tobool123.not, label %if.else132, label %do.end127

do.end127:                                        ; preds = %if.else120
  call void @__sanitizer_cov_trace_pc() #10
  %call129 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33) #11
  %s_flags130 = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 10
  br label %if.end148.sink.split

if.else132:                                       ; preds = %if.else120
  %and134 = and i32 %47, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and134)
  %tobool135.not = icmp eq i32 %and134, 0
  br i1 %tobool135.not, label %if.else132.if.end148_crit_edge, label %land.lhs.true

if.else132.if.end148_crit_edge:                   ; preds = %if.else132
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end148

land.lhs.true:                                    ; preds = %if.else132
  %s_flags.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 10
  %48 = ptrtoint ptr %s_flags.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %s_flags.i, align 4
  %and.i = and i32 %49, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %do.end140, label %land.lhs.true.if.end148_crit_edge

land.lhs.true.if.end148_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end148

do.end140:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %call142 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36) #11
  br label %if.end148.sink.split

if.end148.sink.split:                             ; preds = %do.end140, %do.end127, %do.end114
  %s_flags.i.sink440 = phi ptr [ %s_flags.i, %do.end140 ], [ %s_flags130, %do.end127 ], [ %s_flags, %do.end114 ]
  %50 = ptrtoint ptr %s_flags.i.sink440 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %s_flags.i.sink440, align 4
  %or144 = or i32 %51, 1
  store i32 %or144, ptr %s_flags.i.sink440, align 4
  br label %if.end148

if.end148:                                        ; preds = %if.end148.sink.split, %land.lhs.true.if.end148_crit_edge, %if.else132.if.end148_crit_edge, %if.else.if.end148_crit_edge
  %call149 = tail call ptr @hfsplus_btree_open(ptr noundef %sb, i32 noundef 3) #8
  %ext_tree = getelementptr inbounds %struct.hfsplus_sb_info, ptr %call7.i.i, i32 0, i32 4
  %52 = ptrtoint ptr %ext_tree to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %call149, ptr %ext_tree, align 8
  %tobool151.not = icmp eq ptr %call149, null
  br i1 %tobool151.not, label %do.end155, label %if.end158

do.end155:                                        ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #10
  %call157 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39) #11
  br label %out_free_vhdr

if.end158:                                        ; preds = %if.end148
  %call159 = tail call ptr @hfsplus_btree_open(ptr noundef %sb, i32 noundef 4) #8
  %cat_tree = getelementptr inbounds %struct.hfsplus_sb_info, ptr %call7.i.i, i32 0, i32 5
  %53 = ptrtoint ptr %cat_tree to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %call159, ptr %cat_tree, align 4
  %tobool161.not = icmp eq ptr %call159, null
  br i1 %tobool161.not, label %do.end165, label %if.end168

do.end165:                                        ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #10
  %call167 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42) #11
  br label %out_close_ext_tree

if.end168:                                        ; preds = %if.end158
  %attr_tree_state = getelementptr inbounds %struct.hfsplus_sb_info, ptr %call7.i.i, i32 0, i32 7
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %attr_tree_state, i32 noundef 4) #8
  %54 = ptrtoint ptr %attr_tree_state to i32
  call void @__asan_store4_noabort(i32 %54)
  store volatile i32 0, ptr %attr_tree_state, align 4
  %total_blocks169 = getelementptr inbounds %struct.hfsplus_vh, ptr %13, i32 0, i32 24, i32 2
  %55 = ptrtoint ptr %total_blocks169 to i32
  call void @__asan_loadN_noabort(i32 %55, i32 4)
  %56 = load i32, ptr %total_blocks169, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %cmp170.not = icmp eq i32 %56, 0
  br i1 %cmp170.not, label %if.end168.if.end184_crit_edge, label %if.then172

if.end168.if.end184_crit_edge:                    ; preds = %if.end168
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end184

if.then172:                                       ; preds = %if.end168
  %call173 = tail call ptr @hfsplus_btree_open(ptr noundef %sb, i32 noundef 8) #8
  %attr_tree = getelementptr inbounds %struct.hfsplus_sb_info, ptr %call7.i.i, i32 0, i32 6
  %57 = ptrtoint ptr %attr_tree to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %call173, ptr %attr_tree, align 8
  %tobool175.not = icmp eq ptr %call173, null
  br i1 %tobool175.not, label %do.end179, label %if.end182

do.end179:                                        ; preds = %if.then172
  call void @__sanitizer_cov_trace_pc() #10
  %call181 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45) #11
  br label %out_close_cat_tree

if.end182:                                        ; preds = %if.then172
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i433 = tail call zeroext i1 @__kasan_check_write(ptr noundef %attr_tree_state, i32 noundef 4) #8
  %58 = ptrtoint ptr %attr_tree_state to i32
  call void @__asan_store4_noabort(i32 %58)
  store volatile i32 2, ptr %attr_tree_state, align 4
  br label %if.end184

if.end184:                                        ; preds = %if.end182, %if.end168.if.end184_crit_edge
  %s_xattr = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 18
  %59 = ptrtoint ptr %s_xattr to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr @hfsplus_xattr_handlers, ptr %s_xattr, align 16
  %call185 = tail call ptr @hfsplus_iget(ptr noundef %sb, i32 noundef 6)
  %cmp.i = icmp ugt ptr %call185, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end190, label %if.end194

do.end190:                                        ; preds = %if.end184
  call void @__sanitizer_cov_trace_pc() #10
  %call192 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48) #11
  %60 = ptrtoint ptr %call185 to i32
  br label %out_close_attr_tree

if.end194:                                        ; preds = %if.end184
  %alloc_file = getelementptr inbounds %struct.hfsplus_sb_info, ptr %call7.i.i, i32 0, i32 8
  %61 = ptrtoint ptr %alloc_file to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %call185, ptr %alloc_file, align 8
  %call195 = tail call ptr @hfsplus_iget(ptr noundef %sb, i32 noundef 2)
  %cmp.i434 = icmp ugt ptr %call195, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i434, label %do.end200, label %if.end204

do.end200:                                        ; preds = %if.end194
  call void @__sanitizer_cov_trace_pc() #10
  %call202 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51) #11
  %62 = ptrtoint ptr %call195 to i32
  br label %out_put_alloc_file

if.end204:                                        ; preds = %if.end194
  %s_d_op = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 45
  %63 = ptrtoint ptr %s_d_op to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr @hfsplus_dentry_operations, ptr %s_d_op, align 8
  %call205 = tail call ptr @d_make_root(ptr noundef %call195) #8
  %s_root = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 13
  %64 = ptrtoint ptr %s_root to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %call205, ptr %s_root, align 64
  %tobool207.not = icmp eq ptr %call205, null
  br i1 %tobool207.not, label %if.end204.out_put_alloc_file_crit_edge, label %if.end209

if.end204.out_put_alloc_file_crit_edge:           ; preds = %if.end204
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_put_alloc_file

if.end209:                                        ; preds = %if.end204
  %65 = ptrtoint ptr %str to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 29, ptr %str, align 8
  %name = getelementptr inbounds %struct.qstr, ptr %str, i32 0, i32 1
  %66 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr @.str.53, ptr %name, align 8
  %67 = ptrtoint ptr %cat_tree to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %cat_tree, align 4
  %call211 = call i32 @hfsplus_find_init(ptr noundef %68, ptr noundef nonnull %fd) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call211)
  %tobool212.not = icmp eq i32 %call211, 0
  br i1 %tobool212.not, label %if.end214, label %if.end209.out_put_root_crit_edge

if.end209.out_put_root_crit_edge:                 ; preds = %if.end209
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_put_root

if.end214:                                        ; preds = %if.end209
  %69 = ptrtoint ptr %fd to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %fd, align 4
  %call215 = call i32 @hfsplus_cat_build_key(ptr noundef %sb, ptr noundef %70, i32 noundef 2, ptr noundef nonnull %str) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call215)
  %cmp216 = icmp slt i32 %call215, 0
  br i1 %cmp216, label %if.end214.out_put_root_crit_edge, label %if.end221, !prof !133

if.end214.out_put_root_crit_edge:                 ; preds = %if.end214
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_put_root

if.end221:                                        ; preds = %if.end214
  %call222 = call i32 @hfsplus_brec_read(ptr noundef nonnull %fd, ptr noundef nonnull %entry1, i32 noundef 520) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call222)
  %tobool223.not = icmp eq i32 %call222, 0
  call void @hfsplus_find_exit(ptr noundef nonnull %fd) #8
  br i1 %tobool223.not, label %if.then224, label %if.end221.if.end236_crit_edge

if.end221.if.end236_crit_edge:                    ; preds = %if.end221
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end236

if.then224:                                       ; preds = %if.end221
  %71 = ptrtoint ptr %entry1 to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %entry1, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %72)
  %cmp226.not = icmp eq i16 %72, 1
  br i1 %cmp226.not, label %if.end229, label %if.then224.out_put_root_crit_edge

if.then224.out_put_root_crit_edge:                ; preds = %if.then224
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_put_root

if.end229:                                        ; preds = %if.then224
  %id = getelementptr inbounds %struct.hfsplus_cat_folder, ptr %entry1, i32 0, i32 3
  %73 = ptrtoint ptr %id to i32
  call void @__asan_loadN_noabort(i32 %73, i32 4)
  %74 = load i32, ptr %id, align 2
  %call230 = call ptr @hfsplus_iget(ptr noundef %sb, i32 noundef %74)
  %cmp.i435 = icmp ugt ptr %call230, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i435, label %if.then232, label %if.end234

if.then232:                                       ; preds = %if.end229
  call void @__sanitizer_cov_trace_pc() #10
  %75 = ptrtoint ptr %call230 to i32
  br label %out_put_root

if.end234:                                        ; preds = %if.end229
  call void @__sanitizer_cov_trace_pc() #10
  %hidden_dir = getelementptr inbounds %struct.hfsplus_sb_info, ptr %call7.i.i, i32 0, i32 9
  %76 = ptrtoint ptr %hidden_dir to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %call230, ptr %hidden_dir, align 4
  br label %if.end236

if.end236:                                        ; preds = %if.end234, %if.end221.if.end236_crit_edge
  %s_flags.i436 = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 10
  %77 = ptrtoint ptr %s_flags.i436 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %s_flags.i436, align 4
  %and.i437 = and i32 %78, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i437)
  %tobool.i438.not = icmp eq i32 %and.i437, 0
  br i1 %tobool.i438.not, label %if.then238, label %if.end236.if.end281_crit_edge

if.end236.if.end281_crit_edge:                    ; preds = %if.end236
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end281

if.then238:                                       ; preds = %if.end236
  %last_mount_vers = getelementptr inbounds %struct.hfsplus_vh, ptr %13, i32 0, i32 3
  %79 = ptrtoint ptr %last_mount_vers to i32
  call void @__asan_storeN_noabort(i32 %79, i32 4)
  store i32 1210797176, ptr %last_mount_vers, align 1
  %call239 = call i64 @ktime_get_real_seconds() #8
  %conv.i = trunc i64 %call239 to i32
  %add.i = add i32 %conv.i, 2082844800
  %modify_date = getelementptr inbounds %struct.hfsplus_vh, ptr %13, i32 0, i32 6
  %80 = ptrtoint ptr %modify_date to i32
  call void @__asan_storeN_noabort(i32 %80, i32 4)
  store i32 %add.i, ptr %modify_date, align 1
  %write_count = getelementptr inbounds %struct.hfsplus_vh, ptr %13, i32 0, i32 18
  %81 = ptrtoint ptr %write_count to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %write_count, align 4
  %add.i439 = add i32 %82, 1
  store i32 %add.i439, ptr %write_count, align 4
  %83 = ptrtoint ptr %attributes to i32
  call void @__asan_loadN_noabort(i32 %83, i32 4)
  %84 = load i32, ptr %attributes, align 1
  %and242 = and i32 %84, -2305
  %or244 = or i32 %and242, 2048
  store i32 %or244, ptr %attributes, align 1
  %call245 = call i32 @hfsplus_sync_fs(ptr noundef %sb, i32 noundef 1)
  %hidden_dir246 = getelementptr inbounds %struct.hfsplus_sb_info, ptr %call7.i.i, i32 0, i32 9
  %85 = ptrtoint ptr %hidden_dir246 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %hidden_dir246, align 4
  %tobool247.not = icmp eq ptr %86, null
  br i1 %tobool247.not, label %if.then248, label %if.then238.if.end281_crit_edge

if.then238.if.end281_crit_edge:                   ; preds = %if.then238
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end281

if.then248:                                       ; preds = %if.then238
  call void @mutex_lock_nested(ptr noundef %vh_mutex, i32 noundef 0) #8
  %call250 = call ptr @hfsplus_new_inode(ptr noundef %sb, ptr noundef %call195, i16 noundef zeroext 16384) #8
  %87 = ptrtoint ptr %hidden_dir246 to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %call250, ptr %hidden_dir246, align 4
  %tobool253.not = icmp eq ptr %call250, null
  br i1 %tobool253.not, label %if.then254, label %if.end256

if.then254:                                       ; preds = %if.then248
  call void @__sanitizer_cov_trace_pc() #10
  call void @mutex_unlock(ptr noundef %vh_mutex) #8
  br label %out_put_root

if.end256:                                        ; preds = %if.then248
  %i_ino = getelementptr inbounds %struct.inode, ptr %call250, i32 0, i32 11
  %88 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %i_ino, align 8
  %call259 = call i32 @hfsplus_create_cat(i32 noundef %89, ptr noundef %call195, ptr noundef nonnull %str, ptr noundef nonnull %call250) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call259)
  %tobool260.not = icmp eq i32 %call259, 0
  br i1 %tobool260.not, label %if.end263, label %if.end256.out_put_hidden_dir_crit_edge

if.end256.out_put_hidden_dir_crit_edge:           ; preds = %if.end256
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_put_hidden_dir

if.end263:                                        ; preds = %if.end256
  %90 = ptrtoint ptr %hidden_dir246 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %hidden_dir246, align 4
  %call265 = call i32 @hfsplus_init_security(ptr noundef %91, ptr noundef %call195, ptr noundef nonnull %str) #8
  %92 = zext i32 %call265 to i64
  call void @__sanitizer_cov_trace_switch(i64 %92, ptr @__sancov_gen_cov_switch_values.67)
  switch i32 %call265, label %if.then271 [
    i32 -95, label %if.end263.if.end277_crit_edge
    i32 0, label %if.end263.if.end277_crit_edge441
  ]

if.end263.if.end277_crit_edge441:                 ; preds = %if.end263
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end277

if.end263.if.end277_crit_edge:                    ; preds = %if.end263
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end277

if.then271:                                       ; preds = %if.end263
  call void @__sanitizer_cov_trace_pc() #10
  %93 = ptrtoint ptr %hidden_dir246 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %hidden_dir246, align 4
  %i_ino273 = getelementptr inbounds %struct.inode, ptr %94, i32 0, i32 11
  %95 = ptrtoint ptr %i_ino273 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %i_ino273, align 8
  %call274 = call i32 @hfsplus_delete_cat(i32 noundef %96, ptr noundef %call195, ptr noundef nonnull %str) #8
  br label %out_put_hidden_dir

if.end277:                                        ; preds = %if.end263.if.end277_crit_edge, %if.end263.if.end277_crit_edge441
  call void @mutex_unlock(ptr noundef %vh_mutex) #8
  %97 = ptrtoint ptr %hidden_dir246 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %hidden_dir246, align 4
  call fastcc void @hfsplus_mark_inode_dirty(ptr noundef %98)
  br label %if.end281

if.end281:                                        ; preds = %if.end277, %if.then238.if.end281_crit_edge, %if.end236.if.end281_crit_edge
  %99 = ptrtoint ptr %nls37 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %nls37, align 8
  call void @unload_nls(ptr noundef %100) #8
  %101 = ptrtoint ptr %nls37 to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr %10, ptr %nls37, align 8
  br label %cleanup

out_put_hidden_dir:                               ; preds = %if.then271, %if.end256.out_put_hidden_dir_crit_edge
  %err.0 = phi i32 [ %call265, %if.then271 ], [ %call259, %if.end256.out_put_hidden_dir_crit_edge ]
  call void @mutex_unlock(ptr noundef %vh_mutex) #8
  %call285 = call zeroext i1 @cancel_delayed_work_sync(ptr noundef %sync_work) #8
  %102 = ptrtoint ptr %hidden_dir246 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %hidden_dir246, align 4
  call void @iput(ptr noundef %103) #8
  br label %out_put_root

out_put_root:                                     ; preds = %out_put_hidden_dir, %if.then254, %if.then232, %if.then224.out_put_root_crit_edge, %if.end214.out_put_root_crit_edge, %if.end209.out_put_root_crit_edge
  %err.1 = phi i32 [ %call211, %if.end209.out_put_root_crit_edge ], [ %call215, %if.end214.out_put_root_crit_edge ], [ %err.0, %out_put_hidden_dir ], [ -12, %if.then254 ], [ %75, %if.then232 ], [ -22, %if.then224.out_put_root_crit_edge ]
  %104 = ptrtoint ptr %s_root to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %s_root, align 64
  call void @dput(ptr noundef %105) #8
  %106 = ptrtoint ptr %s_root to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr null, ptr %s_root, align 64
  br label %out_put_alloc_file

out_put_alloc_file:                               ; preds = %out_put_root, %if.end204.out_put_alloc_file_crit_edge, %do.end200
  %err.2 = phi i32 [ %62, %do.end200 ], [ %err.1, %out_put_root ], [ -12, %if.end204.out_put_alloc_file_crit_edge ]
  %107 = ptrtoint ptr %alloc_file to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %alloc_file, align 8
  call void @iput(ptr noundef %108) #8
  br label %out_close_attr_tree

out_close_attr_tree:                              ; preds = %out_put_alloc_file, %do.end190
  %err.3 = phi i32 [ %60, %do.end190 ], [ %err.2, %out_put_alloc_file ]
  %attr_tree290 = getelementptr inbounds %struct.hfsplus_sb_info, ptr %call7.i.i, i32 0, i32 6
  %109 = ptrtoint ptr %attr_tree290 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %attr_tree290, align 8
  call void @hfsplus_btree_close(ptr noundef %110) #8
  br label %out_close_cat_tree

out_close_cat_tree:                               ; preds = %out_close_attr_tree, %do.end179
  %err.4 = phi i32 [ %err.3, %out_close_attr_tree ], [ -22, %do.end179 ]
  %111 = ptrtoint ptr %cat_tree to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %cat_tree, align 4
  call void @hfsplus_btree_close(ptr noundef %112) #8
  br label %out_close_ext_tree

out_close_ext_tree:                               ; preds = %out_close_cat_tree, %do.end165
  %err.5 = phi i32 [ %err.4, %out_close_cat_tree ], [ -22, %do.end165 ]
  %113 = ptrtoint ptr %ext_tree to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %ext_tree, align 8
  call void @hfsplus_btree_close(ptr noundef %114) #8
  br label %out_free_vhdr

out_free_vhdr:                                    ; preds = %out_close_ext_tree, %do.end155, %do.end106, %do.end69
  %err.6 = phi i32 [ -22, %do.end69 ], [ -27, %do.end106 ], [ %err.5, %out_close_ext_tree ], [ -22, %do.end155 ]
  %115 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %call7.i.i, align 8
  call void @kfree(ptr noundef %116) #8
  %s_backup_vhdr_buf = getelementptr inbounds %struct.hfsplus_sb_info, ptr %call7.i.i, i32 0, i32 2
  %117 = ptrtoint ptr %s_backup_vhdr_buf to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %s_backup_vhdr_buf, align 8
  call void @kfree(ptr noundef %118) #8
  br label %out_unload_nls

out_unload_nls:                                   ; preds = %out_free_vhdr, %do.end56, %if.then51.out_unload_nls_crit_edge, %do.end45, %do.end34
  %err.7 = phi i32 [ -22, %if.then51.out_unload_nls_crit_edge ], [ -22, %do.end56 ], [ %err.6, %out_free_vhdr ], [ -22, %do.end45 ], [ -22, %do.end34 ]
  %nls.0 = phi ptr [ %10, %if.then51.out_unload_nls_crit_edge ], [ %10, %do.end56 ], [ %10, %out_free_vhdr ], [ %10, %do.end45 ], [ null, %do.end34 ]
  %nls293 = getelementptr inbounds %struct.hfsplus_sb_info, ptr %call7.i.i, i32 0, i32 10
  %119 = ptrtoint ptr %nls293 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %nls293, align 8
  call void @unload_nls(ptr noundef %120) #8
  call void @unload_nls(ptr noundef %nls.0) #8
  call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %out_unload_nls, %if.end281, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end281 ], [ %err.7, %out_unload_nls ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %str) #8
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %fd) #8
  call void @llvm.lifetime.end.p0(i64 520, ptr nonnull %entry1) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @delayed_sync_fs(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %work_lock = getelementptr i8, ptr %work, i32 100
  tail call void @_raw_spin_lock(ptr noundef %work_lock) #8
  %work_queued = getelementptr i8, ptr %work, i32 -4
  %0 = ptrtoint ptr %work_queued to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %work_queued, align 8
  tail call void @_raw_spin_unlock(ptr noundef %work_lock) #8
  %alloc_file = getelementptr i8, ptr %work, i32 -292
  %1 = ptrtoint ptr %alloc_file to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %alloc_file, align 8
  %i_sb = getelementptr inbounds %struct.inode, ptr %2, i32 0, i32 8
  %3 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %i_sb, align 4
  %call = tail call i32 @hfsplus_sync_fs(ptr noundef %4, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54, i32 noundef %call) #11
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @hfsplus_fill_defaults(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hfsplus_parse_options(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @load_nls(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hfsplus_read_wrapper(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hfsplus_btree_open(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_make_root(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hfsplus_cat_build_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hfsplus_brec_read(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_real_seconds() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hfsplus_sync_fs(ptr noundef %sb, i32 noundef %wait) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  %s_vhdr = getelementptr inbounds %struct.hfsplus_sb_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %s_vhdr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_vhdr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %wait)
  %tobool.not = icmp eq i32 %wait, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %entry
  %cat_tree = getelementptr inbounds %struct.hfsplus_sb_info, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %cat_tree to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cat_tree, align 4
  %inode = getelementptr inbounds %struct.hfs_btree, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %inode to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %inode, align 4
  %i_mapping = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 9
  %8 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %i_mapping, align 8
  %call.i = tail call i32 @filemap_write_and_wait_range(ptr noundef %9, i64 noundef 0, i64 noundef 9223372036854775807) #8
  %ext_tree = getelementptr inbounds %struct.hfsplus_sb_info, ptr %1, i32 0, i32 4
  %10 = ptrtoint ptr %ext_tree to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ext_tree, align 8
  %inode2 = getelementptr inbounds %struct.hfs_btree, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %inode2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %inode2, align 4
  %i_mapping3 = getelementptr inbounds %struct.inode, ptr %13, i32 0, i32 9
  %14 = ptrtoint ptr %i_mapping3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %i_mapping3, align 8
  %call.i97 = tail call i32 @filemap_write_and_wait_range(ptr noundef %15, i64 noundef 0, i64 noundef 9223372036854775807) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool5.not = icmp eq i32 %call.i, 0
  %spec.select = select i1 %tobool5.not, i32 %call.i97, i32 %call.i
  %attr_tree = getelementptr inbounds %struct.hfsplus_sb_info, ptr %1, i32 0, i32 6
  %16 = ptrtoint ptr %attr_tree to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %attr_tree, align 8
  %tobool8.not = icmp eq ptr %17, null
  br i1 %tobool8.not, label %do.end.if.end17_crit_edge, label %if.then9

do.end.if.end17_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17

if.then9:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %inode11 = getelementptr inbounds %struct.hfs_btree, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %inode11 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %inode11, align 4
  %i_mapping12 = getelementptr inbounds %struct.inode, ptr %19, i32 0, i32 9
  %20 = ptrtoint ptr %i_mapping12 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %i_mapping12, align 8
  %call.i98 = tail call i32 @filemap_write_and_wait_range(ptr noundef %21, i64 noundef 0, i64 noundef 9223372036854775807) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select)
  %tobool14.not = icmp eq i32 %spec.select, 0
  %spec.select94 = select i1 %tobool14.not, i32 %call.i98, i32 %spec.select
  br label %if.end17

if.end17:                                         ; preds = %if.then9, %do.end.if.end17_crit_edge
  %error.1 = phi i32 [ %spec.select, %do.end.if.end17_crit_edge ], [ %spec.select94, %if.then9 ]
  %alloc_file = getelementptr inbounds %struct.hfsplus_sb_info, ptr %1, i32 0, i32 8
  %22 = ptrtoint ptr %alloc_file to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %alloc_file, align 8
  %i_mapping18 = getelementptr inbounds %struct.inode, ptr %23, i32 0, i32 9
  %24 = ptrtoint ptr %i_mapping18 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %i_mapping18, align 8
  %call.i99 = tail call i32 @filemap_write_and_wait_range(ptr noundef %25, i64 noundef 0, i64 noundef 9223372036854775807) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %error.1)
  %tobool20.not = icmp eq i32 %error.1, 0
  %spec.select95 = select i1 %tobool20.not, i32 %call.i99, i32 %error.1
  %vh_mutex = getelementptr inbounds %struct.hfsplus_sb_info, ptr %1, i32 0, i32 25
  tail call void @mutex_lock_nested(ptr noundef %vh_mutex, i32 noundef 0) #8
  %alloc_mutex = getelementptr inbounds %struct.hfsplus_sb_info, ptr %1, i32 0, i32 21
  tail call void @mutex_lock_nested(ptr noundef %alloc_mutex, i32 noundef 0) #8
  %free_blocks = getelementptr inbounds %struct.hfsplus_sb_info, ptr %1, i32 0, i32 20
  %26 = ptrtoint ptr %free_blocks to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %free_blocks, align 8
  %free_blocks23 = getelementptr inbounds %struct.hfsplus_vh, ptr %3, i32 0, i32 13
  %28 = ptrtoint ptr %free_blocks23 to i32
  call void @__asan_storeN_noabort(i32 %28, i32 4)
  store i32 %27, ptr %free_blocks23, align 1
  %next_cnid = getelementptr inbounds %struct.hfsplus_sb_info, ptr %1, i32 0, i32 22
  %29 = ptrtoint ptr %next_cnid to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %next_cnid, align 8
  %next_cnid24 = getelementptr inbounds %struct.hfsplus_vh, ptr %3, i32 0, i32 17
  %31 = ptrtoint ptr %next_cnid24 to i32
  call void @__asan_storeN_noabort(i32 %31, i32 4)
  store i32 %30, ptr %next_cnid24, align 1
  %folder_count = getelementptr inbounds %struct.hfsplus_sb_info, ptr %1, i32 0, i32 24
  %32 = ptrtoint ptr %folder_count to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %folder_count, align 8
  %folder_count25 = getelementptr inbounds %struct.hfsplus_vh, ptr %3, i32 0, i32 10
  %34 = ptrtoint ptr %folder_count25 to i32
  call void @__asan_storeN_noabort(i32 %34, i32 4)
  store i32 %33, ptr %folder_count25, align 1
  %file_count = getelementptr inbounds %struct.hfsplus_sb_info, ptr %1, i32 0, i32 23
  %35 = ptrtoint ptr %file_count to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %file_count, align 4
  %file_count26 = getelementptr inbounds %struct.hfsplus_vh, ptr %3, i32 0, i32 9
  %37 = ptrtoint ptr %file_count26 to i32
  call void @__asan_storeN_noabort(i32 %37, i32 4)
  store i32 %36, ptr %file_count26, align 1
  %flags = getelementptr inbounds %struct.hfsplus_sb_info, ptr %1, i32 0, i32 33
  %call27 = tail call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %flags) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end17.if.end31_crit_edge, label %if.then29

if.end17.if.end31_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31

if.then29:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  %s_backup_vhdr = getelementptr inbounds %struct.hfsplus_sb_info, ptr %1, i32 0, i32 3
  %38 = ptrtoint ptr %s_backup_vhdr to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %s_backup_vhdr, align 4
  %40 = ptrtoint ptr %s_vhdr to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %s_vhdr, align 4
  %42 = call ptr @memcpy(ptr %39, ptr %41, i32 512)
  br label %if.end31

if.end31:                                         ; preds = %if.then29, %if.end17.if.end31_crit_edge
  %part_start = getelementptr inbounds %struct.hfsplus_sb_info, ptr %1, i32 0, i32 12
  %43 = ptrtoint ptr %part_start to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %part_start, align 8
  %add = add i64 %44, 2
  %45 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %1, align 8
  %call32 = tail call i32 @hfsplus_submit_bio(ptr noundef %sb, i64 noundef %add, ptr noundef %46, ptr noundef null, i32 noundef 1, i32 noundef 2048) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select95)
  %tobool33.not = icmp eq i32 %spec.select95, 0
  %spec.select96 = select i1 %tobool33.not, i32 %call32, i32 %spec.select95
  br i1 %tobool28.not, label %if.end31.out_crit_edge, label %if.end38

if.end31.out_crit_edge:                           ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end38:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  %47 = ptrtoint ptr %part_start to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %part_start, align 8
  %sect_count = getelementptr inbounds %struct.hfsplus_sb_info, ptr %1, i32 0, i32 13
  %49 = ptrtoint ptr %sect_count to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %sect_count, align 8
  %add40 = add i64 %48, -2
  %sub = add i64 %add40, %50
  %s_backup_vhdr_buf = getelementptr inbounds %struct.hfsplus_sb_info, ptr %1, i32 0, i32 2
  %51 = ptrtoint ptr %s_backup_vhdr_buf to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %s_backup_vhdr_buf, align 8
  %call41 = tail call i32 @hfsplus_submit_bio(ptr noundef %sb, i64 noundef %sub, ptr noundef %52, ptr noundef null, i32 noundef 1, i32 noundef 2048) #8
  br label %out

out:                                              ; preds = %if.end38, %if.end31.out_crit_edge
  tail call void @mutex_unlock(ptr noundef %alloc_mutex) #8
  tail call void @mutex_unlock(ptr noundef %vh_mutex) #8
  %53 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile i32, ptr %flags, align 4
  %55 = and i32 %54, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool49.not = icmp eq i32 %55, 0
  br i1 %tobool49.not, label %if.then50, label %out.cleanup_crit_edge

out.cleanup_crit_edge:                            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then50:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #10
  %s_bdev = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 26
  %56 = ptrtoint ptr %s_bdev to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %s_bdev, align 4
  %call51 = tail call i32 @blkdev_issue_flush(ptr noundef %57) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then50, %out.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %spec.select96, %if.then50 ], [ %spec.select96, %out.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hfsplus_new_inode(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hfsplus_create_cat(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hfsplus_init_security(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hfsplus_delete_cat(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hfsplus_mark_inode_dirty(ptr noundef %inode) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %flags = getelementptr i8, ptr %inode, i32 -84
  tail call void @_set_bit(i32 noundef 1, ptr noundef %flags) #8
  tail call void @__mark_inode_dirty(ptr noundef %inode, i32 noundef 7) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unload_nls(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iput(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dput(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @hfsplus_btree_close(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal noalias ptr @hfsplus_alloc_inode(ptr nocapture noundef readnone %sb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @hfsplus_inode_cachep, align 4
  %call = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %0, i32 noundef 3264) #8
  %tobool.not = icmp eq ptr %call, null
  %vfs_inode = getelementptr inbounds %struct.hfsplus_inode_info, ptr %call, i32 0, i32 20
  %spec.select = select i1 %tobool.not, ptr null, ptr %vfs_inode
  ret ptr %spec.select
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hfsplus_free_inode(ptr noundef %inode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @hfsplus_inode_cachep, align 4
  %add.ptr.i = getelementptr i8, ptr %inode, i32 -344
  tail call void @kmem_cache_free(ptr noundef %0, ptr noundef %add.ptr.i) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hfsplus_write_inode(ptr noundef %inode, ptr nocapture noundef readnone %wbc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @hfsplus_ext_write_extent(ptr noundef %inode) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %i_ino = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %0 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %i_ino, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %1)
  %cmp = icmp ugt i32 %1, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp2 = icmp eq i32 %1, 2
  %or.cond = or i1 %cmp, %cmp2
  br i1 %or.cond, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call4 = tail call i32 @hfsplus_cat_write_inode(ptr noundef %inode) #8
  br label %cleanup

if.else:                                          ; preds = %if.end
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info.i.i, align 16
  %s_vhdr.i = getelementptr inbounds %struct.hfsplus_sb_info, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %s_vhdr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s_vhdr.i, align 4
  %8 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.68)
  switch i32 %1, label %if.else.cleanup_crit_edge [
    i32 3, label %sw.bb.i
    i32 4, label %sw.bb1.i
    i32 6, label %sw.bb2.i
    i32 7, label %sw.bb3.i
    i32 8, label %sw.bb4.i
  ]

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb.i:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %ext_file.i = getelementptr inbounds %struct.hfsplus_vh, ptr %7, i32 0, i32 22
  %ext_tree.i = getelementptr inbounds %struct.hfsplus_sb_info, ptr %5, i32 0, i32 4
  %9 = ptrtoint ptr %ext_tree.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ext_tree.i, align 8
  br label %sw.epilog.i

sw.bb1.i:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %cat_file.i = getelementptr inbounds %struct.hfsplus_vh, ptr %7, i32 0, i32 23
  %cat_tree.i = getelementptr inbounds %struct.hfsplus_sb_info, ptr %5, i32 0, i32 5
  %11 = ptrtoint ptr %cat_tree.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cat_tree.i, align 4
  br label %sw.epilog.i

sw.bb2.i:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %alloc_file.i = getelementptr inbounds %struct.hfsplus_vh, ptr %7, i32 0, i32 21
  br label %sw.epilog.i

sw.bb3.i:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %start_file.i = getelementptr inbounds %struct.hfsplus_vh, ptr %7, i32 0, i32 25
  br label %sw.epilog.i

sw.bb4.i:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %attr_file.i = getelementptr inbounds %struct.hfsplus_vh, ptr %7, i32 0, i32 24
  %attr_tree.i = getelementptr inbounds %struct.hfsplus_sb_info, ptr %5, i32 0, i32 6
  %13 = ptrtoint ptr %attr_tree.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %attr_tree.i, align 8
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb4.i, %sw.bb3.i, %sw.bb2.i, %sw.bb1.i, %sw.bb.i
  %fork.0.i = phi ptr [ %attr_file.i, %sw.bb4.i ], [ %start_file.i, %sw.bb3.i ], [ %alloc_file.i, %sw.bb2.i ], [ %cat_file.i, %sw.bb1.i ], [ %ext_file.i, %sw.bb.i ]
  %tree.0.i = phi ptr [ %14, %sw.bb4.i ], [ null, %sw.bb3.i ], [ null, %sw.bb2.i ], [ %12, %sw.bb1.i ], [ %10, %sw.bb.i ]
  %15 = ptrtoint ptr %fork.0.i to i32
  call void @__asan_loadN_noabort(i32 %15, i32 8)
  %16 = load i64, ptr %fork.0.i, align 1
  %i_size.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  %17 = ptrtoint ptr %i_size.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %i_size.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %16, i64 %18)
  %cmp.not.i = icmp eq i64 %16, %18
  br i1 %cmp.not.i, label %sw.epilog.i.if.end.i_crit_edge, label %if.then.i

sw.epilog.i.if.end.i_crit_edge:                   ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i:                                        ; preds = %sw.epilog.i
  %flags.i = getelementptr inbounds %struct.hfsplus_sb_info, ptr %5, i32 0, i32 33
  tail call void @_set_bit(i32 noundef 0, ptr noundef %flags.i) #8
  %19 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i.i = getelementptr inbounds %struct.super_block, ptr %20, i32 0, i32 33
  %21 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %s_flags.i.i.i = getelementptr inbounds %struct.super_block, ptr %20, i32 0, i32 10
  %23 = ptrtoint ptr %s_flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %s_flags.i.i.i, align 4
  %and.i.i.i = and i32 %24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %if.end.i.i, label %if.then.i.if.end.i_crit_edge

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.end.i.i:                                       ; preds = %if.then.i
  %work_lock.i.i = getelementptr inbounds %struct.hfsplus_sb_info, ptr %22, i32 0, i32 36
  tail call void @_raw_spin_lock(ptr noundef %work_lock.i.i) #8
  %work_queued.i.i = getelementptr inbounds %struct.hfsplus_sb_info, ptr %22, i32 0, i32 34
  %25 = ptrtoint ptr %work_queued.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %work_queued.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool.not.i.i = icmp eq i32 %26, 0
  br i1 %tobool.not.i.i, label %if.else.i.i.i, label %if.end.i.i.if.end6.i.i_crit_edge

if.end.i.i.if.end6.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6.i.i

if.else.i.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dirty_writeback_interval to i32))
  %27 = load i32, ptr @dirty_writeback_interval, align 4
  %mul.i.i = mul i32 %27, 10
  %call2.i.i.i = tail call i32 @__msecs_to_jiffies(i32 noundef %mul.i.i) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_long_wq to i32))
  %28 = load ptr, ptr @system_long_wq, align 4
  %sync_work.i.i = getelementptr inbounds %struct.hfsplus_sb_info, ptr %22, i32 0, i32 35
  %call.i.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %28, ptr noundef %sync_work.i.i, i32 noundef %call2.i.i.i) #8
  %29 = ptrtoint ptr %work_queued.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 1, ptr %work_queued.i.i, align 8
  br label %if.end6.i.i

if.end6.i.i:                                      ; preds = %if.else.i.i.i, %if.end.i.i.if.end6.i.i_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %work_lock.i.i) #8
  br label %if.end.i

if.end.i:                                         ; preds = %if.end6.i.i, %if.then.i.if.end.i_crit_edge, %sw.epilog.i.if.end.i_crit_edge
  tail call void @hfsplus_inode_write_fork(ptr noundef %inode, ptr noundef %fork.0.i) #8
  %tobool.not.i = icmp eq ptr %tree.0.i, null
  br i1 %tobool.not.i, label %if.end.i.cleanup_crit_edge, label %if.then6.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then6.i:                                       ; preds = %if.end.i
  %call7.i = tail call i32 @hfsplus_btree_write(ptr noundef nonnull %tree.0.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool8.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool8.not.i, label %if.then6.i.cleanup_crit_edge, label %do.end.i

if.then6.i.cleanup_crit_edge:                     ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end.i:                                         ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #10
  %30 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %i_ino, align 8
  %call11.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, i32 noundef %call7.i, i32 noundef %31) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end.i, %if.then6.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.then3 ], [ %call, %entry.cleanup_crit_edge ], [ -5, %if.else.cleanup_crit_edge ], [ %call7.i, %do.end.i ], [ 0, %if.end.i.cleanup_crit_edge ], [ 0, %if.then6.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hfsplus_evict_inode(ptr noundef %inode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %i_data = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 46
  tail call void @truncate_inode_pages_final(ptr noundef %i_data) #8
  tail call void @clear_inode(ptr noundef %inode) #8
  %flags = getelementptr i8, ptr %inode, i32 -84
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %flags, align 4
  %and1.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %rsrc_inode = getelementptr i8, ptr %inode, i32 -96
  %2 = ptrtoint ptr %rsrc_inode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rsrc_inode, align 8
  %rsrc_inode4 = getelementptr i8, ptr %3, i32 -96
  %4 = ptrtoint ptr %rsrc_inode4 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %rsrc_inode4, align 8
  %5 = load ptr, ptr %rsrc_inode, align 8
  tail call void @iput(ptr noundef %5) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hfsplus_put_super(ptr noundef %sb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  %sync_work = getelementptr inbounds %struct.hfsplus_sb_info, ptr %1, i32 0, i32 35
  %call1 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %sync_work) #8
  %s_flags.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 10
  %2 = ptrtoint ptr %s_flags.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %s_flags.i, align 4
  %and.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %s_vhdr = getelementptr inbounds %struct.hfsplus_sb_info, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %s_vhdr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_vhdr, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %call4 = tail call i64 @ktime_get_real_seconds() #8
  %conv.i = trunc i64 %call4 to i32
  %add.i = add i32 %conv.i, 2082844800
  %modify_date = getelementptr inbounds %struct.hfsplus_vh, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %modify_date to i32
  call void @__asan_storeN_noabort(i32 %6, i32 4)
  store i32 %add.i, ptr %modify_date, align 1
  %attributes = getelementptr inbounds %struct.hfsplus_vh, ptr %5, i32 0, i32 2
  %7 = ptrtoint ptr %attributes to i32
  call void @__asan_loadN_noabort(i32 %7, i32 4)
  %8 = load i32, ptr %attributes, align 1
  %or = and i32 %8, -2305
  %and = or i32 %or, 256
  store i32 %and, ptr %attributes, align 1
  %call7 = tail call i32 @hfsplus_sync_fs(ptr noundef %sb, i32 noundef 1)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %attr_tree = getelementptr inbounds %struct.hfsplus_sb_info, ptr %1, i32 0, i32 6
  %9 = ptrtoint ptr %attr_tree to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %attr_tree, align 8
  tail call void @hfsplus_btree_close(ptr noundef %10) #8
  %cat_tree = getelementptr inbounds %struct.hfsplus_sb_info, ptr %1, i32 0, i32 5
  %11 = ptrtoint ptr %cat_tree to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cat_tree, align 4
  tail call void @hfsplus_btree_close(ptr noundef %12) #8
  %ext_tree = getelementptr inbounds %struct.hfsplus_sb_info, ptr %1, i32 0, i32 4
  %13 = ptrtoint ptr %ext_tree to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ext_tree, align 8
  tail call void @hfsplus_btree_close(ptr noundef %14) #8
  %alloc_file = getelementptr inbounds %struct.hfsplus_sb_info, ptr %1, i32 0, i32 8
  %15 = ptrtoint ptr %alloc_file to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %alloc_file, align 8
  tail call void @iput(ptr noundef %16) #8
  %hidden_dir = getelementptr inbounds %struct.hfsplus_sb_info, ptr %1, i32 0, i32 9
  %17 = ptrtoint ptr %hidden_dir to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %hidden_dir, align 4
  tail call void @iput(ptr noundef %18) #8
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 8
  tail call void @kfree(ptr noundef %20) #8
  %s_backup_vhdr_buf = getelementptr inbounds %struct.hfsplus_sb_info, ptr %1, i32 0, i32 2
  %21 = ptrtoint ptr %s_backup_vhdr_buf to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %s_backup_vhdr_buf, align 8
  tail call void @kfree(ptr noundef %22) #8
  %nls = getelementptr inbounds %struct.hfsplus_sb_info, ptr %1, i32 0, i32 10
  %23 = ptrtoint ptr %nls to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %nls, align 8
  tail call void @unload_nls(ptr noundef %24) #8
  %25 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %s_fs_info.i, align 16
  tail call void @kfree(ptr noundef %26) #8
  %27 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %s_fs_info.i, align 16
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @hfsplus_statfs(ptr nocapture noundef readonly %dentry, ptr nocapture noundef writeonly %buf) #7 align 64 {
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
  store i32 18475, ptr %buf, align 8
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %s_blocksize, align 16
  %f_bsize = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 1
  %12 = ptrtoint ptr %f_bsize to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %f_bsize, align 4
  %total_blocks = getelementptr inbounds %struct.hfsplus_sb_info, ptr %3, i32 0, i32 17
  %13 = ptrtoint ptr %total_blocks to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %total_blocks, align 4
  %fs_shift = getelementptr inbounds %struct.hfsplus_sb_info, ptr %3, i32 0, i32 14
  %15 = ptrtoint ptr %fs_shift to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %fs_shift, align 8
  %shl = shl i32 %14, %16
  %conv = zext i32 %shl to i64
  %f_blocks = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 2
  %17 = ptrtoint ptr %f_blocks to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %conv, ptr %f_blocks, align 8
  %free_blocks = getelementptr inbounds %struct.hfsplus_sb_info, ptr %3, i32 0, i32 20
  %18 = ptrtoint ptr %free_blocks to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %free_blocks, align 8
  %20 = load i32, ptr %fs_shift, align 8
  %shl3 = shl i32 %19, %20
  %conv4 = zext i32 %shl3 to i64
  %f_bfree = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 3
  %21 = ptrtoint ptr %f_bfree to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %conv4, ptr %f_bfree, align 8
  %f_bavail = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 4
  %22 = ptrtoint ptr %f_bavail to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %conv4, ptr %f_bavail, align 8
  %f_files = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 5
  %23 = ptrtoint ptr %f_files to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 4294967295, ptr %f_files, align 8
  %next_cnid = getelementptr inbounds %struct.hfsplus_sb_info, ptr %3, i32 0, i32 22
  %24 = ptrtoint ptr %next_cnid to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %next_cnid, align 8
  %sub = xor i32 %25, -1
  %conv6 = zext i32 %sub to i64
  %f_ffree = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 6
  %26 = ptrtoint ptr %f_ffree to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 %conv6, ptr %f_ffree, align 8
  %f_fsid = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 7
  %tmp.sroa.0.0.insert.ext = zext i32 %or4.i.i to i64
  %tmp.sroa.0.0.insert.shift = shl nuw i64 %tmp.sroa.0.0.insert.ext, 32
  %27 = ptrtoint ptr %f_fsid to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %tmp.sroa.0.0.insert.shift, ptr %f_fsid, align 8
  %f_namelen = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 8
  %28 = ptrtoint ptr %f_namelen to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 255, ptr %f_namelen, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hfsplus_remount(ptr noundef %sb, ptr nocapture noundef %flags, ptr noundef %data) #0 align 64 {
entry:
  %force = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @sync_filesystem(ptr noundef %sb) #8
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %s_flags.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 10
  %2 = ptrtoint ptr %s_flags.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %s_flags.i, align 4
  %and.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i = icmp eq i32 %and.i, 0
  %4 = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %5 = icmp ne i32 %4, 0
  %brmerge = or i1 %5, %tobool.i
  br i1 %brmerge, label %entry.return_crit_edge, label %if.then6

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.then6:                                         ; preds = %entry
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %6 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s_fs_info.i, align 16
  %s_vhdr = getelementptr inbounds %struct.hfsplus_sb_info, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %s_vhdr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %s_vhdr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %force) #8
  %10 = ptrtoint ptr %force to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %force, align 4
  %call8 = call i32 @hfsplus_parse_options_remount(ptr noundef %data, ptr noundef nonnull %force) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %cleanup, label %if.end11

if.end11:                                         ; preds = %if.then6
  %attributes = getelementptr inbounds %struct.hfsplus_vh, ptr %9, i32 0, i32 2
  %11 = ptrtoint ptr %attributes to i32
  call void @__asan_loadN_noabort(i32 %11, i32 4)
  %12 = load i32, ptr %attributes, align 1
  %and12 = and i32 %12, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %if.end11.cleanup.thread.sink.split_crit_edge, label %if.else

if.end11.cleanup.thread.sink.split_crit_edge:     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.thread.sink.split

if.else:                                          ; preds = %if.end11
  %13 = ptrtoint ptr %force to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %force, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool17.not = icmp eq i32 %14, 0
  br i1 %tobool17.not, label %if.else19, label %if.else.cleanup.thread_crit_edge

if.else.cleanup.thread_crit_edge:                 ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.thread

if.else19:                                        ; preds = %if.else
  %and21 = and i32 %12, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %if.else32, label %if.else19.cleanup.thread.sink.split_crit_edge

if.else19.cleanup.thread.sink.split_crit_edge:    ; preds = %if.else19
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.thread.sink.split

if.else32:                                        ; preds = %if.else19
  %and34 = and i32 %12, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %tobool35.not = icmp eq i32 %and34, 0
  br i1 %tobool35.not, label %if.else32.cleanup.thread_crit_edge, label %if.else32.cleanup.thread.sink.split_crit_edge

if.else32.cleanup.thread.sink.split_crit_edge:    ; preds = %if.else32
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.thread.sink.split

if.else32.cleanup.thread_crit_edge:               ; preds = %if.else32
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.thread

cleanup.thread.sink.split:                        ; preds = %if.else32.cleanup.thread.sink.split_crit_edge, %if.else19.cleanup.thread.sink.split_crit_edge, %if.end11.cleanup.thread.sink.split_crit_edge
  %.str.58.sink = phi ptr [ @.str.58, %if.end11.cleanup.thread.sink.split_crit_edge ], [ @.str.61, %if.else19.cleanup.thread.sink.split_crit_edge ], [ @.str.64, %if.else32.cleanup.thread.sink.split_crit_edge ]
  %call15 = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.58.sink) #11
  %15 = ptrtoint ptr %s_flags.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %s_flags.i, align 4
  %or = or i32 %16, 1
  store i32 %or, ptr %s_flags.i, align 4
  %17 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %flags, align 4
  %or16 = or i32 %18, 1
  store i32 %or16, ptr %flags, align 4
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %cleanup.thread.sink.split, %if.else32.cleanup.thread_crit_edge, %if.else.cleanup.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %force) #8
  br label %return

cleanup:                                          ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %force) #8
  br label %return

return:                                           ; preds = %cleanup, %cleanup.thread, %entry.return_crit_edge
  %retval.1 = phi i32 [ -22, %cleanup ], [ 0, %entry.return_crit_edge ], [ 0, %cleanup.thread ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hfsplus_show_options(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hfsplus_ext_write_extent(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hfsplus_cat_write_inode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @hfsplus_inode_write_fork(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hfsplus_btree_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @truncate_inode_pages_final(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clear_inode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sync_filesystem(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hfsplus_parse_options_remount(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hfsplus_submit_bio(ptr noundef, i64 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blkdev_issue_flush(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @filemap_write_and_wait_range(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mark_inode_dirty(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hfsplus_init_once(ptr noundef %p) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %vfs_inode = getelementptr inbounds %struct.hfsplus_inode_info, ptr %p, i32 0, i32 20
  tail call void @inode_init_once(ptr noundef %vfs_inode) #8
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @hfsplus_create_attr_tree_cache() local_unnamed_addr #4 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_filesystem(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @inode_init_once(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 62)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 62)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !13, !15, !17, !19, !21, !23, !25, !27, !28, !30, !31, !33, !34, !36, !37, !38, !39, !41, !42, !43, !44, !45, !47, !49, !50, !51, !53, !54, !55, !57, !58, !59, !61, !62, !63, !65, !66, !67, !69, !70, !71, !73, !74, !75, !77, !78, !79, !81, !82, !83, !85, !86, !87, !89, !90, !91, !93, !94, !95, !97, !99, !100, !101, !102, !104, !106, !107, !108, !109, !111, !112, !113, !114, !116, !117, !118, !120, !121, !122}
!llvm.module.flags = !{!124, !125, !126, !127, !128, !129, !130, !131}
!llvm.ident = !{!132}

!0 = !{ptr @hfsplus_iget.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../fs/hfsplus/super.c", i32 71, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @hfsplus_iget.__key.1, !4, !"__key", i1 false, i1 false}
!4 = !{!"../fs/hfsplus/super.c", i32 72, i32 2}
!5 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_author287, !7, !"__UNIQUE_ID_author287", i1 false, i1 false}
!7 = !{!"../fs/hfsplus/super.c", i32 617, i32 1}
!8 = !{ptr @__UNIQUE_ID_description288, !9, !"__UNIQUE_ID_description288", i1 false, i1 false}
!9 = !{!"../fs/hfsplus/super.c", i32 618, i32 1}
!10 = !{ptr @__UNIQUE_ID_file289, !11, !"__UNIQUE_ID_file289", i1 false, i1 false}
!11 = !{!"../fs/hfsplus/super.c", i32 619, i32 1}
!12 = !{ptr @__UNIQUE_ID_license290, !11, !"__UNIQUE_ID_license290", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_alias291, !14, !"__UNIQUE_ID_alias291", i1 false, i1 false}
!14 = !{!"../fs/hfsplus/super.c", i32 651, i32 1}
!15 = !{ptr @__initcall__kmod_hfsplus__292_699_init_hfsplus_fs6, !16, !"__initcall__kmod_hfsplus__292_699_init_hfsplus_fs6", i1 false, i1 false}
!16 = !{!"../fs/hfsplus/super.c", i32 699, i32 1}
!17 = !{ptr @__exitcall_exit_hfsplus_fs, !18, !"__exitcall_exit_hfsplus_fs", i1 false, i1 false}
!18 = !{!"../fs/hfsplus/super.c", i32 700, i32 1}
!19 = !{ptr @hfsplus_inode_cachep, !20, !"hfsplus_inode_cachep", i1 false, i1 false}
!20 = !{!"../fs/hfsplus/super.c", i32 621, i32 27}
!21 = !{ptr @.str.3, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../fs/hfsplus/super.c", i32 646, i32 11}
!23 = !{ptr @hfsplus_fs_type, !24, !"hfsplus_fs_type", i1 false, i1 false}
!24 = !{!"../fs/hfsplus/super.c", i32 644, i32 32}
!25 = !{ptr @hfsplus_fill_super.__key, !26, !"__key", i1 false, i1 false}
!26 = !{!"../fs/hfsplus/super.c", i32 392, i32 2}
!27 = !{ptr @.str.4, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @hfsplus_fill_super.__key.5, !29, !"__key", i1 false, i1 false}
!29 = !{!"../fs/hfsplus/super.c", i32 393, i32 2}
!30 = !{ptr @.str.6, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @hfsplus_fill_super.__key.7, !32, !"__key", i1 false, i1 false}
!32 = !{!"../fs/hfsplus/super.c", i32 394, i32 2}
!33 = !{ptr @.str.8, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @hfsplus_fill_super.__key.9, !35, !"__key", i1 false, i1 false}
!35 = !{!"../fs/hfsplus/super.c", i32 395, i32 2}
!36 = !{ptr @.str.10, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @hfsplus_fill_super.__key.11, !35, !"__key", i1 false, i1 false}
!38 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.13, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../fs/hfsplus/super.c", i32 400, i32 3}
!41 = !{ptr @.str.14, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.15, !40, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @hfsplus_fill_super._entry, !40, !"_entry", i1 false, i1 false}
!44 = !{ptr @hfsplus_fill_super._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.16, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../fs/hfsplus/super.c", i32 406, i32 22}
!47 = !{ptr @.str.18, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../fs/hfsplus/super.c", i32 408, i32 3}
!49 = !{ptr @hfsplus_fill_super._entry.17, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @hfsplus_fill_super._entry_ptr.19, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.21, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../fs/hfsplus/super.c", i32 415, i32 4}
!53 = !{ptr @hfsplus_fill_super._entry.20, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @hfsplus_fill_super._entry_ptr.22, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.24, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../fs/hfsplus/super.c", i32 424, i32 3}
!57 = !{ptr @hfsplus_fill_super._entry.23, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @hfsplus_fill_super._entry_ptr.25, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.27, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../fs/hfsplus/super.c", i32 448, i32 3}
!61 = !{ptr @hfsplus_fill_super._entry.26, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @hfsplus_fill_super._entry_ptr.28, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.30, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../fs/hfsplus/super.c", i32 457, i32 3}
!65 = !{ptr @hfsplus_fill_super._entry.29, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @hfsplus_fill_super._entry_ptr.31, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.33, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../fs/hfsplus/super.c", i32 462, i32 3}
!69 = !{ptr @hfsplus_fill_super._entry.32, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @hfsplus_fill_super._entry_ptr.34, !68, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.36, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../fs/hfsplus/super.c", i32 466, i32 3}
!73 = !{ptr @hfsplus_fill_super._entry.35, !72, !"_entry", i1 false, i1 false}
!74 = !{ptr @hfsplus_fill_super._entry_ptr.37, !72, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.39, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../fs/hfsplus/super.c", i32 475, i32 3}
!77 = !{ptr @hfsplus_fill_super._entry.38, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @hfsplus_fill_super._entry_ptr.40, !76, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.42, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../fs/hfsplus/super.c", i32 480, i32 3}
!81 = !{ptr @hfsplus_fill_super._entry.41, !80, !"_entry", i1 false, i1 false}
!82 = !{ptr @hfsplus_fill_super._entry_ptr.43, !80, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.45, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../fs/hfsplus/super.c", i32 487, i32 4}
!85 = !{ptr @hfsplus_fill_super._entry.44, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @hfsplus_fill_super._entry_ptr.46, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.48, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../fs/hfsplus/super.c", i32 496, i32 3}
!89 = !{ptr @hfsplus_fill_super._entry.47, !88, !"_entry", i1 false, i1 false}
!90 = !{ptr @hfsplus_fill_super._entry_ptr.49, !88, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.51, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../fs/hfsplus/super.c", i32 505, i32 3}
!93 = !{ptr @hfsplus_fill_super._entry.50, !92, !"_entry", i1 false, i1 false}
!94 = !{ptr @hfsplus_fill_super._entry_ptr.52, !92, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.53, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../fs/hfsplus/super.c", i32 518, i32 13}
!97 = !{ptr @.str.54, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../fs/hfsplus/super.c", i32 260, i32 3}
!99 = !{ptr @.str.55, !98, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @delayed_sync_fs._entry, !98, !"_entry", i1 false, i1 false}
!101 = !{ptr @delayed_sync_fs._entry_ptr, !98, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @hfsplus_sops, !103, !"hfsplus_sops", i1 false, i1 false}
!103 = !{!"../fs/hfsplus/super.c", i32 362, i32 38}
!104 = !{ptr @.str.56, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../fs/hfsplus/super.c", i32 139, i32 4}
!106 = !{ptr @.str.57, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @hfsplus_system_write_inode._entry, !105, !"_entry", i1 false, i1 false}
!108 = !{ptr @hfsplus_system_write_inode._entry_ptr, !105, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.58, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../fs/hfsplus/super.c", i32 342, i32 4}
!111 = !{ptr @.str.59, !110, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @hfsplus_remount._entry, !110, !"_entry", i1 false, i1 false}
!113 = !{ptr @hfsplus_remount._entry_ptr, !110, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.61, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../fs/hfsplus/super.c", i32 349, i32 4}
!116 = !{ptr @hfsplus_remount._entry.60, !115, !"_entry", i1 false, i1 false}
!117 = !{ptr @hfsplus_remount._entry_ptr.62, !115, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @.str.64, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../fs/hfsplus/super.c", i32 354, i32 4}
!120 = !{ptr @hfsplus_remount._entry.63, !119, !"_entry", i1 false, i1 false}
!121 = !{ptr @hfsplus_remount._entry_ptr.65, !119, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @.str.66, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../fs/hfsplus/super.c", i32 664, i32 43}
!124 = !{i32 1, !"wchar_size", i32 2}
!125 = !{i32 1, !"min_enum_size", i32 4}
!126 = !{i32 8, !"branch-target-enforcement", i32 0}
!127 = !{i32 8, !"sign-return-address", i32 0}
!128 = !{i32 8, !"sign-return-address-all", i32 0}
!129 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!130 = !{i32 7, !"uwtable", i32 1}
!131 = !{i32 7, !"frame-pointer", i32 2}
!132 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!133 = !{!"branch_weights", i32 1, i32 2000}
