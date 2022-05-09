; ModuleID = '/llk/IR_all_yes/fs/ufs/super.c_pt.bc'
source_filename = "../fs/ufs/super.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.file_system_type = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.hlist_head = type { ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.super_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.export_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.match_token = type { i32, ptr }
%struct.qstr = type { %union.anon.2, ptr }
%union.anon.2 = type { i64 }
%struct.va_format = type { ptr, ptr }
%struct.__va_list = type { ptr }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [24 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [24 x i8] }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
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
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
%struct.callback_head = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.ufs_buffer_head = type { i64, i64, [8 x ptr] }
%struct.buffer_head = type { i32, ptr, ptr, i64, i32, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.spinlock }
%struct.ufs_super_block_first = type { %union.anon.85, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %union.anon.88, i32, i32, [2 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.ufs_csum, i8, i8, i8, i8, [300 x i8] }
%union.anon.85 = type { %struct.anon.86 }
%struct.anon.86 = type { i32 }
%union.anon.88 = type { %struct.anon.89 }
%struct.anon.89 = type { i32 }
%struct.ufs_csum = type { i32, i32, i32, i32 }
%struct.ufs_sb_info = type { ptr, ptr, i32, i32, ptr, [8 x ptr], [8 x i32], i16, i32, ptr, i32, %struct.delayed_work, %struct.spinlock, %struct.mutex }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ufs_sb_private_info = type { %struct.ufs_buffer_head, %struct.ufs_csum_core, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64 }
%struct.ufs_csum_core = type { i64, i64, i64, i64, i64 }
%struct.ufs_super_block_third = type { %union.anon.94, %union.anon.97, i32, i32, i32, i32, i32, [1 x i8] }
%union.anon.94 = type { %struct.anon.95 }
%struct.anon.95 = type { [46 x i16] }
%union.anon.97 = type { %struct.anon.98 }
%struct.anon.98 = type { [53 x i32], i32, [1 x i32], i32, [2 x i32], [2 x i32] }
%struct.anon.96 = type <{ i64, i64, i64, [3 x i64], %struct.ufs_timeval, i64, i64, i64, i64, i32 }>
%struct.ufs_timeval = type { i32, i32 }
%struct.anon.92 = type { [212 x i8], i32, [31 x i32], i32, i32, [82 x i16] }
%struct.substring_t = type { ptr, ptr }
%struct.anon.93 = type { [168 x i8], [32 x i8], i64, i32, i32, [28 x i32], i32, i32, i32, i32, i32, i32, [17 x i64], i64, i64, i64 }
%struct.ufs_cylinder_group = type { i32, i32, i32, i32, i16, i16, i32, %struct.ufs_csum, i32, i32, i32, [8 x i32], i32, i32, i32, i32, i32, %union.anon.105, [1 x i8] }
%union.anon.105 = type { %struct.anon.107 }
%struct.anon.107 = type { i32, i32, i32, i32, i32, [3 x i32], i64, [3 x i64] }
%struct.ufs_inode_info = type { %union.anon.102, i32, i32, i32, i32, i32, i16, i64, %struct.seqlock_t, %struct.mutex, i32, %struct.inode }
%union.anon.102 = type { [15 x i64] }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.73, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.74, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.75, ptr, %struct.address_space, %struct.list_head, %union.anon.76, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.73 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%union.anon.74 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.75 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.76 = type { ptr }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.79, %struct.list_head, %struct.list_head, %union.anon.80 }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.lockref = type { %union.anon.77 }
%union.anon.77 = type { %struct.anon.78 }
%struct.anon.78 = type { %struct.spinlock, i32 }
%union.anon.79 = type { %struct.list_head }
%union.anon.80 = type { %struct.hlist_node }
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

@.str = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"panic (device %s): %s: %pV\0A\00", [36 x i8] zeroinitializer }, align 32
@ufs_error._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 300, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\012ufs: error (device %s): %s: %pV\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ufs_error\00", [22 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"fs/ufs/super.c\00", [17 x i8] zeroinitializer }, align 32
@ufs_error._entry_ptr = internal global ptr @ufs_error._entry, section ".printk_index", align 4
@ufs_panic._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.3, i32 326, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\012ufs: panic (device %s): %s: %pV\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ufs_panic\00", [22 x i8] zeroinitializer }, align 32
@ufs_panic._entry_ptr = internal global ptr @ufs_panic._entry, section ".printk_index", align 4
@ufs_warning._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.3, i32 340, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\014ufs: (device %s): %s: %pV\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ufs_warning\00", [20 x i8] zeroinitializer }, align 32
@ufs_warning._entry_ptr = internal global ptr @ufs_warning._entry, section ".printk_index", align 4
@dirty_writeback_interval = external dso_local local_unnamed_addr global i32, align 4
@system_long_wq = external dso_local local_unnamed_addr global ptr, align 4
@__UNIQUE_ID_alias426 = internal constant [17 x i8] c"ufs.alias=fs-ufs\00", section ".modinfo", align 1
@ufs_fs_type = internal global { %struct.file_system_type, [44 x i8] } { %struct.file_system_type { ptr @.str.8, i32 1, ptr null, ptr null, ptr @ufs_mount, ptr @kill_block_super, ptr null, ptr null, %struct.hlist_head zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, [3 x %struct.lock_class_key] zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@__initcall__kmod_ufs__427_1541_init_ufs_fs6 = internal global ptr @init_ufs_fs, section ".initcall6.init", align 4
@__exitcall_exit_ufs_fs = internal global ptr @exit_ufs_fs, section ".exitcall.exit", align 4
@__UNIQUE_ID_file428 = internal constant [20 x i8] c"ufs.file=fs/ufs/ufs\00", section ".modinfo", align 1
@__UNIQUE_ID_license429 = internal constant [16 x i8] c"ufs.license=GPL\00", section ".modinfo", align 1
@.str.8 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ufs\00", [28 x i8] zeroinitializer }, align 32
@ufs_fill_super.__UNIQUE_ID_ddebug384 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.9, ptr @.str.3, ptr @.str.10, i8 0, i8 -57, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ufs_fill_super\00", [17 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"UFSD (%s, %d): %s:\00", [45 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ufs: UFSD (%s, %d): %s:\00", [40 x i8] zeroinitializer }, align 32
@ufs_fill_super.__UNIQUE_ID_ddebug385 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.9, ptr @.str.3, ptr @.str.12, i8 0, i8 -57, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ENTER\0A\00", [25 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ufs: ENTER\0A\00", [20 x i8] zeroinitializer }, align 32
@ufs_fill_super.__UNIQUE_ID_ddebug386 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.9, ptr @.str.3, ptr @.str.10, i8 0, i8 -54, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@ufs_fill_super.__UNIQUE_ID_ddebug387 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.9, ptr @.str.3, ptr @.str.14, i8 0, i8 -54, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"flag %u\0A\00", [23 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ufs: flag %u\0A\00", [18 x i8] zeroinitializer }, align 32
@ufs_fill_super.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.16 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&sbi->s_lock\00", [19 x i8] zeroinitializer }, align 32
@ufs_fill_super.__key.17 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.18 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&sbi->work_lock\00", [16 x i8] zeroinitializer }, align 32
@ufs_fill_super.__key.19 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.20 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"(work_completion)(&(&sbi->sync_work)->work)\00", [52 x i8] zeroinitializer }, align 32
@ufs_fill_super.__key.21 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.22 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"&(&sbi->sync_work)->timer\00", [38 x i8] zeroinitializer }, align 32
@ufs_fill_super._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.9, ptr @.str.3, i32 823, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\013ufs: wrong mount options\0A\00", [36 x i8] zeroinitializer }, align 32
@ufs_fill_super._entry_ptr = internal global ptr @ufs_fill_super._entry, section ".printk_index", align 4
@ufs_fill_super._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.9, ptr @.str.3, i32 832, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [234 x i8], [54 x i8] } { [234 x i8] c"\013ufs: You didn't specify the type of your ufs filesystem\0A\0Amount -t ufs -o ufstype=sun|sunx86|44bsd|ufs2|5xbsd|old|hp|nextstep|nextstep-cd|openstep ...\0A\0A>>>WARNING<<< Wrong ufstype may corrupt your filesystem, default is ufstype=old\0A\00", [54 x i8] zeroinitializer }, align 32
@ufs_fill_super._entry_ptr.26 = internal global ptr @ufs_fill_super._entry.24, section ".printk_index", align 4
@ufs_fill_super.__UNIQUE_ID_ddebug388 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.9, ptr @.str.3, ptr @.str.10, i8 0, i8 -44, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@ufs_fill_super.__UNIQUE_ID_ddebug389 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.9, ptr @.str.3, ptr @.str.27, i8 0, i8 -44, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ufstype=44bsd\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ufs: ufstype=44bsd\0A\00", [44 x i8] zeroinitializer }, align 32
@ufs_fill_super.__UNIQUE_ID_ddebug390 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.9, ptr @.str.3, ptr @.str.10, i8 0, i8 -41, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@ufs_fill_super.__UNIQUE_ID_ddebug391 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.9, ptr @.str.3, ptr @.str.29, i8 0, i8 -41, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ufstype=ufs2\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ufs: ufstype=ufs2\0A\00", [45 x i8] zeroinitializer }, align 32
@ufs_fill_super.__UNIQUE_ID_ddebug392 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.9, ptr @.str.3, ptr @.str.10, i8 0, i8 -38, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@ufs_fill_super.__UNIQUE_ID_ddebug393 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.9, ptr @.str.3, ptr @.str.31, i8 0, i8 -38, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ufstype=sun\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ufs: ufstype=sun\0A\00", [46 x i8] zeroinitializer }, align 32
@ufs_fill_super.__UNIQUE_ID_ddebug394 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.9, ptr @.str.3, ptr @.str.10, i8 0, i8 -35, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@ufs_fill_super.__UNIQUE_ID_ddebug395 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.9, ptr @.str.3, ptr @.str.33, i8 0, i8 -35, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ufstype=sunos\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ufs: ufstype=sunos\0A\00", [44 x i8] zeroinitializer }, align 32
@ufs_fill_super.__UNIQUE_ID_ddebug396 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.9, ptr @.str.3, ptr @.str.10, i8 0, i8 -32, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@ufs_fill_super.__UNIQUE_ID_ddebug397 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.9, ptr @.str.3, ptr @.str.35, i8 0, i8 -32, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ufstype=sunx86\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ufs: ufstype=sunx86\0A\00", [43 x i8] zeroinitializer }, align 32
@ufs_fill_super.__UNIQUE_ID_ddebug398 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.9, ptr @.str.3, ptr @.str.10, i8 0, i8 -29, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@ufs_fill_super.__UNIQUE_ID_ddebug399 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.9, ptr @.str.3, ptr @.str.37, i8 0, i8 -29, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ufstype=old\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ufs: ufstype=old\0A\00", [46 x i8] zeroinitializer }, align 32
@ufs_fill_super._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.9, ptr @.str.3, i32 917, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016ufs: ufstype=old is supported read-only\0A\00", [53 x i8] zeroinitializer }, align 32
@ufs_fill_super._entry_ptr.41 = internal global ptr @ufs_fill_super._entry.39, section ".printk_index", align 4
@ufs_fill_super.__UNIQUE_ID_ddebug400 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.9, ptr @.str.3, ptr @.str.10, i8 0, i8 -26, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@ufs_fill_super.__UNIQUE_ID_ddebug401 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.9, ptr @.str.3, ptr @.str.42, i8 0, i8 -26, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ufstype=nextstep\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ufs: ufstype=nextstep\0A\00", [41 x i8] zeroinitializer }, align 32
@ufs_fill_super._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.9, ptr @.str.3, i32 933, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\016ufs: ufstype=nextstep is supported read-only\0A\00", [48 x i8] zeroinitializer }, align 32
@ufs_fill_super._entry_ptr.46 = internal global ptr @ufs_fill_super._entry.44, section ".printk_index", align 4
@ufs_fill_super.__UNIQUE_ID_ddebug402 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.9, ptr @.str.3, ptr @.str.10, i8 0, i8 -22, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@ufs_fill_super.__UNIQUE_ID_ddebug403 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.9, ptr @.str.3, ptr @.str.47, i8 0, i8 -22, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ufstype=nextstep-cd\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ufs: ufstype=nextstep-cd\0A\00", [38 x i8] zeroinitializer }, align 32
@ufs_fill_super._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.9, ptr @.str.3, i32 949, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\016ufs: ufstype=nextstep-cd is supported read-only\0A\00", [45 x i8] zeroinitializer }, align 32
@ufs_fill_super._entry_ptr.51 = internal global ptr @ufs_fill_super._entry.49, section ".printk_index", align 4
@ufs_fill_super.__UNIQUE_ID_ddebug404 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.9, ptr @.str.3, ptr @.str.10, i8 0, i8 -18, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@ufs_fill_super.__UNIQUE_ID_ddebug405 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.9, ptr @.str.3, ptr @.str.52, i8 0, i8 -18, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.52 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ufstype=openstep\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ufs: ufstype=openstep\0A\00", [41 x i8] zeroinitializer }, align 32
@ufs_fill_super._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.9, ptr @.str.3, i32 965, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\016ufs: ufstype=openstep is supported read-only\0A\00", [48 x i8] zeroinitializer }, align 32
@ufs_fill_super._entry_ptr.56 = internal global ptr @ufs_fill_super._entry.54, section ".printk_index", align 4
@ufs_fill_super.__UNIQUE_ID_ddebug406 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.9, ptr @.str.3, ptr @.str.10, i8 0, i8 -14, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@ufs_fill_super.__UNIQUE_ID_ddebug407 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.9, ptr @.str.3, ptr @.str.57, i8 0, i8 -14, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.57 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ufstype=hp\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ufs: ufstype=hp\0A\00", [47 x i8] zeroinitializer }, align 32
@ufs_fill_super._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.9, ptr @.str.3, i32 980, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\016ufs: ufstype=hp is supported read-only\0A\00", [54 x i8] zeroinitializer }, align 32
@ufs_fill_super._entry_ptr.61 = internal global ptr @ufs_fill_super._entry.59, section ".printk_index", align 4
@ufs_fill_super._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.9, ptr @.str.3, i32 986, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\013ufs: unknown ufstype\0A\00", [40 x i8] zeroinitializer }, align 32
@ufs_fill_super._entry_ptr.64 = internal global ptr @ufs_fill_super._entry.62, section ".printk_index", align 4
@ufs_fill_super._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.9, ptr @.str.3, i32 992, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013ufs: failed to set blocksize\0A\00", [32 x i8] zeroinitializer }, align 32
@ufs_fill_super._entry_ptr.67 = internal global ptr @ufs_fill_super._entry.65, section ".printk_index", align 4
@ufs_fill_super._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.9, ptr @.str.3, i32 1020, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013ufs: this is not a 44bsd filesystem\00", [58 x i8] zeroinitializer }, align 32
@ufs_fill_super._entry_ptr.70 = internal global ptr @ufs_fill_super._entry.68, section ".printk_index", align 4
@ufs_fill_super._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.9, ptr @.str.3, i32 1058, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013ufs: %s(): bad magic number\0A\00", [33 x i8] zeroinitializer }, align 32
@ufs_fill_super._entry_ptr.73 = internal global ptr @ufs_fill_super._entry.71, section ".printk_index", align 4
@ufs_fill_super._entry.74 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.9, ptr @.str.3, i32 1073, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013ufs: %s(): fragment size %u is not a power of 2\0A\00", [45 x i8] zeroinitializer }, align 32
@ufs_fill_super._entry_ptr.76 = internal global ptr @ufs_fill_super._entry.74, section ".printk_index", align 4
@ufs_fill_super._entry.77 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.9, ptr @.str.3, i32 1078, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013ufs: %s(): fragment size %u is too small\0A\00", [52 x i8] zeroinitializer }, align 32
@ufs_fill_super._entry_ptr.79 = internal global ptr @ufs_fill_super._entry.77, section ".printk_index", align 4
@ufs_fill_super._entry.80 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.9, ptr @.str.3, i32 1083, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013ufs: %s(): fragment size %u is too large\0A\00", [52 x i8] zeroinitializer }, align 32
@ufs_fill_super._entry_ptr.82 = internal global ptr @ufs_fill_super._entry.80, section ".printk_index", align 4
@ufs_fill_super._entry.83 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.9, ptr @.str.3, i32 1088, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013ufs: %s(): block size %u is not a power of 2\0A\00", [48 x i8] zeroinitializer }, align 32
@ufs_fill_super._entry_ptr.85 = internal global ptr @ufs_fill_super._entry.83, section ".printk_index", align 4
@ufs_fill_super._entry.86 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.9, ptr @.str.3, i32 1093, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013ufs: %s(): block size %u is too small\0A\00", [55 x i8] zeroinitializer }, align 32
@ufs_fill_super._entry_ptr.88 = internal global ptr @ufs_fill_super._entry.86, section ".printk_index", align 4
@ufs_fill_super._entry.89 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.9, ptr @.str.3, i32 1098, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013ufs: %s(): too many fragments per block (%u)\0A\00", [48 x i8] zeroinitializer }, align 32
@ufs_fill_super._entry_ptr.91 = internal global ptr @ufs_fill_super._entry.89, section ".printk_index", align 4
@ufs_fill_super.__UNIQUE_ID_ddebug408 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.9, ptr @.str.3, ptr @.str.10, i8 1, i8 20, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@ufs_fill_super.__UNIQUE_ID_ddebug409 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.9, ptr @.str.3, ptr @.str.92, i8 1, i8 20, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.92 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"another value of block_size or super_block_size %u, %u\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"ufs: another value of block_size or super_block_size %u, %u\0A\00", [35 x i8] zeroinitializer }, align 32
@ufs_fill_super.__UNIQUE_ID_ddebug410 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.9, ptr @.str.3, ptr @.str.10, i8 1, i8 25, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@ufs_fill_super.__UNIQUE_ID_ddebug411 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.9, ptr @.str.3, ptr @.str.94, i8 1, i8 25, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.94 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"fs is clean\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ufs: fs is clean\0A\00", [46 x i8] zeroinitializer }, align 32
@ufs_fill_super.__UNIQUE_ID_ddebug412 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.9, ptr @.str.3, ptr @.str.10, i8 1, i8 26, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@ufs_fill_super.__UNIQUE_ID_ddebug413 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.9, ptr @.str.3, ptr @.str.96, i8 1, i8 26, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.96 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"fs is stable\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ufs: fs is stable\0A\00", [45 x i8] zeroinitializer }, align 32
@ufs_fill_super.__UNIQUE_ID_ddebug414 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.9, ptr @.str.3, ptr @.str.10, i8 1, i8 26, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@ufs_fill_super.__UNIQUE_ID_ddebug415 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.9, ptr @.str.3, ptr @.str.98, i8 1, i8 26, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.98 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"fs is logging fs\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ufs: fs is logging fs\0A\00", [41 x i8] zeroinitializer }, align 32
@ufs_fill_super.__UNIQUE_ID_ddebug416 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.9, ptr @.str.3, ptr @.str.10, i8 1, i8 27, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@ufs_fill_super.__UNIQUE_ID_ddebug417 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.9, ptr @.str.3, ptr @.str.100, i8 1, i8 27, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.100 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fs is DEC OSF/1\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ufs: fs is DEC OSF/1\0A\00", [42 x i8] zeroinitializer }, align 32
@ufs_fill_super._entry.102 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.103, ptr @.str.9, ptr @.str.3, i32 1137, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\013ufs: %s(): fs is active\0A\00", [37 x i8] zeroinitializer }, align 32
@ufs_fill_super._entry_ptr.104 = internal global ptr @ufs_fill_super._entry.102, section ".printk_index", align 4
@ufs_fill_super._entry.105 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.106, ptr @.str.9, ptr @.str.3, i32 1141, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\013ufs: %s(): fs is bad\0A\00", [40 x i8] zeroinitializer }, align 32
@ufs_fill_super._entry_ptr.107 = internal global ptr @ufs_fill_super._entry.105, section ".printk_index", align 4
@ufs_fill_super._entry.108 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.109, ptr @.str.9, ptr @.str.3, i32 1146, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013ufs: %s(): can't grok fs_clean 0x%x\0A\00", [57 x i8] zeroinitializer }, align 32
@ufs_fill_super._entry_ptr.110 = internal global ptr @ufs_fill_super._entry.108, section ".printk_index", align 4
@ufs_fill_super._entry.111 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.112, ptr @.str.9, ptr @.str.3, i32 1151, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\013ufs: %s(): fs needs fsck\0A\00", [36 x i8] zeroinitializer }, align 32
@ufs_fill_super._entry_ptr.113 = internal global ptr @ufs_fill_super._entry.111, section ".printk_index", align 4
@ufs_super_ops = internal constant { %struct.super_operations, [60 x i8] } { %struct.super_operations { ptr @ufs_alloc_inode, ptr null, ptr @ufs_free_in_core_inode, ptr null, ptr @ufs_write_inode, ptr null, ptr @ufs_evict_inode, ptr @ufs_put_super, ptr @ufs_sync_fs, ptr null, ptr null, ptr null, ptr null, ptr @ufs_statfs, ptr @ufs_remount, ptr null, ptr @ufs_show_options, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@ufs_export_ops = internal constant { %struct.export_operations, [52 x i8] } { %struct.export_operations { ptr null, ptr @ufs_fh_to_dentry, ptr @ufs_fh_to_parent, ptr null, ptr @ufs_get_parent, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, [52 x i8] zeroinitializer }, align 32
@ufs_fill_super.__UNIQUE_ID_ddebug418 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.9, ptr @.str.3, ptr @.str.10, i8 1, i8 41, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@ufs_fill_super.__UNIQUE_ID_ddebug419 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.9, ptr @.str.3, ptr @.str.114, i8 1, i8 41, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.114 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"uspi->s_bshift = %d,uspi->s_fshift = %d\00", [56 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"ufs: uspi->s_bshift = %d,uspi->s_fshift = %d\00", [51 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"ufs_read_super: excessive maximum fast symlink size (%u)\0A\00", [38 x i8] zeroinitializer }, align 32
@ufs_fill_super.__UNIQUE_ID_ddebug420 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.9, ptr @.str.3, ptr @.str.10, i8 1, i8 66, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@ufs_fill_super.__UNIQUE_ID_ddebug421 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.9, ptr @.str.3, ptr @.str.117, i8 1, i8 66, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.117 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"EXIT\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ufs: EXIT\0A\00", [21 x i8] zeroinitializer }, align 32
@ufs_fill_super.__UNIQUE_ID_ddebug422 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.9, ptr @.str.3, ptr @.str.10, i8 1, i8 68, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@ufs_fill_super.__UNIQUE_ID_ddebug423 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.9, ptr @.str.3, ptr @.str.119, i8 1, i8 68, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.119 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"EXIT (FAILED)\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ufs: EXIT (FAILED)\0A\00", [44 x i8] zeroinitializer }, align 32
@ufs_fill_super.__UNIQUE_ID_ddebug424 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.9, ptr @.str.3, ptr @.str.10, i8 1, i8 69, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@ufs_fill_super.__UNIQUE_ID_ddebug425 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.9, ptr @.str.3, ptr @.str.121, i8 1, i8 69, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.121 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"EXIT (NOMEM)\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ufs: EXIT (NOMEM)\0A\00", [45 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@ufs_sync_fs.__UNIQUE_ID_ddebug376 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.123, ptr @.str.3, ptr @.str.10, i8 0, i8 -83, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.123 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ufs_sync_fs\00", [20 x i8] zeroinitializer }, align 32
@ufs_sync_fs.__UNIQUE_ID_ddebug377 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.123, ptr @.str.3, ptr @.str.12, i8 0, i8 -83, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@ufs_sync_fs.__UNIQUE_ID_ddebug378 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.123, ptr @.str.3, ptr @.str.10, i8 0, i8 -79, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@ufs_sync_fs.__UNIQUE_ID_ddebug379 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.123, ptr @.str.3, ptr @.str.117, i8 0, i8 -79, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@ufs_put_cstotal.__UNIQUE_ID_ddebug368 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.124, ptr @.str.3, ptr @.str.10, i8 0, i8 -107, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.124 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ufs_put_cstotal\00", [16 x i8] zeroinitializer }, align 32
@ufs_put_cstotal.__UNIQUE_ID_ddebug369 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.124, ptr @.str.3, ptr @.str.12, i8 0, i8 -107, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@ufs_put_cstotal.__UNIQUE_ID_ddebug370 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.124, ptr @.str.3, ptr @.str.10, i8 0, i8 -98, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@ufs_put_cstotal.__UNIQUE_ID_ddebug371 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.124, ptr @.str.3, ptr @.str.117, i8 0, i8 -98, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@ufs_parse_options.__UNIQUE_ID_ddebug354 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.125, ptr @.str.3, ptr @.str.10, i8 0, i8 96, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.125 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ufs_parse_options\00", [46 x i8] zeroinitializer }, align 32
@ufs_parse_options.__UNIQUE_ID_ddebug355 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.125, ptr @.str.3, ptr @.str.12, i8 0, i8 96, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.126 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c",\00", [30 x i8] zeroinitializer }, align 32
@tokens = internal constant { [16 x %struct.match_token], [32 x i8] } { [16 x %struct.match_token] [%struct.match_token { i32 16, ptr @.str.131 }, %struct.match_token { i32 1024, ptr @.str.132 }, %struct.match_token { i32 64, ptr @.str.133 }, %struct.match_token { i32 8192, ptr @.str.134 }, %struct.match_token { i32 32, ptr @.str.135 }, %struct.match_token { i32 4096, ptr @.str.136 }, %struct.match_token { i32 4096, ptr @.str.137 }, %struct.match_token { i32 2048, ptr @.str.138 }, %struct.match_token { i32 256, ptr @.str.139 }, %struct.match_token { i32 128, ptr @.str.140 }, %struct.match_token { i32 512, ptr @.str.141 }, %struct.match_token { i32 1, ptr @.str.142 }, %struct.match_token { i32 2, ptr @.str.143 }, %struct.match_token { i32 4, ptr @.str.144 }, %struct.match_token { i32 8, ptr @.str.145 }, %struct.match_token { i32 9, ptr null }], [32 x i8] zeroinitializer }, align 32
@ufs_parse_options._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.127, ptr @.str.125, ptr @.str.3, i32 452, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\013ufs: Unable to do repair on error, will lock lock instead\0A\00", [35 x i8] zeroinitializer }, align 32
@ufs_parse_options._entry_ptr = internal global ptr @ufs_parse_options._entry, section ".printk_index", align 4
@ufs_parse_options._entry.128 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.129, ptr @.str.125, ptr @.str.3, i32 457, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013ufs: Invalid option: \22%s\22 or missing value\0A\00", [50 x i8] zeroinitializer }, align 32
@ufs_parse_options._entry_ptr.130 = internal global ptr @ufs_parse_options._entry.128, section ".printk_index", align 4
@.str.131 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ufstype=old\00", [20 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ufstype=sunx86\00", [17 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ufstype=sun\00", [20 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ufstype=sunos\00", [18 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ufstype=44bsd\00", [18 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ufstype=ufs2\00", [19 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ufstype=5xbsd\00", [18 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ufstype=hp\00", [21 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ufstype=nextstep-cd\00", [44 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ufstype=nextstep\00", [47 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ufstype=openstep\00", [47 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"onerror=panic\00", [18 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"onerror=lock\00", [19 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"onerror=umount\00", [17 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"onerror=repair\00", [17 x i8] zeroinitializer }, align 32
@ufs_print_super_stuff.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.146, ptr @.str.3, ptr @.str.147, i8 0, i8 39, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.146 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ufs_print_super_stuff\00", [42 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ufs_print_super_stuff\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"ufs: ufs_print_super_stuff\0A\00", [36 x i8] zeroinitializer }, align 32
@ufs_print_super_stuff.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.146, ptr @.str.3, ptr @.str.149, i8 0, i8 39, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.149 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"  magic:     0x%x\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ufs:   magic:     0x%x\0A\00", [40 x i8] zeroinitializer }, align 32
@ufs_print_super_stuff.__UNIQUE_ID_ddebug291 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.146, ptr @.str.3, ptr @.str.151, i8 0, i8 40, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.151 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"  fs_size:   %llu\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ufs:   fs_size:   %llu\0A\00", [40 x i8] zeroinitializer }, align 32
@ufs_print_super_stuff.__UNIQUE_ID_ddebug292 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.146, ptr @.str.3, ptr @.str.153, i8 0, i8 40, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.153 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"  fs_dsize:  %llu\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ufs:   fs_dsize:  %llu\0A\00", [40 x i8] zeroinitializer }, align 32
@ufs_print_super_stuff.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.146, ptr @.str.3, ptr @.str.155, i8 0, i8 41, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.155 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"  bsize:         %u\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ufs:   bsize:         %u\0A\00", [38 x i8] zeroinitializer }, align 32
@ufs_print_super_stuff.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.146, ptr @.str.3, ptr @.str.157, i8 0, i8 41, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.157 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"  fsize:         %u\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ufs:   fsize:         %u\0A\00", [38 x i8] zeroinitializer }, align 32
@ufs_print_super_stuff.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.146, ptr @.str.3, ptr @.str.159, i8 0, i8 41, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.159 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"  fs_volname:  %s\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ufs:   fs_volname:  %s\0A\00", [40 x i8] zeroinitializer }, align 32
@ufs_print_super_stuff.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.146, ptr @.str.3, ptr @.str.161, i8 0, i8 42, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.161 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"  fs_sblockloc: %llu\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ufs:   fs_sblockloc: %llu\0A\00", [37 x i8] zeroinitializer }, align 32
@ufs_print_super_stuff.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.146, ptr @.str.3, ptr @.str.163, i8 0, i8 42, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.163 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"  cs_ndir(No of dirs):  %llu\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"ufs:   cs_ndir(No of dirs):  %llu\0A\00", [61 x i8] zeroinitializer }, align 32
@ufs_print_super_stuff.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.146, ptr @.str.3, ptr @.str.165, i8 0, i8 43, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.165 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"  cs_nbfree(No of free blocks):  %llu\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"ufs:   cs_nbfree(No of free blocks):  %llu\0A\00", [52 x i8] zeroinitializer }, align 32
@ufs_print_super_stuff._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.167, ptr @.str.146, ptr @.str.3, i32 177, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\016ufs:   cs_nifree(Num of free inodes): %llu\0A\00", [50 x i8] zeroinitializer }, align 32
@ufs_print_super_stuff._entry_ptr = internal global ptr @ufs_print_super_stuff._entry, section ".printk_index", align 4
@ufs_print_super_stuff._entry.168 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.169, ptr @.str.146, ptr @.str.3, i32 180, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\016ufs:   cs_nffree(Num of free frags): %llu\0A\00", [51 x i8] zeroinitializer }, align 32
@ufs_print_super_stuff._entry_ptr.170 = internal global ptr @ufs_print_super_stuff._entry.168, section ".printk_index", align 4
@ufs_print_super_stuff._entry.171 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.172, ptr @.str.146, ptr @.str.3, i32 182, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\016ufs:   fs_maxsymlinklen: %u\0A\00", [33 x i8] zeroinitializer }, align 32
@ufs_print_super_stuff._entry_ptr.173 = internal global ptr @ufs_print_super_stuff._entry.171, section ".printk_index", align 4
@ufs_print_super_stuff.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.146, ptr @.str.3, ptr @.str.174, i8 0, i8 46, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.174 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c" sblkno:      %u\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ufs:  sblkno:      %u\0A\00", [41 x i8] zeroinitializer }, align 32
@ufs_print_super_stuff.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.146, ptr @.str.3, ptr @.str.176, i8 0, i8 46, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.176 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c" cblkno:      %u\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ufs:  cblkno:      %u\0A\00", [41 x i8] zeroinitializer }, align 32
@ufs_print_super_stuff.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.146, ptr @.str.3, ptr @.str.178, i8 0, i8 46, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.178 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c" iblkno:      %u\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ufs:  iblkno:      %u\0A\00", [41 x i8] zeroinitializer }, align 32
@ufs_print_super_stuff.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.146, ptr @.str.3, ptr @.str.180, i8 0, i8 46, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.180 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c" dblkno:      %u\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ufs:  dblkno:      %u\0A\00", [41 x i8] zeroinitializer }, align 32
@ufs_print_super_stuff.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.146, ptr @.str.3, ptr @.str.182, i8 0, i8 47, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.182 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c" cgoffset:    %u\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ufs:  cgoffset:    %u\0A\00", [41 x i8] zeroinitializer }, align 32
@ufs_print_super_stuff.__UNIQUE_ID_ddebug304 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.146, ptr @.str.3, ptr @.str.184, i8 0, i8 47, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.184 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c" ~cgmask:     0x%x\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ufs:  ~cgmask:     0x%x\0A\00", [39 x i8] zeroinitializer }, align 32
@ufs_print_super_stuff.__UNIQUE_ID_ddebug305 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.146, ptr @.str.3, ptr @.str.186, i8 0, i8 48, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.186 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c" size:        %u\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.187 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ufs:  size:        %u\0A\00", [41 x i8] zeroinitializer }, align 32
@ufs_print_super_stuff.__UNIQUE_ID_ddebug306 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.146, ptr @.str.3, ptr @.str.188, i8 0, i8 48, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.188 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c" dsize:       %u\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.189 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ufs:  dsize:       %u\0A\00", [41 x i8] zeroinitializer }, align 32
@ufs_print_super_stuff.__UNIQUE_ID_ddebug307 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.146, ptr @.str.3, ptr @.str.190, i8 0, i8 48, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.190 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c" ncg:         %u\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.191 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ufs:  ncg:         %u\0A\00", [41 x i8] zeroinitializer }, align 32
@ufs_print_super_stuff.__UNIQUE_ID_ddebug308 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.146, ptr @.str.3, ptr @.str.192, i8 0, i8 48, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.192 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c" bsize:       %u\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.193 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ufs:  bsize:       %u\0A\00", [41 x i8] zeroinitializer }, align 32
@ufs_print_super_stuff.__UNIQUE_ID_ddebug309 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.146, ptr @.str.3, ptr @.str.194, i8 0, i8 49, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.194 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c" fsize:       %u\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.195 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ufs:  fsize:       %u\0A\00", [41 x i8] zeroinitializer }, align 32
@ufs_print_super_stuff.__UNIQUE_ID_ddebug310 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.146, ptr @.str.3, ptr @.str.196, i8 0, i8 49, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.196 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c" frag:        %u\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.197 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ufs:  frag:        %u\0A\00", [41 x i8] zeroinitializer }, align 32
@ufs_print_super_stuff.__UNIQUE_ID_ddebug311 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.146, ptr @.str.3, ptr @.str.198, i8 0, i8 49, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.198 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c" fragshift:   %u\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.199 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ufs:  fragshift:   %u\0A\00", [41 x i8] zeroinitializer }, align 32
@ufs_print_super_stuff.__UNIQUE_ID_ddebug312 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.146, ptr @.str.3, ptr @.str.200, i8 0, i8 50, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.200 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c" ~fmask:      %u\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.201 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ufs:  ~fmask:      %u\0A\00", [41 x i8] zeroinitializer }, align 32
@ufs_print_super_stuff.__UNIQUE_ID_ddebug313 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.146, ptr @.str.3, ptr @.str.202, i8 0, i8 50, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.202 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c" fshift:      %u\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.203 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ufs:  fshift:      %u\0A\00", [41 x i8] zeroinitializer }, align 32
@ufs_print_super_stuff.__UNIQUE_ID_ddebug314 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.146, ptr @.str.3, ptr @.str.204, i8 0, i8 50, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.204 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c" sbsize:      %u\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.205 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ufs:  sbsize:      %u\0A\00", [41 x i8] zeroinitializer }, align 32
@ufs_print_super_stuff.__UNIQUE_ID_ddebug315 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.146, ptr @.str.3, ptr @.str.206, i8 0, i8 50, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.206 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c" spc:         %u\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.207 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ufs:  spc:         %u\0A\00", [41 x i8] zeroinitializer }, align 32
@ufs_print_super_stuff.__UNIQUE_ID_ddebug316 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.146, ptr @.str.3, ptr @.str.208, i8 0, i8 51, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.208 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c" cpg:         %u\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.209 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ufs:  cpg:         %u\0A\00", [41 x i8] zeroinitializer }, align 32
@ufs_print_super_stuff.__UNIQUE_ID_ddebug317 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.146, ptr @.str.3, ptr @.str.210, i8 0, i8 51, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.210 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c" ipg:         %u\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.211 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ufs:  ipg:         %u\0A\00", [41 x i8] zeroinitializer }, align 32
@ufs_print_super_stuff.__UNIQUE_ID_ddebug318 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.146, ptr @.str.3, ptr @.str.212, i8 0, i8 51, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.212 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c" fpg:         %u\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.213 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ufs:  fpg:         %u\0A\00", [41 x i8] zeroinitializer }, align 32
@ufs_print_super_stuff.__UNIQUE_ID_ddebug319 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.146, ptr @.str.3, ptr @.str.214, i8 0, i8 51, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.214 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c" csaddr:      %u\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.215 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ufs:  csaddr:      %u\0A\00", [41 x i8] zeroinitializer }, align 32
@ufs_print_super_stuff.__UNIQUE_ID_ddebug320 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.146, ptr @.str.3, ptr @.str.216, i8 0, i8 52, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.216 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c" cssize:      %u\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.217 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ufs:  cssize:      %u\0A\00", [41 x i8] zeroinitializer }, align 32
@ufs_print_super_stuff.__UNIQUE_ID_ddebug321 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.146, ptr @.str.3, ptr @.str.218, i8 0, i8 52, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.218 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c" cgsize:      %u\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.219 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ufs:  cgsize:      %u\0A\00", [41 x i8] zeroinitializer }, align 32
@ufs_print_super_stuff.__UNIQUE_ID_ddebug322 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.146, ptr @.str.3, ptr @.str.220, i8 0, i8 52, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.220 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c" fstodb:      %u\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.221 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ufs:  fstodb:      %u\0A\00", [41 x i8] zeroinitializer }, align 32
@ufs_print_super_stuff.__UNIQUE_ID_ddebug323 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.146, ptr @.str.3, ptr @.str.222, i8 0, i8 53, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.222 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c" nrpos:       %u\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.223 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ufs:  nrpos:       %u\0A\00", [41 x i8] zeroinitializer }, align 32
@ufs_print_super_stuff.__UNIQUE_ID_ddebug324 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.146, ptr @.str.3, ptr @.str.224, i8 0, i8 53, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.224 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c" ndir         %u\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.225 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ufs:  ndir         %u\0A\00", [41 x i8] zeroinitializer }, align 32
@ufs_print_super_stuff.__UNIQUE_ID_ddebug325 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.146, ptr @.str.3, ptr @.str.226, i8 0, i8 54, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.226 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c" nifree       %u\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.227 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ufs:  nifree       %u\0A\00", [41 x i8] zeroinitializer }, align 32
@ufs_print_super_stuff.__UNIQUE_ID_ddebug326 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.146, ptr @.str.3, ptr @.str.228, i8 0, i8 54, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.228 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c" nbfree       %u\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.229 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ufs:  nbfree       %u\0A\00", [41 x i8] zeroinitializer }, align 32
@ufs_print_super_stuff.__UNIQUE_ID_ddebug327 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.146, ptr @.str.3, ptr @.str.230, i8 0, i8 55, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.230 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c" nffree       %u\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.231 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ufs:  nffree       %u\0A\00", [41 x i8] zeroinitializer }, align 32
@ufs_print_super_stuff.__UNIQUE_ID_ddebug328 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.146, ptr @.str.3, ptr @.str.232, i8 0, i8 55, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.232 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@.str.233 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ufs: \0A\00", [25 x i8] zeroinitializer }, align 32
@ufs_inode_cachep = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@ufs_alloc_inode.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.234 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"&(&ei->meta_lock)->lock\00", [40 x i8] zeroinitializer }, align 32
@ufs_alloc_inode.__key.235 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.236 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&____s->seqcount\00", [47 x i8] zeroinitializer }, align 32
@ufs_alloc_inode.__key.237 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.238 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&ei->truncate_mutex\00", [44 x i8] zeroinitializer }, align 32
@ufs_put_super.__UNIQUE_ID_ddebug380 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.239, ptr @.str.3, ptr @.str.10, i8 0, i8 -70, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.239 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ufs_put_super\00", [18 x i8] zeroinitializer }, align 32
@ufs_put_super.__UNIQUE_ID_ddebug381 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.239, ptr @.str.3, ptr @.str.12, i8 0, i8 -70, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@ufs_put_super.__UNIQUE_ID_ddebug382 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.239, ptr @.str.3, ptr @.str.10, i8 0, i8 -67, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@ufs_put_super.__UNIQUE_ID_ddebug383 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.239, ptr @.str.3, ptr @.str.117, i8 0, i8 -67, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@ufs_put_super_internal.__UNIQUE_ID_ddebug372 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.240, ptr @.str.3, ptr @.str.10, i8 0, i8 -93, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.240 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ufs_put_super_internal\00", [41 x i8] zeroinitializer }, align 32
@ufs_put_super_internal.__UNIQUE_ID_ddebug373 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.240, ptr @.str.3, ptr @.str.12, i8 0, i8 -93, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@ufs_put_super_internal.__UNIQUE_ID_ddebug374 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.240, ptr @.str.3, ptr @.str.10, i8 0, i8 -86, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@ufs_put_super_internal.__UNIQUE_ID_ddebug375 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.240, ptr @.str.3, ptr @.str.117, i8 0, i8 -86, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@ufs_remount._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.241, ptr @.str.242, ptr @.str.3, i32 1336, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.241 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013ufs: ufstype can't be changed during remount\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.242 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ufs_remount\00", [20 x i8] zeroinitializer }, align 32
@ufs_remount._entry_ptr = internal global ptr @ufs_remount._entry, section ".printk_index", align 4
@ufs_remount._entry.243 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.244, ptr @.str.242, ptr @.str.3, i32 1374, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.244 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013ufs: this ufstype is read-only supported\0A\00", [52 x i8] zeroinitializer }, align 32
@ufs_remount._entry_ptr.245 = internal global ptr @ufs_remount._entry.243, section ".printk_index", align 4
@ufs_remount._entry.246 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.247, ptr @.str.242, ptr @.str.3, i32 1379, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.247 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013ufs: failed during remounting\0A\00", [63 x i8] zeroinitializer }, align 32
@ufs_remount._entry_ptr.248 = internal global ptr @ufs_remount._entry.246, section ".printk_index", align 4
@.str.249 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c",%s\00", [28 x i8] zeroinitializer }, align 32
@dotdot_name = external dso_local constant %struct.qstr, align 8
@ufs_setup_cstotal.__UNIQUE_ID_ddebug356 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.250, ptr @.str.3, ptr @.str.10, i8 0, i8 119, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.250 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ufs_setup_cstotal\00", [46 x i8] zeroinitializer }, align 32
@ufs_setup_cstotal.__UNIQUE_ID_ddebug357 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.250, ptr @.str.3, ptr @.str.251, i8 0, i8 119, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.251 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ENTER, mtype=%u\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.252 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ufs: ENTER, mtype=%u\0A\00", [42 x i8] zeroinitializer }, align 32
@ufs_setup_cstotal.__UNIQUE_ID_ddebug358 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.250, ptr @.str.3, ptr @.str.10, i8 0, i8 124, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@ufs_setup_cstotal.__UNIQUE_ID_ddebug359 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.250, ptr @.str.3, ptr @.str.117, i8 0, i8 124, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@ufs_read_cylinder_structures.__UNIQUE_ID_ddebug360 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.253, ptr @.str.3, ptr @.str.10, i8 0, i8 127, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.253 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"ufs_read_cylinder_structures\00", [35 x i8] zeroinitializer }, align 32
@ufs_read_cylinder_structures.__UNIQUE_ID_ddebug361 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.253, ptr @.str.3, ptr @.str.12, i8 0, i8 127, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@ufs_read_cylinder_structures.__UNIQUE_ID_ddebug362 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.253, ptr @.str.3, ptr @.str.10, i8 0, i8 -118, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@ufs_read_cylinder_structures.__UNIQUE_ID_ddebug363 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.253, ptr @.str.3, ptr @.str.254, i8 0, i8 -118, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.254 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"read cg %u\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.255 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ufs: read cg %u\0A\00", [47 x i8] zeroinitializer }, align 32
@ufs_read_cylinder_structures.__UNIQUE_ID_ddebug364 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.253, ptr @.str.3, ptr @.str.10, i8 0, i8 -114, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@ufs_read_cylinder_structures.__UNIQUE_ID_ddebug365 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.253, ptr @.str.3, ptr @.str.117, i8 0, i8 -114, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@ufs_read_cylinder_structures.__UNIQUE_ID_ddebug366 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.253, ptr @.str.3, ptr @.str.10, i8 0, i8 -111, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@ufs_read_cylinder_structures.__UNIQUE_ID_ddebug367 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.253, ptr @.str.3, ptr @.str.119, i8 0, i8 -111, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@ufs_print_cylinder_stuff.__UNIQUE_ID_ddebug329 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.256, ptr @.str.3, ptr @.str.257, i8 0, i8 57, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.256 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ufs_print_cylinder_stuff\00", [39 x i8] zeroinitializer }, align 32
@.str.257 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\0Aufs_print_cylinder_stuff\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.258 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"ufs: \0Aufs_print_cylinder_stuff\0A\00", [32 x i8] zeroinitializer }, align 32
@ufs_print_cylinder_stuff.__UNIQUE_ID_ddebug330 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.256, ptr @.str.3, ptr @.str.259, i8 0, i8 58, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.259 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"size of ucg: %zu\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.260 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ufs: size of ucg: %zu\0A\00", [41 x i8] zeroinitializer }, align 32
@ufs_print_cylinder_stuff.__UNIQUE_ID_ddebug331 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.256, ptr @.str.3, ptr @.str.261, i8 0, i8 58, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.261 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"  magic:        %x\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.262 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ufs:   magic:        %x\0A\00", [39 x i8] zeroinitializer }, align 32
@ufs_print_cylinder_stuff.__UNIQUE_ID_ddebug332 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.256, ptr @.str.3, ptr @.str.263, i8 0, i8 58, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.263 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"  time:         %u\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.264 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ufs:   time:         %u\0A\00", [39 x i8] zeroinitializer }, align 32
@ufs_print_cylinder_stuff.__UNIQUE_ID_ddebug333 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.256, ptr @.str.3, ptr @.str.265, i8 0, i8 58, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.265 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"  cgx:          %u\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.266 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ufs:   cgx:          %u\0A\00", [39 x i8] zeroinitializer }, align 32
@ufs_print_cylinder_stuff.__UNIQUE_ID_ddebug334 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.256, ptr @.str.3, ptr @.str.267, i8 0, i8 59, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.267 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"  ncyl:         %u\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.268 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ufs:   ncyl:         %u\0A\00", [39 x i8] zeroinitializer }, align 32
@ufs_print_cylinder_stuff.__UNIQUE_ID_ddebug335 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.256, ptr @.str.3, ptr @.str.269, i8 0, i8 59, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.269 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"  niblk:        %u\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.270 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ufs:   niblk:        %u\0A\00", [39 x i8] zeroinitializer }, align 32
@ufs_print_cylinder_stuff.__UNIQUE_ID_ddebug336 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.256, ptr @.str.3, ptr @.str.271, i8 0, i8 59, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.271 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"  ndblk:        %u\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.272 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ufs:   ndblk:        %u\0A\00", [39 x i8] zeroinitializer }, align 32
@ufs_print_cylinder_stuff.__UNIQUE_ID_ddebug337 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.256, ptr @.str.3, ptr @.str.273, i8 0, i8 59, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.273 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"  cs_ndir:      %u\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.274 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ufs:   cs_ndir:      %u\0A\00", [39 x i8] zeroinitializer }, align 32
@ufs_print_cylinder_stuff.__UNIQUE_ID_ddebug338 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.256, ptr @.str.3, ptr @.str.275, i8 0, i8 60, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.275 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"  cs_nbfree:    %u\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.276 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ufs:   cs_nbfree:    %u\0A\00", [39 x i8] zeroinitializer }, align 32
@ufs_print_cylinder_stuff.__UNIQUE_ID_ddebug339 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.256, ptr @.str.3, ptr @.str.277, i8 0, i8 60, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.277 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"  cs_nifree:    %u\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.278 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ufs:   cs_nifree:    %u\0A\00", [39 x i8] zeroinitializer }, align 32
@ufs_print_cylinder_stuff.__UNIQUE_ID_ddebug340 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.256, ptr @.str.3, ptr @.str.279, i8 0, i8 60, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.279 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"  cs_nffree:    %u\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.280 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ufs:   cs_nffree:    %u\0A\00", [39 x i8] zeroinitializer }, align 32
@ufs_print_cylinder_stuff.__UNIQUE_ID_ddebug341 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.256, ptr @.str.3, ptr @.str.281, i8 0, i8 60, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.281 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"  rotor:        %u\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.282 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ufs:   rotor:        %u\0A\00", [39 x i8] zeroinitializer }, align 32
@ufs_print_cylinder_stuff.__UNIQUE_ID_ddebug342 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.256, ptr @.str.3, ptr @.str.283, i8 0, i8 61, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.283 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"  frotor:       %u\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.284 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ufs:   frotor:       %u\0A\00", [39 x i8] zeroinitializer }, align 32
@ufs_print_cylinder_stuff.__UNIQUE_ID_ddebug343 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.256, ptr @.str.3, ptr @.str.285, i8 0, i8 61, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.285 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"  irotor:       %u\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.286 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ufs:   irotor:       %u\0A\00", [39 x i8] zeroinitializer }, align 32
@ufs_print_cylinder_stuff.__UNIQUE_ID_ddebug344 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.256, ptr @.str.3, ptr @.str.287, i8 0, i8 62, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.287 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"  frsum:        %u, %u, %u, %u, %u, %u, %u, %u\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.288 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"ufs:   frsum:        %u, %u, %u, %u, %u, %u, %u, %u\0A\00", [43 x i8] zeroinitializer }, align 32
@ufs_print_cylinder_stuff.__UNIQUE_ID_ddebug345 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.256, ptr @.str.3, ptr @.str.289, i8 0, i8 62, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.289 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"  btotoff:      %u\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.290 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ufs:   btotoff:      %u\0A\00", [39 x i8] zeroinitializer }, align 32
@ufs_print_cylinder_stuff.__UNIQUE_ID_ddebug346 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.256, ptr @.str.3, ptr @.str.291, i8 0, i8 63, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.291 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"  boff:         %u\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.292 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ufs:   boff:         %u\0A\00", [39 x i8] zeroinitializer }, align 32
@ufs_print_cylinder_stuff.__UNIQUE_ID_ddebug347 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.256, ptr @.str.3, ptr @.str.293, i8 0, i8 63, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.293 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"  iuseoff:      %u\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.294 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ufs:   iuseoff:      %u\0A\00", [39 x i8] zeroinitializer }, align 32
@ufs_print_cylinder_stuff.__UNIQUE_ID_ddebug348 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.256, ptr @.str.3, ptr @.str.295, i8 0, i8 63, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.295 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"  freeoff:      %u\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.296 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ufs:   freeoff:      %u\0A\00", [39 x i8] zeroinitializer }, align 32
@ufs_print_cylinder_stuff.__UNIQUE_ID_ddebug349 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.256, ptr @.str.3, ptr @.str.297, i8 0, i8 63, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.297 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"  nextfreeoff:  %u\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.298 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ufs:   nextfreeoff:  %u\0A\00", [39 x i8] zeroinitializer }, align 32
@ufs_print_cylinder_stuff.__UNIQUE_ID_ddebug350 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.256, ptr @.str.3, ptr @.str.299, i8 0, i8 64, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.299 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"  clustersumoff %u\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.300 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ufs:   clustersumoff %u\0A\00", [39 x i8] zeroinitializer }, align 32
@ufs_print_cylinder_stuff.__UNIQUE_ID_ddebug351 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.256, ptr @.str.3, ptr @.str.301, i8 0, i8 64, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.301 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"  clusteroff    %u\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.302 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ufs:   clusteroff    %u\0A\00", [39 x i8] zeroinitializer }, align 32
@ufs_print_cylinder_stuff.__UNIQUE_ID_ddebug352 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.256, ptr @.str.3, ptr @.str.303, i8 0, i8 65, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.303 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"  nclusterblks  %u\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.304 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ufs:   nclusterblks  %u\0A\00", [39 x i8] zeroinitializer }, align 32
@ufs_print_cylinder_stuff.__UNIQUE_ID_ddebug353 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.256, ptr @.str.3, ptr @.str.232, i8 0, i8 65, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.305 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ufs_inode_cache\00", [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 4, i64 8]
@__sancov_gen_cov_switch_values.306 = internal global [12 x i64] [i64 10, i64 16, i64 16, i64 32, i64 64, i64 128, i64 256, i64 512, i64 1024, i64 2048, i64 4096, i64 8192]
@__sancov_gen_cov_switch_values.307 = internal global [8 x i64] [i64 6, i64 32, i64 72020, i64 610324, i64 1660434, i64 86186388, i64 254027415, i64 424935705]
@__sancov_gen_cov_switch_values.308 = internal global [8 x i64] [i64 6, i64 32, i64 72020, i64 610324, i64 1660434, i64 86186388, i64 254027415, i64 424935705]
@__sancov_gen_cov_switch_values.309 = internal global [5 x i64] [i64 3, i64 16, i64 128, i64 256, i64 512]
@__sancov_gen_cov_switch_values.310 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.311 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.312 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4294967293, i64 4294967295]
@__sancov_gen_cov_switch_values.313 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.314 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.315 = internal global [4 x i64] [i64 2, i64 16, i64 32, i64 4096]
@__sancov_gen_cov_switch_values.316 = internal global [16 x i64] [i64 14, i64 32, i64 1, i64 2, i64 4, i64 8, i64 16, i64 32, i64 64, i64 128, i64 256, i64 512, i64 1024, i64 2048, i64 4096, i64 8192]
@__sancov_gen_cov_switch_values.317 = internal global [4 x i64] [i64 2, i64 16, i64 32, i64 4096]
@__sancov_gen_cov_switch_values.318 = internal global [5 x i64] [i64 3, i64 32, i64 512, i64 768, i64 1024]
@__sancov_gen_cov_switch_values.319 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.320 = internal global [4 x i64] [i64 2, i64 16, i64 32, i64 4096]
@__sancov_gen_cov_switch_values.321 = internal global [5 x i64] [i64 3, i64 32, i64 512, i64 768, i64 1024]
@__sancov_gen_cov_switch_values.322 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.323 = internal global [7 x i64] [i64 5, i64 16, i64 32, i64 64, i64 1024, i64 4096, i64 8192]
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1207, i32 293, i32 9 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1207, i32 299, i32 3 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1207, i32 325, i32 2 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1207, i32 339, i32 2 }
@___asan_gen_.357 = private unnamed_addr constant [12 x i8] c"ufs_fs_type\00", align 1
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1207, i32 1511, i32 32 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1207, i32 1513, i32 11 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1207, i32 796, i32 2 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1207, i32 811, i32 2 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1207, i32 813, i32 2 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1207, i32 814, i32 2 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1207, i32 815, i32 2 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1207, i32 823, i32 3 }
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1207, i32 828, i32 4 }
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1207, i32 851, i32 3 }
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1207, i32 860, i32 3 }
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1207, i32 874, i32 3 }
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1207, i32 885, i32 3 }
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1207, i32 897, i32 3 }
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1207, i32 908, i32 3 }
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1207, i32 917, i32 5 }
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1207, i32 923, i32 3 }
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1207, i32 933, i32 5 }
@___asan_gen_.479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1207, i32 939, i32 3 }
@___asan_gen_.485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1207, i32 949, i32 5 }
@___asan_gen_.491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1207, i32 955, i32 3 }
@___asan_gen_.497 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1207, i32 965, i32 5 }
@___asan_gen_.503 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1207, i32 971, i32 3 }
@___asan_gen_.509 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1207, i32 980, i32 5 }
@___asan_gen_.515 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1207, i32 986, i32 4 }
@___asan_gen_.521 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1207, i32 992, i32 3 }
@___asan_gen_.527 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1207, i32 1020, i32 4 }
@___asan_gen_.533 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1207, i32 1058, i32 3 }
@___asan_gen_.539 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1207, i32 1072, i32 3 }
@___asan_gen_.545 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1207, i32 1077, i32 3 }
@___asan_gen_.551 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1207, i32 1082, i32 3 }
@___asan_gen_.557 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1207, i32 1087, i32 3 }
@___asan_gen_.563 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1207, i32 1092, i32 3 }
@___asan_gen_.569 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1207, i32 1097, i32 3 }
@___asan_gen_.575 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1207, i32 1106, i32 3 }
@___asan_gen_.581 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1207, i32 1125, i32 4 }
@___asan_gen_.587 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1207, i32 1128, i32 4 }
@___asan_gen_.593 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1207, i32 1131, i32 4 }
@___asan_gen_.599 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1207, i32 1134, i32 4 }
@___asan_gen_.605 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1207, i32 1137, i32 4 }
@___asan_gen_.611 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1207, i32 1141, i32 4 }
@___asan_gen_.617 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1207, i32 1145, i32 4 }
@___asan_gen_.623 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1207, i32 1151, i32 3 }
@___asan_gen_.624 = private unnamed_addr constant [14 x i8] c"ufs_super_ops\00", align 1
@___asan_gen_.626 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1207, i32 1493, i32 38 }
@___asan_gen_.627 = private unnamed_addr constant [15 x i8] c"ufs_export_ops\00", align 1
@___asan_gen_.629 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1207, i32 139, i32 39 }
@___asan_gen_.635 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1207, i32 1187, i32 2 }
@___asan_gen_.638 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1207, i32 1264, i32 29 }
@___asan_gen_.644 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1207, i32 1290, i32 2 }
@___asan_gen_.650 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1207, i32 1299, i32 2 }
@___asan_gen_.656 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1207, i32 1303, i32 2 }
@___asan_gen_.659 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1207, i32 694, i32 2 }
@___asan_gen_.662 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1207, i32 597, i32 2 }
@___asan_gen_.665 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1207, i32 386, i32 2 }
@___asan_gen_.668 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1207, i32 391, i32 31 }
@___asan_gen_.669 = private unnamed_addr constant [7 x i8] c"tokens\00", align 1
@___asan_gen_.671 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1207, i32 362, i32 28 }
@___asan_gen_.677 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1207, i32 452, i32 4 }
@___asan_gen_.683 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1207, i32 457, i32 4 }
@___asan_gen_.686 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1207, i32 363, i32 17 }
@___asan_gen_.689 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1207, i32 364, i32 20 }
@___asan_gen_.692 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1207, i32 365, i32 17 }
@___asan_gen_.695 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1207, i32 366, i32 19 }
@___asan_gen_.698 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1207, i32 367, i32 19 }
@___asan_gen_.701 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1207, i32 368, i32 18 }
@___asan_gen_.704 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1207, i32 369, i32 18 }
@___asan_gen_.707 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1207, i32 370, i32 16 }
@___asan_gen_.710 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1207, i32 371, i32 24 }
@___asan_gen_.713 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1207, i32 372, i32 22 }
@___asan_gen_.716 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1207, i32 373, i32 22 }
@___asan_gen_.719 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1207, i32 375, i32 22 }
@___asan_gen_.722 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1207, i32 376, i32 21 }
@___asan_gen_.725 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1207, i32 377, i32 23 }
@___asan_gen_.728 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1207, i32 378, i32 23 }
@___asan_gen_.737 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1207, i32 156, i32 2 }
@___asan_gen_.743 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1207, i32 157, i32 2 }
@___asan_gen_.749 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1207, i32 159, i32 3 }
@___asan_gen_.755 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1207, i32 161, i32 3 }
@___asan_gen_.761 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1207, i32 163, i32 3 }
@___asan_gen_.767 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1207, i32 165, i32 3 }
@___asan_gen_.773 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1207, i32 167, i32 3 }
@___asan_gen_.779 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1207, i32 168, i32 3 }
@___asan_gen_.785 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1207, i32 170, i32 3 }
@___asan_gen_.791 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1207, i32 172, i32 3 }
@___asan_gen_.797 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1207, i32 175, i32 3 }
@___asan_gen_.803 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1207, i32 178, i32 3 }
@___asan_gen_.809 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1207, i32 181, i32 3 }
@___asan_gen_.815 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1207, i32 184, i32 3 }
@___asan_gen_.821 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1207, i32 185, i32 3 }
@___asan_gen_.827 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1207, i32 186, i32 3 }
@___asan_gen_.833 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1207, i32 187, i32 3 }
@___asan_gen_.839 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1207, i32 188, i32 3 }
@___asan_gen_.845 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1207, i32 190, i32 3 }
@___asan_gen_.851 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1207, i32 192, i32 3 }
@___asan_gen_.857 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1207, i32 193, i32 3 }
@___asan_gen_.863 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1207, i32 194, i32 3 }
@___asan_gen_.869 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1207, i32 195, i32 3 }
@___asan_gen_.875 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1207, i32 196, i32 3 }
@___asan_gen_.881 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1207, i32 197, i32 3 }
@___asan_gen_.887 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1207, i32 198, i32 3 }
@___asan_gen_.893 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1207, i32 200, i32 3 }
@___asan_gen_.899 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1207, i32 201, i32 3 }
@___asan_gen_.905 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1207, i32 202, i32 3 }
@___asan_gen_.911 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1207, i32 203, i32 3 }
@___asan_gen_.917 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1207, i32 204, i32 3 }
@___asan_gen_.923 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1207, i32 205, i32 3 }
@___asan_gen_.929 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1207, i32 206, i32 3 }
@___asan_gen_.935 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1207, i32 207, i32 3 }
@___asan_gen_.941 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1207, i32 208, i32 3 }
@___asan_gen_.947 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1207, i32 209, i32 3 }
@___asan_gen_.953 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1207, i32 210, i32 3 }
@___asan_gen_.959 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1207, i32 212, i32 3 }
@___asan_gen_.965 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1207, i32 213, i32 3 }
@___asan_gen_.971 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1207, i32 215, i32 3 }
@___asan_gen_.977 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1207, i32 217, i32 3 }
@___asan_gen_.983 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1207, i32 219, i32 3 }
@___asan_gen_.989 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1207, i32 222, i32 2 }
@___asan_gen_.990 = private unnamed_addr constant [17 x i8] c"ufs_inode_cachep\00", align 1
@___asan_gen_.992 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1207, i32 1440, i32 28 }
@___asan_gen_.1004 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1207, i32 1451, i32 2 }
@___asan_gen_.1005 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.1010 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1207, i32 1452, i32 2 }
@___asan_gen_.1013 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1207, i32 746, i32 2 }
@___asan_gen_.1016 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1207, i32 652, i32 2 }
@___asan_gen_.1025 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1207, i32 1336, i32 3 }
@___asan_gen_.1031 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1207, i32 1374, i32 4 }
@___asan_gen_.1032 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.1037 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1207, i32 1379, i32 4 }
@___asan_gen_.1040 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1207, i32 1400, i32 18 }
@___asan_gen_.1049 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1207, i32 478, i32 2 }
@___asan_gen_.1052 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1207, i32 511, i32 2 }
@___asan_gen_.1058 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1207, i32 555, i32 3 }
@___asan_gen_.1067 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1207, i32 231, i32 2 }
@___asan_gen_.1073 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1207, i32 232, i32 2 }
@___asan_gen_.1079 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1207, i32 233, i32 2 }
@___asan_gen_.1085 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1207, i32 234, i32 2 }
@___asan_gen_.1091 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1207, i32 235, i32 2 }
@___asan_gen_.1097 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1207, i32 236, i32 2 }
@___asan_gen_.1103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1207, i32 237, i32 2 }
@___asan_gen_.1109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1207, i32 238, i32 2 }
@___asan_gen_.1115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1207, i32 239, i32 2 }
@___asan_gen_.1121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1207, i32 240, i32 2 }
@___asan_gen_.1127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1207, i32 241, i32 2 }
@___asan_gen_.1133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1207, i32 242, i32 2 }
@___asan_gen_.1139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1207, i32 243, i32 2 }
@___asan_gen_.1145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1207, i32 244, i32 2 }
@___asan_gen_.1151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1207, i32 245, i32 2 }
@___asan_gen_.1157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1207, i32 246, i32 2 }
@___asan_gen_.1163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1207, i32 251, i32 2 }
@___asan_gen_.1169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1207, i32 252, i32 2 }
@___asan_gen_.1175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1207, i32 253, i32 2 }
@___asan_gen_.1181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1207, i32 254, i32 2 }
@___asan_gen_.1187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1207, i32 255, i32 2 }
@___asan_gen_.1193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1207, i32 256, i32 2 }
@___asan_gen_.1199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1207, i32 258, i32 2 }
@___asan_gen_.1205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1207, i32 260, i32 2 }
@___asan_gen_.1206 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.1207 = private constant [18 x i8] c"../fs/ufs/super.c\00", align 1
@___asan_gen_.1208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1207, i32 1470, i32 48 }
@llvm.compiler.used = appending global [333 x ptr] [ptr @__UNIQUE_ID_alias426, ptr @__UNIQUE_ID_file428, ptr @__UNIQUE_ID_license429, ptr @__exitcall_exit_ufs_fs, ptr @__initcall__kmod_ufs__427_1541_init_ufs_fs6, ptr @exit_ufs_fs, ptr @ufs_error._entry, ptr @ufs_error._entry_ptr, ptr @ufs_fill_super._entry, ptr @ufs_fill_super._entry.102, ptr @ufs_fill_super._entry.105, ptr @ufs_fill_super._entry.108, ptr @ufs_fill_super._entry.111, ptr @ufs_fill_super._entry.24, ptr @ufs_fill_super._entry.39, ptr @ufs_fill_super._entry.44, ptr @ufs_fill_super._entry.49, ptr @ufs_fill_super._entry.54, ptr @ufs_fill_super._entry.59, ptr @ufs_fill_super._entry.62, ptr @ufs_fill_super._entry.65, ptr @ufs_fill_super._entry.68, ptr @ufs_fill_super._entry.71, ptr @ufs_fill_super._entry.74, ptr @ufs_fill_super._entry.77, ptr @ufs_fill_super._entry.80, ptr @ufs_fill_super._entry.83, ptr @ufs_fill_super._entry.86, ptr @ufs_fill_super._entry.89, ptr @ufs_fill_super._entry_ptr, ptr @ufs_fill_super._entry_ptr.104, ptr @ufs_fill_super._entry_ptr.107, ptr @ufs_fill_super._entry_ptr.110, ptr @ufs_fill_super._entry_ptr.113, ptr @ufs_fill_super._entry_ptr.26, ptr @ufs_fill_super._entry_ptr.41, ptr @ufs_fill_super._entry_ptr.46, ptr @ufs_fill_super._entry_ptr.51, ptr @ufs_fill_super._entry_ptr.56, ptr @ufs_fill_super._entry_ptr.61, ptr @ufs_fill_super._entry_ptr.64, ptr @ufs_fill_super._entry_ptr.67, ptr @ufs_fill_super._entry_ptr.70, ptr @ufs_fill_super._entry_ptr.73, ptr @ufs_fill_super._entry_ptr.76, ptr @ufs_fill_super._entry_ptr.79, ptr @ufs_fill_super._entry_ptr.82, ptr @ufs_fill_super._entry_ptr.85, ptr @ufs_fill_super._entry_ptr.88, ptr @ufs_fill_super._entry_ptr.91, ptr @ufs_panic._entry, ptr @ufs_panic._entry_ptr, ptr @ufs_parse_options._entry, ptr @ufs_parse_options._entry.128, ptr @ufs_parse_options._entry_ptr, ptr @ufs_parse_options._entry_ptr.130, ptr @ufs_print_super_stuff._entry, ptr @ufs_print_super_stuff._entry.168, ptr @ufs_print_super_stuff._entry.171, ptr @ufs_print_super_stuff._entry_ptr, ptr @ufs_print_super_stuff._entry_ptr.170, ptr @ufs_print_super_stuff._entry_ptr.173, ptr @ufs_remount._entry, ptr @ufs_remount._entry.243, ptr @ufs_remount._entry.246, ptr @ufs_remount._entry_ptr, ptr @ufs_remount._entry_ptr.245, ptr @ufs_remount._entry_ptr.248, ptr @ufs_warning._entry, ptr @ufs_warning._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @ufs_fs_type, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @ufs_fill_super.__key, ptr @.str.16, ptr @ufs_fill_super.__key.17, ptr @.str.18, ptr @ufs_fill_super.__key.19, ptr @.str.20, ptr @ufs_fill_super.__key.21, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.40, ptr @.str.42, ptr @.str.43, ptr @.str.45, ptr @.str.47, ptr @.str.48, ptr @.str.50, ptr @.str.52, ptr @.str.53, ptr @.str.55, ptr @.str.57, ptr @.str.58, ptr @.str.60, ptr @.str.63, ptr @.str.66, ptr @.str.69, ptr @.str.72, ptr @.str.75, ptr @.str.78, ptr @.str.81, ptr @.str.84, ptr @.str.87, ptr @.str.90, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.103, ptr @.str.106, ptr @.str.109, ptr @.str.112, ptr @ufs_super_ops, ptr @ufs_export_ops, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @tokens, ptr @.str.127, ptr @.str.129, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.169, ptr @.str.172, ptr @.str.174, ptr @.str.175, ptr @.str.176, ptr @.str.177, ptr @.str.178, ptr @.str.179, ptr @.str.180, ptr @.str.181, ptr @.str.182, ptr @.str.183, ptr @.str.184, ptr @.str.185, ptr @.str.186, ptr @.str.187, ptr @.str.188, ptr @.str.189, ptr @.str.190, ptr @.str.191, ptr @.str.192, ptr @.str.193, ptr @.str.194, ptr @.str.195, ptr @.str.196, ptr @.str.197, ptr @.str.198, ptr @.str.199, ptr @.str.200, ptr @.str.201, ptr @.str.202, ptr @.str.203, ptr @.str.204, ptr @.str.205, ptr @.str.206, ptr @.str.207, ptr @.str.208, ptr @.str.209, ptr @.str.210, ptr @.str.211, ptr @.str.212, ptr @.str.213, ptr @.str.214, ptr @.str.215, ptr @.str.216, ptr @.str.217, ptr @.str.218, ptr @.str.219, ptr @.str.220, ptr @.str.221, ptr @.str.222, ptr @.str.223, ptr @.str.224, ptr @.str.225, ptr @.str.226, ptr @.str.227, ptr @.str.228, ptr @.str.229, ptr @.str.230, ptr @.str.231, ptr @.str.232, ptr @.str.233, ptr @ufs_inode_cachep, ptr @ufs_alloc_inode.__key, ptr @.str.234, ptr @ufs_alloc_inode.__key.235, ptr @.str.236, ptr @ufs_alloc_inode.__key.237, ptr @.str.238, ptr @.str.239, ptr @.str.240, ptr @.str.241, ptr @.str.242, ptr @.str.244, ptr @.str.247, ptr @.str.249, ptr @.str.250, ptr @.str.251, ptr @.str.252, ptr @.str.253, ptr @.str.254, ptr @.str.255, ptr @.str.256, ptr @.str.257, ptr @.str.258, ptr @.str.259, ptr @.str.260, ptr @.str.261, ptr @.str.262, ptr @.str.263, ptr @.str.264, ptr @.str.265, ptr @.str.266, ptr @.str.267, ptr @.str.268, ptr @.str.269, ptr @.str.270, ptr @.str.271, ptr @.str.272, ptr @.str.273, ptr @.str.274, ptr @.str.275, ptr @.str.276, ptr @.str.277, ptr @.str.278, ptr @.str.279, ptr @.str.280, ptr @.str.281, ptr @.str.282, ptr @.str.283, ptr @.str.284, ptr @.str.285, ptr @.str.286, ptr @.str.287, ptr @.str.288, ptr @.str.289, ptr @.str.290, ptr @.str.291, ptr @.str.292, ptr @.str.293, ptr @.str.294, ptr @.str.295, ptr @.str.296, ptr @.str.297, ptr @.str.298, ptr @.str.299, ptr @.str.300, ptr @.str.301, ptr @.str.302, ptr @.str.303, ptr @.str.304, ptr @.str.305], section "llvm.metadata"
@0 = internal global [295 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufs_error._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufs_panic._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufs_warning._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufs_fs_type to i32), i32 116, i32 160, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufs_fill_super.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufs_fill_super.__key.17 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufs_fill_super.__key.19 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufs_fill_super.__key.21 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufs_fill_super._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufs_fill_super._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 234, i32 288, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufs_fill_super._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufs_fill_super._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufs_fill_super._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufs_fill_super._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufs_fill_super._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufs_fill_super._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufs_fill_super._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufs_fill_super._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufs_fill_super._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufs_fill_super._entry.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufs_fill_super._entry.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufs_fill_super._entry.80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufs_fill_super._entry.83 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufs_fill_super._entry.86 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufs_fill_super._entry.89 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufs_fill_super._entry.102 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufs_fill_super._entry.105 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufs_fill_super._entry.108 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufs_fill_super._entry.111 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufs_super_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufs_export_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tokens to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufs_parse_options._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufs_parse_options._entry.128 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufs_print_super_stuff._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufs_print_super_stuff._entry.168 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufs_print_super_stuff._entry.171 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.809 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.809 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.845 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.845 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.851 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.851 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.863 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.863 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.192 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.194 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.875 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.195 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.875 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.196 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.197 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.198 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.199 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.200 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.893 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.201 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.893 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.202 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.203 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.204 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.205 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.206 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.911 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.207 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.911 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.208 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.209 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.210 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.211 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.212 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.213 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.214 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.935 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.215 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.935 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.216 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.217 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.218 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.947 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.219 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.947 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.220 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.221 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.222 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.223 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.224 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.225 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.226 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.227 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.228 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.229 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.230 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.231 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.232 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.989 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.233 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.989 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufs_inode_cachep to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufs_alloc_inode.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.234 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufs_alloc_inode.__key.235 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.236 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufs_alloc_inode.__key.237 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.238 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.239 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1013 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.240 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufs_remount._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.241 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.242 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufs_remount._entry.243 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.244 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufs_remount._entry.246 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.247 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.249 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.250 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.251 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.252 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.253 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.254 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.255 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.256 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.257 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.258 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.259 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.260 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.261 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.262 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.263 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1085 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.264 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1085 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.265 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.266 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.267 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.268 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.269 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.270 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.271 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.272 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.273 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.274 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.275 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.276 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.277 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.278 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.279 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.280 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.281 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.282 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.283 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.284 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.285 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.286 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.287 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.288 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.289 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.290 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.291 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.292 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.293 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.294 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.295 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.296 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.297 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.298 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.299 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.300 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.301 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.302 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.303 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.304 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.305 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1208 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ufs_error(ptr noundef %sb, ptr noundef %function, ptr noundef %fmt, ...) local_unnamed_addr #0 align 64 {
entry:
  %vaf = alloca %struct.va_format, align 4
  %args = alloca %struct.__va_list, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %vaf) #10
  %0 = getelementptr inbounds %struct.va_format, ptr %vaf, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %args) #10
  %1 = ptrtoint ptr %args to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %args, align 4, !annotation !646
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %s_flags.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 10
  %2 = ptrtoint ptr %s_flags.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %s_flags.i, align 4
  %and.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  %4 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info.i, align 16
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %arrayidx.i = getelementptr %struct.ufs_buffer_head, ptr %7, i32 0, i32 2, i32 0
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i, align 4
  %b_data.i = getelementptr inbounds %struct.buffer_head, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %b_data.i, align 4
  %fs_clean = getelementptr inbounds %struct.ufs_super_block_first, ptr %11, i32 0, i32 49
  %12 = ptrtoint ptr %fs_clean to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 -1, ptr %fs_clean, align 1
  tail call void @ubh_mark_buffer_dirty(ptr noundef %7) #10
  %13 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %s_fs_info.i, align 16
  %work_lock.i = getelementptr inbounds %struct.ufs_sb_info, ptr %14, i32 0, i32 12
  tail call void @_raw_spin_lock(ptr noundef %work_lock.i) #10
  %work_queued.i = getelementptr inbounds %struct.ufs_sb_info, ptr %14, i32 0, i32 10
  %15 = ptrtoint ptr %work_queued.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %work_queued.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not.i = icmp eq i32 %16, 0
  br i1 %tobool.not.i, label %if.else.i.i, label %if.then.ufs_mark_sb_dirty.exit_crit_edge

if.then.ufs_mark_sb_dirty.exit_crit_edge:         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %ufs_mark_sb_dirty.exit

if.else.i.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dirty_writeback_interval to i32))
  %17 = load i32, ptr @dirty_writeback_interval, align 4
  %mul.i = mul i32 %17, 10
  %call2.i.i = tail call i32 @__msecs_to_jiffies(i32 noundef %mul.i) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_long_wq to i32))
  %18 = load ptr, ptr @system_long_wq, align 4
  %sync_work.i = getelementptr inbounds %struct.ufs_sb_info, ptr %14, i32 0, i32 11
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %18, ptr noundef %sync_work.i, i32 noundef %call2.i.i) #10
  %19 = ptrtoint ptr %work_queued.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1, ptr %work_queued.i, align 4
  br label %ufs_mark_sb_dirty.exit

ufs_mark_sb_dirty.exit:                           ; preds = %if.else.i.i, %if.then.ufs_mark_sb_dirty.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %work_lock.i) #10
  %20 = ptrtoint ptr %s_flags.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %s_flags.i, align 4
  %or = or i32 %21, 1
  store i32 %or, ptr %s_flags.i, align 4
  br label %if.end

if.end:                                           ; preds = %ufs_mark_sb_dirty.exit, %entry.if.end_crit_edge
  call void @llvm.va_start(ptr nonnull %args)
  %22 = ptrtoint ptr %vaf to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %fmt, ptr %vaf, align 4
  %23 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %args, ptr %0, align 4
  %24 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %s_fs_info.i, align 16
  %s_mount_opt = getelementptr inbounds %struct.ufs_sb_info, ptr %25, i32 0, i32 8
  %26 = ptrtoint ptr %s_mount_opt to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %s_mount_opt, align 4
  %and = and i32 %27, 15
  %28 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and, label %if.end.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %if.end.do.end_crit_edge
    i32 4, label %if.end.do.end_crit_edge19
    i32 8, label %if.end.do.end_crit_edge20
  ]

if.end.do.end_crit_edge20:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.end.do.end_crit_edge19:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %s_id = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 39
  call void @__asan_handle_no_return()
  call void (ptr, ...) @panic(ptr noundef nonnull @.str, ptr noundef %s_id, ptr noundef %function, ptr noundef nonnull %vaf) #13
  unreachable

do.end:                                           ; preds = %if.end.do.end_crit_edge, %if.end.do.end_crit_edge19, %if.end.do.end_crit_edge20
  %s_id7 = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 39
  %call9 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %s_id7, ptr noundef %function, ptr noundef nonnull %vaf) #14
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %if.end.sw.epilog_crit_edge
  call void @llvm.va_end(ptr nonnull %args)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %args) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %vaf) #10
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubh_mark_buffer_dirty(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ufs_mark_sb_dirty(ptr nocapture noundef readonly %sb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  %work_lock = getelementptr inbounds %struct.ufs_sb_info, ptr %1, i32 0, i32 12
  tail call void @_raw_spin_lock(ptr noundef %work_lock) #10
  %work_queued = getelementptr inbounds %struct.ufs_sb_info, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %work_queued to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %work_queued, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.else.i, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dirty_writeback_interval to i32))
  %4 = load i32, ptr @dirty_writeback_interval, align 4
  %mul = mul i32 %4, 10
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %mul) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_long_wq to i32))
  %5 = load ptr, ptr @system_long_wq, align 4
  %sync_work = getelementptr inbounds %struct.ufs_sb_info, ptr %1, i32 0, i32 11
  %call.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %5, ptr noundef %sync_work, i32 noundef %call2.i) #10
  %6 = ptrtoint ptr %work_queued to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %work_queued, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.i, %entry.if.end_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %work_lock) #10
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #3

; Function Attrs: cold noreturn null_pointer_is_valid
declare dso_local void @panic(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ufs_panic(ptr noundef %sb, ptr noundef %function, ptr noundef %fmt, ...) local_unnamed_addr #0 align 64 {
entry:
  %vaf = alloca %struct.va_format, align 4
  %args = alloca %struct.__va_list, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %vaf) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %args) #10
  %0 = ptrtoint ptr %args to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %args, align 4, !annotation !646
  %s_flags.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 10
  %1 = ptrtoint ptr %s_flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %s_flags.i, align 4
  %and.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %3 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %s_fs_info.i, align 16
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %arrayidx.i = getelementptr %struct.ufs_buffer_head, ptr %6, i32 0, i32 2, i32 0
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx.i, align 4
  %b_data.i = getelementptr inbounds %struct.buffer_head, ptr %8, i32 0, i32 5
  %9 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %b_data.i, align 4
  %fs_clean = getelementptr inbounds %struct.ufs_super_block_first, ptr %10, i32 0, i32 49
  %11 = ptrtoint ptr %fs_clean to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 -1, ptr %fs_clean, align 1
  tail call void @ubh_mark_buffer_dirty(ptr noundef %6) #10
  %12 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %s_fs_info.i, align 16
  %work_lock.i = getelementptr inbounds %struct.ufs_sb_info, ptr %13, i32 0, i32 12
  tail call void @_raw_spin_lock(ptr noundef %work_lock.i) #10
  %work_queued.i = getelementptr inbounds %struct.ufs_sb_info, ptr %13, i32 0, i32 10
  %14 = ptrtoint ptr %work_queued.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %work_queued.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.i = icmp eq i32 %15, 0
  br i1 %tobool.not.i, label %if.else.i.i, label %if.then.ufs_mark_sb_dirty.exit_crit_edge

if.then.ufs_mark_sb_dirty.exit_crit_edge:         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %ufs_mark_sb_dirty.exit

if.else.i.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dirty_writeback_interval to i32))
  %16 = load i32, ptr @dirty_writeback_interval, align 4
  %mul.i = mul i32 %16, 10
  %call2.i.i = tail call i32 @__msecs_to_jiffies(i32 noundef %mul.i) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_long_wq to i32))
  %17 = load ptr, ptr @system_long_wq, align 4
  %sync_work.i = getelementptr inbounds %struct.ufs_sb_info, ptr %13, i32 0, i32 11
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %17, ptr noundef %sync_work.i, i32 noundef %call2.i.i) #10
  %18 = ptrtoint ptr %work_queued.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %work_queued.i, align 4
  br label %ufs_mark_sb_dirty.exit

ufs_mark_sb_dirty.exit:                           ; preds = %if.else.i.i, %if.then.ufs_mark_sb_dirty.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %work_lock.i) #10
  br label %if.end

if.end:                                           ; preds = %ufs_mark_sb_dirty.exit, %entry.if.end_crit_edge
  %19 = getelementptr inbounds %struct.va_format, ptr %vaf, i32 0, i32 1
  call void @llvm.va_start(ptr nonnull %args)
  %20 = ptrtoint ptr %vaf to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %fmt, ptr %vaf, align 4
  %21 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %args, ptr %19, align 4
  %22 = ptrtoint ptr %s_flags.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %s_flags.i, align 4
  %or = or i32 %23, 1
  store i32 %or, ptr %s_flags.i, align 4
  %s_id = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 39
  %call5 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %s_id, ptr noundef %function, ptr noundef nonnull %vaf) #14
  call void @llvm.va_end(ptr nonnull %args)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %args) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %vaf) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ufs_warning(ptr noundef %sb, ptr noundef %function, ptr noundef %fmt, ...) local_unnamed_addr #0 align 64 {
entry:
  %vaf = alloca %struct.va_format, align 4
  %args = alloca %struct.__va_list, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %vaf) #10
  %0 = getelementptr inbounds %struct.va_format, ptr %vaf, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %args) #10
  %1 = ptrtoint ptr %args to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %args, align 4, !annotation !646
  call void @llvm.va_start(ptr nonnull %args)
  %2 = ptrtoint ptr %vaf to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %fmt, ptr %vaf, align 4
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %args, ptr %0, align 4
  %s_id = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 39
  %call = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %s_id, ptr noundef %function, ptr noundef nonnull %vaf) #14
  call void @llvm.va_end(ptr nonnull %args)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %args) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %vaf) #10
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @exit_ufs_fs() #6 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 @unregister_filesystem(ptr noundef nonnull @ufs_fs_type) #10
  tail call void @rcu_barrier() #10
  %0 = load ptr, ptr @ufs_inode_cachep, align 4
  tail call void @kmem_cache_destroy(ptr noundef %0) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_filesystem(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @init_ufs_fs() #6 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @init_inodecache() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @register_filesystem(ptr noundef nonnull @ufs_fs_type) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %out

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

out:                                              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @rcu_barrier() #10
  %0 = load ptr, ptr @ufs_inode_cachep, align 4
  tail call void @kmem_cache_destroy(ptr noundef %0) #10
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end.cleanup_crit_edge ], [ %call, %entry.cleanup_crit_edge ], [ %call1, %out ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @ufs_mount(ptr noundef %fs_type, i32 noundef %flags, ptr noundef %dev_name, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @mount_bdev(ptr noundef %fs_type, i32 noundef %flags, ptr noundef %dev_name, ptr noundef %data, ptr noundef nonnull @ufs_fill_super) #10
  ret ptr %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kill_block_super(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mount_bdev(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ufs_fill_super(ptr noundef %sb, ptr noundef %data, i32 noundef %silent) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_fill_super.__UNIQUE_ID_ddebug384, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_fill_super, %do.body4)) #10
          to label %if.then [label %do.body4], !srcloc !647

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_fill_super.__UNIQUE_ID_ddebug384, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.3, i32 noundef 796, ptr noundef nonnull @.str.9) #10
  br label %do.body4

do.body4:                                         ; preds = %if.then, %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_fill_super.__UNIQUE_ID_ddebug385, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_fill_super, %do.end21)) #10
          to label %if.then18 [label %do.end21], !srcloc !647

if.then18:                                        ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_fill_super.__UNIQUE_ID_ddebug385, ptr noundef nonnull @.str.13) #10
  br label %do.end21

do.end21:                                         ; preds = %if.then18, %do.body4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 336) #16
  %tobool23.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool23.not, label %do.body1333, label %if.end25

if.end25:                                         ; preds = %do.end21
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %1 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i, ptr %s_fs_info, align 16
  %sb26 = getelementptr inbounds %struct.ufs_sb_info, ptr %call7.i.i, i32 0, i32 9
  %2 = ptrtoint ptr %sb26 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %sb, ptr %sb26, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_fill_super.__UNIQUE_ID_ddebug386, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_fill_super, %do.body45)) #10
          to label %if.then41 [label %do.body45], !srcloc !647

if.then41:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_fill_super.__UNIQUE_ID_ddebug386, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.3, i32 noundef 811, ptr noundef nonnull @.str.9) #10
  br label %do.body45

do.body45:                                        ; preds = %if.then41, %if.end25
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_fill_super.__UNIQUE_ID_ddebug387, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_fill_super, %do.body64)) #10
          to label %if.then59 [label %do.body64], !srcloc !647

if.then59:                                        ; preds = %do.body45
  call void @__sanitizer_cov_trace_pc() #12
  %s_flags.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 10
  %3 = ptrtoint ptr %s_flags.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %s_flags.i, align 4
  %and.i = and i32 %4, 1
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_fill_super.__UNIQUE_ID_ddebug387, ptr noundef nonnull @.str.15, i32 noundef %and.i) #10
  br label %do.body64

do.body64:                                        ; preds = %if.then59, %do.body45
  %s_lock = getelementptr inbounds %struct.ufs_sb_info, ptr %call7.i.i, i32 0, i32 13
  tail call void @__mutex_init(ptr noundef %s_lock, ptr noundef nonnull @.str.16, ptr noundef nonnull @ufs_fill_super.__key) #10
  %work_lock = getelementptr inbounds %struct.ufs_sb_info, ptr %call7.i.i, i32 0, i32 12
  tail call void @__raw_spin_lock_init(ptr noundef %work_lock, ptr noundef nonnull @.str.18, ptr noundef nonnull @ufs_fill_super.__key.17, i16 noundef signext 3) #10
  %sync_work = getelementptr inbounds %struct.ufs_sb_info, ptr %call7.i.i, i32 0, i32 11
  tail call void @__init_work(ptr noundef %sync_work, i32 noundef 0) #10
  %5 = ptrtoint ptr %sync_work to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -64, ptr %sync_work, align 4
  %lockdep_map = getelementptr inbounds %struct.ufs_sb_info, ptr %call7.i.i, i32 0, i32 11, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.20, ptr noundef nonnull @ufs_fill_super.__key.19, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  %entry80 = getelementptr inbounds %struct.ufs_sb_info, ptr %call7.i.i, i32 0, i32 11, i32 0, i32 1
  %6 = ptrtoint ptr %entry80 to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %entry80, ptr %entry80, align 8
  %prev.i = getelementptr inbounds %struct.ufs_sb_info, ptr %call7.i.i, i32 0, i32 11, i32 0, i32 1, i32 1
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %entry80, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.ufs_sb_info, ptr %call7.i.i, i32 0, i32 11, i32 0, i32 2
  %8 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @delayed_sync_fs, ptr %func, align 8
  %timer = getelementptr inbounds %struct.ufs_sb_info, ptr %call7.i.i, i32 0, i32 11, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.22, ptr noundef nonnull @ufs_fill_super.__key.21) #10
  %s_mount_opt = getelementptr inbounds %struct.ufs_sb_info, ptr %call7.i.i, i32 0, i32 8
  %9 = ptrtoint ptr %s_mount_opt to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 2, ptr %s_mount_opt, align 8
  %call93 = tail call fastcc i32 @ufs_parse_options(ptr noundef %data, ptr noundef %s_mount_opt)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call93)
  %tobool94.not = icmp eq i32 %call93, 0
  br i1 %tobool94.not, label %do.end98, label %if.end101

do.end98:                                         ; preds = %do.body64
  call void @__sanitizer_cov_trace_pc() #12
  %call100 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23) #14
  br label %if.end1295

if.end101:                                        ; preds = %do.body64
  %10 = ptrtoint ptr %s_mount_opt to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %s_mount_opt, align 8
  %and = and i32 %11, 65520
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool103.not = icmp eq i32 %and, 0
  br i1 %tobool103.not, label %if.then104, label %if.end101.if.end115_crit_edge

if.end101.if.end115_crit_edge:                    ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end115

if.then104:                                       ; preds = %if.end101
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %silent)
  %tobool105.not = icmp eq i32 %silent, 0
  br i1 %tobool105.not, label %do.end109, label %if.then104.if.end112_crit_edge

if.then104.if.end112_crit_edge:                   ; preds = %if.then104
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end112

do.end109:                                        ; preds = %if.then104
  call void @__sanitizer_cov_trace_pc() #12
  %call111 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25) #14
  br label %if.end112

if.end112:                                        ; preds = %do.end109, %if.then104.if.end112_crit_edge
  %12 = ptrtoint ptr %s_mount_opt to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %s_mount_opt, align 8
  %or114 = or i32 %13, 16
  store i32 %or114, ptr %s_mount_opt, align 8
  br label %if.end115

if.end115:                                        ; preds = %if.end112, %if.end101.if.end115_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %14 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i1920 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %14, i32 noundef 3520, i32 noundef 384) #16
  %15 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call7.i.i1920, ptr %call7.i.i, align 8
  %tobool117.not = icmp eq ptr %call7.i.i1920, null
  br i1 %tobool117.not, label %if.end115.if.end1295_crit_edge, label %if.end119

if.end115.if.end1295_crit_edge:                   ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end1295

if.end119:                                        ; preds = %if.end115
  %s_dirblksize = getelementptr inbounds %struct.ufs_sb_private_info, ptr %call7.i.i1920, i32 0, i32 63
  %16 = ptrtoint ptr %s_dirblksize to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 512, ptr %s_dirblksize, align 4
  %s_maxbytes = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 4
  %17 = ptrtoint ptr %s_maxbytes to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 17592186040320, ptr %s_maxbytes, align 8
  %s_time_gran = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 34
  %18 = ptrtoint ptr %s_time_gran to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1000000000, ptr %s_time_gran, align 4
  %s_time_min = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 35
  %19 = ptrtoint ptr %s_time_min to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 -2147483648, ptr %s_time_min, align 8
  %s_time_max = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 36
  %20 = ptrtoint ptr %s_time_max to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 2147483647, ptr %s_time_max, align 64
  %21 = ptrtoint ptr %s_mount_opt to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %s_mount_opt, align 8
  %23 = trunc i32 %22 to i16
  %trunc = and i16 %23, -16
  %24 = zext i16 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.306)
  switch i16 %trunc, label %sw.default [
    i16 32, label %do.body122
    i16 4096, label %do.body160
    i16 64, label %do.body206
    i16 8192, label %do.body249
    i16 1024, label %do.body293
    i16 16, label %do.body337
    i16 128, label %do.body392
    i16 256, label %do.body449
    i16 512, label %do.body506
    i16 2048, label %do.body563
  ]

do.body122:                                       ; preds = %if.end119
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_fill_super.__UNIQUE_ID_ddebug388, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_fill_super, %do.body140)) #10
          to label %if.then136 [label %do.body140], !srcloc !647

if.then136:                                       ; preds = %do.body122
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_fill_super.__UNIQUE_ID_ddebug388, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.3, i32 noundef 851, ptr noundef nonnull @.str.9) #10
  br label %do.body140

do.body140:                                       ; preds = %if.then136, %do.body122
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_fill_super.__UNIQUE_ID_ddebug389, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_fill_super, %do.end157)) #10
          to label %if.then154 [label %do.end157], !srcloc !647

if.then154:                                       ; preds = %do.body140
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_fill_super.__UNIQUE_ID_ddebug389, ptr noundef nonnull @.str.28) #10
  br label %do.end157

do.end157:                                        ; preds = %if.then154, %do.body140
  %s_fsize = getelementptr inbounds %struct.ufs_sb_private_info, ptr %call7.i.i1920, i32 0, i32 12
  %25 = ptrtoint ptr %s_fsize to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 512, ptr %s_fsize, align 8
  %s_fmask = getelementptr inbounds %struct.ufs_sb_private_info, ptr %call7.i.i1920, i32 0, i32 16
  %26 = ptrtoint ptr %s_fmask to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 -512, ptr %s_fmask, align 8
  %s_fshift = getelementptr inbounds %struct.ufs_sb_private_info, ptr %call7.i.i1920, i32 0, i32 18
  %27 = ptrtoint ptr %s_fshift to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 9, ptr %s_fshift, align 8
  %s_sbsize = getelementptr inbounds %struct.ufs_sb_private_info, ptr %call7.i.i1920, i32 0, i32 21
  %28 = ptrtoint ptr %s_sbsize to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 1536, ptr %s_sbsize, align 4
  %s_sbbase = getelementptr inbounds %struct.ufs_sb_private_info, ptr %call7.i.i1920, i32 0, i32 57
  %29 = ptrtoint ptr %s_sbbase to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %s_sbbase, align 4
  br label %sw.epilog

do.body160:                                       ; preds = %if.end119
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_fill_super.__UNIQUE_ID_ddebug390, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_fill_super, %do.body178)) #10
          to label %if.then174 [label %do.body178], !srcloc !647

if.then174:                                       ; preds = %do.body160
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_fill_super.__UNIQUE_ID_ddebug390, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.3, i32 noundef 860, ptr noundef nonnull @.str.9) #10
  br label %do.body178

do.body178:                                       ; preds = %if.then174, %do.body160
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_fill_super.__UNIQUE_ID_ddebug391, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_fill_super, %do.end195)) #10
          to label %if.then192 [label %do.end195], !srcloc !647

if.then192:                                       ; preds = %do.body178
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_fill_super.__UNIQUE_ID_ddebug391, ptr noundef nonnull @.str.30) #10
  br label %do.end195

do.end195:                                        ; preds = %if.then192, %do.body178
  %s_fsize196 = getelementptr inbounds %struct.ufs_sb_private_info, ptr %call7.i.i1920, i32 0, i32 12
  %30 = ptrtoint ptr %s_fsize196 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 512, ptr %s_fsize196, align 8
  %s_fmask197 = getelementptr inbounds %struct.ufs_sb_private_info, ptr %call7.i.i1920, i32 0, i32 16
  %31 = ptrtoint ptr %s_fmask197 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 -512, ptr %s_fmask197, align 8
  %s_fshift198 = getelementptr inbounds %struct.ufs_sb_private_info, ptr %call7.i.i1920, i32 0, i32 18
  %32 = ptrtoint ptr %s_fshift198 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 9, ptr %s_fshift198, align 8
  %s_sbsize199 = getelementptr inbounds %struct.ufs_sb_private_info, ptr %call7.i.i1920, i32 0, i32 21
  %33 = ptrtoint ptr %s_sbsize199 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 1536, ptr %s_sbsize199, align 4
  %s_sbbase200 = getelementptr inbounds %struct.ufs_sb_private_info, ptr %call7.i.i1920, i32 0, i32 57
  %34 = ptrtoint ptr %s_sbbase200 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %s_sbbase200, align 4
  %35 = ptrtoint ptr %s_time_gran to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 1, ptr %s_time_gran, align 4
  %36 = ptrtoint ptr %s_time_min to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 -9223372036854775808, ptr %s_time_min, align 8
  %37 = ptrtoint ptr %s_time_max to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 9223372036854775807, ptr %s_time_max, align 64
  br label %sw.epilog

do.body206:                                       ; preds = %if.end119
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_fill_super.__UNIQUE_ID_ddebug392, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_fill_super, %do.body224)) #10
          to label %if.then220 [label %do.body224], !srcloc !647

if.then220:                                       ; preds = %do.body206
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_fill_super.__UNIQUE_ID_ddebug392, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.3, i32 noundef 874, ptr noundef nonnull @.str.9) #10
  br label %do.body224

do.body224:                                       ; preds = %if.then220, %do.body206
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_fill_super.__UNIQUE_ID_ddebug393, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_fill_super, %do.end241)) #10
          to label %if.then238 [label %do.end241], !srcloc !647

if.then238:                                       ; preds = %do.body224
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_fill_super.__UNIQUE_ID_ddebug393, ptr noundef nonnull @.str.32) #10
  br label %do.end241

do.end241:                                        ; preds = %if.then238, %do.body224
  %s_fsize242 = getelementptr inbounds %struct.ufs_sb_private_info, ptr %call7.i.i1920, i32 0, i32 12
  %38 = ptrtoint ptr %s_fsize242 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 1024, ptr %s_fsize242, align 8
  %s_fmask243 = getelementptr inbounds %struct.ufs_sb_private_info, ptr %call7.i.i1920, i32 0, i32 16
  %39 = ptrtoint ptr %s_fmask243 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 -1024, ptr %s_fmask243, align 8
  %s_fshift244 = getelementptr inbounds %struct.ufs_sb_private_info, ptr %call7.i.i1920, i32 0, i32 18
  %40 = ptrtoint ptr %s_fshift244 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 10, ptr %s_fshift244, align 8
  %s_sbsize245 = getelementptr inbounds %struct.ufs_sb_private_info, ptr %call7.i.i1920, i32 0, i32 21
  %41 = ptrtoint ptr %s_sbsize245 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 2048, ptr %s_sbsize245, align 4
  %s_sbbase246 = getelementptr inbounds %struct.ufs_sb_private_info, ptr %call7.i.i1920, i32 0, i32 57
  %42 = ptrtoint ptr %s_sbbase246 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %s_sbbase246, align 4
  %s_maxsymlinklen = getelementptr inbounds %struct.ufs_sb_private_info, ptr %call7.i.i1920, i32 0, i32 61
  %43 = ptrtoint ptr %s_maxsymlinklen to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %s_maxsymlinklen, align 4
  br label %sw.epilog

do.body249:                                       ; preds = %if.end119
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_fill_super.__UNIQUE_ID_ddebug394, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_fill_super, %do.body267)) #10
          to label %if.then263 [label %do.body267], !srcloc !647

if.then263:                                       ; preds = %do.body249
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_fill_super.__UNIQUE_ID_ddebug394, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.3, i32 noundef 885, ptr noundef nonnull @.str.9) #10
  br label %do.body267

do.body267:                                       ; preds = %if.then263, %do.body249
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_fill_super.__UNIQUE_ID_ddebug395, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_fill_super, %do.end284)) #10
          to label %if.then281 [label %do.end284], !srcloc !647

if.then281:                                       ; preds = %do.body267
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_fill_super.__UNIQUE_ID_ddebug395, ptr noundef nonnull @.str.34) #10
  br label %do.end284

do.end284:                                        ; preds = %if.then281, %do.body267
  %s_fsize285 = getelementptr inbounds %struct.ufs_sb_private_info, ptr %call7.i.i1920, i32 0, i32 12
  %44 = ptrtoint ptr %s_fsize285 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 1024, ptr %s_fsize285, align 8
  %s_fmask286 = getelementptr inbounds %struct.ufs_sb_private_info, ptr %call7.i.i1920, i32 0, i32 16
  %45 = ptrtoint ptr %s_fmask286 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 -1024, ptr %s_fmask286, align 8
  %s_fshift287 = getelementptr inbounds %struct.ufs_sb_private_info, ptr %call7.i.i1920, i32 0, i32 18
  %46 = ptrtoint ptr %s_fshift287 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 10, ptr %s_fshift287, align 8
  %s_sbsize288 = getelementptr inbounds %struct.ufs_sb_private_info, ptr %call7.i.i1920, i32 0, i32 21
  %47 = ptrtoint ptr %s_sbsize288 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 2048, ptr %s_sbsize288, align 4
  %s_sbbase289 = getelementptr inbounds %struct.ufs_sb_private_info, ptr %call7.i.i1920, i32 0, i32 57
  %48 = ptrtoint ptr %s_sbbase289 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %s_sbbase289, align 4
  %s_maxsymlinklen290 = getelementptr inbounds %struct.ufs_sb_private_info, ptr %call7.i.i1920, i32 0, i32 61
  %49 = ptrtoint ptr %s_maxsymlinklen290 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 0, ptr %s_maxsymlinklen290, align 4
  br label %sw.epilog

do.body293:                                       ; preds = %if.end119
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_fill_super.__UNIQUE_ID_ddebug396, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_fill_super, %do.body311)) #10
          to label %if.then307 [label %do.body311], !srcloc !647

if.then307:                                       ; preds = %do.body293
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_fill_super.__UNIQUE_ID_ddebug396, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.3, i32 noundef 897, ptr noundef nonnull @.str.9) #10
  br label %do.body311

do.body311:                                       ; preds = %if.then307, %do.body293
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_fill_super.__UNIQUE_ID_ddebug397, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_fill_super, %do.end328)) #10
          to label %if.then325 [label %do.end328], !srcloc !647

if.then325:                                       ; preds = %do.body311
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_fill_super.__UNIQUE_ID_ddebug397, ptr noundef nonnull @.str.36) #10
  br label %do.end328

do.end328:                                        ; preds = %if.then325, %do.body311
  %s_fsize329 = getelementptr inbounds %struct.ufs_sb_private_info, ptr %call7.i.i1920, i32 0, i32 12
  %50 = ptrtoint ptr %s_fsize329 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 1024, ptr %s_fsize329, align 8
  %s_fmask330 = getelementptr inbounds %struct.ufs_sb_private_info, ptr %call7.i.i1920, i32 0, i32 16
  %51 = ptrtoint ptr %s_fmask330 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 -1024, ptr %s_fmask330, align 8
  %s_fshift331 = getelementptr inbounds %struct.ufs_sb_private_info, ptr %call7.i.i1920, i32 0, i32 18
  %52 = ptrtoint ptr %s_fshift331 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 10, ptr %s_fshift331, align 8
  %s_sbsize332 = getelementptr inbounds %struct.ufs_sb_private_info, ptr %call7.i.i1920, i32 0, i32 21
  %53 = ptrtoint ptr %s_sbsize332 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 2048, ptr %s_sbsize332, align 4
  %s_sbbase333 = getelementptr inbounds %struct.ufs_sb_private_info, ptr %call7.i.i1920, i32 0, i32 57
  %54 = ptrtoint ptr %s_sbbase333 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 0, ptr %s_sbbase333, align 4
  %s_maxsymlinklen334 = getelementptr inbounds %struct.ufs_sb_private_info, ptr %call7.i.i1920, i32 0, i32 61
  %55 = ptrtoint ptr %s_maxsymlinklen334 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 0, ptr %s_maxsymlinklen334, align 4
  br label %sw.epilog

do.body337:                                       ; preds = %if.end119
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_fill_super.__UNIQUE_ID_ddebug398, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_fill_super, %do.body355)) #10
          to label %if.then351 [label %do.body355], !srcloc !647

if.then351:                                       ; preds = %do.body337
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_fill_super.__UNIQUE_ID_ddebug398, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.3, i32 noundef 908, ptr noundef nonnull @.str.9) #10
  br label %do.body355

do.body355:                                       ; preds = %if.then351, %do.body337
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_fill_super.__UNIQUE_ID_ddebug399, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_fill_super, %do.end372)) #10
          to label %if.then369 [label %do.end372], !srcloc !647

if.then369:                                       ; preds = %do.body355
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_fill_super.__UNIQUE_ID_ddebug399, ptr noundef nonnull @.str.38) #10
  br label %do.end372

do.end372:                                        ; preds = %if.then369, %do.body355
  %s_fsize373 = getelementptr inbounds %struct.ufs_sb_private_info, ptr %call7.i.i1920, i32 0, i32 12
  %56 = ptrtoint ptr %s_fsize373 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 1024, ptr %s_fsize373, align 8
  %s_fmask374 = getelementptr inbounds %struct.ufs_sb_private_info, ptr %call7.i.i1920, i32 0, i32 16
  %57 = ptrtoint ptr %s_fmask374 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 -1024, ptr %s_fmask374, align 8
  %s_fshift375 = getelementptr inbounds %struct.ufs_sb_private_info, ptr %call7.i.i1920, i32 0, i32 18
  %58 = ptrtoint ptr %s_fshift375 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 10, ptr %s_fshift375, align 8
  %s_sbsize376 = getelementptr inbounds %struct.ufs_sb_private_info, ptr %call7.i.i1920, i32 0, i32 21
  %59 = ptrtoint ptr %s_sbsize376 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 2048, ptr %s_sbsize376, align 4
  %s_sbbase377 = getelementptr inbounds %struct.ufs_sb_private_info, ptr %call7.i.i1920, i32 0, i32 57
  %60 = ptrtoint ptr %s_sbbase377 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 0, ptr %s_sbbase377, align 4
  %s_flags.i1921 = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 10
  %61 = ptrtoint ptr %s_flags.i1921 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %s_flags.i1921, align 4
  %and.i1922 = and i32 %62, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i1922)
  %tobool.i1923.not = icmp eq i32 %and.i1922, 0
  br i1 %tobool.i1923.not, label %if.then380, label %do.end372.sw.epilog_crit_edge

do.end372.sw.epilog_crit_edge:                    ; preds = %do.end372
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.then380:                                       ; preds = %do.end372
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %silent)
  %tobool381.not = icmp eq i32 %silent, 0
  br i1 %tobool381.not, label %do.end385, label %if.then380.if.end388_crit_edge

if.then380.if.end388_crit_edge:                   ; preds = %if.then380
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end388

do.end385:                                        ; preds = %if.then380
  call void @__sanitizer_cov_trace_pc() #12
  %call387 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40) #14
  br label %if.end388

if.end388:                                        ; preds = %do.end385, %if.then380.if.end388_crit_edge
  %63 = ptrtoint ptr %s_flags.i1921 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %s_flags.i1921, align 4
  %or389 = or i32 %64, 1
  store i32 %or389, ptr %s_flags.i1921, align 4
  br label %sw.epilog

do.body392:                                       ; preds = %if.end119
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_fill_super.__UNIQUE_ID_ddebug400, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_fill_super, %do.body410)) #10
          to label %if.then406 [label %do.body410], !srcloc !647

if.then406:                                       ; preds = %do.body392
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_fill_super.__UNIQUE_ID_ddebug400, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.3, i32 noundef 923, ptr noundef nonnull @.str.9) #10
  br label %do.body410

do.body410:                                       ; preds = %if.then406, %do.body392
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_fill_super.__UNIQUE_ID_ddebug401, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_fill_super, %do.end427)) #10
          to label %if.then424 [label %do.end427], !srcloc !647

if.then424:                                       ; preds = %do.body410
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_fill_super.__UNIQUE_ID_ddebug401, ptr noundef nonnull @.str.43) #10
  br label %do.end427

do.end427:                                        ; preds = %if.then424, %do.body410
  %s_fsize428 = getelementptr inbounds %struct.ufs_sb_private_info, ptr %call7.i.i1920, i32 0, i32 12
  %65 = ptrtoint ptr %s_fsize428 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 1024, ptr %s_fsize428, align 8
  %s_fmask429 = getelementptr inbounds %struct.ufs_sb_private_info, ptr %call7.i.i1920, i32 0, i32 16
  %66 = ptrtoint ptr %s_fmask429 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 -1024, ptr %s_fmask429, align 8
  %s_fshift430 = getelementptr inbounds %struct.ufs_sb_private_info, ptr %call7.i.i1920, i32 0, i32 18
  %67 = ptrtoint ptr %s_fshift430 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 10, ptr %s_fshift430, align 8
  %s_sbsize431 = getelementptr inbounds %struct.ufs_sb_private_info, ptr %call7.i.i1920, i32 0, i32 21
  %68 = ptrtoint ptr %s_sbsize431 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 2048, ptr %s_sbsize431, align 4
  %s_sbbase432 = getelementptr inbounds %struct.ufs_sb_private_info, ptr %call7.i.i1920, i32 0, i32 57
  %69 = ptrtoint ptr %s_sbbase432 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 0, ptr %s_sbbase432, align 4
  %70 = ptrtoint ptr %s_dirblksize to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 1024, ptr %s_dirblksize, align 4
  %s_flags.i1924 = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 10
  %71 = ptrtoint ptr %s_flags.i1924 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %s_flags.i1924, align 4
  %and.i1925 = and i32 %72, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i1925)
  %tobool.i1926.not = icmp eq i32 %and.i1925, 0
  br i1 %tobool.i1926.not, label %if.then436, label %do.end427.sw.epilog_crit_edge

do.end427.sw.epilog_crit_edge:                    ; preds = %do.end427
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.then436:                                       ; preds = %do.end427
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %silent)
  %tobool437.not = icmp eq i32 %silent, 0
  br i1 %tobool437.not, label %do.end441, label %if.then436.if.end444_crit_edge

if.then436.if.end444_crit_edge:                   ; preds = %if.then436
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end444

do.end441:                                        ; preds = %if.then436
  call void @__sanitizer_cov_trace_pc() #12
  %call443 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45) #14
  br label %if.end444

if.end444:                                        ; preds = %do.end441, %if.then436.if.end444_crit_edge
  %73 = ptrtoint ptr %s_flags.i1924 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %s_flags.i1924, align 4
  %or446 = or i32 %74, 1
  store i32 %or446, ptr %s_flags.i1924, align 4
  br label %sw.epilog

do.body449:                                       ; preds = %if.end119
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_fill_super.__UNIQUE_ID_ddebug402, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_fill_super, %do.body467)) #10
          to label %if.then463 [label %do.body467], !srcloc !647

if.then463:                                       ; preds = %do.body449
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_fill_super.__UNIQUE_ID_ddebug402, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.3, i32 noundef 939, ptr noundef nonnull @.str.9) #10
  br label %do.body467

do.body467:                                       ; preds = %if.then463, %do.body449
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_fill_super.__UNIQUE_ID_ddebug403, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_fill_super, %do.end484)) #10
          to label %if.then481 [label %do.end484], !srcloc !647

if.then481:                                       ; preds = %do.body467
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_fill_super.__UNIQUE_ID_ddebug403, ptr noundef nonnull @.str.48) #10
  br label %do.end484

do.end484:                                        ; preds = %if.then481, %do.body467
  %s_fsize485 = getelementptr inbounds %struct.ufs_sb_private_info, ptr %call7.i.i1920, i32 0, i32 12
  %75 = ptrtoint ptr %s_fsize485 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 2048, ptr %s_fsize485, align 8
  %s_fmask486 = getelementptr inbounds %struct.ufs_sb_private_info, ptr %call7.i.i1920, i32 0, i32 16
  %76 = ptrtoint ptr %s_fmask486 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 -2048, ptr %s_fmask486, align 8
  %s_fshift487 = getelementptr inbounds %struct.ufs_sb_private_info, ptr %call7.i.i1920, i32 0, i32 18
  %77 = ptrtoint ptr %s_fshift487 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 11, ptr %s_fshift487, align 8
  %s_sbsize488 = getelementptr inbounds %struct.ufs_sb_private_info, ptr %call7.i.i1920, i32 0, i32 21
  %78 = ptrtoint ptr %s_sbsize488 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 2048, ptr %s_sbsize488, align 4
  %s_sbbase489 = getelementptr inbounds %struct.ufs_sb_private_info, ptr %call7.i.i1920, i32 0, i32 57
  %79 = ptrtoint ptr %s_sbbase489 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 0, ptr %s_sbbase489, align 4
  %80 = ptrtoint ptr %s_dirblksize to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 1024, ptr %s_dirblksize, align 4
  %s_flags.i1927 = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 10
  %81 = ptrtoint ptr %s_flags.i1927 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %s_flags.i1927, align 4
  %and.i1928 = and i32 %82, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i1928)
  %tobool.i1929.not = icmp eq i32 %and.i1928, 0
  br i1 %tobool.i1929.not, label %if.then493, label %do.end484.sw.epilog_crit_edge

do.end484.sw.epilog_crit_edge:                    ; preds = %do.end484
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.then493:                                       ; preds = %do.end484
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %silent)
  %tobool494.not = icmp eq i32 %silent, 0
  br i1 %tobool494.not, label %do.end498, label %if.then493.if.end501_crit_edge

if.then493.if.end501_crit_edge:                   ; preds = %if.then493
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end501

do.end498:                                        ; preds = %if.then493
  call void @__sanitizer_cov_trace_pc() #12
  %call500 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50) #14
  br label %if.end501

if.end501:                                        ; preds = %do.end498, %if.then493.if.end501_crit_edge
  %83 = ptrtoint ptr %s_flags.i1927 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %s_flags.i1927, align 4
  %or503 = or i32 %84, 1
  store i32 %or503, ptr %s_flags.i1927, align 4
  br label %sw.epilog

do.body506:                                       ; preds = %if.end119
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_fill_super.__UNIQUE_ID_ddebug404, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_fill_super, %do.body524)) #10
          to label %if.then520 [label %do.body524], !srcloc !647

if.then520:                                       ; preds = %do.body506
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_fill_super.__UNIQUE_ID_ddebug404, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.3, i32 noundef 955, ptr noundef nonnull @.str.9) #10
  br label %do.body524

do.body524:                                       ; preds = %if.then520, %do.body506
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_fill_super.__UNIQUE_ID_ddebug405, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_fill_super, %do.end541)) #10
          to label %if.then538 [label %do.end541], !srcloc !647

if.then538:                                       ; preds = %do.body524
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_fill_super.__UNIQUE_ID_ddebug405, ptr noundef nonnull @.str.53) #10
  br label %do.end541

do.end541:                                        ; preds = %if.then538, %do.body524
  %s_fsize542 = getelementptr inbounds %struct.ufs_sb_private_info, ptr %call7.i.i1920, i32 0, i32 12
  %85 = ptrtoint ptr %s_fsize542 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 1024, ptr %s_fsize542, align 8
  %s_fmask543 = getelementptr inbounds %struct.ufs_sb_private_info, ptr %call7.i.i1920, i32 0, i32 16
  %86 = ptrtoint ptr %s_fmask543 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 -1024, ptr %s_fmask543, align 8
  %s_fshift544 = getelementptr inbounds %struct.ufs_sb_private_info, ptr %call7.i.i1920, i32 0, i32 18
  %87 = ptrtoint ptr %s_fshift544 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 10, ptr %s_fshift544, align 8
  %s_sbsize545 = getelementptr inbounds %struct.ufs_sb_private_info, ptr %call7.i.i1920, i32 0, i32 21
  %88 = ptrtoint ptr %s_sbsize545 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 2048, ptr %s_sbsize545, align 4
  %s_sbbase546 = getelementptr inbounds %struct.ufs_sb_private_info, ptr %call7.i.i1920, i32 0, i32 57
  %89 = ptrtoint ptr %s_sbbase546 to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 0, ptr %s_sbbase546, align 4
  %90 = ptrtoint ptr %s_dirblksize to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 1024, ptr %s_dirblksize, align 4
  %s_flags.i1930 = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 10
  %91 = ptrtoint ptr %s_flags.i1930 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %s_flags.i1930, align 4
  %and.i1931 = and i32 %92, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i1931)
  %tobool.i1932.not = icmp eq i32 %and.i1931, 0
  br i1 %tobool.i1932.not, label %if.then550, label %do.end541.sw.epilog_crit_edge

do.end541.sw.epilog_crit_edge:                    ; preds = %do.end541
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.then550:                                       ; preds = %do.end541
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %silent)
  %tobool551.not = icmp eq i32 %silent, 0
  br i1 %tobool551.not, label %do.end555, label %if.then550.if.end558_crit_edge

if.then550.if.end558_crit_edge:                   ; preds = %if.then550
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end558

do.end555:                                        ; preds = %if.then550
  call void @__sanitizer_cov_trace_pc() #12
  %call557 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55) #14
  br label %if.end558

if.end558:                                        ; preds = %do.end555, %if.then550.if.end558_crit_edge
  %93 = ptrtoint ptr %s_flags.i1930 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %s_flags.i1930, align 4
  %or560 = or i32 %94, 1
  store i32 %or560, ptr %s_flags.i1930, align 4
  br label %sw.epilog

do.body563:                                       ; preds = %if.end119
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_fill_super.__UNIQUE_ID_ddebug406, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_fill_super, %do.body581)) #10
          to label %if.then577 [label %do.body581], !srcloc !647

if.then577:                                       ; preds = %do.body563
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_fill_super.__UNIQUE_ID_ddebug406, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.3, i32 noundef 971, ptr noundef nonnull @.str.9) #10
  br label %do.body581

do.body581:                                       ; preds = %if.then577, %do.body563
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_fill_super.__UNIQUE_ID_ddebug407, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_fill_super, %do.end598)) #10
          to label %if.then595 [label %do.end598], !srcloc !647

if.then595:                                       ; preds = %do.body581
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_fill_super.__UNIQUE_ID_ddebug407, ptr noundef nonnull @.str.58) #10
  br label %do.end598

do.end598:                                        ; preds = %if.then595, %do.body581
  %s_fsize599 = getelementptr inbounds %struct.ufs_sb_private_info, ptr %call7.i.i1920, i32 0, i32 12
  %95 = ptrtoint ptr %s_fsize599 to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 1024, ptr %s_fsize599, align 8
  %s_fmask600 = getelementptr inbounds %struct.ufs_sb_private_info, ptr %call7.i.i1920, i32 0, i32 16
  %96 = ptrtoint ptr %s_fmask600 to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 -1024, ptr %s_fmask600, align 8
  %s_fshift601 = getelementptr inbounds %struct.ufs_sb_private_info, ptr %call7.i.i1920, i32 0, i32 18
  %97 = ptrtoint ptr %s_fshift601 to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 10, ptr %s_fshift601, align 8
  %s_sbsize602 = getelementptr inbounds %struct.ufs_sb_private_info, ptr %call7.i.i1920, i32 0, i32 21
  %98 = ptrtoint ptr %s_sbsize602 to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 2048, ptr %s_sbsize602, align 4
  %s_sbbase603 = getelementptr inbounds %struct.ufs_sb_private_info, ptr %call7.i.i1920, i32 0, i32 57
  %99 = ptrtoint ptr %s_sbbase603 to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 0, ptr %s_sbbase603, align 4
  %s_flags.i1933 = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 10
  %100 = ptrtoint ptr %s_flags.i1933 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %s_flags.i1933, align 4
  %and.i1934 = and i32 %101, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i1934)
  %tobool.i1935.not = icmp eq i32 %and.i1934, 0
  br i1 %tobool.i1935.not, label %if.then606, label %do.end598.sw.epilog_crit_edge

do.end598.sw.epilog_crit_edge:                    ; preds = %do.end598
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.then606:                                       ; preds = %do.end598
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %silent)
  %tobool607.not = icmp eq i32 %silent, 0
  br i1 %tobool607.not, label %do.end611, label %if.then606.if.end614_crit_edge

if.then606.if.end614_crit_edge:                   ; preds = %if.then606
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end614

do.end611:                                        ; preds = %if.then606
  call void @__sanitizer_cov_trace_pc() #12
  %call613 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60) #14
  br label %if.end614

if.end614:                                        ; preds = %do.end611, %if.then606.if.end614_crit_edge
  %102 = ptrtoint ptr %s_flags.i1933 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %s_flags.i1933, align 4
  %or616 = or i32 %103, 1
  store i32 %or616, ptr %s_flags.i1933, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %if.end119
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %silent)
  %tobool618.not = icmp eq i32 %silent, 0
  br i1 %tobool618.not, label %do.end622, label %sw.default.if.end1295_crit_edge

sw.default.if.end1295_crit_edge:                  ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end1295

do.end622:                                        ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #12
  %call624 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63) #14
  br label %if.end1295

sw.epilog:                                        ; preds = %if.end614, %do.end598.sw.epilog_crit_edge, %if.end558, %do.end541.sw.epilog_crit_edge, %if.end501, %do.end484.sw.epilog_crit_edge, %if.end444, %do.end427.sw.epilog_crit_edge, %if.end388, %do.end372.sw.epilog_crit_edge, %do.end328, %do.end284, %do.end241, %do.end195, %do.end157
  %super_block_offset.0 = phi i32 [ 8192, %do.end598.sw.epilog_crit_edge ], [ 8192, %if.end614 ], [ 8192, %do.end541.sw.epilog_crit_edge ], [ 8192, %if.end558 ], [ 8192, %do.end484.sw.epilog_crit_edge ], [ 8192, %if.end501 ], [ 8192, %do.end427.sw.epilog_crit_edge ], [ 8192, %if.end444 ], [ 8192, %do.end372.sw.epilog_crit_edge ], [ 8192, %if.end388 ], [ 8192, %do.end328 ], [ 8192, %do.end284 ], [ 8192, %do.end241 ], [ 65536, %do.end195 ], [ 8192, %do.end157 ]
  %flags.0 = phi i32 [ 0, %do.end598.sw.epilog_crit_edge ], [ 0, %if.end614 ], [ 8496, %do.end541.sw.epilog_crit_edge ], [ 8496, %if.end558 ], [ 0, %do.end484.sw.epilog_crit_edge ], [ 0, %if.end501 ], [ 0, %do.end427.sw.epilog_crit_edge ], [ 0, %if.end444 ], [ 0, %do.end372.sw.epilog_crit_edge ], [ 0, %if.end388 ], [ 5184, %do.end328 ], [ 4864, %do.end284 ], [ 4672, %do.end241 ], [ 74032, %do.end195 ], [ 8496, %do.end157 ]
  %super_block_size.0 = phi i32 [ 2048, %do.end598.sw.epilog_crit_edge ], [ 2048, %if.end614 ], [ 2048, %do.end541.sw.epilog_crit_edge ], [ 2048, %if.end558 ], [ 2048, %do.end484.sw.epilog_crit_edge ], [ 2048, %if.end501 ], [ 2048, %do.end427.sw.epilog_crit_edge ], [ 2048, %if.end444 ], [ 2048, %do.end372.sw.epilog_crit_edge ], [ 2048, %if.end388 ], [ 2048, %do.end328 ], [ 2048, %do.end284 ], [ 2048, %do.end241 ], [ 1536, %do.end195 ], [ 1536, %do.end157 ]
  %block_size.0 = phi i32 [ 1024, %do.end598.sw.epilog_crit_edge ], [ 1024, %if.end614 ], [ 1024, %do.end541.sw.epilog_crit_edge ], [ 1024, %if.end558 ], [ 2048, %do.end484.sw.epilog_crit_edge ], [ 2048, %if.end501 ], [ 1024, %do.end427.sw.epilog_crit_edge ], [ 1024, %if.end444 ], [ 1024, %do.end372.sw.epilog_crit_edge ], [ 1024, %if.end388 ], [ 1024, %do.end328 ], [ 1024, %do.end284 ], [ 1024, %do.end241 ], [ 512, %do.end195 ], [ 512, %do.end157 ]
  %call62624082412 = tail call i32 @sb_set_blocksize(ptr noundef %sb, i32 noundef %block_size.0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62624082412)
  %tobool627.not24092413 = icmp eq i32 %call62624082412, 0
  br i1 %tobool627.not24092413, label %sw.epilog.do.end631_crit_edge, label %if.end634.lr.ph.lr.ph

sw.epilog.do.end631_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end631

if.end634.lr.ph.lr.ph:                            ; preds = %sw.epilog
  %s_sbbase635 = getelementptr inbounds %struct.ufs_sb_private_info, ptr %call7.i.i1920, i32 0, i32 57
  %s_fshift.i = getelementptr inbounds %struct.ufs_sb_private_info, ptr %call7.i.i1920, i32 0, i32 18
  %s_fmask.i = getelementptr inbounds %struct.ufs_sb_private_info, ptr %call7.i.i1920, i32 0, i32 16
  %arrayidx.i = getelementptr %struct.ufs_buffer_head, ptr %call7.i.i1920, i32 0, i32 2, i32 0
  %s_postblformat = getelementptr inbounds %struct.ufs_sb_private_info, ptr %call7.i.i1920, i32 0, i32 42
  %s_bytesex = getelementptr inbounds %struct.ufs_sb_info, ptr %call7.i.i, i32 0, i32 2
  %fs_magic673 = getelementptr inbounds %struct.ufs_sb_private_info, ptr %call7.i.i1920, i32 0, i32 62
  %s_bsize = getelementptr inbounds %struct.ufs_sb_private_info, ptr %call7.i.i1920, i32 0, i32 11
  %s_fsize713 = getelementptr inbounds %struct.ufs_sb_private_info, ptr %call7.i.i1920, i32 0, i32 12
  %s_sbsize715 = getelementptr inbounds %struct.ufs_sb_private_info, ptr %call7.i.i1920, i32 0, i32 21
  br label %if.end634.lr.ph

if.end634.lr.ph:                                  ; preds = %do.end833.if.end634.lr.ph_crit_edge, %if.end634.lr.ph.lr.ph
  %block_size.1.ph2416 = phi i32 [ %block_size.0, %if.end634.lr.ph.lr.ph ], [ %189, %do.end833.if.end634.lr.ph_crit_edge ]
  %super_block_size.1.ph2415 = phi i32 [ %super_block_size.0, %if.end634.lr.ph.lr.ph ], [ %191, %do.end833.if.end634.lr.ph_crit_edge ]
  %flags.1.ph2414 = phi i32 [ %flags.0, %if.end634.lr.ph.lr.ph ], [ %flags.2, %do.end833.if.end634.lr.ph_crit_edge ]
  %div = udiv i32 %super_block_offset.0, %block_size.1.ph2416
  %conv637 = zext i32 %super_block_size.1.ph2415 to i64
  br label %if.end634

do.end631:                                        ; preds = %do.end833.do.end631_crit_edge, %if.then699.do.end631_crit_edge, %sw.epilog.do.end631_crit_edge
  %call633 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66) #14
  br label %if.end1295

if.end634:                                        ; preds = %if.then699.if.end634_crit_edge, %if.end634.lr.ph
  %flags.12410 = phi i32 [ %flags.1.ph2414, %if.end634.lr.ph ], [ %flags.2, %if.then699.if.end634_crit_edge ]
  %104 = ptrtoint ptr %s_sbbase635 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %s_sbbase635, align 4
  %add = add i32 %div, %105
  %conv636 = zext i32 %add to i64
  %call638 = tail call ptr @ubh_bread_uspi(ptr noundef nonnull %call7.i.i1920, ptr noundef %sb, i64 noundef %conv636, i64 noundef %conv637) #10
  %tobool639.not = icmp eq ptr %call638, null
  br i1 %tobool639.not, label %if.end634.if.end1295_crit_edge, label %if.end641

if.end634.if.end1295_crit_edge:                   ; preds = %if.end634
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end1295

if.end641:                                        ; preds = %if.end634
  %106 = ptrtoint ptr %s_fmask.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %s_fmask.i, align 8
  %108 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %arrayidx.i, align 8
  %b_data.i = getelementptr inbounds %struct.buffer_head, ptr %109, i32 0, i32 5
  %110 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %b_data.i, align 4
  %112 = ptrtoint ptr %s_fshift.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %s_fshift.i, align 8
  %shr.i = lshr i32 512, %113
  %neg.i1938 = xor i32 %107, -1
  %arrayidx.i1940 = getelementptr %struct.ufs_buffer_head, ptr %call7.i.i1920, i32 0, i32 2, i32 %shr.i
  %114 = ptrtoint ptr %arrayidx.i1940 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %arrayidx.i1940, align 4
  %b_data.i1941 = getelementptr inbounds %struct.buffer_head, ptr %115, i32 0, i32 5
  %116 = ptrtoint ptr %b_data.i1941 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %b_data.i1941, align 4
  %shr.i1943 = lshr i32 1024, %113
  %and.i1946 = and i32 %neg.i1938, 1024
  %arrayidx.i1947 = getelementptr %struct.ufs_buffer_head, ptr %call7.i.i1920, i32 0, i32 2, i32 %shr.i1943
  %118 = ptrtoint ptr %arrayidx.i1947 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %arrayidx.i1947, align 4
  %b_data.i1948 = getelementptr inbounds %struct.buffer_head, ptr %119, i32 0, i32 5
  %120 = ptrtoint ptr %b_data.i1948 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %b_data.i1948, align 4
  %add.ptr.i1949 = getelementptr i8, ptr %121, i32 %and.i1946
  %fs_postblformat = getelementptr inbounds %struct.ufs_super_block_third, ptr %add.ptr.i1949, i32 0, i32 2
  %122 = ptrtoint ptr %fs_postblformat to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %fs_postblformat, align 4
  %124 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %s_fs_info, align 16
  %s_bytesex.i = getelementptr inbounds %struct.ufs_sb_info, ptr %125, i32 0, i32 2
  %126 = ptrtoint ptr %s_bytesex.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %s_bytesex.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %127)
  %cmp.i = icmp eq i32 %127, 0
  %128 = tail call i32 @llvm.bswap.i32(i32 %123) #10
  %retval.0.i1950 = select i1 %cmp.i, i32 %128, i32 %123
  %129 = ptrtoint ptr %s_postblformat to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 %retval.0.i1950, ptr %s_postblformat, align 8
  %and646 = and i32 %flags.12410, 1792
  call void @__sanitizer_cov_trace_const_cmp4(i32 768, i32 %and646)
  %cmp = icmp ne i32 %and646, 768
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i1950)
  %cmp649.not = icmp eq i32 %retval.0.i1950, -1
  %or.cond = select i1 %cmp, i1 true, i1 %cmp649.not
  %and652 = and i32 %flags.12410, -1793
  %or653 = or i32 %and652, 512
  %flags.2 = select i1 %or.cond, i32 %flags.12410, i32 %or653
  %and655 = and i32 %flags.2, 1792
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %and655)
  %cmp656 = icmp ne i32 %and655, 256
  %cmp649.not.not = xor i1 %cmp649.not, true
  %brmerge = select i1 %cmp656, i1 true, i1 %cmp649.not.not
  br i1 %brmerge, label %if.end671, label %if.then662

if.then662:                                       ; preds = %if.end641
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %silent)
  %tobool663.not = icmp eq i32 %silent, 0
  br i1 %tobool663.not, label %do.end667, label %if.then662.if.then1294_crit_edge

if.then662.if.then1294_crit_edge:                 ; preds = %if.then662
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then1294

do.end667:                                        ; preds = %if.then662
  call void @__sanitizer_cov_trace_pc() #12
  %call669 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69) #14
  br label %if.then1294

if.end671:                                        ; preds = %if.end641
  %130 = ptrtoint ptr %s_bytesex to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 0, ptr %s_bytesex, align 8
  %fs_magic = getelementptr inbounds %struct.ufs_super_block_third, ptr %add.ptr.i1949, i32 0, i32 6
  %131 = ptrtoint ptr %fs_magic to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %fs_magic, align 4
  %133 = ptrtoint ptr %s_bytesex.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %s_bytesex.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %134)
  %cmp.i1953 = icmp eq i32 %134, 0
  %135 = tail call i32 @llvm.bswap.i32(i32 %132) #10
  %retval.0.i1954 = select i1 %cmp.i1953, i32 %135, i32 %132
  %136 = ptrtoint ptr %fs_magic673 to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 %retval.0.i1954, ptr %fs_magic673, align 8
  %137 = zext i32 %retval.0.i1954 to i64
  call void @__sanitizer_cov_trace_switch(i64 %137, ptr @__sancov_gen_cov_switch_values.307)
  switch i32 %retval.0.i1954, label %sw.epilog675 [
    i32 72020, label %if.end671.magic_found_crit_edge
    i32 254027415, label %if.end671.magic_found_crit_edge2934
    i32 424935705, label %if.end671.magic_found_crit_edge2935
    i32 610324, label %if.end671.magic_found_crit_edge2936
    i32 1660434, label %if.end671.magic_found_crit_edge2937
    i32 86186388, label %if.end671.magic_found_crit_edge2938
  ]

if.end671.magic_found_crit_edge2938:              ; preds = %if.end671
  call void @__sanitizer_cov_trace_pc() #12
  br label %magic_found

if.end671.magic_found_crit_edge2937:              ; preds = %if.end671
  call void @__sanitizer_cov_trace_pc() #12
  br label %magic_found

if.end671.magic_found_crit_edge2936:              ; preds = %if.end671
  call void @__sanitizer_cov_trace_pc() #12
  br label %magic_found

if.end671.magic_found_crit_edge2935:              ; preds = %if.end671
  call void @__sanitizer_cov_trace_pc() #12
  br label %magic_found

if.end671.magic_found_crit_edge2934:              ; preds = %if.end671
  call void @__sanitizer_cov_trace_pc() #12
  br label %magic_found

if.end671.magic_found_crit_edge:                  ; preds = %if.end671
  call void @__sanitizer_cov_trace_pc() #12
  br label %magic_found

sw.epilog675:                                     ; preds = %if.end671
  %138 = ptrtoint ptr %s_bytesex to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 1, ptr %s_bytesex, align 8
  %139 = ptrtoint ptr %fs_magic to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %fs_magic, align 4
  %141 = ptrtoint ptr %s_bytesex.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %s_bytesex.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %142)
  %cmp.i1957 = icmp eq i32 %142, 0
  %143 = tail call i32 @llvm.bswap.i32(i32 %140) #10
  %retval.0.i1958 = select i1 %cmp.i1957, i32 %143, i32 %140
  %144 = ptrtoint ptr %fs_magic673 to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 %retval.0.i1958, ptr %fs_magic673, align 8
  %145 = zext i32 %retval.0.i1958 to i64
  call void @__sanitizer_cov_trace_switch(i64 %145, ptr @__sancov_gen_cov_switch_values.308)
  switch i32 %retval.0.i1958, label %sw.epilog681 [
    i32 72020, label %sw.epilog675.magic_found_crit_edge
    i32 254027415, label %sw.epilog675.magic_found_crit_edge2939
    i32 424935705, label %sw.epilog675.magic_found_crit_edge2940
    i32 610324, label %sw.epilog675.magic_found_crit_edge2941
    i32 1660434, label %sw.epilog675.magic_found_crit_edge2942
    i32 86186388, label %sw.epilog675.magic_found_crit_edge2943
  ]

sw.epilog675.magic_found_crit_edge2943:           ; preds = %sw.epilog675
  call void @__sanitizer_cov_trace_pc() #12
  br label %magic_found

sw.epilog675.magic_found_crit_edge2942:           ; preds = %sw.epilog675
  call void @__sanitizer_cov_trace_pc() #12
  br label %magic_found

sw.epilog675.magic_found_crit_edge2941:           ; preds = %sw.epilog675
  call void @__sanitizer_cov_trace_pc() #12
  br label %magic_found

sw.epilog675.magic_found_crit_edge2940:           ; preds = %sw.epilog675
  call void @__sanitizer_cov_trace_pc() #12
  br label %magic_found

sw.epilog675.magic_found_crit_edge2939:           ; preds = %sw.epilog675
  call void @__sanitizer_cov_trace_pc() #12
  br label %magic_found

sw.epilog675.magic_found_crit_edge:               ; preds = %sw.epilog675
  call void @__sanitizer_cov_trace_pc() #12
  br label %magic_found

sw.epilog681:                                     ; preds = %sw.epilog675
  %146 = ptrtoint ptr %s_mount_opt to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %s_mount_opt, align 8
  %148 = trunc i32 %147 to i16
  %trunc2288 = and i16 %148, -16
  %149 = zext i16 %trunc2288 to i64
  call void @__sanitizer_cov_trace_switch(i64 %149, ptr @__sancov_gen_cov_switch_values.309)
  switch i16 %trunc2288, label %sw.epilog681.if.end702_crit_edge [
    i16 128, label %sw.epilog681.land.lhs.true695_crit_edge
    i16 256, label %sw.epilog681.land.lhs.true695_crit_edge2944
    i16 512, label %sw.epilog681.land.lhs.true695_crit_edge2945
  ]

sw.epilog681.land.lhs.true695_crit_edge2945:      ; preds = %sw.epilog681
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true695

sw.epilog681.land.lhs.true695_crit_edge2944:      ; preds = %sw.epilog681
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true695

sw.epilog681.land.lhs.true695_crit_edge:          ; preds = %sw.epilog681
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true695

sw.epilog681.if.end702_crit_edge:                 ; preds = %sw.epilog681
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end702

land.lhs.true695:                                 ; preds = %sw.epilog681.land.lhs.true695_crit_edge, %sw.epilog681.land.lhs.true695_crit_edge2944, %sw.epilog681.land.lhs.true695_crit_edge2945
  %150 = ptrtoint ptr %s_sbbase635 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %s_sbbase635, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %151)
  %cmp697 = icmp ult i32 %151, 256
  br i1 %cmp697, label %if.then699, label %land.lhs.true695.if.end702_crit_edge

land.lhs.true695.if.end702_crit_edge:             ; preds = %land.lhs.true695
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end702

if.then699:                                       ; preds = %land.lhs.true695
  tail call void @ubh_brelse_uspi(ptr noundef nonnull %call7.i.i1920) #10
  %152 = ptrtoint ptr %s_sbbase635 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %s_sbbase635, align 4
  %add701 = add i32 %153, 8
  store i32 %add701, ptr %s_sbbase635, align 4
  %call626 = tail call i32 @sb_set_blocksize(ptr noundef %sb, i32 noundef %block_size.1.ph2416) #10
  %tobool627.not = icmp eq i32 %call626, 0
  br i1 %tobool627.not, label %if.then699.do.end631_crit_edge, label %if.then699.if.end634_crit_edge

if.then699.if.end634_crit_edge:                   ; preds = %if.then699
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end634

if.then699.do.end631_crit_edge:                   ; preds = %if.then699
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end631

if.end702:                                        ; preds = %land.lhs.true695.if.end702_crit_edge, %sw.epilog681.if.end702_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %silent)
  %tobool703.not = icmp eq i32 %silent, 0
  br i1 %tobool703.not, label %do.end707, label %if.end702.if.then1294_crit_edge

if.end702.if.then1294_crit_edge:                  ; preds = %if.end702
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then1294

do.end707:                                        ; preds = %if.end702
  call void @__sanitizer_cov_trace_pc() #12
  %call709 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.9) #14
  br label %if.then1294

magic_found:                                      ; preds = %sw.epilog675.magic_found_crit_edge, %sw.epilog675.magic_found_crit_edge2939, %sw.epilog675.magic_found_crit_edge2940, %sw.epilog675.magic_found_crit_edge2941, %sw.epilog675.magic_found_crit_edge2942, %sw.epilog675.magic_found_crit_edge2943, %if.end671.magic_found_crit_edge, %if.end671.magic_found_crit_edge2934, %if.end671.magic_found_crit_edge2935, %if.end671.magic_found_crit_edge2936, %if.end671.magic_found_crit_edge2937, %if.end671.magic_found_crit_edge2938
  %fs_bsize = getelementptr inbounds %struct.ufs_super_block_first, ptr %111, i32 0, i32 12
  %154 = ptrtoint ptr %fs_bsize to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %fs_bsize, align 4
  %156 = ptrtoint ptr %s_bytesex.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %s_bytesex.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %157)
  %cmp.i1961 = icmp eq i32 %157, 0
  %158 = tail call i32 @llvm.bswap.i32(i32 %155) #10
  %retval.0.i1962 = select i1 %cmp.i1961, i32 %158, i32 %155
  %159 = ptrtoint ptr %s_bsize to i32
  call void @__asan_store4_noabort(i32 %159)
  store i32 %retval.0.i1962, ptr %s_bsize, align 4
  %fs_fsize = getelementptr inbounds %struct.ufs_super_block_first, ptr %111, i32 0, i32 13
  %160 = ptrtoint ptr %fs_fsize to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %fs_fsize, align 4
  %162 = ptrtoint ptr %s_bytesex.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %s_bytesex.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %163)
  %cmp.i1965 = icmp eq i32 %163, 0
  %164 = tail call i32 @llvm.bswap.i32(i32 %161) #10
  %retval.0.i1966 = select i1 %cmp.i1965, i32 %164, i32 %161
  %165 = ptrtoint ptr %s_fsize713 to i32
  call void @__asan_store4_noabort(i32 %165)
  store i32 %retval.0.i1966, ptr %s_fsize713, align 8
  %fs_sbsize = getelementptr inbounds %struct.ufs_super_block_first, ptr %111, i32 0, i32 26
  %166 = ptrtoint ptr %fs_sbsize to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %fs_sbsize, align 4
  %168 = ptrtoint ptr %s_bytesex.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %s_bytesex.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %169)
  %cmp.i1969 = icmp eq i32 %169, 0
  %170 = tail call i32 @llvm.bswap.i32(i32 %167) #10
  %retval.0.i1970 = select i1 %cmp.i1969, i32 %170, i32 %167
  %171 = ptrtoint ptr %s_sbsize715 to i32
  call void @__asan_store4_noabort(i32 %171)
  store i32 %retval.0.i1970, ptr %s_sbsize715, align 4
  %fs_fmask = getelementptr inbounds %struct.ufs_super_block_first, ptr %111, i32 0, i32 19
  %172 = ptrtoint ptr %fs_fmask to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %fs_fmask, align 4
  %174 = ptrtoint ptr %s_bytesex.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %s_bytesex.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %175)
  %cmp.i1973 = icmp eq i32 %175, 0
  %176 = tail call i32 @llvm.bswap.i32(i32 %173) #10
  %retval.0.i1974 = select i1 %cmp.i1973, i32 %176, i32 %173
  %177 = ptrtoint ptr %s_fmask.i to i32
  call void @__asan_store4_noabort(i32 %177)
  store i32 %retval.0.i1974, ptr %s_fmask.i, align 8
  %fs_fshift = getelementptr inbounds %struct.ufs_super_block_first, ptr %111, i32 0, i32 21
  %178 = ptrtoint ptr %fs_fshift to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %fs_fshift, align 4
  %180 = ptrtoint ptr %s_bytesex.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %s_bytesex.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %181)
  %cmp.i1977 = icmp eq i32 %181, 0
  %182 = tail call i32 @llvm.bswap.i32(i32 %179) #10
  %retval.0.i1978 = select i1 %cmp.i1977, i32 %182, i32 %179
  %183 = ptrtoint ptr %s_fshift.i to i32
  call void @__asan_store4_noabort(i32 %183)
  store i32 %retval.0.i1978, ptr %s_fshift.i, align 8
  %184 = tail call i32 @llvm.ctpop.i32(i32 %retval.0.i1966) #10, !range !648
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %184)
  %185 = icmp eq i32 %184, 1
  br i1 %185, label %if.end729, label %do.end725

do.end725:                                        ; preds = %magic_found
  call void @__sanitizer_cov_trace_pc() #12
  %call728 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.75, ptr noundef nonnull @.str.9, i32 noundef %retval.0.i1966) #14
  br label %if.then1294

if.end729:                                        ; preds = %magic_found
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %retval.0.i1966)
  %cmp731 = icmp ult i32 %retval.0.i1966, 512
  br i1 %cmp731, label %do.end736, label %if.end740

do.end736:                                        ; preds = %if.end729
  call void @__sanitizer_cov_trace_pc() #12
  %call739 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.78, ptr noundef nonnull @.str.9, i32 noundef %retval.0.i1966) #14
  br label %if.then1294

if.end740:                                        ; preds = %if.end729
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %retval.0.i1966)
  %cmp742 = icmp ugt i32 %retval.0.i1966, 4096
  br i1 %cmp742, label %do.end747, label %if.end751

do.end747:                                        ; preds = %if.end740
  call void @__sanitizer_cov_trace_pc() #12
  %call750 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.9, i32 noundef %retval.0.i1966) #14
  br label %if.then1294

if.end751:                                        ; preds = %if.end740
  %186 = tail call i32 @llvm.ctpop.i32(i32 %retval.0.i1962) #10, !range !648
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %186)
  %187 = icmp eq i32 %186, 1
  br i1 %187, label %if.end761, label %do.end757

do.end757:                                        ; preds = %if.end751
  call void @__sanitizer_cov_trace_pc() #12
  %call760 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.84, ptr noundef nonnull @.str.9, i32 noundef %retval.0.i1962) #14
  br label %if.then1294

if.end761:                                        ; preds = %if.end751
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %retval.0.i1962)
  %cmp763 = icmp ult i32 %retval.0.i1962, 4096
  br i1 %cmp763, label %do.end768, label %if.end772

do.end768:                                        ; preds = %if.end761
  call void @__sanitizer_cov_trace_pc() #12
  %call771 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.87, ptr noundef nonnull @.str.9, i32 noundef %retval.0.i1962) #14
  br label %if.then1294

if.end772:                                        ; preds = %if.end761
  %div775 = udiv i32 %retval.0.i1962, %retval.0.i1966
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %div775)
  %cmp776 = icmp ugt i32 %div775, 8
  br i1 %cmp776, label %do.end781, label %if.end787

do.end781:                                        ; preds = %if.end772
  call void @__sanitizer_cov_trace_pc() #12
  %call786 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.90, ptr noundef nonnull @.str.9, i32 noundef %div775) #14
  br label %if.then1294

if.end787:                                        ; preds = %if.end772
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i1966, i32 %block_size.1.ph2416)
  %cmp789.not = icmp eq i32 %retval.0.i1966, %block_size.1.ph2416
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i1970, i32 %super_block_size.1.ph2415)
  %cmp793.not = icmp eq i32 %retval.0.i1970, %super_block_size.1.ph2415
  %or.cond2286 = select i1 %cmp789.not, i1 %cmp793.not, i1 false
  br i1 %or.cond2286, label %if.end834, label %if.then795

if.then795:                                       ; preds = %if.end787
  tail call void @ubh_brelse_uspi(ptr noundef nonnull %call7.i.i1920) #10
  %188 = ptrtoint ptr %s_fsize713 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %s_fsize713, align 8
  %190 = ptrtoint ptr %s_sbsize715 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %s_sbsize715, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_fill_super.__UNIQUE_ID_ddebug408, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_fill_super, %do.body816)) #10
          to label %if.then812 [label %do.body816], !srcloc !647

if.then812:                                       ; preds = %if.then795
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_fill_super.__UNIQUE_ID_ddebug408, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.3, i32 noundef 1106, ptr noundef nonnull @.str.9) #10
  br label %do.body816

do.body816:                                       ; preds = %if.then812, %if.then795
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_fill_super.__UNIQUE_ID_ddebug409, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_fill_super, %do.end833)) #10
          to label %if.then830 [label %do.end833], !srcloc !647

if.then830:                                       ; preds = %do.body816
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_fill_super.__UNIQUE_ID_ddebug409, ptr noundef nonnull @.str.93, i32 noundef %189, i32 noundef %191) #10
  br label %do.end833

do.end833:                                        ; preds = %if.then830, %do.body816
  %call6262408 = tail call i32 @sb_set_blocksize(ptr noundef %sb, i32 noundef %189) #10
  %tobool627.not2409 = icmp eq i32 %call6262408, 0
  br i1 %tobool627.not2409, label %do.end833.do.end631_crit_edge, label %do.end833.if.end634.lr.ph_crit_edge

do.end833.if.end634.lr.ph_crit_edge:              ; preds = %do.end833
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end634.lr.ph

do.end833.do.end631_crit_edge:                    ; preds = %do.end833
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end631

if.end834:                                        ; preds = %if.end787
  %fs_postblformat.le.le = getelementptr inbounds %struct.ufs_super_block_third, ptr %add.ptr.i1949, i32 0, i32 2
  %fs_fmask.le = getelementptr inbounds %struct.ufs_super_block_first, ptr %111, i32 0, i32 19
  %fs_fshift.le = getelementptr inbounds %struct.ufs_super_block_first, ptr %111, i32 0, i32 21
  %and.i1939.le.le = and i32 %neg.i1938, 512
  %add.ptr.i.le.le = getelementptr i8, ptr %117, i32 %and.i1939.le.le
  %s_flags835 = getelementptr inbounds %struct.ufs_sb_info, ptr %call7.i.i, i32 0, i32 3
  %192 = ptrtoint ptr %s_flags835 to i32
  call void @__asan_store4_noabort(i32 %192)
  store i32 %flags.2, ptr %s_flags835, align 4
  tail call fastcc void @ufs_print_super_stuff(ptr noundef %sb, ptr noundef %111, ptr noundef %add.ptr.i.le.le, ptr noundef %add.ptr.i1949)
  %193 = lshr exact i32 %and655, 8
  %194 = zext i32 %193 to i64
  call void @__sanitizer_cov_trace_switch(i64 %194, ptr @__sancov_gen_cov_switch_values.310)
  switch i32 %193, label %if.end834.do.end1039_crit_edge [
    i32 1, label %if.end834.if.then860_crit_edge
    i32 0, label %if.end834.if.then860_crit_edge2946
    i32 2, label %if.end834.land.lhs.true855_crit_edge
    i32 3, label %if.end834.land.lhs.true855_crit_edge2947
    i32 4, label %if.end834.land.lhs.true855_crit_edge2948
  ]

if.end834.land.lhs.true855_crit_edge2948:         ; preds = %if.end834
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true855

if.end834.land.lhs.true855_crit_edge2947:         ; preds = %if.end834
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true855

if.end834.land.lhs.true855_crit_edge:             ; preds = %if.end834
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true855

if.end834.if.then860_crit_edge2946:               ; preds = %if.end834
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then860

if.end834.if.then860_crit_edge:                   ; preds = %if.end834
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then860

if.end834.do.end1039_crit_edge:                   ; preds = %if.end834
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end1039

land.lhs.true855:                                 ; preds = %if.end834.land.lhs.true855_crit_edge, %if.end834.land.lhs.true855_crit_edge2947, %if.end834.land.lhs.true855_crit_edge2948
  %195 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %s_fs_info, align 16
  %s_flags.i1984 = getelementptr inbounds %struct.ufs_sb_info, ptr %196, i32 0, i32 3
  %197 = ptrtoint ptr %s_flags.i1984 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %s_flags.i1984, align 4
  %and.i1985 = and i32 %198, 1792
  %199 = add nsw i32 %and.i1985, -256
  %200 = lshr exact i32 %199, 8
  %201 = zext i32 %200 to i64
  call void @__sanitizer_cov_trace_switch(i64 %201, ptr @__sancov_gen_cov_switch_values.311)
  switch i32 %200, label %sw.default.i [
    i32 2, label %sw.bb.i
    i32 1, label %land.lhs.true855.sw.bb3.i_crit_edge
    i32 3, label %sw.bb6.i
  ]

land.lhs.true855.sw.bb3.i_crit_edge:              ; preds = %land.lhs.true855
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb3.i

sw.bb.i:                                          ; preds = %land.lhs.true855
  %202 = ptrtoint ptr %fs_postblformat.le.le to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %fs_postblformat.le.le, align 4
  %s_bytesex.i.i = getelementptr inbounds %struct.ufs_sb_info, ptr %196, i32 0, i32 2
  %204 = ptrtoint ptr %s_bytesex.i.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %s_bytesex.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %205)
  %cmp.i.i = icmp eq i32 %205, 0
  %206 = tail call i32 @llvm.bswap.i32(i32 %203) #10
  %retval.0.i.i = select i1 %cmp.i.i, i32 %206, i32 %203
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i.i)
  %cmp.i1986 = icmp eq i32 %retval.0.i.i, -1
  br i1 %cmp.i1986, label %if.then.i, label %sw.bb.i.sw.bb3.i_crit_edge

sw.bb.i.sw.bb3.i_crit_edge:                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb3.i

if.then.i:                                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #12
  %207 = ptrtoint ptr %111 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %111, align 4
  %209 = tail call i32 @llvm.bswap.i32(i32 %208) #10
  %retval.0.i24.i = select i1 %cmp.i.i, i32 %209, i32 %208
  br label %ufs_get_fs_state.exit

sw.bb3.i:                                         ; preds = %sw.bb.i.sw.bb3.i_crit_edge, %land.lhs.true855.sw.bb3.i_crit_edge
  %fs_state4.i = getelementptr inbounds %struct.ufs_super_block_third, ptr %add.ptr.i1949, i32 0, i32 1, i32 0, i32 3
  %210 = ptrtoint ptr %fs_state4.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %fs_state4.i, align 4
  %s_bytesex.i26.i = getelementptr inbounds %struct.ufs_sb_info, ptr %196, i32 0, i32 2
  %212 = ptrtoint ptr %s_bytesex.i26.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %s_bytesex.i26.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %213)
  %cmp.i27.i = icmp eq i32 %213, 0
  %214 = tail call i32 @llvm.bswap.i32(i32 %211) #10
  %retval.0.i28.i = select i1 %cmp.i27.i, i32 %214, i32 %211
  br label %ufs_get_fs_state.exit

sw.bb6.i:                                         ; preds = %land.lhs.true855
  call void @__sanitizer_cov_trace_pc() #12
  %fs_u1.i = getelementptr inbounds %struct.ufs_super_block_first, ptr %111, i32 0, i32 33
  %215 = ptrtoint ptr %fs_u1.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %fs_u1.i, align 4
  %s_bytesex.i30.i = getelementptr inbounds %struct.ufs_sb_info, ptr %196, i32 0, i32 2
  %217 = ptrtoint ptr %s_bytesex.i30.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load i32, ptr %s_bytesex.i30.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %218)
  %cmp.i31.i = icmp eq i32 %218, 0
  %219 = tail call i32 @llvm.bswap.i32(i32 %216) #10
  %retval.0.i32.i = select i1 %cmp.i31.i, i32 %219, i32 %216
  br label %ufs_get_fs_state.exit

sw.default.i:                                     ; preds = %land.lhs.true855
  call void @__sanitizer_cov_trace_pc() #12
  %fs_state11.i = getelementptr inbounds %struct.ufs_super_block_third, ptr %add.ptr.i1949, i32 0, i32 1, i32 0, i32 5, i32 1
  %220 = ptrtoint ptr %fs_state11.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %fs_state11.i, align 4
  %s_bytesex.i34.i = getelementptr inbounds %struct.ufs_sb_info, ptr %196, i32 0, i32 2
  %222 = ptrtoint ptr %s_bytesex.i34.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load i32, ptr %s_bytesex.i34.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %223)
  %cmp.i35.i = icmp eq i32 %223, 0
  %224 = tail call i32 @llvm.bswap.i32(i32 %221) #10
  %retval.0.i36.i = select i1 %cmp.i35.i, i32 %224, i32 %221
  br label %ufs_get_fs_state.exit

ufs_get_fs_state.exit:                            ; preds = %sw.default.i, %sw.bb6.i, %sw.bb3.i, %if.then.i
  %retval.0.i1987 = phi i32 [ %retval.0.i36.i, %sw.default.i ], [ %retval.0.i32.i, %sw.bb6.i ], [ %retval.0.i28.i, %sw.bb3.i ], [ %retval.0.i24.i, %if.then.i ]
  %fs_time = getelementptr inbounds %struct.ufs_super_block_first, ptr %111, i32 0, i32 8
  %225 = ptrtoint ptr %fs_time to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load i32, ptr %fs_time, align 4
  %s_bytesex.i1989 = getelementptr inbounds %struct.ufs_sb_info, ptr %196, i32 0, i32 2
  %227 = ptrtoint ptr %s_bytesex.i1989 to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load i32, ptr %s_bytesex.i1989, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %228)
  %cmp.i1990 = icmp eq i32 %228, 0
  %229 = tail call i32 @llvm.bswap.i32(i32 %226) #10
  %retval.0.i1991 = select i1 %cmp.i1990, i32 %229, i32 %226
  %sub = sub i32 2082905400, %retval.0.i1991
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i1987, i32 %sub)
  %cmp858 = icmp eq i32 %retval.0.i1987, %sub
  br i1 %cmp858, label %ufs_get_fs_state.exit.if.then860_crit_edge, label %ufs_get_fs_state.exit.do.end1039_crit_edge

ufs_get_fs_state.exit.do.end1039_crit_edge:       ; preds = %ufs_get_fs_state.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end1039

ufs_get_fs_state.exit.if.then860_crit_edge:       ; preds = %ufs_get_fs_state.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then860

if.then860:                                       ; preds = %ufs_get_fs_state.exit.if.then860_crit_edge, %if.end834.if.then860_crit_edge, %if.end834.if.then860_crit_edge2946
  %fs_clean = getelementptr inbounds %struct.ufs_super_block_first, ptr %111, i32 0, i32 49
  %230 = ptrtoint ptr %fs_clean to i32
  call void @__asan_load1_noabort(i32 %230)
  %231 = load i8, ptr %fs_clean, align 1
  %conv861 = sext i8 %231 to i32
  %232 = zext i32 %conv861 to i64
  call void @__sanitizer_cov_trace_switch(i64 %232, ptr @__sancov_gen_cov_switch_values.312)
  switch i32 %conv861, label %do.end1029 [
    i32 1, label %do.body863
    i32 2, label %do.body900
    i32 -3, label %do.body937
    i32 3, label %do.body974
    i32 0, label %do.end1013
    i32 -1, label %do.end1021
  ]

do.body863:                                       ; preds = %if.then860
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_fill_super.__UNIQUE_ID_ddebug410, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_fill_super, %do.body881)) #10
          to label %if.then877 [label %do.body881], !srcloc !647

if.then877:                                       ; preds = %do.body863
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_fill_super.__UNIQUE_ID_ddebug410, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.3, i32 noundef 1125, ptr noundef nonnull @.str.9) #10
  br label %do.body881

do.body881:                                       ; preds = %if.then877, %do.body863
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_fill_super.__UNIQUE_ID_ddebug411, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_fill_super, %if.end1044)) #10
          to label %if.then895 [label %if.end1044], !srcloc !647

if.then895:                                       ; preds = %do.body881
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_fill_super.__UNIQUE_ID_ddebug411, ptr noundef nonnull @.str.95) #10
  br label %if.end1044

do.body900:                                       ; preds = %if.then860
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_fill_super.__UNIQUE_ID_ddebug412, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_fill_super, %do.body918)) #10
          to label %if.then914 [label %do.body918], !srcloc !647

if.then914:                                       ; preds = %do.body900
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_fill_super.__UNIQUE_ID_ddebug412, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.3, i32 noundef 1128, ptr noundef nonnull @.str.9) #10
  br label %do.body918

do.body918:                                       ; preds = %if.then914, %do.body900
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_fill_super.__UNIQUE_ID_ddebug413, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_fill_super, %if.end1044)) #10
          to label %if.then932 [label %if.end1044], !srcloc !647

if.then932:                                       ; preds = %do.body918
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_fill_super.__UNIQUE_ID_ddebug413, ptr noundef nonnull @.str.97) #10
  br label %if.end1044

do.body937:                                       ; preds = %if.then860
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_fill_super.__UNIQUE_ID_ddebug414, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_fill_super, %do.body955)) #10
          to label %if.then951 [label %do.body955], !srcloc !647

if.then951:                                       ; preds = %do.body937
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_fill_super.__UNIQUE_ID_ddebug414, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.3, i32 noundef 1131, ptr noundef nonnull @.str.9) #10
  br label %do.body955

do.body955:                                       ; preds = %if.then951, %do.body937
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_fill_super.__UNIQUE_ID_ddebug415, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_fill_super, %if.end1044)) #10
          to label %if.then969 [label %if.end1044], !srcloc !647

if.then969:                                       ; preds = %do.body955
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_fill_super.__UNIQUE_ID_ddebug415, ptr noundef nonnull @.str.99) #10
  br label %if.end1044

do.body974:                                       ; preds = %if.then860
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_fill_super.__UNIQUE_ID_ddebug416, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_fill_super, %do.body992)) #10
          to label %if.then988 [label %do.body992], !srcloc !647

if.then988:                                       ; preds = %do.body974
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_fill_super.__UNIQUE_ID_ddebug416, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.3, i32 noundef 1134, ptr noundef nonnull @.str.9) #10
  br label %do.body992

do.body992:                                       ; preds = %if.then988, %do.body974
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_fill_super.__UNIQUE_ID_ddebug417, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_fill_super, %if.end1044)) #10
          to label %if.then1006 [label %if.end1044], !srcloc !647

if.then1006:                                      ; preds = %do.body992
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_fill_super.__UNIQUE_ID_ddebug417, ptr noundef nonnull @.str.101) #10
  br label %if.end1044

do.end1013:                                       ; preds = %if.then860
  call void @__sanitizer_cov_trace_pc() #12
  %call1015 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.103, ptr noundef nonnull @.str.9) #14
  %s_flags1016 = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 10
  %233 = ptrtoint ptr %s_flags1016 to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load i32, ptr %s_flags1016, align 4
  %or1017 = or i32 %234, 1
  store i32 %or1017, ptr %s_flags1016, align 4
  br label %if.end1044

do.end1021:                                       ; preds = %if.then860
  call void @__sanitizer_cov_trace_pc() #12
  %call1023 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.106, ptr noundef nonnull @.str.9) #14
  %s_flags1024 = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 10
  %235 = ptrtoint ptr %s_flags1024 to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load i32, ptr %s_flags1024, align 4
  %or1025 = or i32 %236, 1
  store i32 %or1025, ptr %s_flags1024, align 4
  br label %if.end1044

do.end1029:                                       ; preds = %if.then860
  call void @__sanitizer_cov_trace_pc() #12
  %call1033 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.109, ptr noundef nonnull @.str.9, i32 noundef %conv861) #14
  %s_flags1034 = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 10
  %237 = ptrtoint ptr %s_flags1034 to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load i32, ptr %s_flags1034, align 4
  %or1035 = or i32 %238, 1
  store i32 %or1035, ptr %s_flags1034, align 4
  br label %if.end1044

do.end1039:                                       ; preds = %ufs_get_fs_state.exit.do.end1039_crit_edge, %if.end834.do.end1039_crit_edge
  %call1041 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.112, ptr noundef nonnull @.str.9) #14
  %s_flags1042 = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 10
  %239 = ptrtoint ptr %s_flags1042 to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load i32, ptr %s_flags1042, align 4
  %or1043 = or i32 %240, 1
  store i32 %or1043, ptr %s_flags1042, align 4
  br label %if.end1044

if.end1044:                                       ; preds = %do.end1039, %do.end1029, %do.end1021, %do.end1013, %if.then1006, %do.body992, %if.then969, %do.body955, %if.then932, %do.body918, %if.then895, %do.body881
  %s_op = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 6
  %241 = ptrtoint ptr %s_op to i32
  call void @__asan_store4_noabort(i32 %241)
  store ptr @ufs_super_ops, ptr %s_op, align 4
  %s_export_op = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 9
  %242 = ptrtoint ptr %s_export_op to i32
  call void @__asan_store4_noabort(i32 %242)
  store ptr @ufs_export_ops, ptr %s_export_op, align 16
  %243 = ptrtoint ptr %fs_magic to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load i32, ptr %fs_magic, align 4
  %245 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %s_fs_info, align 16
  %s_bytesex.i1993 = getelementptr inbounds %struct.ufs_sb_info, ptr %246, i32 0, i32 2
  %247 = ptrtoint ptr %s_bytesex.i1993 to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load i32, ptr %s_bytesex.i1993, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %248)
  %cmp.i1994 = icmp eq i32 %248, 0
  %249 = tail call i32 @llvm.bswap.i32(i32 %244) #10
  %retval.0.i1995 = select i1 %cmp.i1994, i32 %249, i32 %244
  %s_magic = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 12
  %250 = ptrtoint ptr %s_magic to i32
  call void @__asan_store4_noabort(i32 %250)
  store i32 %retval.0.i1995, ptr %s_magic, align 4
  %fs_sblkno = getelementptr inbounds %struct.ufs_super_block_first, ptr %111, i32 0, i32 2
  %251 = ptrtoint ptr %fs_sblkno to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load i32, ptr %fs_sblkno, align 4
  %253 = ptrtoint ptr %s_bytesex.i1993 to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load i32, ptr %s_bytesex.i1993, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %254)
  %cmp.i1998 = icmp eq i32 %254, 0
  %255 = tail call i32 @llvm.bswap.i32(i32 %252) #10
  %retval.0.i1999 = select i1 %cmp.i1998, i32 %255, i32 %252
  %s_sblkno = getelementptr inbounds %struct.ufs_sb_private_info, ptr %call7.i.i1920, i32 0, i32 2
  %256 = ptrtoint ptr %s_sblkno to i32
  call void @__asan_store4_noabort(i32 %256)
  store i32 %retval.0.i1999, ptr %s_sblkno, align 8
  %fs_cblkno = getelementptr inbounds %struct.ufs_super_block_first, ptr %111, i32 0, i32 3
  %257 = ptrtoint ptr %fs_cblkno to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load i32, ptr %fs_cblkno, align 4
  %259 = ptrtoint ptr %s_bytesex.i1993 to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load i32, ptr %s_bytesex.i1993, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %260)
  %cmp.i2002 = icmp eq i32 %260, 0
  %261 = tail call i32 @llvm.bswap.i32(i32 %258) #10
  %retval.0.i2003 = select i1 %cmp.i2002, i32 %261, i32 %258
  %s_cblkno = getelementptr inbounds %struct.ufs_sb_private_info, ptr %call7.i.i1920, i32 0, i32 3
  %262 = ptrtoint ptr %s_cblkno to i32
  call void @__asan_store4_noabort(i32 %262)
  store i32 %retval.0.i2003, ptr %s_cblkno, align 4
  %fs_iblkno = getelementptr inbounds %struct.ufs_super_block_first, ptr %111, i32 0, i32 4
  %263 = ptrtoint ptr %fs_iblkno to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load i32, ptr %fs_iblkno, align 4
  %265 = ptrtoint ptr %s_bytesex.i1993 to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load i32, ptr %s_bytesex.i1993, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %266)
  %cmp.i2006 = icmp eq i32 %266, 0
  %267 = tail call i32 @llvm.bswap.i32(i32 %264) #10
  %retval.0.i2007 = select i1 %cmp.i2006, i32 %267, i32 %264
  %s_iblkno = getelementptr inbounds %struct.ufs_sb_private_info, ptr %call7.i.i1920, i32 0, i32 4
  %268 = ptrtoint ptr %s_iblkno to i32
  call void @__asan_store4_noabort(i32 %268)
  store i32 %retval.0.i2007, ptr %s_iblkno, align 8
  %fs_dblkno = getelementptr inbounds %struct.ufs_super_block_first, ptr %111, i32 0, i32 5
  %269 = ptrtoint ptr %fs_dblkno to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load i32, ptr %fs_dblkno, align 4
  %271 = ptrtoint ptr %s_bytesex.i1993 to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load i32, ptr %s_bytesex.i1993, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %272)
  %cmp.i2010 = icmp eq i32 %272, 0
  %273 = tail call i32 @llvm.bswap.i32(i32 %270) #10
  %retval.0.i2011 = select i1 %cmp.i2010, i32 %273, i32 %270
  %s_dblkno = getelementptr inbounds %struct.ufs_sb_private_info, ptr %call7.i.i1920, i32 0, i32 5
  %274 = ptrtoint ptr %s_dblkno to i32
  call void @__asan_store4_noabort(i32 %274)
  store i32 %retval.0.i2011, ptr %s_dblkno, align 4
  %fs_cgoffset = getelementptr inbounds %struct.ufs_super_block_first, ptr %111, i32 0, i32 6
  %275 = ptrtoint ptr %fs_cgoffset to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load i32, ptr %fs_cgoffset, align 4
  %277 = ptrtoint ptr %s_bytesex.i1993 to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load i32, ptr %s_bytesex.i1993, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %278)
  %cmp.i2014 = icmp eq i32 %278, 0
  %279 = tail call i32 @llvm.bswap.i32(i32 %276) #10
  %retval.0.i2015 = select i1 %cmp.i2014, i32 %279, i32 %276
  %s_cgoffset = getelementptr inbounds %struct.ufs_sb_private_info, ptr %call7.i.i1920, i32 0, i32 6
  %280 = ptrtoint ptr %s_cgoffset to i32
  call void @__asan_store4_noabort(i32 %280)
  store i32 %retval.0.i2015, ptr %s_cgoffset, align 8
  %fs_cgmask = getelementptr inbounds %struct.ufs_super_block_first, ptr %111, i32 0, i32 7
  %281 = ptrtoint ptr %fs_cgmask to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load i32, ptr %fs_cgmask, align 4
  %283 = ptrtoint ptr %s_bytesex.i1993 to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load i32, ptr %s_bytesex.i1993, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %284)
  %cmp.i2018 = icmp eq i32 %284, 0
  %285 = tail call i32 @llvm.bswap.i32(i32 %282) #10
  %retval.0.i2019 = select i1 %cmp.i2018, i32 %285, i32 %282
  %s_cgmask = getelementptr inbounds %struct.ufs_sb_private_info, ptr %call7.i.i1920, i32 0, i32 7
  %286 = ptrtoint ptr %s_cgmask to i32
  call void @__asan_store4_noabort(i32 %286)
  store i32 %retval.0.i2019, ptr %s_cgmask, align 4
  %and1053 = and i32 %flags.2, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1053)
  %cmp1054.not = icmp eq i32 %and1053, 0
  br i1 %cmp1054.not, label %if.else1060, label %if.then1056

if.then1056:                                      ; preds = %if.end1044
  call void @__sanitizer_cov_trace_pc() #12
  %fs_size = getelementptr inbounds %struct.anon.96, ptr %add.ptr.i1949, i32 0, i32 5
  %287 = ptrtoint ptr %fs_size to i32
  call void @__asan_loadN_noabort(i32 %287, i32 8)
  %288 = load i64, ptr %fs_size, align 4
  %289 = ptrtoint ptr %s_bytesex.i1993 to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load i32, ptr %s_bytesex.i1993, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %290)
  %cmp.i2022 = icmp eq i32 %290, 0
  %291 = tail call i64 @llvm.bswap.i64(i64 %288) #10
  %retval.0.i2023 = select i1 %cmp.i2022, i64 %291, i64 %288
  %s_size = getelementptr inbounds %struct.ufs_sb_private_info, ptr %call7.i.i1920, i32 0, i32 8
  %292 = ptrtoint ptr %s_size to i32
  call void @__asan_store8_noabort(i32 %292)
  store i64 %retval.0.i2023, ptr %s_size, align 8
  %fs_dsize = getelementptr inbounds %struct.anon.96, ptr %add.ptr.i1949, i32 0, i32 6
  %293 = ptrtoint ptr %fs_dsize to i32
  call void @__asan_loadN_noabort(i32 %293, i32 8)
  %294 = load i64, ptr %fs_dsize, align 4
  %295 = ptrtoint ptr %s_bytesex.i1993 to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load i32, ptr %s_bytesex.i1993, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %296)
  %cmp.i2026 = icmp eq i32 %296, 0
  %297 = tail call i64 @llvm.bswap.i64(i64 %294) #10
  %retval.0.i2027 = select i1 %cmp.i2026, i64 %297, i64 %294
  br label %if.end1069

if.else1060:                                      ; preds = %if.end1044
  call void @__sanitizer_cov_trace_pc() #12
  %fs_size1061 = getelementptr inbounds %struct.ufs_super_block_first, ptr %111, i32 0, i32 9
  %298 = ptrtoint ptr %fs_size1061 to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load i32, ptr %fs_size1061, align 4
  %300 = ptrtoint ptr %s_bytesex.i1993 to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load i32, ptr %s_bytesex.i1993, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %301)
  %cmp.i2030 = icmp eq i32 %301, 0
  %302 = tail call i32 @llvm.bswap.i32(i32 %299) #10
  %retval.0.i2031 = select i1 %cmp.i2030, i32 %302, i32 %299
  %conv1063 = zext i32 %retval.0.i2031 to i64
  %s_size1064 = getelementptr inbounds %struct.ufs_sb_private_info, ptr %call7.i.i1920, i32 0, i32 8
  %303 = ptrtoint ptr %s_size1064 to i32
  call void @__asan_store8_noabort(i32 %303)
  store i64 %conv1063, ptr %s_size1064, align 8
  %fs_dsize1065 = getelementptr inbounds %struct.ufs_super_block_first, ptr %111, i32 0, i32 10
  %304 = ptrtoint ptr %fs_dsize1065 to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load i32, ptr %fs_dsize1065, align 4
  %306 = ptrtoint ptr %s_bytesex.i1993 to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load i32, ptr %s_bytesex.i1993, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %307)
  %cmp.i2034 = icmp eq i32 %307, 0
  %308 = tail call i32 @llvm.bswap.i32(i32 %305) #10
  %retval.0.i2035 = select i1 %cmp.i2034, i32 %308, i32 %305
  %conv1067 = zext i32 %retval.0.i2035 to i64
  br label %if.end1069

if.end1069:                                       ; preds = %if.else1060, %if.then1056
  %retval.0.i2027.sink = phi i64 [ %conv1067, %if.else1060 ], [ %retval.0.i2027, %if.then1056 ]
  %309 = getelementptr inbounds %struct.ufs_sb_private_info, ptr %call7.i.i1920, i32 0, i32 9
  %310 = ptrtoint ptr %309 to i32
  call void @__asan_store8_noabort(i32 %310)
  store i64 %retval.0.i2027.sink, ptr %309, align 8
  %fs_ncg = getelementptr inbounds %struct.ufs_super_block_first, ptr %111, i32 0, i32 11
  %311 = ptrtoint ptr %fs_ncg to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load i32, ptr %fs_ncg, align 4
  %313 = ptrtoint ptr %s_bytesex.i1993 to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load i32, ptr %s_bytesex.i1993, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %314)
  %cmp.i2038 = icmp eq i32 %314, 0
  %315 = tail call i32 @llvm.bswap.i32(i32 %312) #10
  %retval.0.i2039 = select i1 %cmp.i2038, i32 %315, i32 %312
  %s_ncg = getelementptr inbounds %struct.ufs_sb_private_info, ptr %call7.i.i1920, i32 0, i32 10
  %316 = ptrtoint ptr %s_ncg to i32
  call void @__asan_store4_noabort(i32 %316)
  store i32 %retval.0.i2039, ptr %s_ncg, align 8
  %fs_frag = getelementptr inbounds %struct.ufs_super_block_first, ptr %111, i32 0, i32 14
  %317 = ptrtoint ptr %fs_frag to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load i32, ptr %fs_frag, align 4
  %319 = ptrtoint ptr %s_bytesex.i1993 to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load i32, ptr %s_bytesex.i1993, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %320)
  %cmp.i2042 = icmp eq i32 %320, 0
  %321 = tail call i32 @llvm.bswap.i32(i32 %318) #10
  %retval.0.i2043 = select i1 %cmp.i2042, i32 %321, i32 %318
  %s_fpb = getelementptr inbounds %struct.ufs_sb_private_info, ptr %call7.i.i1920, i32 0, i32 13
  %322 = ptrtoint ptr %s_fpb to i32
  call void @__asan_store4_noabort(i32 %322)
  store i32 %retval.0.i2043, ptr %s_fpb, align 4
  %fs_minfree = getelementptr inbounds %struct.ufs_super_block_first, ptr %111, i32 0, i32 15
  %323 = ptrtoint ptr %fs_minfree to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load i32, ptr %fs_minfree, align 4
  %325 = ptrtoint ptr %s_bytesex.i1993 to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load i32, ptr %s_bytesex.i1993, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %326)
  %cmp.i2046 = icmp eq i32 %326, 0
  %327 = tail call i32 @llvm.bswap.i32(i32 %324) #10
  %retval.0.i2047 = select i1 %cmp.i2046, i32 %327, i32 %324
  %s_minfree = getelementptr inbounds %struct.ufs_sb_private_info, ptr %call7.i.i1920, i32 0, i32 14
  %328 = ptrtoint ptr %s_minfree to i32
  call void @__asan_store4_noabort(i32 %328)
  store i32 %retval.0.i2047, ptr %s_minfree, align 8
  %fs_bmask = getelementptr inbounds %struct.ufs_super_block_first, ptr %111, i32 0, i32 18
  %329 = ptrtoint ptr %fs_bmask to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load i32, ptr %fs_bmask, align 4
  %331 = ptrtoint ptr %s_bytesex.i1993 to i32
  call void @__asan_load4_noabort(i32 %331)
  %332 = load i32, ptr %s_bytesex.i1993, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %332)
  %cmp.i2050 = icmp eq i32 %332, 0
  %333 = tail call i32 @llvm.bswap.i32(i32 %330) #10
  %retval.0.i2051 = select i1 %cmp.i2050, i32 %333, i32 %330
  %s_bmask = getelementptr inbounds %struct.ufs_sb_private_info, ptr %call7.i.i1920, i32 0, i32 15
  %334 = ptrtoint ptr %s_bmask to i32
  call void @__asan_store4_noabort(i32 %334)
  store i32 %retval.0.i2051, ptr %s_bmask, align 4
  %335 = ptrtoint ptr %fs_fmask.le to i32
  call void @__asan_load4_noabort(i32 %335)
  %336 = load i32, ptr %fs_fmask.le, align 4
  %337 = ptrtoint ptr %s_bytesex.i1993 to i32
  call void @__asan_load4_noabort(i32 %337)
  %338 = load i32, ptr %s_bytesex.i1993, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %338)
  %cmp.i2054 = icmp eq i32 %338, 0
  %339 = tail call i32 @llvm.bswap.i32(i32 %336) #10
  %retval.0.i2055 = select i1 %cmp.i2054, i32 %339, i32 %336
  %340 = ptrtoint ptr %s_fmask.i to i32
  call void @__asan_store4_noabort(i32 %340)
  store i32 %retval.0.i2055, ptr %s_fmask.i, align 8
  %fs_bshift = getelementptr inbounds %struct.ufs_super_block_first, ptr %111, i32 0, i32 20
  %341 = ptrtoint ptr %fs_bshift to i32
  call void @__asan_load4_noabort(i32 %341)
  %342 = load i32, ptr %fs_bshift, align 4
  %343 = ptrtoint ptr %s_bytesex.i1993 to i32
  call void @__asan_load4_noabort(i32 %343)
  %344 = load i32, ptr %s_bytesex.i1993, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %344)
  %cmp.i2058 = icmp eq i32 %344, 0
  %345 = tail call i32 @llvm.bswap.i32(i32 %342) #10
  %retval.0.i2059 = select i1 %cmp.i2058, i32 %345, i32 %342
  %s_bshift = getelementptr inbounds %struct.ufs_sb_private_info, ptr %call7.i.i1920, i32 0, i32 17
  %346 = ptrtoint ptr %s_bshift to i32
  call void @__asan_store4_noabort(i32 %346)
  store i32 %retval.0.i2059, ptr %s_bshift, align 4
  %347 = ptrtoint ptr %fs_fshift.le to i32
  call void @__asan_load4_noabort(i32 %347)
  %348 = load i32, ptr %fs_fshift.le, align 4
  %349 = ptrtoint ptr %s_bytesex.i1993 to i32
  call void @__asan_load4_noabort(i32 %349)
  %350 = load i32, ptr %s_bytesex.i1993, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %350)
  %cmp.i2062 = icmp eq i32 %350, 0
  %351 = tail call i32 @llvm.bswap.i32(i32 %348) #10
  %retval.0.i2063 = select i1 %cmp.i2062, i32 %351, i32 %348
  %352 = ptrtoint ptr %s_fshift.i to i32
  call void @__asan_store4_noabort(i32 %352)
  store i32 %retval.0.i2063, ptr %s_fshift.i, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_fill_super.__UNIQUE_ID_ddebug418, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_fill_super, %do.body1099)) #10
          to label %if.then1095 [label %do.body1099], !srcloc !647

if.then1095:                                      ; preds = %if.end1069
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_fill_super.__UNIQUE_ID_ddebug418, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.3, i32 noundef 1188, ptr noundef nonnull @.str.9) #10
  br label %do.body1099

do.body1099:                                      ; preds = %if.then1095, %if.end1069
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_fill_super.__UNIQUE_ID_ddebug419, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_fill_super, %do.end1118)) #10
          to label %if.then1113 [label %do.end1118], !srcloc !647

if.then1113:                                      ; preds = %do.body1099
  call void @__sanitizer_cov_trace_pc() #12
  %353 = ptrtoint ptr %s_bshift to i32
  call void @__asan_load4_noabort(i32 %353)
  %354 = load i32, ptr %s_bshift, align 4
  %355 = ptrtoint ptr %s_fshift.i to i32
  call void @__asan_load4_noabort(i32 %355)
  %356 = load i32, ptr %s_fshift.i, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_fill_super.__UNIQUE_ID_ddebug419, ptr noundef nonnull @.str.115, i32 noundef %354, i32 noundef %356) #10
  br label %do.end1118

do.end1118:                                       ; preds = %if.then1113, %do.body1099
  %fs_fragshift = getelementptr inbounds %struct.ufs_super_block_first, ptr %111, i32 0, i32 24
  %357 = ptrtoint ptr %fs_fragshift to i32
  call void @__asan_load4_noabort(i32 %357)
  %358 = load i32, ptr %fs_fragshift, align 4
  %359 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %359)
  %360 = load ptr, ptr %s_fs_info, align 16
  %s_bytesex.i2065 = getelementptr inbounds %struct.ufs_sb_info, ptr %360, i32 0, i32 2
  %361 = ptrtoint ptr %s_bytesex.i2065 to i32
  call void @__asan_load4_noabort(i32 %361)
  %362 = load i32, ptr %s_bytesex.i2065, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %362)
  %cmp.i2066 = icmp eq i32 %362, 0
  %363 = tail call i32 @llvm.bswap.i32(i32 %358) #10
  %retval.0.i2067 = select i1 %cmp.i2066, i32 %363, i32 %358
  %s_fpbshift = getelementptr inbounds %struct.ufs_sb_private_info, ptr %call7.i.i1920, i32 0, i32 19
  %364 = ptrtoint ptr %s_fpbshift to i32
  call void @__asan_store4_noabort(i32 %364)
  store i32 %retval.0.i2067, ptr %s_fpbshift, align 4
  %fs_fsbtodb = getelementptr inbounds %struct.ufs_super_block_first, ptr %111, i32 0, i32 25
  %365 = ptrtoint ptr %fs_fsbtodb to i32
  call void @__asan_load4_noabort(i32 %365)
  %366 = load i32, ptr %fs_fsbtodb, align 4
  %367 = ptrtoint ptr %s_bytesex.i2065 to i32
  call void @__asan_load4_noabort(i32 %367)
  %368 = load i32, ptr %s_bytesex.i2065, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %368)
  %cmp.i2070 = icmp eq i32 %368, 0
  %369 = tail call i32 @llvm.bswap.i32(i32 %366) #10
  %retval.0.i2071 = select i1 %cmp.i2070, i32 %369, i32 %366
  %s_fsbtodb = getelementptr inbounds %struct.ufs_sb_private_info, ptr %call7.i.i1920, i32 0, i32 20
  %370 = ptrtoint ptr %s_fsbtodb to i32
  call void @__asan_store4_noabort(i32 %370)
  store i32 %retval.0.i2071, ptr %s_fsbtodb, align 8
  %fs_csmask = getelementptr inbounds %struct.ufs_super_block_first, ptr %111, i32 0, i32 27
  %371 = ptrtoint ptr %fs_csmask to i32
  call void @__asan_load4_noabort(i32 %371)
  %372 = load i32, ptr %fs_csmask, align 4
  %373 = ptrtoint ptr %s_bytesex.i2065 to i32
  call void @__asan_load4_noabort(i32 %373)
  %374 = load i32, ptr %s_bytesex.i2065, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %374)
  %cmp.i2074 = icmp eq i32 %374, 0
  %375 = tail call i32 @llvm.bswap.i32(i32 %372) #10
  %retval.0.i2075 = select i1 %cmp.i2074, i32 %375, i32 %372
  %s_csmask = getelementptr inbounds %struct.ufs_sb_private_info, ptr %call7.i.i1920, i32 0, i32 22
  %376 = ptrtoint ptr %s_csmask to i32
  call void @__asan_store4_noabort(i32 %376)
  store i32 %retval.0.i2075, ptr %s_csmask, align 8
  %fs_csshift = getelementptr inbounds %struct.ufs_super_block_first, ptr %111, i32 0, i32 28
  %377 = ptrtoint ptr %fs_csshift to i32
  call void @__asan_load4_noabort(i32 %377)
  %378 = load i32, ptr %fs_csshift, align 4
  %379 = ptrtoint ptr %s_bytesex.i2065 to i32
  call void @__asan_load4_noabort(i32 %379)
  %380 = load i32, ptr %s_bytesex.i2065, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %380)
  %cmp.i2078 = icmp eq i32 %380, 0
  %381 = tail call i32 @llvm.bswap.i32(i32 %378) #10
  %retval.0.i2079 = select i1 %cmp.i2078, i32 %381, i32 %378
  %s_csshift = getelementptr inbounds %struct.ufs_sb_private_info, ptr %call7.i.i1920, i32 0, i32 23
  %382 = ptrtoint ptr %s_csshift to i32
  call void @__asan_store4_noabort(i32 %382)
  store i32 %retval.0.i2079, ptr %s_csshift, align 4
  %fs_nindir = getelementptr inbounds %struct.ufs_super_block_first, ptr %111, i32 0, i32 29
  %383 = ptrtoint ptr %fs_nindir to i32
  call void @__asan_load4_noabort(i32 %383)
  %384 = load i32, ptr %fs_nindir, align 4
  %385 = ptrtoint ptr %s_bytesex.i2065 to i32
  call void @__asan_load4_noabort(i32 %385)
  %386 = load i32, ptr %s_bytesex.i2065, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %386)
  %cmp.i2082 = icmp eq i32 %386, 0
  %387 = tail call i32 @llvm.bswap.i32(i32 %384) #10
  %retval.0.i2083 = select i1 %cmp.i2082, i32 %387, i32 %384
  %s_nindir = getelementptr inbounds %struct.ufs_sb_private_info, ptr %call7.i.i1920, i32 0, i32 24
  %388 = ptrtoint ptr %s_nindir to i32
  call void @__asan_store4_noabort(i32 %388)
  store i32 %retval.0.i2083, ptr %s_nindir, align 8
  %fs_inopb = getelementptr inbounds %struct.ufs_super_block_first, ptr %111, i32 0, i32 30
  %389 = ptrtoint ptr %fs_inopb to i32
  call void @__asan_load4_noabort(i32 %389)
  %390 = load i32, ptr %fs_inopb, align 4
  %391 = ptrtoint ptr %s_bytesex.i2065 to i32
  call void @__asan_load4_noabort(i32 %391)
  %392 = load i32, ptr %s_bytesex.i2065, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %392)
  %cmp.i2086 = icmp eq i32 %392, 0
  %393 = tail call i32 @llvm.bswap.i32(i32 %390) #10
  %retval.0.i2087 = select i1 %cmp.i2086, i32 %393, i32 %390
  %s_inopb = getelementptr inbounds %struct.ufs_sb_private_info, ptr %call7.i.i1920, i32 0, i32 25
  %394 = ptrtoint ptr %s_inopb to i32
  call void @__asan_store4_noabort(i32 %394)
  store i32 %retval.0.i2087, ptr %s_inopb, align 4
  %fs_nspf = getelementptr inbounds %struct.ufs_super_block_first, ptr %111, i32 0, i32 31
  %395 = ptrtoint ptr %fs_nspf to i32
  call void @__asan_load4_noabort(i32 %395)
  %396 = load i32, ptr %fs_nspf, align 4
  %397 = ptrtoint ptr %s_bytesex.i2065 to i32
  call void @__asan_load4_noabort(i32 %397)
  %398 = load i32, ptr %s_bytesex.i2065, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %398)
  %cmp.i2090 = icmp eq i32 %398, 0
  %399 = tail call i32 @llvm.bswap.i32(i32 %396) #10
  %retval.0.i2091 = select i1 %cmp.i2090, i32 %399, i32 %396
  %s_nspf = getelementptr inbounds %struct.ufs_sb_private_info, ptr %call7.i.i1920, i32 0, i32 26
  %400 = ptrtoint ptr %s_nspf to i32
  call void @__asan_store4_noabort(i32 %400)
  store i32 %retval.0.i2091, ptr %s_nspf, align 8
  %s_flags.i2093 = getelementptr inbounds %struct.ufs_sb_info, ptr %360, i32 0, i32 3
  %401 = ptrtoint ptr %s_flags.i2093 to i32
  call void @__asan_load4_noabort(i32 %401)
  %402 = load i32, ptr %s_flags.i2093, align 4
  %and.i2094 = and i32 %402, 1792
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %and.i2094)
  %cmp.i2095 = icmp eq i32 %and.i2094, 1024
  %fs_u1.i2096 = getelementptr inbounds %struct.ufs_super_block_first, ptr %111, i32 0, i32 33
  %fs_npsect.i = getelementptr inbounds %struct.ufs_super_block_third, ptr %add.ptr.i1949, i32 0, i32 1, i32 0, i32 3
  %fs_u1.sink.i = select i1 %cmp.i2095, ptr %fs_npsect.i, ptr %fs_u1.i2096
  %403 = ptrtoint ptr %fs_u1.sink.i to i32
  call void @__asan_load4_noabort(i32 %403)
  %404 = load i32, ptr %fs_u1.sink.i, align 4
  %405 = ptrtoint ptr %s_bytesex.i2065 to i32
  call void @__asan_load4_noabort(i32 %405)
  %406 = load i32, ptr %s_bytesex.i2065, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %406)
  %cmp.i8.i = icmp eq i32 %406, 0
  %407 = tail call i32 @llvm.bswap.i32(i32 %404) #10
  %retval.0.i9.i = select i1 %cmp.i8.i, i32 %407, i32 %404
  %s_npsect = getelementptr inbounds %struct.ufs_sb_private_info, ptr %call7.i.i1920, i32 0, i32 27
  %408 = ptrtoint ptr %s_npsect to i32
  call void @__asan_store4_noabort(i32 %408)
  store i32 %retval.0.i9.i, ptr %s_npsect, align 4
  %fs_interleave = getelementptr inbounds %struct.ufs_super_block_first, ptr %111, i32 0, i32 34
  %409 = ptrtoint ptr %fs_interleave to i32
  call void @__asan_load4_noabort(i32 %409)
  %410 = load i32, ptr %fs_interleave, align 4
  %411 = ptrtoint ptr %s_bytesex.i2065 to i32
  call void @__asan_load4_noabort(i32 %411)
  %412 = load i32, ptr %s_bytesex.i2065, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %412)
  %cmp.i2099 = icmp eq i32 %412, 0
  %413 = tail call i32 @llvm.bswap.i32(i32 %410) #10
  %retval.0.i2100 = select i1 %cmp.i2099, i32 %413, i32 %410
  %s_interleave = getelementptr inbounds %struct.ufs_sb_private_info, ptr %call7.i.i1920, i32 0, i32 28
  %414 = ptrtoint ptr %s_interleave to i32
  call void @__asan_store4_noabort(i32 %414)
  store i32 %retval.0.i2100, ptr %s_interleave, align 8
  %fs_trackskew = getelementptr inbounds %struct.ufs_super_block_first, ptr %111, i32 0, i32 35
  %415 = ptrtoint ptr %fs_trackskew to i32
  call void @__asan_load4_noabort(i32 %415)
  %416 = load i32, ptr %fs_trackskew, align 4
  %417 = ptrtoint ptr %s_bytesex.i2065 to i32
  call void @__asan_load4_noabort(i32 %417)
  %418 = load i32, ptr %s_bytesex.i2065, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %418)
  %cmp.i2103 = icmp eq i32 %418, 0
  %419 = tail call i32 @llvm.bswap.i32(i32 %416) #10
  %retval.0.i2104 = select i1 %cmp.i2103, i32 %419, i32 %416
  %s_trackskew = getelementptr inbounds %struct.ufs_sb_private_info, ptr %call7.i.i1920, i32 0, i32 29
  %420 = ptrtoint ptr %s_trackskew to i32
  call void @__asan_store4_noabort(i32 %420)
  store i32 %retval.0.i2104, ptr %s_trackskew, align 4
  %421 = ptrtoint ptr %fs_magic673 to i32
  call void @__asan_load4_noabort(i32 %421)
  %422 = load i32, ptr %fs_magic673, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 424935705, i32 %422)
  %cmp1130 = icmp eq i32 %422, 424935705
  br i1 %cmp1130, label %if.then1132, label %if.else1135

if.then1132:                                      ; preds = %do.end1118
  call void @__sanitizer_cov_trace_pc() #12
  %fs_csaddr = getelementptr inbounds %struct.anon.96, ptr %add.ptr.i1949, i32 0, i32 7
  %423 = ptrtoint ptr %fs_csaddr to i32
  call void @__asan_loadN_noabort(i32 %423, i32 8)
  %424 = load i64, ptr %fs_csaddr, align 4
  %425 = ptrtoint ptr %s_bytesex.i2065 to i32
  call void @__asan_load4_noabort(i32 %425)
  %426 = load i32, ptr %s_bytesex.i2065, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %426)
  %cmp.i2107 = icmp eq i32 %426, 0
  %427 = tail call i64 @llvm.bswap.i64(i64 %424) #10
  %retval.0.i2108 = select i1 %cmp.i2107, i64 %427, i64 %424
  br label %if.end1140

if.else1135:                                      ; preds = %do.end1118
  call void @__sanitizer_cov_trace_pc() #12
  %fs_csaddr1136 = getelementptr inbounds %struct.ufs_super_block_first, ptr %111, i32 0, i32 37
  %428 = ptrtoint ptr %fs_csaddr1136 to i32
  call void @__asan_load4_noabort(i32 %428)
  %429 = load i32, ptr %fs_csaddr1136, align 4
  %430 = ptrtoint ptr %s_bytesex.i2065 to i32
  call void @__asan_load4_noabort(i32 %430)
  %431 = load i32, ptr %s_bytesex.i2065, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %431)
  %cmp.i2111 = icmp eq i32 %431, 0
  %432 = tail call i32 @llvm.bswap.i32(i32 %429) #10
  %retval.0.i2112 = select i1 %cmp.i2111, i32 %432, i32 %429
  %conv1138 = zext i32 %retval.0.i2112 to i64
  br label %if.end1140

if.end1140:                                       ; preds = %if.else1135, %if.then1132
  %conv1138.sink = phi i64 [ %retval.0.i2108, %if.then1132 ], [ %conv1138, %if.else1135 ]
  %433 = getelementptr inbounds %struct.ufs_sb_private_info, ptr %call7.i.i1920, i32 0, i32 30
  %434 = ptrtoint ptr %433 to i32
  call void @__asan_store8_noabort(i32 %434)
  store i64 %conv1138.sink, ptr %433, align 8
  %fs_cssize = getelementptr inbounds %struct.ufs_super_block_first, ptr %111, i32 0, i32 38
  %435 = ptrtoint ptr %fs_cssize to i32
  call void @__asan_load4_noabort(i32 %435)
  %436 = load i32, ptr %fs_cssize, align 4
  %437 = ptrtoint ptr %s_bytesex.i2065 to i32
  call void @__asan_load4_noabort(i32 %437)
  %438 = load i32, ptr %s_bytesex.i2065, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %438)
  %cmp.i2115 = icmp eq i32 %438, 0
  %439 = tail call i32 @llvm.bswap.i32(i32 %436) #10
  %retval.0.i2116 = select i1 %cmp.i2115, i32 %439, i32 %436
  %s_cssize = getelementptr inbounds %struct.ufs_sb_private_info, ptr %call7.i.i1920, i32 0, i32 31
  %440 = ptrtoint ptr %s_cssize to i32
  call void @__asan_store4_noabort(i32 %440)
  store i32 %retval.0.i2116, ptr %s_cssize, align 8
  %fs_cgsize = getelementptr inbounds %struct.ufs_super_block_first, ptr %111, i32 0, i32 39
  %441 = ptrtoint ptr %fs_cgsize to i32
  call void @__asan_load4_noabort(i32 %441)
  %442 = load i32, ptr %fs_cgsize, align 4
  %443 = ptrtoint ptr %s_bytesex.i2065 to i32
  call void @__asan_load4_noabort(i32 %443)
  %444 = load i32, ptr %s_bytesex.i2065, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %444)
  %cmp.i2119 = icmp eq i32 %444, 0
  %445 = tail call i32 @llvm.bswap.i32(i32 %442) #10
  %retval.0.i2120 = select i1 %cmp.i2119, i32 %445, i32 %442
  %s_cgsize = getelementptr inbounds %struct.ufs_sb_private_info, ptr %call7.i.i1920, i32 0, i32 32
  %446 = ptrtoint ptr %s_cgsize to i32
  call void @__asan_store4_noabort(i32 %446)
  store i32 %retval.0.i2120, ptr %s_cgsize, align 4
  %fs_ntrak = getelementptr inbounds %struct.ufs_super_block_first, ptr %111, i32 0, i32 40
  %447 = ptrtoint ptr %fs_ntrak to i32
  call void @__asan_load4_noabort(i32 %447)
  %448 = load i32, ptr %fs_ntrak, align 4
  %449 = ptrtoint ptr %s_bytesex.i2065 to i32
  call void @__asan_load4_noabort(i32 %449)
  %450 = load i32, ptr %s_bytesex.i2065, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %450)
  %cmp.i2123 = icmp eq i32 %450, 0
  %451 = tail call i32 @llvm.bswap.i32(i32 %448) #10
  %retval.0.i2124 = select i1 %cmp.i2123, i32 %451, i32 %448
  %s_ntrak = getelementptr inbounds %struct.ufs_sb_private_info, ptr %call7.i.i1920, i32 0, i32 33
  %452 = ptrtoint ptr %s_ntrak to i32
  call void @__asan_store4_noabort(i32 %452)
  store i32 %retval.0.i2124, ptr %s_ntrak, align 8
  %fs_nsect = getelementptr inbounds %struct.ufs_super_block_first, ptr %111, i32 0, i32 41
  %453 = ptrtoint ptr %fs_nsect to i32
  call void @__asan_load4_noabort(i32 %453)
  %454 = load i32, ptr %fs_nsect, align 4
  %455 = ptrtoint ptr %s_bytesex.i2065 to i32
  call void @__asan_load4_noabort(i32 %455)
  %456 = load i32, ptr %s_bytesex.i2065, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %456)
  %cmp.i2127 = icmp eq i32 %456, 0
  %457 = tail call i32 @llvm.bswap.i32(i32 %454) #10
  %retval.0.i2128 = select i1 %cmp.i2127, i32 %457, i32 %454
  %s_nsect = getelementptr inbounds %struct.ufs_sb_private_info, ptr %call7.i.i1920, i32 0, i32 34
  %458 = ptrtoint ptr %s_nsect to i32
  call void @__asan_store4_noabort(i32 %458)
  store i32 %retval.0.i2128, ptr %s_nsect, align 4
  %fs_spc = getelementptr inbounds %struct.ufs_super_block_first, ptr %111, i32 0, i32 42
  %459 = ptrtoint ptr %fs_spc to i32
  call void @__asan_load4_noabort(i32 %459)
  %460 = load i32, ptr %fs_spc, align 4
  %461 = ptrtoint ptr %s_bytesex.i2065 to i32
  call void @__asan_load4_noabort(i32 %461)
  %462 = load i32, ptr %s_bytesex.i2065, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %462)
  %cmp.i2131 = icmp eq i32 %462, 0
  %463 = tail call i32 @llvm.bswap.i32(i32 %460) #10
  %retval.0.i2132 = select i1 %cmp.i2131, i32 %463, i32 %460
  %s_spc = getelementptr inbounds %struct.ufs_sb_private_info, ptr %call7.i.i1920, i32 0, i32 35
  %464 = ptrtoint ptr %s_spc to i32
  call void @__asan_store4_noabort(i32 %464)
  store i32 %retval.0.i2132, ptr %s_spc, align 8
  %fs_ipg = getelementptr inbounds %struct.ufs_super_block_first, ptr %111, i32 0, i32 45
  %465 = ptrtoint ptr %fs_ipg to i32
  call void @__asan_load4_noabort(i32 %465)
  %466 = load i32, ptr %fs_ipg, align 4
  %467 = ptrtoint ptr %s_bytesex.i2065 to i32
  call void @__asan_load4_noabort(i32 %467)
  %468 = load i32, ptr %s_bytesex.i2065, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %468)
  %cmp.i2135 = icmp eq i32 %468, 0
  %469 = tail call i32 @llvm.bswap.i32(i32 %466) #10
  %retval.0.i2136 = select i1 %cmp.i2135, i32 %469, i32 %466
  %s_ipg = getelementptr inbounds %struct.ufs_sb_private_info, ptr %call7.i.i1920, i32 0, i32 36
  %470 = ptrtoint ptr %s_ipg to i32
  call void @__asan_store4_noabort(i32 %470)
  store i32 %retval.0.i2136, ptr %s_ipg, align 4
  %fs_fpg = getelementptr inbounds %struct.ufs_super_block_first, ptr %111, i32 0, i32 46
  %471 = ptrtoint ptr %fs_fpg to i32
  call void @__asan_load4_noabort(i32 %471)
  %472 = load i32, ptr %fs_fpg, align 4
  %473 = ptrtoint ptr %s_bytesex.i2065 to i32
  call void @__asan_load4_noabort(i32 %473)
  %474 = load i32, ptr %s_bytesex.i2065, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %474)
  %cmp.i2139 = icmp eq i32 %474, 0
  %475 = tail call i32 @llvm.bswap.i32(i32 %472) #10
  %retval.0.i2140 = select i1 %cmp.i2139, i32 %475, i32 %472
  %s_fpg = getelementptr inbounds %struct.ufs_sb_private_info, ptr %call7.i.i1920, i32 0, i32 37
  %476 = ptrtoint ptr %s_fpg to i32
  call void @__asan_store4_noabort(i32 %476)
  store i32 %retval.0.i2140, ptr %s_fpg, align 8
  %fs_cpc = getelementptr inbounds %struct.anon.92, ptr %add.ptr.i.le.le, i32 0, i32 4
  %477 = ptrtoint ptr %fs_cpc to i32
  call void @__asan_load4_noabort(i32 %477)
  %478 = load i32, ptr %fs_cpc, align 8
  %479 = ptrtoint ptr %s_bytesex.i2065 to i32
  call void @__asan_load4_noabort(i32 %479)
  %480 = load i32, ptr %s_bytesex.i2065, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %480)
  %cmp.i2143 = icmp eq i32 %480, 0
  %481 = tail call i32 @llvm.bswap.i32(i32 %478) #10
  %retval.0.i2144 = select i1 %cmp.i2143, i32 %481, i32 %478
  %s_cpc = getelementptr inbounds %struct.ufs_sb_private_info, ptr %call7.i.i1920, i32 0, i32 38
  %482 = ptrtoint ptr %s_cpc to i32
  call void @__asan_store4_noabort(i32 %482)
  store i32 %retval.0.i2144, ptr %s_cpc, align 4
  %fs_contigsumsize = getelementptr inbounds %struct.ufs_super_block_third, ptr %add.ptr.i1949, i32 0, i32 1, i32 0, i32 0, i32 50
  %483 = ptrtoint ptr %fs_contigsumsize to i32
  call void @__asan_load4_noabort(i32 %483)
  %484 = load i32, ptr %fs_contigsumsize, align 4
  %485 = ptrtoint ptr %s_bytesex.i2065 to i32
  call void @__asan_load4_noabort(i32 %485)
  %486 = load i32, ptr %s_bytesex.i2065, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %486)
  %cmp.i2147 = icmp eq i32 %486, 0
  %487 = tail call i32 @llvm.bswap.i32(i32 %484) #10
  %retval.0.i2148 = select i1 %cmp.i2147, i32 %487, i32 %484
  %s_contigsumsize = getelementptr inbounds %struct.ufs_sb_private_info, ptr %call7.i.i1920, i32 0, i32 39
  %488 = ptrtoint ptr %s_contigsumsize to i32
  call void @__asan_store4_noabort(i32 %488)
  store i32 %retval.0.i2148, ptr %s_contigsumsize, align 8
  %489 = ptrtoint ptr %s_flags.i2093 to i32
  call void @__asan_load4_noabort(i32 %489)
  %490 = load i32, ptr %s_flags.i2093, align 4
  %and.i2151 = and i32 %490, 1792
  %491 = add nsw i32 %and.i2151, -256
  %492 = lshr exact i32 %491, 8
  %493 = zext i32 %492 to i64
  call void @__sanitizer_cov_trace_switch(i64 %493, ptr @__sancov_gen_cov_switch_values.313)
  switch i32 %492, label %if.end1140.ufs_get_fs_qbmask.exit_crit_edge [
    i32 2, label %if.end1140.sw.bb.i2152_crit_edge
    i32 1, label %if.end1140.sw.bb.i2152_crit_edge2949
    i32 3, label %sw.bb6.i2153
    i32 0, label %sw.bb15.i
  ]

if.end1140.sw.bb.i2152_crit_edge2949:             ; preds = %if.end1140
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i2152

if.end1140.sw.bb.i2152_crit_edge:                 ; preds = %if.end1140
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i2152

if.end1140.ufs_get_fs_qbmask.exit_crit_edge:      ; preds = %if.end1140
  call void @__sanitizer_cov_trace_pc() #12
  br label %ufs_get_fs_qbmask.exit

sw.bb.i2152:                                      ; preds = %if.end1140.sw.bb.i2152_crit_edge, %if.end1140.sw.bb.i2152_crit_edge2949
  %fs_qbmask.i = getelementptr inbounds %struct.ufs_super_block_third, ptr %add.ptr.i1949, i32 0, i32 1, i32 0, i32 4
  %arrayidx4.i = getelementptr %struct.ufs_super_block_third, ptr %add.ptr.i1949, i32 0, i32 1, i32 0, i32 4, i32 1
  br label %sw.epilog.sink.split.i

sw.bb6.i2153:                                     ; preds = %if.end1140
  call void @__sanitizer_cov_trace_pc() #12
  %fs_qbmask8.i = getelementptr inbounds %struct.ufs_super_block_third, ptr %add.ptr.i1949, i32 0, i32 1, i32 0, i32 4
  %arrayidx13.i = getelementptr %struct.ufs_super_block_third, ptr %add.ptr.i1949, i32 0, i32 1, i32 0, i32 4, i32 1
  br label %sw.epilog.sink.split.i

sw.bb15.i:                                        ; preds = %if.end1140
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx22.i = getelementptr %struct.ufs_super_block_third, ptr %add.ptr.i1949, i32 0, i32 1, i32 0, i32 4
  br label %sw.epilog.sink.split.i

sw.epilog.sink.split.i:                           ; preds = %sw.bb15.i, %sw.bb6.i2153, %sw.bb.i2152
  %arrayidx22.sink.i = phi ptr [ %arrayidx22.i, %sw.bb15.i ], [ %arrayidx13.i, %sw.bb6.i2153 ], [ %arrayidx4.i, %sw.bb.i2152 ]
  %tmp.sroa.0.0.ph.in.i = phi ptr [ %fs_npsect.i, %sw.bb15.i ], [ %fs_qbmask8.i, %sw.bb6.i2153 ], [ %fs_qbmask.i, %sw.bb.i2152 ]
  %494 = ptrtoint ptr %tmp.sroa.0.0.ph.in.i to i32
  call void @__asan_load4_noabort(i32 %494)
  %tmp.sroa.0.0.ph.i = load i32, ptr %tmp.sroa.0.0.ph.in.i, align 4
  %495 = ptrtoint ptr %arrayidx22.sink.i to i32
  call void @__asan_load4_noabort(i32 %495)
  %496 = load i32, ptr %arrayidx22.sink.i, align 4
  br label %ufs_get_fs_qbmask.exit

ufs_get_fs_qbmask.exit:                           ; preds = %sw.epilog.sink.split.i, %if.end1140.ufs_get_fs_qbmask.exit_crit_edge
  %tmp.sroa.7.0.i = phi i32 [ -1, %if.end1140.ufs_get_fs_qbmask.exit_crit_edge ], [ %496, %sw.epilog.sink.split.i ]
  %tmp.sroa.0.0.i = phi i32 [ -1, %if.end1140.ufs_get_fs_qbmask.exit_crit_edge ], [ %tmp.sroa.0.0.ph.i, %sw.epilog.sink.split.i ]
  %tmp.sroa.7.0.insert.ext.i = zext i32 %tmp.sroa.7.0.i to i64
  %tmp.sroa.0.0.insert.ext.i = zext i32 %tmp.sroa.0.0.i to i64
  %tmp.sroa.0.0.insert.shift.i = shl nuw i64 %tmp.sroa.0.0.insert.ext.i, 32
  %tmp.sroa.0.0.insert.insert.i = or i64 %tmp.sroa.0.0.insert.shift.i, %tmp.sroa.7.0.insert.ext.i
  %497 = ptrtoint ptr %s_bytesex.i2065 to i32
  call void @__asan_load4_noabort(i32 %497)
  %498 = load i32, ptr %s_bytesex.i2065, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %498)
  %cmp.i.i2155 = icmp eq i32 %498, 0
  %499 = tail call i64 @llvm.bswap.i64(i64 %tmp.sroa.0.0.insert.insert.i) #10
  %retval.0.i.i2156 = select i1 %cmp.i.i2155, i64 %499, i64 %tmp.sroa.0.0.insert.insert.i
  %s_qbmask = getelementptr inbounds %struct.ufs_sb_private_info, ptr %call7.i.i1920, i32 0, i32 40
  %500 = ptrtoint ptr %s_qbmask to i32
  call void @__asan_store8_noabort(i32 %500)
  store i64 %retval.0.i.i2156, ptr %s_qbmask, align 8
  %501 = ptrtoint ptr %s_flags.i2093 to i32
  call void @__asan_load4_noabort(i32 %501)
  %502 = load i32, ptr %s_flags.i2093, align 4
  %and.i2159 = and i32 %502, 1792
  %503 = add nsw i32 %and.i2159, -256
  %504 = lshr exact i32 %503, 8
  %505 = zext i32 %504 to i64
  call void @__sanitizer_cov_trace_switch(i64 %505, ptr @__sancov_gen_cov_switch_values.314)
  switch i32 %504, label %ufs_get_fs_qbmask.exit.ufs_get_fs_qfmask.exit_crit_edge [
    i32 2, label %ufs_get_fs_qbmask.exit.sw.bb.i2161_crit_edge
    i32 1, label %ufs_get_fs_qbmask.exit.sw.bb.i2161_crit_edge2950
    i32 3, label %sw.bb6.i2163
    i32 0, label %sw.bb15.i2165
  ]

ufs_get_fs_qbmask.exit.sw.bb.i2161_crit_edge2950: ; preds = %ufs_get_fs_qbmask.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i2161

ufs_get_fs_qbmask.exit.sw.bb.i2161_crit_edge:     ; preds = %ufs_get_fs_qbmask.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i2161

ufs_get_fs_qbmask.exit.ufs_get_fs_qfmask.exit_crit_edge: ; preds = %ufs_get_fs_qbmask.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %ufs_get_fs_qfmask.exit

sw.bb.i2161:                                      ; preds = %ufs_get_fs_qbmask.exit.sw.bb.i2161_crit_edge, %ufs_get_fs_qbmask.exit.sw.bb.i2161_crit_edge2950
  %fs_qfmask.i = getelementptr inbounds %struct.ufs_super_block_third, ptr %add.ptr.i1949, i32 0, i32 1, i32 0, i32 5
  %arrayidx4.i2160 = getelementptr %struct.ufs_super_block_third, ptr %add.ptr.i1949, i32 0, i32 1, i32 0, i32 5, i32 1
  br label %sw.epilog.sink.split.i2169

sw.bb6.i2163:                                     ; preds = %ufs_get_fs_qbmask.exit
  call void @__sanitizer_cov_trace_pc() #12
  %fs_qfmask8.i = getelementptr inbounds %struct.ufs_super_block_third, ptr %add.ptr.i1949, i32 0, i32 1, i32 0, i32 5
  %arrayidx13.i2162 = getelementptr %struct.ufs_super_block_third, ptr %add.ptr.i1949, i32 0, i32 1, i32 0, i32 5, i32 1
  br label %sw.epilog.sink.split.i2169

sw.bb15.i2165:                                    ; preds = %ufs_get_fs_qbmask.exit
  call void @__sanitizer_cov_trace_pc() #12
  %fs_qfmask17.i = getelementptr inbounds %struct.ufs_super_block_third, ptr %add.ptr.i1949, i32 0, i32 1, i32 0, i32 4, i32 1
  %arrayidx22.i2164 = getelementptr %struct.ufs_super_block_third, ptr %add.ptr.i1949, i32 0, i32 1, i32 0, i32 5
  br label %sw.epilog.sink.split.i2169

sw.epilog.sink.split.i2169:                       ; preds = %sw.bb15.i2165, %sw.bb6.i2163, %sw.bb.i2161
  %arrayidx22.sink.i2166 = phi ptr [ %arrayidx22.i2164, %sw.bb15.i2165 ], [ %arrayidx13.i2162, %sw.bb6.i2163 ], [ %arrayidx4.i2160, %sw.bb.i2161 ]
  %tmp.sroa.0.0.ph.in.i2167 = phi ptr [ %fs_qfmask17.i, %sw.bb15.i2165 ], [ %fs_qfmask8.i, %sw.bb6.i2163 ], [ %fs_qfmask.i, %sw.bb.i2161 ]
  %506 = ptrtoint ptr %tmp.sroa.0.0.ph.in.i2167 to i32
  call void @__asan_load4_noabort(i32 %506)
  %tmp.sroa.0.0.ph.i2168 = load i32, ptr %tmp.sroa.0.0.ph.in.i2167, align 4
  %507 = ptrtoint ptr %arrayidx22.sink.i2166 to i32
  call void @__asan_load4_noabort(i32 %507)
  %508 = load i32, ptr %arrayidx22.sink.i2166, align 4
  br label %ufs_get_fs_qfmask.exit

ufs_get_fs_qfmask.exit:                           ; preds = %sw.epilog.sink.split.i2169, %ufs_get_fs_qbmask.exit.ufs_get_fs_qfmask.exit_crit_edge
  %tmp.sroa.7.0.i2170 = phi i32 [ -1, %ufs_get_fs_qbmask.exit.ufs_get_fs_qfmask.exit_crit_edge ], [ %508, %sw.epilog.sink.split.i2169 ]
  %tmp.sroa.0.0.i2171 = phi i32 [ -1, %ufs_get_fs_qbmask.exit.ufs_get_fs_qfmask.exit_crit_edge ], [ %tmp.sroa.0.0.ph.i2168, %sw.epilog.sink.split.i2169 ]
  %tmp.sroa.7.0.insert.ext.i2172 = zext i32 %tmp.sroa.7.0.i2170 to i64
  %tmp.sroa.0.0.insert.ext.i2173 = zext i32 %tmp.sroa.0.0.i2171 to i64
  %tmp.sroa.0.0.insert.shift.i2174 = shl nuw i64 %tmp.sroa.0.0.insert.ext.i2173, 32
  %tmp.sroa.0.0.insert.insert.i2175 = or i64 %tmp.sroa.0.0.insert.shift.i2174, %tmp.sroa.7.0.insert.ext.i2172
  %509 = ptrtoint ptr %s_bytesex.i2065 to i32
  call void @__asan_load4_noabort(i32 %509)
  %510 = load i32, ptr %s_bytesex.i2065, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %510)
  %cmp.i.i2177 = icmp eq i32 %510, 0
  %511 = tail call i64 @llvm.bswap.i64(i64 %tmp.sroa.0.0.insert.insert.i2175) #10
  %retval.0.i.i2178 = select i1 %cmp.i.i2177, i64 %511, i64 %tmp.sroa.0.0.insert.insert.i2175
  %s_qfmask = getelementptr inbounds %struct.ufs_sb_private_info, ptr %call7.i.i1920, i32 0, i32 41
  %512 = ptrtoint ptr %s_qfmask to i32
  call void @__asan_store8_noabort(i32 %512)
  store i64 %retval.0.i.i2178, ptr %s_qfmask, align 8
  %fs_nrpos = getelementptr inbounds %struct.ufs_super_block_third, ptr %add.ptr.i1949, i32 0, i32 3
  %513 = ptrtoint ptr %fs_nrpos to i32
  call void @__asan_load4_noabort(i32 %513)
  %514 = load i32, ptr %fs_nrpos, align 4
  %515 = ptrtoint ptr %s_bytesex.i2065 to i32
  call void @__asan_load4_noabort(i32 %515)
  %516 = load i32, ptr %s_bytesex.i2065, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %516)
  %cmp.i2181 = icmp eq i32 %516, 0
  %517 = tail call i32 @llvm.bswap.i32(i32 %514) #10
  %retval.0.i2182 = select i1 %cmp.i2181, i32 %517, i32 %514
  %s_nrpos = getelementptr inbounds %struct.ufs_sb_private_info, ptr %call7.i.i1920, i32 0, i32 43
  %518 = ptrtoint ptr %s_nrpos to i32
  call void @__asan_store4_noabort(i32 %518)
  store i32 %retval.0.i2182, ptr %s_nrpos, align 4
  %fs_postbloff = getelementptr inbounds %struct.ufs_super_block_third, ptr %add.ptr.i1949, i32 0, i32 4
  %519 = ptrtoint ptr %fs_postbloff to i32
  call void @__asan_load4_noabort(i32 %519)
  %520 = load i32, ptr %fs_postbloff, align 4
  %521 = ptrtoint ptr %s_bytesex.i2065 to i32
  call void @__asan_load4_noabort(i32 %521)
  %522 = load i32, ptr %s_bytesex.i2065, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %522)
  %cmp.i2185 = icmp eq i32 %522, 0
  %523 = tail call i32 @llvm.bswap.i32(i32 %520) #10
  %retval.0.i2186 = select i1 %cmp.i2185, i32 %523, i32 %520
  %s_postbloff = getelementptr inbounds %struct.ufs_sb_private_info, ptr %call7.i.i1920, i32 0, i32 44
  %524 = ptrtoint ptr %s_postbloff to i32
  call void @__asan_store4_noabort(i32 %524)
  store i32 %retval.0.i2186, ptr %s_postbloff, align 8
  %fs_rotbloff = getelementptr inbounds %struct.ufs_super_block_third, ptr %add.ptr.i1949, i32 0, i32 5
  %525 = ptrtoint ptr %fs_rotbloff to i32
  call void @__asan_load4_noabort(i32 %525)
  %526 = load i32, ptr %fs_rotbloff, align 4
  %527 = ptrtoint ptr %s_bytesex.i2065 to i32
  call void @__asan_load4_noabort(i32 %527)
  %528 = load i32, ptr %s_bytesex.i2065, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %528)
  %cmp.i2189 = icmp eq i32 %528, 0
  %529 = tail call i32 @llvm.bswap.i32(i32 %526) #10
  %retval.0.i2190 = select i1 %cmp.i2189, i32 %529, i32 %526
  %s_rotbloff = getelementptr inbounds %struct.ufs_sb_private_info, ptr %call7.i.i1920, i32 0, i32 45
  %530 = ptrtoint ptr %s_rotbloff to i32
  call void @__asan_store4_noabort(i32 %530)
  store i32 %retval.0.i2190, ptr %s_rotbloff, align 4
  %531 = ptrtoint ptr %309 to i32
  call void @__asan_load8_noabort(i32 %531)
  %532 = load i64, ptr %309, align 8
  %533 = ptrtoint ptr %s_minfree to i32
  call void @__asan_load4_noabort(i32 %533)
  %534 = load i32, ptr %s_minfree, align 8
  %u.sroa.0.0.extract.shift.i = lshr i64 %532, 32
  %conv.i.i = and i64 %532, 4294967295
  %conv1.i.i = zext i32 %534 to i64
  %mul.i.i = mul nuw i64 %conv.i.i, %conv1.i.i
  %rl.sroa.0.0.extract.shift.i = lshr i64 %mul.i.i, 32
  %mul.i5.i = mul nuw i64 %u.sroa.0.0.extract.shift.i, %conv1.i.i
  %add.i = add nuw i64 %rl.sroa.0.0.extract.shift.i, %mul.i5.i
  %conv19.i = trunc i64 %add.i to i32
  %535 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -6640827866535438582, i64 %add.i, i32 0) #17, !srcloc !649
  %asmresult.i.i = extractvalue { i64, i32 } %535, 0
  %asmresult4.i.i = extractvalue { i64, i32 } %535, 1
  %536 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -6640827866535438582, i64 %add.i, i64 %asmresult.i.i, i32 %asmresult4.i.i) #17, !srcloc !650
  %asmresult10.i.i = extractvalue { i64, i32 } %536, 0
  %div1651.i = lshr i64 %asmresult10.i.i, 6
  %rh.sroa.8.0.extract.trunc23.i = trunc i64 %div1651.i to i32
  %mul167.neg.i = mul i32 %rh.sroa.8.0.extract.trunc23.i, -100
  %sub168.i = add i32 %mul167.neg.i, %conv19.i
  %rl.sroa.11.0.insert.ext38.i = and i64 %mul.i.i, 4294967295
  %rl.sroa.0.0.insert.ext26.i = zext i32 %sub168.i to i64
  %rl.sroa.0.0.insert.shift27.i = shl nuw i64 %rl.sroa.0.0.insert.ext26.i, 32
  %rl.sroa.0.0.insert.insert29.i = or i64 %rl.sroa.0.0.insert.shift27.i, %rl.sroa.11.0.insert.ext38.i
  %537 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -6640827866535438582, i64 %rl.sroa.0.0.insert.insert29.i, i32 0) #17, !srcloc !649
  %asmresult.i6.i = extractvalue { i64, i32 } %537, 0
  %asmresult4.i7.i = extractvalue { i64, i32 } %537, 1
  %538 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -6640827866535438582, i64 %rl.sroa.0.0.insert.insert29.i, i64 %asmresult.i6.i, i32 %asmresult4.i7.i) #17, !srcloc !650
  %asmresult10.i8.i = extractvalue { i64, i32 } %538, 0
  %storemerge.i = lshr i64 %asmresult10.i8.i, 6
  %rl.sroa.11.0.insert.ext42.i = and i64 %storemerge.i, 4294967295
  %rl.sroa.0.0.insert.ext31.i = shl i64 %div1651.i, 32
  %rl.sroa.0.0.insert.insert34.i = or i64 %rl.sroa.11.0.insert.ext42.i, %rl.sroa.0.0.insert.ext31.i
  %s_root_blocks = getelementptr inbounds %struct.ufs_sb_private_info, ptr %call7.i.i1920, i32 0, i32 64
  %539 = ptrtoint ptr %s_root_blocks to i32
  call void @__asan_store8_noabort(i32 %539)
  store i64 %rl.sroa.0.0.insert.insert34.i, ptr %s_root_blocks, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %534)
  %cmp1159 = icmp ult i32 %534, 6
  br i1 %cmp1159, label %if.then1161, label %if.else1163

if.then1161:                                      ; preds = %ufs_get_fs_qfmask.exit
  call void @__sanitizer_cov_trace_pc() #12
  %s_time_to_space = getelementptr inbounds %struct.ufs_sb_private_info, ptr %call7.i.i1920, i32 0, i32 65
  %540 = ptrtoint ptr %s_time_to_space to i32
  call void @__asan_store8_noabort(i32 %540)
  store i64 -1, ptr %s_time_to_space, align 8
  %s_space_to_time = getelementptr inbounds %struct.ufs_sb_private_info, ptr %call7.i.i1920, i32 0, i32 66
  %541 = ptrtoint ptr %s_space_to_time to i32
  call void @__asan_store8_noabort(i32 %541)
  store i64 0, ptr %s_space_to_time, align 8
  %542 = ptrtoint ptr %s_bytesex.i2065 to i32
  call void @__asan_load4_noabort(i32 %542)
  %543 = load i32, ptr %s_bytesex.i2065, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %543)
  %cmp.i2193 = icmp eq i32 %543, 0
  %retval.0.i2194 = select i1 %cmp.i2193, i32 16777216, i32 1
  %fs_optim = getelementptr inbounds %struct.ufs_super_block_first, ptr %111, i32 0, i32 32
  %544 = ptrtoint ptr %fs_optim to i32
  call void @__asan_store4_noabort(i32 %544)
  store i32 %retval.0.i2194, ptr %fs_optim, align 4
  br label %if.end1174

if.else1163:                                      ; preds = %ufs_get_fs_qfmask.exit
  call void @__sanitizer_cov_trace_pc() #12
  %div11651795 = lshr i64 %rl.sroa.0.0.insert.insert34.i, 1
  %add1166 = add nuw i64 %div11651795, 1
  %s_time_to_space1167 = getelementptr inbounds %struct.ufs_sb_private_info, ptr %call7.i.i1920, i32 0, i32 65
  %545 = ptrtoint ptr %s_time_to_space1167 to i32
  call void @__asan_store8_noabort(i32 %545)
  store i64 %add1166, ptr %s_time_to_space1167, align 8
  %sub1170 = add i32 %534, -2
  %conv1.i.i2197 = zext i32 %sub1170 to i64
  %mul.i.i2198 = mul nuw i64 %conv.i.i, %conv1.i.i2197
  %rl.sroa.0.0.extract.shift.i2199 = lshr i64 %mul.i.i2198, 32
  %mul.i5.i2200 = mul nuw i64 %u.sroa.0.0.extract.shift.i, %conv1.i.i2197
  %add.i2201 = add nuw i64 %rl.sroa.0.0.extract.shift.i2199, %mul.i5.i2200
  %conv19.i2202 = trunc i64 %add.i2201 to i32
  %546 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -6640827866535438582, i64 %add.i2201, i32 0) #17, !srcloc !649
  %asmresult.i.i2203 = extractvalue { i64, i32 } %546, 0
  %asmresult4.i.i2204 = extractvalue { i64, i32 } %546, 1
  %547 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -6640827866535438582, i64 %add.i2201, i64 %asmresult.i.i2203, i32 %asmresult4.i.i2204) #17, !srcloc !650
  %asmresult10.i.i2205 = extractvalue { i64, i32 } %547, 0
  %div1651.i2206 = lshr i64 %asmresult10.i.i2205, 6
  %rh.sroa.8.0.extract.trunc23.i2207 = trunc i64 %div1651.i2206 to i32
  %mul167.neg.i2208 = mul i32 %rh.sroa.8.0.extract.trunc23.i2207, -100
  %sub168.i2209 = add i32 %mul167.neg.i2208, %conv19.i2202
  %rl.sroa.11.0.insert.ext38.i2210 = and i64 %mul.i.i2198, 4294967295
  %rl.sroa.0.0.insert.ext26.i2211 = zext i32 %sub168.i2209 to i64
  %rl.sroa.0.0.insert.shift27.i2212 = shl nuw i64 %rl.sroa.0.0.insert.ext26.i2211, 32
  %rl.sroa.0.0.insert.insert29.i2213 = or i64 %rl.sroa.0.0.insert.shift27.i2212, %rl.sroa.11.0.insert.ext38.i2210
  %548 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -6640827866535438582, i64 %rl.sroa.0.0.insert.insert29.i2213, i32 0) #17, !srcloc !649
  %asmresult.i6.i2214 = extractvalue { i64, i32 } %548, 0
  %asmresult4.i7.i2215 = extractvalue { i64, i32 } %548, 1
  %549 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -6640827866535438582, i64 %rl.sroa.0.0.insert.insert29.i2213, i64 %asmresult.i6.i2214, i32 %asmresult4.i7.i2215) #17, !srcloc !650
  %asmresult10.i8.i2216 = extractvalue { i64, i32 } %549, 0
  %storemerge.i2217 = lshr i64 %asmresult10.i8.i2216, 6
  %rl.sroa.11.0.insert.ext42.i2218 = and i64 %storemerge.i2217, 4294967295
  %rl.sroa.0.0.insert.ext31.i2219 = shl i64 %div1651.i2206, 32
  %rl.sroa.0.0.insert.insert34.i2220 = add i64 %rl.sroa.0.0.insert.ext31.i2219, -1
  %sub1172 = add i64 %rl.sroa.0.0.insert.insert34.i2220, %rl.sroa.11.0.insert.ext42.i2218
  %s_space_to_time1173 = getelementptr inbounds %struct.ufs_sb_private_info, ptr %call7.i.i1920, i32 0, i32 66
  %550 = ptrtoint ptr %s_space_to_time1173 to i32
  call void @__asan_store8_noabort(i32 %550)
  store i64 %sub1172, ptr %s_space_to_time1173, align 8
  br label %if.end1174

if.end1174:                                       ; preds = %if.else1163, %if.then1161
  %551 = ptrtoint ptr %s_fpb to i32
  call void @__asan_load4_noabort(i32 %551)
  %552 = load i32, ptr %s_fpb, align 4
  %sub1176 = add i32 %552, -1
  %s_fpbmask = getelementptr inbounds %struct.ufs_sb_private_info, ptr %call7.i.i1920, i32 0, i32 46
  %553 = ptrtoint ptr %s_fpbmask to i32
  call void @__asan_store4_noabort(i32 %553)
  store i32 %sub1176, ptr %s_fpbmask, align 8
  %554 = ptrtoint ptr %s_bshift to i32
  call void @__asan_load4_noabort(i32 %554)
  %555 = load i32, ptr %s_bshift, align 4
  %.2640 = select i1 %cmp1054.not, i32 -2, i32 -3
  %sub1185 = add i32 %555, %.2640
  %556 = getelementptr inbounds %struct.ufs_sb_private_info, ptr %call7.i.i1920, i32 0, i32 51
  %557 = ptrtoint ptr %556 to i32
  call void @__asan_store4_noabort(i32 %557)
  store i32 %sub1185, ptr %556, align 4
  %mul = shl i32 %sub1185, 1
  %s_2apbshift = getelementptr inbounds %struct.ufs_sb_private_info, ptr %call7.i.i1920, i32 0, i32 52
  %558 = ptrtoint ptr %s_2apbshift to i32
  call void @__asan_store4_noabort(i32 %558)
  store i32 %mul, ptr %s_2apbshift, align 8
  %mul1190 = mul i32 %sub1185, 3
  %s_3apbshift = getelementptr inbounds %struct.ufs_sb_private_info, ptr %call7.i.i1920, i32 0, i32 53
  %559 = ptrtoint ptr %s_3apbshift to i32
  call void @__asan_store4_noabort(i32 %559)
  store i32 %mul1190, ptr %s_3apbshift, align 4
  %shl = shl nuw i32 1, %sub1185
  %s_apb = getelementptr inbounds %struct.ufs_sb_private_info, ptr %call7.i.i1920, i32 0, i32 47
  %560 = ptrtoint ptr %s_apb to i32
  call void @__asan_store4_noabort(i32 %560)
  store i32 %shl, ptr %s_apb, align 4
  %shl1193 = shl nuw i32 1, %mul
  %s_2apb = getelementptr inbounds %struct.ufs_sb_private_info, ptr %call7.i.i1920, i32 0, i32 48
  %561 = ptrtoint ptr %s_2apb to i32
  call void @__asan_store4_noabort(i32 %561)
  store i32 %shl1193, ptr %s_2apb, align 8
  %shl1195 = shl nuw i32 1, %mul1190
  %s_3apb = getelementptr inbounds %struct.ufs_sb_private_info, ptr %call7.i.i1920, i32 0, i32 49
  %562 = ptrtoint ptr %s_3apb to i32
  call void @__asan_store4_noabort(i32 %562)
  store i32 %shl1195, ptr %s_3apb, align 4
  %sub1197 = add i32 %shl, -1
  %s_apbmask = getelementptr inbounds %struct.ufs_sb_private_info, ptr %call7.i.i1920, i32 0, i32 50
  %563 = ptrtoint ptr %s_apbmask to i32
  call void @__asan_store4_noabort(i32 %563)
  store i32 %sub1197, ptr %s_apbmask, align 8
  %564 = ptrtoint ptr %s_fshift.i to i32
  call void @__asan_load4_noabort(i32 %564)
  %565 = load i32, ptr %s_fshift.i, align 8
  %sub1199 = add i32 %565, -9
  %s_nspfshift = getelementptr inbounds %struct.ufs_sb_private_info, ptr %call7.i.i1920, i32 0, i32 54
  %566 = ptrtoint ptr %s_nspfshift to i32
  call void @__asan_store4_noabort(i32 %566)
  store i32 %sub1199, ptr %s_nspfshift, align 8
  %567 = ptrtoint ptr %s_nspf to i32
  call void @__asan_load4_noabort(i32 %567)
  %568 = load i32, ptr %s_nspf, align 8
  %569 = ptrtoint ptr %s_fpbshift to i32
  call void @__asan_load4_noabort(i32 %569)
  %570 = load i32, ptr %s_fpbshift, align 4
  %shl1202 = shl i32 %568, %570
  %s_nspb = getelementptr inbounds %struct.ufs_sb_private_info, ptr %call7.i.i1920, i32 0, i32 55
  %571 = ptrtoint ptr %s_nspb to i32
  call void @__asan_store4_noabort(i32 %571)
  store i32 %shl1202, ptr %s_nspb, align 4
  %572 = ptrtoint ptr %s_inopb to i32
  call void @__asan_load4_noabort(i32 %572)
  %573 = load i32, ptr %s_inopb, align 4
  %shr = lshr i32 %573, %570
  %s_inopf = getelementptr inbounds %struct.ufs_sb_private_info, ptr %call7.i.i1920, i32 0, i32 56
  %574 = ptrtoint ptr %s_inopf to i32
  call void @__asan_store4_noabort(i32 %574)
  store i32 %shr, ptr %s_inopf, align 8
  %575 = ptrtoint ptr %s_fsize713 to i32
  call void @__asan_load4_noabort(i32 %575)
  %576 = load i32, ptr %s_fsize713, align 8
  %shl1206 = shl i32 %576, 3
  %s_bpf = getelementptr inbounds %struct.ufs_sb_private_info, ptr %call7.i.i1920, i32 0, i32 58
  %577 = ptrtoint ptr %s_bpf to i32
  call void @__asan_store4_noabort(i32 %577)
  store i32 %shl1206, ptr %s_bpf, align 8
  %add1208 = add i32 %565, 3
  %s_bpfshift = getelementptr inbounds %struct.ufs_sb_private_info, ptr %call7.i.i1920, i32 0, i32 59
  %578 = ptrtoint ptr %s_bpfshift to i32
  call void @__asan_store4_noabort(i32 %578)
  store i32 %add1208, ptr %s_bpfshift, align 4
  %sub1210 = add i32 %shl1206, -1
  %s_bpfmask = getelementptr inbounds %struct.ufs_sb_private_info, ptr %call7.i.i1920, i32 0, i32 60
  %579 = ptrtoint ptr %s_bpfmask to i32
  call void @__asan_store4_noabort(i32 %579)
  store i32 %sub1210, ptr %s_bpfmask, align 8
  %580 = ptrtoint ptr %s_mount_opt to i32
  call void @__asan_load4_noabort(i32 %580)
  %581 = load i32, ptr %s_mount_opt, align 8
  %582 = trunc i32 %581 to i16
  %trunc2287 = and i16 %582, -16
  %583 = zext i16 %trunc2287 to i64
  call void @__sanitizer_cov_trace_switch(i64 %583, ptr @__sancov_gen_cov_switch_values.315)
  switch i16 %trunc2287, label %if.end1174.if.end1224_crit_edge [
    i16 32, label %if.end1174.if.then1220_crit_edge
    i16 4096, label %if.end1174.if.then1220_crit_edge2951
  ]

if.end1174.if.then1220_crit_edge2951:             ; preds = %if.end1174
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then1220

if.end1174.if.then1220_crit_edge:                 ; preds = %if.end1174
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then1220

if.end1174.if.end1224_crit_edge:                  ; preds = %if.end1174
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end1224

if.then1220:                                      ; preds = %if.end1174.if.then1220_crit_edge, %if.end1174.if.then1220_crit_edge2951
  %fs_maxsymlinklen = getelementptr inbounds %struct.ufs_super_block_third, ptr %add.ptr.i1949, i32 0, i32 1, i32 0, i32 0, i32 51
  %584 = ptrtoint ptr %fs_maxsymlinklen to i32
  call void @__asan_load4_noabort(i32 %584)
  %585 = load i32, ptr %fs_maxsymlinklen, align 4
  %586 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %586)
  %587 = load ptr, ptr %s_fs_info, align 16
  %s_bytesex.i2222 = getelementptr inbounds %struct.ufs_sb_info, ptr %587, i32 0, i32 2
  %588 = ptrtoint ptr %s_bytesex.i2222 to i32
  call void @__asan_load4_noabort(i32 %588)
  %589 = load i32, ptr %s_bytesex.i2222, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %589)
  %cmp.i2223 = icmp eq i32 %589, 0
  %590 = tail call i32 @llvm.bswap.i32(i32 %585) #10
  %retval.0.i2224 = select i1 %cmp.i2223, i32 %590, i32 %585
  %s_maxsymlinklen1223 = getelementptr inbounds %struct.ufs_sb_private_info, ptr %call7.i.i1920, i32 0, i32 61
  %591 = ptrtoint ptr %s_maxsymlinklen1223 to i32
  call void @__asan_store4_noabort(i32 %591)
  store i32 %retval.0.i2224, ptr %s_maxsymlinklen1223, align 4
  br label %if.end1224

if.end1224:                                       ; preds = %if.then1220, %if.end1174.if.end1224_crit_edge
  %592 = ptrtoint ptr %fs_magic673 to i32
  call void @__asan_load4_noabort(i32 %592)
  %593 = load i32, ptr %fs_magic673, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 424935705, i32 %593)
  %cmp1226 = icmp eq i32 %593, 424935705
  %. = select i1 %cmp1226, i32 120, i32 60
  %s_maxsymlinklen1231 = getelementptr inbounds %struct.ufs_sb_private_info, ptr %call7.i.i1920, i32 0, i32 61
  %594 = ptrtoint ptr %s_maxsymlinklen1231 to i32
  call void @__asan_load4_noabort(i32 %594)
  %595 = load i32, ptr %s_maxsymlinklen1231, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %595, i32 %.)
  %cmp1232 = icmp ugt i32 %595, %.
  br i1 %cmp1232, label %if.then1234, label %if.end1224.if.end1237_crit_edge

if.end1224.if.end1237_crit_edge:                  ; preds = %if.end1224
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end1237

if.then1234:                                      ; preds = %if.end1224
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ptr, ...) @ufs_warning(ptr noundef %sb, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.116, i32 noundef %595)
  %596 = ptrtoint ptr %s_maxsymlinklen1231 to i32
  call void @__asan_store4_noabort(i32 %596)
  store i32 %., ptr %s_maxsymlinklen1231, align 4
  br label %if.end1237

if.end1237:                                       ; preds = %if.then1234, %if.end1224.if.end1237_crit_edge
  %597 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %597)
  %598 = load ptr, ptr %s_fs_info, align 16
  %599 = ptrtoint ptr %598 to i32
  call void @__asan_load4_noabort(i32 %599)
  %600 = load ptr, ptr %598, align 4
  %s_apbshift.i = getelementptr inbounds %struct.ufs_sb_private_info, ptr %600, i32 0, i32 51
  %601 = ptrtoint ptr %s_apbshift.i to i32
  call void @__asan_load4_noabort(i32 %601)
  %602 = load i32, ptr %s_apbshift.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 21, i32 %602)
  %cmp.i2226 = icmp sgt i32 %602, 21
  br i1 %cmp.i2226, label %if.end1237.ufs_max_bytes.exit_crit_edge, label %if.else.i

if.end1237.ufs_max_bytes.exit_crit_edge:          ; preds = %if.end1237
  call void @__sanitizer_cov_trace_pc() #12
  br label %ufs_max_bytes.exit

if.else.i:                                        ; preds = %if.end1237
  call void @__sanitizer_cov_trace_pc() #12
  %sh_prom.i = zext i32 %602 to i64
  %shl.i = shl nuw i64 1, %sh_prom.i
  %add.i2227 = add nuw i64 %shl.i, 12
  %mul.i = shl i32 %602, 1
  %sh_prom1.i = zext i32 %mul.i to i64
  %shl2.i = shl nuw i64 1, %sh_prom1.i
  %add3.i = add i64 %add.i2227, %shl2.i
  %mul4.i = mul i32 %602, 3
  %sh_prom5.i = zext i32 %mul4.i to i64
  %shl6.i = shl nuw i64 1, %sh_prom5.i
  %add7.i = add i64 %add3.i, %shl6.i
  br label %ufs_max_bytes.exit

ufs_max_bytes.exit:                               ; preds = %if.else.i, %if.end1237.ufs_max_bytes.exit_crit_edge
  %res.0.i = phi i64 [ %add7.i, %if.else.i ], [ -1, %if.end1237.ufs_max_bytes.exit_crit_edge ]
  %s_bshift.i = getelementptr inbounds %struct.ufs_sb_private_info, ptr %600, i32 0, i32 17
  %603 = ptrtoint ptr %s_bshift.i to i32
  call void @__asan_load4_noabort(i32 %603)
  %604 = load i32, ptr %s_bshift.i, align 4
  %sh_prom8.i = zext i32 %604 to i64
  %shr.i2228 = lshr i64 17592186040320, %sh_prom8.i
  call void @__sanitizer_cov_trace_cmp8(i64 %res.0.i, i64 %shr.i2228)
  %cmp9.not.i = icmp ult i64 %res.0.i, %shr.i2228
  %shl14.i = shl i64 %res.0.i, %sh_prom8.i
  %retval.0.i2229 = select i1 %cmp9.not.i, i64 %shl14.i, i64 17592186040320
  %605 = ptrtoint ptr %s_maxbytes to i32
  call void @__asan_store8_noabort(i32 %605)
  store i64 %retval.0.i2229, ptr %s_maxbytes, align 8
  %s_max_links = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 41
  %606 = ptrtoint ptr %s_max_links to i32
  call void @__asan_store4_noabort(i32 %606)
  store i32 32000, ptr %s_max_links, align 128
  %call1240 = tail call ptr @ufs_iget(ptr noundef %sb, i32 noundef 2) #10
  %cmp.i2230 = icmp ugt ptr %call1240, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i2230, label %if.then1242, label %if.end1244

if.then1242:                                      ; preds = %ufs_max_bytes.exit
  call void @__sanitizer_cov_trace_pc() #12
  %607 = ptrtoint ptr %call1240 to i32
  br label %if.then1294

if.end1244:                                       ; preds = %ufs_max_bytes.exit
  %call1245 = tail call ptr @d_make_root(ptr noundef %call1240) #10
  %s_root = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 13
  %608 = ptrtoint ptr %s_root to i32
  call void @__asan_store4_noabort(i32 %608)
  store ptr %call1245, ptr %s_root, align 64
  %tobool1247.not = icmp eq ptr %call1245, null
  br i1 %tobool1247.not, label %if.end1244.if.then1294_crit_edge, label %if.end1249

if.end1244.if.then1294_crit_edge:                 ; preds = %if.end1244
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then1294

if.end1249:                                       ; preds = %if.end1244
  tail call fastcc void @ufs_setup_cstotal(ptr noundef %sb)
  %s_flags.i2231 = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 10
  %609 = ptrtoint ptr %s_flags.i2231 to i32
  call void @__asan_load4_noabort(i32 %609)
  %610 = load i32, ptr %s_flags.i2231, align 4
  %and.i2232 = and i32 %610, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i2232)
  %tobool.i2233.not = icmp eq i32 %and.i2232, 0
  br i1 %tobool.i2233.not, label %if.then1251, label %if.end1249.do.body1257_crit_edge

if.end1249.do.body1257_crit_edge:                 ; preds = %if.end1249
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body1257

if.then1251:                                      ; preds = %if.end1249
  %call1252 = tail call fastcc i32 @ufs_read_cylinder_structures(ptr noundef %sb)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1252)
  %tobool1253.not = icmp eq i32 %call1252, 0
  br i1 %tobool1253.not, label %if.then1251.if.then1294_crit_edge, label %if.then1251.do.body1257_crit_edge

if.then1251.do.body1257_crit_edge:                ; preds = %if.then1251
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body1257

if.then1251.if.then1294_crit_edge:                ; preds = %if.then1251
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then1294

do.body1257:                                      ; preds = %if.then1251.do.body1257_crit_edge, %if.end1249.do.body1257_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_fill_super.__UNIQUE_ID_ddebug420, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_fill_super, %do.body1275)) #10
          to label %if.then1271 [label %do.body1275], !srcloc !647

if.then1271:                                      ; preds = %do.body1257
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_fill_super.__UNIQUE_ID_ddebug420, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.3, i32 noundef 1290, ptr noundef nonnull @.str.9) #10
  br label %do.body1275

do.body1275:                                      ; preds = %if.then1271, %do.body1257
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_fill_super.__UNIQUE_ID_ddebug421, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_fill_super, %cleanup)) #10
          to label %if.then1289 [label %cleanup], !srcloc !647

if.then1289:                                      ; preds = %do.body1275
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_fill_super.__UNIQUE_ID_ddebug421, ptr noundef nonnull @.str.118) #10
  br label %cleanup

if.then1294:                                      ; preds = %if.then1251.if.then1294_crit_edge, %if.end1244.if.then1294_crit_edge, %if.then1242, %do.end781, %do.end768, %do.end757, %do.end747, %do.end736, %do.end725, %do.end707, %if.end702.if.then1294_crit_edge, %do.end667, %if.then662.if.then1294_crit_edge
  %ret.0.ph = phi i32 [ -12, %if.end1244.if.then1294_crit_edge ], [ -22, %do.end725 ], [ -22, %do.end757 ], [ -22, %if.then1251.if.then1294_crit_edge ], [ %607, %if.then1242 ], [ -22, %do.end781 ], [ -22, %do.end768 ], [ -22, %do.end747 ], [ -22, %do.end736 ], [ -22, %do.end707 ], [ -22, %if.end702.if.then1294_crit_edge ], [ -22, %do.end667 ], [ -22, %if.then662.if.then1294_crit_edge ]
  tail call void @ubh_brelse_uspi(ptr noundef %call7.i.i1920) #10
  br label %if.end1295

if.end1295:                                       ; preds = %if.then1294, %if.end634.if.end1295_crit_edge, %do.end631, %do.end622, %sw.default.if.end1295_crit_edge, %if.end115.if.end1295_crit_edge, %do.end98
  %uspi.02279 = phi ptr [ %call7.i.i1920, %if.then1294 ], [ %call7.i.i1920, %sw.default.if.end1295_crit_edge ], [ %call7.i.i1920, %do.end622 ], [ %call7.i.i1920, %do.end631 ], [ null, %if.end115.if.end1295_crit_edge ], [ null, %do.end98 ], [ %call7.i.i1920, %if.end634.if.end1295_crit_edge ]
  %ret.02277 = phi i32 [ %ret.0.ph, %if.then1294 ], [ -22, %sw.default.if.end1295_crit_edge ], [ -22, %do.end622 ], [ -22, %do.end631 ], [ -22, %if.end115.if.end1295_crit_edge ], [ -22, %do.end98 ], [ -22, %if.end634.if.end1295_crit_edge ]
  tail call void @kfree(ptr noundef %uspi.02279) #10
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #10
  %611 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_store4_noabort(i32 %611)
  store ptr null, ptr %s_fs_info, align 16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_fill_super.__UNIQUE_ID_ddebug422, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_fill_super, %do.body1315)) #10
          to label %if.then1311 [label %do.body1315], !srcloc !647

if.then1311:                                      ; preds = %if.end1295
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_fill_super.__UNIQUE_ID_ddebug422, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.3, i32 noundef 1299, ptr noundef nonnull @.str.9) #10
  br label %do.body1315

do.body1315:                                      ; preds = %if.then1311, %if.end1295
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_fill_super.__UNIQUE_ID_ddebug423, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_fill_super, %cleanup)) #10
          to label %if.then1329 [label %cleanup], !srcloc !647

if.then1329:                                      ; preds = %do.body1315
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_fill_super.__UNIQUE_ID_ddebug423, ptr noundef nonnull @.str.120) #10
  br label %cleanup

do.body1333:                                      ; preds = %do.end21
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_fill_super.__UNIQUE_ID_ddebug424, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_fill_super, %do.body1351)) #10
          to label %if.then1347 [label %do.body1351], !srcloc !647

if.then1347:                                      ; preds = %do.body1333
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_fill_super.__UNIQUE_ID_ddebug424, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.3, i32 noundef 1303, ptr noundef nonnull @.str.9) #10
  br label %do.body1351

do.body1351:                                      ; preds = %if.then1347, %do.body1333
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_fill_super.__UNIQUE_ID_ddebug425, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_fill_super, %cleanup)) #10
          to label %if.then1365 [label %cleanup], !srcloc !647

if.then1365:                                      ; preds = %do.body1351
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_fill_super.__UNIQUE_ID_ddebug425, ptr noundef nonnull @.str.122) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then1365, %do.body1351, %if.then1329, %do.body1315, %if.then1289, %do.body1275
  %retval.0 = phi i32 [ 0, %if.then1289 ], [ %ret.02277, %if.then1329 ], [ -12, %if.then1365 ], [ 0, %do.body1275 ], [ %ret.02277, %do.body1315 ], [ -12, %do.body1351 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @delayed_sync_fs(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %work_lock = getelementptr i8, ptr %work, i32 100
  tail call void @_raw_spin_lock(ptr noundef %work_lock) #10
  %work_queued = getelementptr i8, ptr %work, i32 -4
  %0 = ptrtoint ptr %work_queued to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %work_queued, align 4
  tail call void @_raw_spin_unlock(ptr noundef %work_lock) #10
  %sb = getelementptr i8, ptr %work, i32 -8
  %1 = ptrtoint ptr %sb to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %sb, align 4
  %call = tail call i32 @ufs_sync_fs(ptr noundef %2, i32 noundef 1)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ufs_parse_options(ptr noundef %options, ptr noundef %mount_options) unnamed_addr #0 align 64 {
entry:
  %options.addr = alloca ptr, align 4
  %args = alloca [3 x %struct.substring_t], align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %options.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %options, ptr %options.addr, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_parse_options.__UNIQUE_ID_ddebug354, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_parse_options, %do.body4)) #10
          to label %if.then [label %do.body4], !srcloc !647

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_parse_options.__UNIQUE_ID_ddebug354, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.3, i32 noundef 386, ptr noundef nonnull @.str.125) #10
  br label %do.body4

do.body4:                                         ; preds = %if.then, %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_parse_options.__UNIQUE_ID_ddebug355, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_parse_options, %do.end21)) #10
          to label %if.then18 [label %do.end21], !srcloc !647

if.then18:                                        ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_parse_options.__UNIQUE_ID_ddebug355, ptr noundef nonnull @.str.13) #10
  br label %do.end21

do.end21:                                         ; preds = %if.then18, %do.body4
  %1 = ptrtoint ptr %options.addr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %options.addr, align 4
  %tobool22.not = icmp eq ptr %2, null
  br i1 %tobool22.not, label %do.end21.cleanup80_crit_edge, label %while.cond.preheader

do.end21.cleanup80_crit_edge:                     ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup80

while.cond.preheader:                             ; preds = %do.end21
  %call25117 = call ptr @strsep(ptr noundef nonnull %options.addr, ptr noundef nonnull @.str.126) #10
  %cmp.not118 = icmp eq ptr %call25117, null
  br i1 %cmp.not118, label %while.cond.preheader.cleanup80_crit_edge, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond.preheader.cleanup80_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup80

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %call25119 = phi ptr [ %call25, %cleanup.while.body_crit_edge ], [ %call25117, %while.cond.preheader.while.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %args) #10
  %3 = call ptr @memset(ptr %args, i32 255, i32 24)
  %4 = ptrtoint ptr %call25119 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %call25119, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool26.not = icmp eq i8 %5, 0
  br i1 %tobool26.not, label %while.body.cleanup_crit_edge, label %if.end28

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end28:                                         ; preds = %while.body
  %call29 = call i32 @match_token(ptr noundef nonnull %call25119, ptr noundef nonnull @tokens, ptr noundef nonnull %args) #10
  %6 = zext i32 %call29 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.316)
  switch i32 %call29, label %cleanup.thread [
    i32 16, label %if.end28.cleanup.sink.split_crit_edge
    i32 1024, label %if.end28.cleanup.sink.split_crit_edge127
    i32 64, label %if.end28.cleanup.sink.split_crit_edge128
    i32 8192, label %if.end28.cleanup.sink.split_crit_edge129
    i32 32, label %if.end28.cleanup.sink.split_crit_edge130
    i32 4096, label %if.end28.cleanup.sink.split_crit_edge131
    i32 2048, label %if.end28.cleanup.sink.split_crit_edge132
    i32 256, label %if.end28.cleanup.sink.split_crit_edge133
    i32 128, label %if.end28.cleanup.sink.split_crit_edge134
    i32 512, label %if.end28.cleanup.sink.split_crit_edge135
    i32 1, label %sw.bb57
    i32 2, label %sw.bb60
    i32 4, label %sw.bb63
    i32 8, label %do.end69
  ]

if.end28.cleanup.sink.split_crit_edge135:         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.end28.cleanup.sink.split_crit_edge134:         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.end28.cleanup.sink.split_crit_edge133:         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.end28.cleanup.sink.split_crit_edge132:         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.end28.cleanup.sink.split_crit_edge131:         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.end28.cleanup.sink.split_crit_edge130:         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.end28.cleanup.sink.split_crit_edge129:         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.end28.cleanup.sink.split_crit_edge128:         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.end28.cleanup.sink.split_crit_edge127:         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.end28.cleanup.sink.split_crit_edge:            ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

sw.bb57:                                          ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

sw.bb60:                                          ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

sw.bb63:                                          ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

do.end69:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  %call71 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.127) #14
  br label %cleanup.sink.split

cleanup.thread:                                   ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  %call78 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.129, ptr noundef nonnull %call25119) #14
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %args) #10
  br label %cleanup80

cleanup.sink.split:                               ; preds = %do.end69, %sw.bb63, %sw.bb60, %sw.bb57, %if.end28.cleanup.sink.split_crit_edge, %if.end28.cleanup.sink.split_crit_edge127, %if.end28.cleanup.sink.split_crit_edge128, %if.end28.cleanup.sink.split_crit_edge129, %if.end28.cleanup.sink.split_crit_edge130, %if.end28.cleanup.sink.split_crit_edge131, %if.end28.cleanup.sink.split_crit_edge132, %if.end28.cleanup.sink.split_crit_edge133, %if.end28.cleanup.sink.split_crit_edge134, %if.end28.cleanup.sink.split_crit_edge135
  %.sink123 = phi i32 [ -16, %sw.bb57 ], [ -16, %sw.bb60 ], [ -16, %sw.bb63 ], [ -16, %do.end69 ], [ -65521, %if.end28.cleanup.sink.split_crit_edge ], [ -65521, %if.end28.cleanup.sink.split_crit_edge127 ], [ -65521, %if.end28.cleanup.sink.split_crit_edge128 ], [ -65521, %if.end28.cleanup.sink.split_crit_edge129 ], [ -65521, %if.end28.cleanup.sink.split_crit_edge130 ], [ -65521, %if.end28.cleanup.sink.split_crit_edge131 ], [ -65521, %if.end28.cleanup.sink.split_crit_edge132 ], [ -65521, %if.end28.cleanup.sink.split_crit_edge133 ], [ -65521, %if.end28.cleanup.sink.split_crit_edge134 ], [ -65521, %if.end28.cleanup.sink.split_crit_edge135 ]
  %7 = ptrtoint ptr %mount_options to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %mount_options, align 4
  %and = and i32 %8, %.sink123
  %or = or i32 %and, %call29
  store i32 %or, ptr %mount_options, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %while.body.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %args) #10
  %call25 = call ptr @strsep(ptr noundef nonnull %options.addr, ptr noundef nonnull @.str.126) #10
  %cmp.not = icmp eq ptr %call25, null
  br i1 %cmp.not, label %cleanup.cleanup80_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

cleanup.cleanup80_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup80

cleanup80:                                        ; preds = %cleanup.cleanup80_crit_edge, %cleanup.thread, %while.cond.preheader.cleanup80_crit_edge, %do.end21.cleanup80_crit_edge
  %retval.2 = phi i32 [ 1, %do.end21.cleanup80_crit_edge ], [ 0, %cleanup.thread ], [ 1, %while.cond.preheader.cleanup80_crit_edge ], [ 1, %cleanup.cleanup80_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sb_set_blocksize(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ubh_bread_uspi(ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubh_brelse_uspi(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ufs_print_super_stuff(ptr noundef readonly %sb, ptr noundef readonly %usb1, ptr noundef %usb2, ptr nocapture noundef readonly %usb3) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %fs_magic = getelementptr inbounds %struct.ufs_super_block_third, ptr %usb3, i32 0, i32 6
  %0 = ptrtoint ptr %fs_magic to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fs_magic, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i.i, align 16
  %s_bytesex.i = getelementptr inbounds %struct.ufs_sb_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %s_bytesex.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %s_bytesex.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.i = icmp eq i32 %5, 0
  %6 = tail call i32 @llvm.bswap.i32(i32 %1) #10
  %retval.0.i979 = select i1 %cmp.i, i32 %6, i32 %1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_print_super_stuff.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_print_super_stuff, %do.body5)) #10
          to label %if.then [label %do.body5], !srcloc !647

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_print_super_stuff.__UNIQUE_ID_ddebug289, ptr noundef nonnull @.str.148) #10
  br label %do.body5

do.body5:                                         ; preds = %if.then, %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_print_super_stuff.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_print_super_stuff, %do.end22)) #10
          to label %if.then19 [label %do.end22], !srcloc !647

if.then19:                                        ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_print_super_stuff.__UNIQUE_ID_ddebug290, ptr noundef nonnull @.str.150, i32 noundef %retval.0.i979) #10
  br label %do.end22

do.end22:                                         ; preds = %if.then19, %do.body5
  %7 = ptrtoint ptr %fs_magic to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %fs_magic, align 4
  %9 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %s_fs_info.i.i, align 16
  %s_bytesex.i981 = getelementptr inbounds %struct.ufs_sb_info, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %s_bytesex.i981 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %s_bytesex.i981, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp.i982 = icmp eq i32 %12, 0
  %13 = tail call i32 @llvm.bswap.i32(i32 %8) #10
  %retval.0.i983 = select i1 %cmp.i982, i32 %13, i32 %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 424935705, i32 %retval.0.i983)
  %cmp = icmp eq i32 %retval.0.i983, 424935705
  br i1 %cmp, label %do.body26, label %do.body201

do.body26:                                        ; preds = %do.end22
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_print_super_stuff.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_print_super_stuff, %do.body45)) #10
          to label %if.then40 [label %do.body45], !srcloc !647

if.then40:                                        ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #12
  %fs_size = getelementptr inbounds %struct.anon.96, ptr %usb3, i32 0, i32 5
  %14 = ptrtoint ptr %fs_size to i32
  call void @__asan_loadN_noabort(i32 %14, i32 8)
  %15 = load i64, ptr %fs_size, align 4
  %16 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %s_fs_info.i.i, align 16
  %s_bytesex.i985 = getelementptr inbounds %struct.ufs_sb_info, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %s_bytesex.i985 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %s_bytesex.i985, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp.i986 = icmp eq i32 %19, 0
  %20 = tail call i64 @llvm.bswap.i64(i64 %15) #10
  %retval.0.i987 = select i1 %cmp.i986, i64 %20, i64 %15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_print_super_stuff.__UNIQUE_ID_ddebug291, ptr noundef nonnull @.str.152, i64 noundef %retval.0.i987) #10
  br label %do.body45

do.body45:                                        ; preds = %if.then40, %do.body26
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_print_super_stuff.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_print_super_stuff, %do.body65)) #10
          to label %if.then59 [label %do.body65], !srcloc !647

if.then59:                                        ; preds = %do.body45
  call void @__sanitizer_cov_trace_pc() #12
  %fs_dsize = getelementptr inbounds %struct.anon.96, ptr %usb3, i32 0, i32 6
  %21 = ptrtoint ptr %fs_dsize to i32
  call void @__asan_loadN_noabort(i32 %21, i32 8)
  %22 = load i64, ptr %fs_dsize, align 4
  %23 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %s_fs_info.i.i, align 16
  %s_bytesex.i989 = getelementptr inbounds %struct.ufs_sb_info, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %s_bytesex.i989 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %s_bytesex.i989, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp.i990 = icmp eq i32 %26, 0
  %27 = tail call i64 @llvm.bswap.i64(i64 %22) #10
  %retval.0.i991 = select i1 %cmp.i990, i64 %27, i64 %22
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_print_super_stuff.__UNIQUE_ID_ddebug292, ptr noundef nonnull @.str.154, i64 noundef %retval.0.i991) #10
  br label %do.body65

do.body65:                                        ; preds = %if.then59, %do.body45
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_print_super_stuff.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_print_super_stuff, %do.body84)) #10
          to label %if.then79 [label %do.body84], !srcloc !647

if.then79:                                        ; preds = %do.body65
  call void @__sanitizer_cov_trace_pc() #12
  %fs_bsize = getelementptr inbounds %struct.ufs_super_block_first, ptr %usb1, i32 0, i32 12
  %28 = ptrtoint ptr %fs_bsize to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %fs_bsize, align 4
  %30 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %s_fs_info.i.i, align 16
  %s_bytesex.i993 = getelementptr inbounds %struct.ufs_sb_info, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %s_bytesex.i993 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %s_bytesex.i993, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp.i994 = icmp eq i32 %33, 0
  %34 = tail call i32 @llvm.bswap.i32(i32 %29) #10
  %retval.0.i995 = select i1 %cmp.i994, i32 %34, i32 %29
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_print_super_stuff.__UNIQUE_ID_ddebug293, ptr noundef nonnull @.str.156, i32 noundef %retval.0.i995) #10
  br label %do.body84

do.body84:                                        ; preds = %if.then79, %do.body65
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_print_super_stuff.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_print_super_stuff, %do.body103)) #10
          to label %if.then98 [label %do.body103], !srcloc !647

if.then98:                                        ; preds = %do.body84
  call void @__sanitizer_cov_trace_pc() #12
  %fs_fsize = getelementptr inbounds %struct.ufs_super_block_first, ptr %usb1, i32 0, i32 13
  %35 = ptrtoint ptr %fs_fsize to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %fs_fsize, align 4
  %37 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %s_fs_info.i.i, align 16
  %s_bytesex.i997 = getelementptr inbounds %struct.ufs_sb_info, ptr %38, i32 0, i32 2
  %39 = ptrtoint ptr %s_bytesex.i997 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %s_bytesex.i997, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp.i998 = icmp eq i32 %40, 0
  %41 = tail call i32 @llvm.bswap.i32(i32 %36) #10
  %retval.0.i999 = select i1 %cmp.i998, i32 %41, i32 %36
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_print_super_stuff.__UNIQUE_ID_ddebug294, ptr noundef nonnull @.str.158, i32 noundef %retval.0.i999) #10
  br label %do.body103

do.body103:                                       ; preds = %if.then98, %do.body84
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_print_super_stuff.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_print_super_stuff, %do.body121)) #10
          to label %if.then117 [label %do.body121], !srcloc !647

if.then117:                                       ; preds = %do.body103
  call void @__sanitizer_cov_trace_pc() #12
  %fs_volname = getelementptr inbounds %struct.anon.93, ptr %usb2, i32 0, i32 1
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_print_super_stuff.__UNIQUE_ID_ddebug295, ptr noundef nonnull @.str.160, ptr noundef %fs_volname) #10
  br label %do.body121

do.body121:                                       ; preds = %if.then117, %do.body103
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_print_super_stuff.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_print_super_stuff, %do.body141)) #10
          to label %if.then135 [label %do.body141], !srcloc !647

if.then135:                                       ; preds = %do.body121
  call void @__sanitizer_cov_trace_pc() #12
  %fs_sblockloc = getelementptr inbounds %struct.anon.93, ptr %usb2, i32 0, i32 13
  %42 = ptrtoint ptr %fs_sblockloc to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %fs_sblockloc, align 8
  %44 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %s_fs_info.i.i, align 16
  %s_bytesex.i1001 = getelementptr inbounds %struct.ufs_sb_info, ptr %45, i32 0, i32 2
  %46 = ptrtoint ptr %s_bytesex.i1001 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %s_bytesex.i1001, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %cmp.i1002 = icmp eq i32 %47, 0
  %48 = tail call i64 @llvm.bswap.i64(i64 %43) #10
  %retval.0.i1003 = select i1 %cmp.i1002, i64 %48, i64 %43
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_print_super_stuff.__UNIQUE_ID_ddebug296, ptr noundef nonnull @.str.162, i64 noundef %retval.0.i1003) #10
  br label %do.body141

do.body141:                                       ; preds = %if.then135, %do.body121
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_print_super_stuff.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_print_super_stuff, %do.body161)) #10
          to label %if.then155 [label %do.body161], !srcloc !647

if.then155:                                       ; preds = %do.body141
  call void @__sanitizer_cov_trace_pc() #12
  %cs_ndir = getelementptr inbounds %struct.anon.93, ptr %usb2, i32 0, i32 14
  %49 = ptrtoint ptr %cs_ndir to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %cs_ndir, align 8
  %51 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %s_fs_info.i.i, align 16
  %s_bytesex.i1005 = getelementptr inbounds %struct.ufs_sb_info, ptr %52, i32 0, i32 2
  %53 = ptrtoint ptr %s_bytesex.i1005 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %s_bytesex.i1005, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %cmp.i1006 = icmp eq i32 %54, 0
  %55 = tail call i64 @llvm.bswap.i64(i64 %50) #10
  %retval.0.i1007 = select i1 %cmp.i1006, i64 %55, i64 %50
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_print_super_stuff.__UNIQUE_ID_ddebug297, ptr noundef nonnull @.str.164, i64 noundef %retval.0.i1007) #10
  br label %do.body161

do.body161:                                       ; preds = %if.then155, %do.body141
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_print_super_stuff.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_print_super_stuff, %do.end183)) #10
          to label %if.then175 [label %do.end183], !srcloc !647

if.then175:                                       ; preds = %do.body161
  call void @__sanitizer_cov_trace_pc() #12
  %cs_nbfree = getelementptr inbounds %struct.anon.93, ptr %usb2, i32 0, i32 15
  %56 = ptrtoint ptr %cs_nbfree to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %cs_nbfree, align 8
  %58 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %s_fs_info.i.i, align 16
  %s_bytesex.i1009 = getelementptr inbounds %struct.ufs_sb_info, ptr %59, i32 0, i32 2
  %60 = ptrtoint ptr %s_bytesex.i1009 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %s_bytesex.i1009, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %cmp.i1010 = icmp eq i32 %61, 0
  %62 = tail call i64 @llvm.bswap.i64(i64 %57) #10
  %retval.0.i1011 = select i1 %cmp.i1010, i64 %62, i64 %57
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_print_super_stuff.__UNIQUE_ID_ddebug298, ptr noundef nonnull @.str.166, i64 noundef %retval.0.i1011) #10
  br label %do.end183

do.end183:                                        ; preds = %if.then175, %do.body161
  %63 = ptrtoint ptr %usb3 to i32
  call void @__asan_loadN_noabort(i32 %63, i32 8)
  %64 = load i64, ptr %usb3, align 4
  %65 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %s_fs_info.i.i, align 16
  %s_bytesex.i1013 = getelementptr inbounds %struct.ufs_sb_info, ptr %66, i32 0, i32 2
  %67 = ptrtoint ptr %s_bytesex.i1013 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %s_bytesex.i1013, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %cmp.i1014 = icmp eq i32 %68, 0
  %69 = tail call i64 @llvm.bswap.i64(i64 %64) #10
  %retval.0.i1015 = select i1 %cmp.i1014, i64 %69, i64 %64
  %call187 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.167, i64 noundef %retval.0.i1015) #14
  %cs_nffree = getelementptr inbounds %struct.anon.96, ptr %usb3, i32 0, i32 1
  %70 = ptrtoint ptr %cs_nffree to i32
  call void @__asan_loadN_noabort(i32 %70, i32 8)
  %71 = load i64, ptr %cs_nffree, align 4
  %72 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %s_fs_info.i.i, align 16
  %s_bytesex.i1017 = getelementptr inbounds %struct.ufs_sb_info, ptr %73, i32 0, i32 2
  %74 = ptrtoint ptr %s_bytesex.i1017 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %s_bytesex.i1017, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %cmp.i1018 = icmp eq i32 %75, 0
  %76 = tail call i64 @llvm.bswap.i64(i64 %71) #10
  %retval.0.i1019 = select i1 %cmp.i1018, i64 %76, i64 %71
  %call194 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.169, i64 noundef %retval.0.i1019) #14
  %fs_maxsymlinklen = getelementptr inbounds %struct.ufs_super_block_third, ptr %usb3, i32 0, i32 1, i32 0, i32 0, i32 51
  %77 = ptrtoint ptr %fs_maxsymlinklen to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %fs_maxsymlinklen, align 4
  %79 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %s_fs_info.i.i, align 16
  %s_bytesex.i1021 = getelementptr inbounds %struct.ufs_sb_info, ptr %80, i32 0, i32 2
  %81 = ptrtoint ptr %s_bytesex.i1021 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %s_bytesex.i1021, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %cmp.i1022 = icmp eq i32 %82, 0
  %83 = tail call i32 @llvm.bswap.i32(i32 %78) #10
  %retval.0.i1023 = select i1 %cmp.i1022, i32 %83, i32 %78
  %call200 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.172, i32 noundef %retval.0.i1023) #14
  br label %do.body765

do.body201:                                       ; preds = %do.end22
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_print_super_stuff.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_print_super_stuff, %do.body220)) #10
          to label %if.then215 [label %do.body220], !srcloc !647

if.then215:                                       ; preds = %do.body201
  call void @__sanitizer_cov_trace_pc() #12
  %fs_sblkno = getelementptr inbounds %struct.ufs_super_block_first, ptr %usb1, i32 0, i32 2
  %84 = ptrtoint ptr %fs_sblkno to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %fs_sblkno, align 4
  %86 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %s_fs_info.i.i, align 16
  %s_bytesex.i1025 = getelementptr inbounds %struct.ufs_sb_info, ptr %87, i32 0, i32 2
  %88 = ptrtoint ptr %s_bytesex.i1025 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %s_bytesex.i1025, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %89)
  %cmp.i1026 = icmp eq i32 %89, 0
  %90 = tail call i32 @llvm.bswap.i32(i32 %85) #10
  %retval.0.i1027 = select i1 %cmp.i1026, i32 %90, i32 %85
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_print_super_stuff.__UNIQUE_ID_ddebug299, ptr noundef nonnull @.str.175, i32 noundef %retval.0.i1027) #10
  br label %do.body220

do.body220:                                       ; preds = %if.then215, %do.body201
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_print_super_stuff.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_print_super_stuff, %do.body239)) #10
          to label %if.then234 [label %do.body239], !srcloc !647

if.then234:                                       ; preds = %do.body220
  call void @__sanitizer_cov_trace_pc() #12
  %fs_cblkno = getelementptr inbounds %struct.ufs_super_block_first, ptr %usb1, i32 0, i32 3
  %91 = ptrtoint ptr %fs_cblkno to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %fs_cblkno, align 4
  %93 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %s_fs_info.i.i, align 16
  %s_bytesex.i1029 = getelementptr inbounds %struct.ufs_sb_info, ptr %94, i32 0, i32 2
  %95 = ptrtoint ptr %s_bytesex.i1029 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %s_bytesex.i1029, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %96)
  %cmp.i1030 = icmp eq i32 %96, 0
  %97 = tail call i32 @llvm.bswap.i32(i32 %92) #10
  %retval.0.i1031 = select i1 %cmp.i1030, i32 %97, i32 %92
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_print_super_stuff.__UNIQUE_ID_ddebug300, ptr noundef nonnull @.str.177, i32 noundef %retval.0.i1031) #10
  br label %do.body239

do.body239:                                       ; preds = %if.then234, %do.body220
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_print_super_stuff.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_print_super_stuff, %do.body258)) #10
          to label %if.then253 [label %do.body258], !srcloc !647

if.then253:                                       ; preds = %do.body239
  call void @__sanitizer_cov_trace_pc() #12
  %fs_iblkno = getelementptr inbounds %struct.ufs_super_block_first, ptr %usb1, i32 0, i32 4
  %98 = ptrtoint ptr %fs_iblkno to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %fs_iblkno, align 4
  %100 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %s_fs_info.i.i, align 16
  %s_bytesex.i1033 = getelementptr inbounds %struct.ufs_sb_info, ptr %101, i32 0, i32 2
  %102 = ptrtoint ptr %s_bytesex.i1033 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %s_bytesex.i1033, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %103)
  %cmp.i1034 = icmp eq i32 %103, 0
  %104 = tail call i32 @llvm.bswap.i32(i32 %99) #10
  %retval.0.i1035 = select i1 %cmp.i1034, i32 %104, i32 %99
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_print_super_stuff.__UNIQUE_ID_ddebug301, ptr noundef nonnull @.str.179, i32 noundef %retval.0.i1035) #10
  br label %do.body258

do.body258:                                       ; preds = %if.then253, %do.body239
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_print_super_stuff.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_print_super_stuff, %do.body277)) #10
          to label %if.then272 [label %do.body277], !srcloc !647

if.then272:                                       ; preds = %do.body258
  call void @__sanitizer_cov_trace_pc() #12
  %fs_dblkno = getelementptr inbounds %struct.ufs_super_block_first, ptr %usb1, i32 0, i32 5
  %105 = ptrtoint ptr %fs_dblkno to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %fs_dblkno, align 4
  %107 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %s_fs_info.i.i, align 16
  %s_bytesex.i1037 = getelementptr inbounds %struct.ufs_sb_info, ptr %108, i32 0, i32 2
  %109 = ptrtoint ptr %s_bytesex.i1037 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %s_bytesex.i1037, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %110)
  %cmp.i1038 = icmp eq i32 %110, 0
  %111 = tail call i32 @llvm.bswap.i32(i32 %106) #10
  %retval.0.i1039 = select i1 %cmp.i1038, i32 %111, i32 %106
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_print_super_stuff.__UNIQUE_ID_ddebug302, ptr noundef nonnull @.str.181, i32 noundef %retval.0.i1039) #10
  br label %do.body277

do.body277:                                       ; preds = %if.then272, %do.body258
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_print_super_stuff.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_print_super_stuff, %do.body296)) #10
          to label %if.then291 [label %do.body296], !srcloc !647

if.then291:                                       ; preds = %do.body277
  call void @__sanitizer_cov_trace_pc() #12
  %fs_cgoffset = getelementptr inbounds %struct.ufs_super_block_first, ptr %usb1, i32 0, i32 6
  %112 = ptrtoint ptr %fs_cgoffset to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %fs_cgoffset, align 4
  %114 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %s_fs_info.i.i, align 16
  %s_bytesex.i1041 = getelementptr inbounds %struct.ufs_sb_info, ptr %115, i32 0, i32 2
  %116 = ptrtoint ptr %s_bytesex.i1041 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %s_bytesex.i1041, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %117)
  %cmp.i1042 = icmp eq i32 %117, 0
  %118 = tail call i32 @llvm.bswap.i32(i32 %113) #10
  %retval.0.i1043 = select i1 %cmp.i1042, i32 %118, i32 %113
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_print_super_stuff.__UNIQUE_ID_ddebug303, ptr noundef nonnull @.str.183, i32 noundef %retval.0.i1043) #10
  br label %do.body296

do.body296:                                       ; preds = %if.then291, %do.body277
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_print_super_stuff.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_print_super_stuff, %do.body315)) #10
          to label %if.then310 [label %do.body315], !srcloc !647

if.then310:                                       ; preds = %do.body296
  call void @__sanitizer_cov_trace_pc() #12
  %fs_cgmask = getelementptr inbounds %struct.ufs_super_block_first, ptr %usb1, i32 0, i32 7
  %119 = ptrtoint ptr %fs_cgmask to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %fs_cgmask, align 4
  %121 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %s_fs_info.i.i, align 16
  %s_bytesex.i1045 = getelementptr inbounds %struct.ufs_sb_info, ptr %122, i32 0, i32 2
  %123 = ptrtoint ptr %s_bytesex.i1045 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %s_bytesex.i1045, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %124)
  %cmp.i1046 = icmp eq i32 %124, 0
  %125 = tail call i32 @llvm.bswap.i32(i32 %120) #10
  %retval.0.i1047 = select i1 %cmp.i1046, i32 %125, i32 %120
  %neg = xor i32 %retval.0.i1047, -1
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_print_super_stuff.__UNIQUE_ID_ddebug304, ptr noundef nonnull @.str.185, i32 noundef %neg) #10
  br label %do.body315

do.body315:                                       ; preds = %if.then310, %do.body296
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_print_super_stuff.__UNIQUE_ID_ddebug305, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_print_super_stuff, %do.body335)) #10
          to label %if.then329 [label %do.body335], !srcloc !647

if.then329:                                       ; preds = %do.body315
  call void @__sanitizer_cov_trace_pc() #12
  %fs_size330 = getelementptr inbounds %struct.ufs_super_block_first, ptr %usb1, i32 0, i32 9
  %126 = ptrtoint ptr %fs_size330 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %fs_size330, align 4
  %128 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %s_fs_info.i.i, align 16
  %s_bytesex.i1049 = getelementptr inbounds %struct.ufs_sb_info, ptr %129, i32 0, i32 2
  %130 = ptrtoint ptr %s_bytesex.i1049 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %s_bytesex.i1049, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %131)
  %cmp.i1050 = icmp eq i32 %131, 0
  %132 = tail call i32 @llvm.bswap.i32(i32 %127) #10
  %retval.0.i1051 = select i1 %cmp.i1050, i32 %132, i32 %127
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_print_super_stuff.__UNIQUE_ID_ddebug305, ptr noundef nonnull @.str.187, i32 noundef %retval.0.i1051) #10
  br label %do.body335

do.body335:                                       ; preds = %if.then329, %do.body315
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_print_super_stuff.__UNIQUE_ID_ddebug306, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_print_super_stuff, %do.body355)) #10
          to label %if.then349 [label %do.body355], !srcloc !647

if.then349:                                       ; preds = %do.body335
  call void @__sanitizer_cov_trace_pc() #12
  %fs_dsize350 = getelementptr inbounds %struct.ufs_super_block_first, ptr %usb1, i32 0, i32 10
  %133 = ptrtoint ptr %fs_dsize350 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %fs_dsize350, align 4
  %135 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %s_fs_info.i.i, align 16
  %s_bytesex.i1053 = getelementptr inbounds %struct.ufs_sb_info, ptr %136, i32 0, i32 2
  %137 = ptrtoint ptr %s_bytesex.i1053 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %s_bytesex.i1053, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %138)
  %cmp.i1054 = icmp eq i32 %138, 0
  %139 = tail call i32 @llvm.bswap.i32(i32 %134) #10
  %retval.0.i1055 = select i1 %cmp.i1054, i32 %139, i32 %134
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_print_super_stuff.__UNIQUE_ID_ddebug306, ptr noundef nonnull @.str.189, i32 noundef %retval.0.i1055) #10
  br label %do.body355

do.body355:                                       ; preds = %if.then349, %do.body335
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_print_super_stuff.__UNIQUE_ID_ddebug307, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_print_super_stuff, %do.body374)) #10
          to label %if.then369 [label %do.body374], !srcloc !647

if.then369:                                       ; preds = %do.body355
  call void @__sanitizer_cov_trace_pc() #12
  %fs_ncg = getelementptr inbounds %struct.ufs_super_block_first, ptr %usb1, i32 0, i32 11
  %140 = ptrtoint ptr %fs_ncg to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %fs_ncg, align 4
  %142 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %s_fs_info.i.i, align 16
  %s_bytesex.i1057 = getelementptr inbounds %struct.ufs_sb_info, ptr %143, i32 0, i32 2
  %144 = ptrtoint ptr %s_bytesex.i1057 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %s_bytesex.i1057, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %145)
  %cmp.i1058 = icmp eq i32 %145, 0
  %146 = tail call i32 @llvm.bswap.i32(i32 %141) #10
  %retval.0.i1059 = select i1 %cmp.i1058, i32 %146, i32 %141
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_print_super_stuff.__UNIQUE_ID_ddebug307, ptr noundef nonnull @.str.191, i32 noundef %retval.0.i1059) #10
  br label %do.body374

do.body374:                                       ; preds = %if.then369, %do.body355
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_print_super_stuff.__UNIQUE_ID_ddebug308, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_print_super_stuff, %do.body394)) #10
          to label %if.then388 [label %do.body394], !srcloc !647

if.then388:                                       ; preds = %do.body374
  call void @__sanitizer_cov_trace_pc() #12
  %fs_bsize389 = getelementptr inbounds %struct.ufs_super_block_first, ptr %usb1, i32 0, i32 12
  %147 = ptrtoint ptr %fs_bsize389 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %fs_bsize389, align 4
  %149 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %s_fs_info.i.i, align 16
  %s_bytesex.i1061 = getelementptr inbounds %struct.ufs_sb_info, ptr %150, i32 0, i32 2
  %151 = ptrtoint ptr %s_bytesex.i1061 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %s_bytesex.i1061, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %152)
  %cmp.i1062 = icmp eq i32 %152, 0
  %153 = tail call i32 @llvm.bswap.i32(i32 %148) #10
  %retval.0.i1063 = select i1 %cmp.i1062, i32 %153, i32 %148
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_print_super_stuff.__UNIQUE_ID_ddebug308, ptr noundef nonnull @.str.193, i32 noundef %retval.0.i1063) #10
  br label %do.body394

do.body394:                                       ; preds = %if.then388, %do.body374
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_print_super_stuff.__UNIQUE_ID_ddebug309, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_print_super_stuff, %do.body414)) #10
          to label %if.then408 [label %do.body414], !srcloc !647

if.then408:                                       ; preds = %do.body394
  call void @__sanitizer_cov_trace_pc() #12
  %fs_fsize409 = getelementptr inbounds %struct.ufs_super_block_first, ptr %usb1, i32 0, i32 13
  %154 = ptrtoint ptr %fs_fsize409 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %fs_fsize409, align 4
  %156 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %s_fs_info.i.i, align 16
  %s_bytesex.i1065 = getelementptr inbounds %struct.ufs_sb_info, ptr %157, i32 0, i32 2
  %158 = ptrtoint ptr %s_bytesex.i1065 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %s_bytesex.i1065, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %159)
  %cmp.i1066 = icmp eq i32 %159, 0
  %160 = tail call i32 @llvm.bswap.i32(i32 %155) #10
  %retval.0.i1067 = select i1 %cmp.i1066, i32 %160, i32 %155
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_print_super_stuff.__UNIQUE_ID_ddebug309, ptr noundef nonnull @.str.195, i32 noundef %retval.0.i1067) #10
  br label %do.body414

do.body414:                                       ; preds = %if.then408, %do.body394
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_print_super_stuff.__UNIQUE_ID_ddebug310, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_print_super_stuff, %do.body433)) #10
          to label %if.then428 [label %do.body433], !srcloc !647

if.then428:                                       ; preds = %do.body414
  call void @__sanitizer_cov_trace_pc() #12
  %fs_frag = getelementptr inbounds %struct.ufs_super_block_first, ptr %usb1, i32 0, i32 14
  %161 = ptrtoint ptr %fs_frag to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %fs_frag, align 4
  %163 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %s_fs_info.i.i, align 16
  %s_bytesex.i1069 = getelementptr inbounds %struct.ufs_sb_info, ptr %164, i32 0, i32 2
  %165 = ptrtoint ptr %s_bytesex.i1069 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %s_bytesex.i1069, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %166)
  %cmp.i1070 = icmp eq i32 %166, 0
  %167 = tail call i32 @llvm.bswap.i32(i32 %162) #10
  %retval.0.i1071 = select i1 %cmp.i1070, i32 %167, i32 %162
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_print_super_stuff.__UNIQUE_ID_ddebug310, ptr noundef nonnull @.str.197, i32 noundef %retval.0.i1071) #10
  br label %do.body433

do.body433:                                       ; preds = %if.then428, %do.body414
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_print_super_stuff.__UNIQUE_ID_ddebug311, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_print_super_stuff, %do.body452)) #10
          to label %if.then447 [label %do.body452], !srcloc !647

if.then447:                                       ; preds = %do.body433
  call void @__sanitizer_cov_trace_pc() #12
  %fs_fragshift = getelementptr inbounds %struct.ufs_super_block_first, ptr %usb1, i32 0, i32 24
  %168 = ptrtoint ptr %fs_fragshift to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %fs_fragshift, align 4
  %170 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %s_fs_info.i.i, align 16
  %s_bytesex.i1073 = getelementptr inbounds %struct.ufs_sb_info, ptr %171, i32 0, i32 2
  %172 = ptrtoint ptr %s_bytesex.i1073 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %s_bytesex.i1073, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %173)
  %cmp.i1074 = icmp eq i32 %173, 0
  %174 = tail call i32 @llvm.bswap.i32(i32 %169) #10
  %retval.0.i1075 = select i1 %cmp.i1074, i32 %174, i32 %169
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_print_super_stuff.__UNIQUE_ID_ddebug311, ptr noundef nonnull @.str.199, i32 noundef %retval.0.i1075) #10
  br label %do.body452

do.body452:                                       ; preds = %if.then447, %do.body433
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_print_super_stuff.__UNIQUE_ID_ddebug312, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_print_super_stuff, %do.body472)) #10
          to label %if.then466 [label %do.body472], !srcloc !647

if.then466:                                       ; preds = %do.body452
  call void @__sanitizer_cov_trace_pc() #12
  %fs_fmask = getelementptr inbounds %struct.ufs_super_block_first, ptr %usb1, i32 0, i32 19
  %175 = ptrtoint ptr %fs_fmask to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %fs_fmask, align 4
  %177 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %s_fs_info.i.i, align 16
  %s_bytesex.i1077 = getelementptr inbounds %struct.ufs_sb_info, ptr %178, i32 0, i32 2
  %179 = ptrtoint ptr %s_bytesex.i1077 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %s_bytesex.i1077, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %180)
  %cmp.i1078 = icmp eq i32 %180, 0
  %181 = tail call i32 @llvm.bswap.i32(i32 %176) #10
  %retval.0.i1079 = select i1 %cmp.i1078, i32 %181, i32 %176
  %neg468 = xor i32 %retval.0.i1079, -1
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_print_super_stuff.__UNIQUE_ID_ddebug312, ptr noundef nonnull @.str.201, i32 noundef %neg468) #10
  br label %do.body472

do.body472:                                       ; preds = %if.then466, %do.body452
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_print_super_stuff.__UNIQUE_ID_ddebug313, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_print_super_stuff, %do.body491)) #10
          to label %if.then486 [label %do.body491], !srcloc !647

if.then486:                                       ; preds = %do.body472
  call void @__sanitizer_cov_trace_pc() #12
  %fs_fshift = getelementptr inbounds %struct.ufs_super_block_first, ptr %usb1, i32 0, i32 21
  %182 = ptrtoint ptr %fs_fshift to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %fs_fshift, align 4
  %184 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %s_fs_info.i.i, align 16
  %s_bytesex.i1081 = getelementptr inbounds %struct.ufs_sb_info, ptr %185, i32 0, i32 2
  %186 = ptrtoint ptr %s_bytesex.i1081 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %s_bytesex.i1081, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %187)
  %cmp.i1082 = icmp eq i32 %187, 0
  %188 = tail call i32 @llvm.bswap.i32(i32 %183) #10
  %retval.0.i1083 = select i1 %cmp.i1082, i32 %188, i32 %183
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_print_super_stuff.__UNIQUE_ID_ddebug313, ptr noundef nonnull @.str.203, i32 noundef %retval.0.i1083) #10
  br label %do.body491

do.body491:                                       ; preds = %if.then486, %do.body472
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_print_super_stuff.__UNIQUE_ID_ddebug314, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_print_super_stuff, %do.body510)) #10
          to label %if.then505 [label %do.body510], !srcloc !647

if.then505:                                       ; preds = %do.body491
  call void @__sanitizer_cov_trace_pc() #12
  %fs_sbsize = getelementptr inbounds %struct.ufs_super_block_first, ptr %usb1, i32 0, i32 26
  %189 = ptrtoint ptr %fs_sbsize to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %fs_sbsize, align 4
  %191 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %s_fs_info.i.i, align 16
  %s_bytesex.i1085 = getelementptr inbounds %struct.ufs_sb_info, ptr %192, i32 0, i32 2
  %193 = ptrtoint ptr %s_bytesex.i1085 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %s_bytesex.i1085, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %194)
  %cmp.i1086 = icmp eq i32 %194, 0
  %195 = tail call i32 @llvm.bswap.i32(i32 %190) #10
  %retval.0.i1087 = select i1 %cmp.i1086, i32 %195, i32 %190
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_print_super_stuff.__UNIQUE_ID_ddebug314, ptr noundef nonnull @.str.205, i32 noundef %retval.0.i1087) #10
  br label %do.body510

do.body510:                                       ; preds = %if.then505, %do.body491
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_print_super_stuff.__UNIQUE_ID_ddebug315, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_print_super_stuff, %do.body529)) #10
          to label %if.then524 [label %do.body529], !srcloc !647

if.then524:                                       ; preds = %do.body510
  call void @__sanitizer_cov_trace_pc() #12
  %fs_spc = getelementptr inbounds %struct.ufs_super_block_first, ptr %usb1, i32 0, i32 42
  %196 = ptrtoint ptr %fs_spc to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %fs_spc, align 4
  %198 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %s_fs_info.i.i, align 16
  %s_bytesex.i1089 = getelementptr inbounds %struct.ufs_sb_info, ptr %199, i32 0, i32 2
  %200 = ptrtoint ptr %s_bytesex.i1089 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %s_bytesex.i1089, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %201)
  %cmp.i1090 = icmp eq i32 %201, 0
  %202 = tail call i32 @llvm.bswap.i32(i32 %197) #10
  %retval.0.i1091 = select i1 %cmp.i1090, i32 %202, i32 %197
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_print_super_stuff.__UNIQUE_ID_ddebug315, ptr noundef nonnull @.str.207, i32 noundef %retval.0.i1091) #10
  br label %do.body529

do.body529:                                       ; preds = %if.then524, %do.body510
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_print_super_stuff.__UNIQUE_ID_ddebug316, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_print_super_stuff, %do.body548)) #10
          to label %if.then543 [label %do.body548], !srcloc !647

if.then543:                                       ; preds = %do.body529
  call void @__sanitizer_cov_trace_pc() #12
  %fs_cpg = getelementptr inbounds %struct.ufs_super_block_first, ptr %usb1, i32 0, i32 44
  %203 = ptrtoint ptr %fs_cpg to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %fs_cpg, align 4
  %205 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %s_fs_info.i.i, align 16
  %s_bytesex.i1093 = getelementptr inbounds %struct.ufs_sb_info, ptr %206, i32 0, i32 2
  %207 = ptrtoint ptr %s_bytesex.i1093 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %s_bytesex.i1093, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %208)
  %cmp.i1094 = icmp eq i32 %208, 0
  %209 = tail call i32 @llvm.bswap.i32(i32 %204) #10
  %retval.0.i1095 = select i1 %cmp.i1094, i32 %209, i32 %204
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_print_super_stuff.__UNIQUE_ID_ddebug316, ptr noundef nonnull @.str.209, i32 noundef %retval.0.i1095) #10
  br label %do.body548

do.body548:                                       ; preds = %if.then543, %do.body529
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_print_super_stuff.__UNIQUE_ID_ddebug317, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_print_super_stuff, %do.body567)) #10
          to label %if.then562 [label %do.body567], !srcloc !647

if.then562:                                       ; preds = %do.body548
  call void @__sanitizer_cov_trace_pc() #12
  %fs_ipg = getelementptr inbounds %struct.ufs_super_block_first, ptr %usb1, i32 0, i32 45
  %210 = ptrtoint ptr %fs_ipg to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %fs_ipg, align 4
  %212 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %s_fs_info.i.i, align 16
  %s_bytesex.i1097 = getelementptr inbounds %struct.ufs_sb_info, ptr %213, i32 0, i32 2
  %214 = ptrtoint ptr %s_bytesex.i1097 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %s_bytesex.i1097, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %215)
  %cmp.i1098 = icmp eq i32 %215, 0
  %216 = tail call i32 @llvm.bswap.i32(i32 %211) #10
  %retval.0.i1099 = select i1 %cmp.i1098, i32 %216, i32 %211
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_print_super_stuff.__UNIQUE_ID_ddebug317, ptr noundef nonnull @.str.211, i32 noundef %retval.0.i1099) #10
  br label %do.body567

do.body567:                                       ; preds = %if.then562, %do.body548
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_print_super_stuff.__UNIQUE_ID_ddebug318, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_print_super_stuff, %do.body586)) #10
          to label %if.then581 [label %do.body586], !srcloc !647

if.then581:                                       ; preds = %do.body567
  call void @__sanitizer_cov_trace_pc() #12
  %fs_fpg = getelementptr inbounds %struct.ufs_super_block_first, ptr %usb1, i32 0, i32 46
  %217 = ptrtoint ptr %fs_fpg to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load i32, ptr %fs_fpg, align 4
  %219 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %s_fs_info.i.i, align 16
  %s_bytesex.i1101 = getelementptr inbounds %struct.ufs_sb_info, ptr %220, i32 0, i32 2
  %221 = ptrtoint ptr %s_bytesex.i1101 to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %s_bytesex.i1101, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %222)
  %cmp.i1102 = icmp eq i32 %222, 0
  %223 = tail call i32 @llvm.bswap.i32(i32 %218) #10
  %retval.0.i1103 = select i1 %cmp.i1102, i32 %223, i32 %218
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_print_super_stuff.__UNIQUE_ID_ddebug318, ptr noundef nonnull @.str.213, i32 noundef %retval.0.i1103) #10
  br label %do.body586

do.body586:                                       ; preds = %if.then581, %do.body567
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_print_super_stuff.__UNIQUE_ID_ddebug319, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_print_super_stuff, %do.body605)) #10
          to label %if.then600 [label %do.body605], !srcloc !647

if.then600:                                       ; preds = %do.body586
  call void @__sanitizer_cov_trace_pc() #12
  %fs_csaddr = getelementptr inbounds %struct.ufs_super_block_first, ptr %usb1, i32 0, i32 37
  %224 = ptrtoint ptr %fs_csaddr to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load i32, ptr %fs_csaddr, align 4
  %226 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %s_fs_info.i.i, align 16
  %s_bytesex.i1105 = getelementptr inbounds %struct.ufs_sb_info, ptr %227, i32 0, i32 2
  %228 = ptrtoint ptr %s_bytesex.i1105 to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load i32, ptr %s_bytesex.i1105, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %229)
  %cmp.i1106 = icmp eq i32 %229, 0
  %230 = tail call i32 @llvm.bswap.i32(i32 %225) #10
  %retval.0.i1107 = select i1 %cmp.i1106, i32 %230, i32 %225
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_print_super_stuff.__UNIQUE_ID_ddebug319, ptr noundef nonnull @.str.215, i32 noundef %retval.0.i1107) #10
  br label %do.body605

do.body605:                                       ; preds = %if.then600, %do.body586
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_print_super_stuff.__UNIQUE_ID_ddebug320, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_print_super_stuff, %do.body624)) #10
          to label %if.then619 [label %do.body624], !srcloc !647

if.then619:                                       ; preds = %do.body605
  call void @__sanitizer_cov_trace_pc() #12
  %fs_cssize = getelementptr inbounds %struct.ufs_super_block_first, ptr %usb1, i32 0, i32 38
  %231 = ptrtoint ptr %fs_cssize to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load i32, ptr %fs_cssize, align 4
  %233 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %s_fs_info.i.i, align 16
  %s_bytesex.i1109 = getelementptr inbounds %struct.ufs_sb_info, ptr %234, i32 0, i32 2
  %235 = ptrtoint ptr %s_bytesex.i1109 to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load i32, ptr %s_bytesex.i1109, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %236)
  %cmp.i1110 = icmp eq i32 %236, 0
  %237 = tail call i32 @llvm.bswap.i32(i32 %232) #10
  %retval.0.i1111 = select i1 %cmp.i1110, i32 %237, i32 %232
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_print_super_stuff.__UNIQUE_ID_ddebug320, ptr noundef nonnull @.str.217, i32 noundef %retval.0.i1111) #10
  br label %do.body624

do.body624:                                       ; preds = %if.then619, %do.body605
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_print_super_stuff.__UNIQUE_ID_ddebug321, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_print_super_stuff, %do.body643)) #10
          to label %if.then638 [label %do.body643], !srcloc !647

if.then638:                                       ; preds = %do.body624
  call void @__sanitizer_cov_trace_pc() #12
  %fs_cgsize = getelementptr inbounds %struct.ufs_super_block_first, ptr %usb1, i32 0, i32 39
  %238 = ptrtoint ptr %fs_cgsize to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load i32, ptr %fs_cgsize, align 4
  %240 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %s_fs_info.i.i, align 16
  %s_bytesex.i1113 = getelementptr inbounds %struct.ufs_sb_info, ptr %241, i32 0, i32 2
  %242 = ptrtoint ptr %s_bytesex.i1113 to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load i32, ptr %s_bytesex.i1113, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %243)
  %cmp.i1114 = icmp eq i32 %243, 0
  %244 = tail call i32 @llvm.bswap.i32(i32 %239) #10
  %retval.0.i1115 = select i1 %cmp.i1114, i32 %244, i32 %239
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_print_super_stuff.__UNIQUE_ID_ddebug321, ptr noundef nonnull @.str.219, i32 noundef %retval.0.i1115) #10
  br label %do.body643

do.body643:                                       ; preds = %if.then638, %do.body624
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_print_super_stuff.__UNIQUE_ID_ddebug322, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_print_super_stuff, %do.body662)) #10
          to label %if.then657 [label %do.body662], !srcloc !647

if.then657:                                       ; preds = %do.body643
  call void @__sanitizer_cov_trace_pc() #12
  %fs_fsbtodb = getelementptr inbounds %struct.ufs_super_block_first, ptr %usb1, i32 0, i32 25
  %245 = ptrtoint ptr %fs_fsbtodb to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load i32, ptr %fs_fsbtodb, align 4
  %247 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %s_fs_info.i.i, align 16
  %s_bytesex.i1117 = getelementptr inbounds %struct.ufs_sb_info, ptr %248, i32 0, i32 2
  %249 = ptrtoint ptr %s_bytesex.i1117 to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load i32, ptr %s_bytesex.i1117, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %250)
  %cmp.i1118 = icmp eq i32 %250, 0
  %251 = tail call i32 @llvm.bswap.i32(i32 %246) #10
  %retval.0.i1119 = select i1 %cmp.i1118, i32 %251, i32 %246
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_print_super_stuff.__UNIQUE_ID_ddebug322, ptr noundef nonnull @.str.221, i32 noundef %retval.0.i1119) #10
  br label %do.body662

do.body662:                                       ; preds = %if.then657, %do.body643
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_print_super_stuff.__UNIQUE_ID_ddebug323, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_print_super_stuff, %do.body681)) #10
          to label %if.then676 [label %do.body681], !srcloc !647

if.then676:                                       ; preds = %do.body662
  call void @__sanitizer_cov_trace_pc() #12
  %fs_nrpos = getelementptr inbounds %struct.ufs_super_block_third, ptr %usb3, i32 0, i32 3
  %252 = ptrtoint ptr %fs_nrpos to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load i32, ptr %fs_nrpos, align 4
  %254 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %s_fs_info.i.i, align 16
  %s_bytesex.i1121 = getelementptr inbounds %struct.ufs_sb_info, ptr %255, i32 0, i32 2
  %256 = ptrtoint ptr %s_bytesex.i1121 to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load i32, ptr %s_bytesex.i1121, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %257)
  %cmp.i1122 = icmp eq i32 %257, 0
  %258 = tail call i32 @llvm.bswap.i32(i32 %253) #10
  %retval.0.i1123 = select i1 %cmp.i1122, i32 %258, i32 %253
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_print_super_stuff.__UNIQUE_ID_ddebug323, ptr noundef nonnull @.str.223, i32 noundef %retval.0.i1123) #10
  br label %do.body681

do.body681:                                       ; preds = %if.then676, %do.body662
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_print_super_stuff.__UNIQUE_ID_ddebug324, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_print_super_stuff, %do.body701)) #10
          to label %if.then695 [label %do.body701], !srcloc !647

if.then695:                                       ; preds = %do.body681
  call void @__sanitizer_cov_trace_pc() #12
  %fs_cstotal = getelementptr inbounds %struct.ufs_super_block_first, ptr %usb1, i32 0, i32 47
  %259 = ptrtoint ptr %fs_cstotal to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load i32, ptr %fs_cstotal, align 4
  %261 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load ptr, ptr %s_fs_info.i.i, align 16
  %s_bytesex.i1125 = getelementptr inbounds %struct.ufs_sb_info, ptr %262, i32 0, i32 2
  %263 = ptrtoint ptr %s_bytesex.i1125 to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load i32, ptr %s_bytesex.i1125, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %264)
  %cmp.i1126 = icmp eq i32 %264, 0
  %265 = tail call i32 @llvm.bswap.i32(i32 %260) #10
  %retval.0.i1127 = select i1 %cmp.i1126, i32 %265, i32 %260
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_print_super_stuff.__UNIQUE_ID_ddebug324, ptr noundef nonnull @.str.225, i32 noundef %retval.0.i1127) #10
  br label %do.body701

do.body701:                                       ; preds = %if.then695, %do.body681
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_print_super_stuff.__UNIQUE_ID_ddebug325, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_print_super_stuff, %do.body722)) #10
          to label %if.then715 [label %do.body722], !srcloc !647

if.then715:                                       ; preds = %do.body701
  call void @__sanitizer_cov_trace_pc() #12
  %cs_nifree717 = getelementptr inbounds %struct.ufs_super_block_first, ptr %usb1, i32 0, i32 47, i32 2
  %266 = ptrtoint ptr %cs_nifree717 to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load i32, ptr %cs_nifree717, align 4
  %268 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %s_fs_info.i.i, align 16
  %s_bytesex.i1129 = getelementptr inbounds %struct.ufs_sb_info, ptr %269, i32 0, i32 2
  %270 = ptrtoint ptr %s_bytesex.i1129 to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load i32, ptr %s_bytesex.i1129, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %271)
  %cmp.i1130 = icmp eq i32 %271, 0
  %272 = tail call i32 @llvm.bswap.i32(i32 %267) #10
  %retval.0.i1131 = select i1 %cmp.i1130, i32 %272, i32 %267
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_print_super_stuff.__UNIQUE_ID_ddebug325, ptr noundef nonnull @.str.227, i32 noundef %retval.0.i1131) #10
  br label %do.body722

do.body722:                                       ; preds = %if.then715, %do.body701
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_print_super_stuff.__UNIQUE_ID_ddebug326, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_print_super_stuff, %do.body743)) #10
          to label %if.then736 [label %do.body743], !srcloc !647

if.then736:                                       ; preds = %do.body722
  call void @__sanitizer_cov_trace_pc() #12
  %cs_nbfree738 = getelementptr inbounds %struct.ufs_super_block_first, ptr %usb1, i32 0, i32 47, i32 1
  %273 = ptrtoint ptr %cs_nbfree738 to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load i32, ptr %cs_nbfree738, align 4
  %275 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load ptr, ptr %s_fs_info.i.i, align 16
  %s_bytesex.i1133 = getelementptr inbounds %struct.ufs_sb_info, ptr %276, i32 0, i32 2
  %277 = ptrtoint ptr %s_bytesex.i1133 to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load i32, ptr %s_bytesex.i1133, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %278)
  %cmp.i1134 = icmp eq i32 %278, 0
  %279 = tail call i32 @llvm.bswap.i32(i32 %274) #10
  %retval.0.i1135 = select i1 %cmp.i1134, i32 %279, i32 %274
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_print_super_stuff.__UNIQUE_ID_ddebug326, ptr noundef nonnull @.str.229, i32 noundef %retval.0.i1135) #10
  br label %do.body743

do.body743:                                       ; preds = %if.then736, %do.body722
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_print_super_stuff.__UNIQUE_ID_ddebug327, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_print_super_stuff, %do.body765)) #10
          to label %if.then757 [label %do.body765], !srcloc !647

if.then757:                                       ; preds = %do.body743
  call void @__sanitizer_cov_trace_pc() #12
  %cs_nffree759 = getelementptr inbounds %struct.ufs_super_block_first, ptr %usb1, i32 0, i32 47, i32 3
  %280 = ptrtoint ptr %cs_nffree759 to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load i32, ptr %cs_nffree759, align 4
  %282 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load ptr, ptr %s_fs_info.i.i, align 16
  %s_bytesex.i1137 = getelementptr inbounds %struct.ufs_sb_info, ptr %283, i32 0, i32 2
  %284 = ptrtoint ptr %s_bytesex.i1137 to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load i32, ptr %s_bytesex.i1137, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %285)
  %cmp.i1138 = icmp eq i32 %285, 0
  %286 = tail call i32 @llvm.bswap.i32(i32 %281) #10
  %retval.0.i1139 = select i1 %cmp.i1138, i32 %286, i32 %281
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_print_super_stuff.__UNIQUE_ID_ddebug327, ptr noundef nonnull @.str.231, i32 noundef %retval.0.i1139) #10
  br label %do.body765

do.body765:                                       ; preds = %if.then757, %do.body743, %do.end183
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_print_super_stuff.__UNIQUE_ID_ddebug328, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_print_super_stuff, %do.end782)) #10
          to label %if.then779 [label %do.end782], !srcloc !647

if.then779:                                       ; preds = %do.body765
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_print_super_stuff.__UNIQUE_ID_ddebug328, ptr noundef nonnull @.str.233) #10
  br label %do.end782

do.end782:                                        ; preds = %if.then779, %do.body765
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ufs_iget(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_make_root(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ufs_setup_cstotal(ptr nocapture noundef readonly %sb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %s_mount_opt = getelementptr inbounds %struct.ufs_sb_info, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %s_mount_opt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %s_mount_opt, align 4
  %and = and i32 %5, 65520
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_setup_cstotal.__UNIQUE_ID_ddebug356, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_setup_cstotal, %do.body5)) #10
          to label %if.then [label %do.body5], !srcloc !647

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_setup_cstotal.__UNIQUE_ID_ddebug356, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.3, i32 noundef 478, ptr noundef nonnull @.str.250) #10
  br label %do.body5

do.body5:                                         ; preds = %if.then, %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_setup_cstotal.__UNIQUE_ID_ddebug357, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_setup_cstotal, %do.end22)) #10
          to label %if.then19 [label %do.end22], !srcloc !647

if.then19:                                        ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_setup_cstotal.__UNIQUE_ID_ddebug357, ptr noundef nonnull @.str.252, i32 noundef %and) #10
  br label %do.end22

do.end22:                                         ; preds = %if.then19, %do.body5
  %s_fshift.i = getelementptr inbounds %struct.ufs_sb_private_info, ptr %3, i32 0, i32 18
  %s_fmask.i = getelementptr inbounds %struct.ufs_sb_private_info, ptr %3, i32 0, i32 16
  %6 = ptrtoint ptr %s_fmask.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %s_fmask.i, align 8
  %arrayidx.i = getelementptr %struct.ufs_buffer_head, ptr %3, i32 0, i32 2, i32 0
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i, align 4
  %b_data.i = getelementptr inbounds %struct.buffer_head, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %b_data.i, align 4
  %12 = ptrtoint ptr %s_fshift.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %s_fshift.i, align 8
  %shr.i = lshr i32 512, %13
  %neg.i141 = xor i32 %7, -1
  %and.i = and i32 %neg.i141, 512
  %arrayidx.i142 = getelementptr %struct.ufs_buffer_head, ptr %3, i32 0, i32 2, i32 %shr.i
  %14 = ptrtoint ptr %arrayidx.i142 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.i142, align 4
  %b_data.i143 = getelementptr inbounds %struct.buffer_head, ptr %15, i32 0, i32 5
  %16 = ptrtoint ptr %b_data.i143 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %b_data.i143, align 4
  %add.ptr.i = getelementptr i8, ptr %17, i32 %and.i
  %shr.i145 = lshr i32 1024, %13
  %and.i148 = and i32 %neg.i141, 1024
  %arrayidx.i149 = getelementptr %struct.ufs_buffer_head, ptr %3, i32 0, i32 2, i32 %shr.i145
  %18 = ptrtoint ptr %arrayidx.i149 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.i149, align 4
  %b_data.i150 = getelementptr inbounds %struct.buffer_head, ptr %19, i32 0, i32 5
  %20 = ptrtoint ptr %b_data.i150 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %b_data.i150, align 4
  %add.ptr.i151 = getelementptr i8, ptr %21, i32 %and.i148
  %trunc = trunc i32 %and to i16
  %22 = zext i16 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.317)
  switch i16 %trunc, label %do.end22.if.else_crit_edge [
    i16 32, label %land.lhs.true
    i16 4096, label %do.end22.if.then28_crit_edge
  ]

do.end22.if.then28_crit_edge:                     ; preds = %do.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then28

do.end22.if.else_crit_edge:                       ; preds = %do.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

land.lhs.true:                                    ; preds = %do.end22
  %fs_maxbsize = getelementptr inbounds %struct.anon.93, ptr %add.ptr.i, i32 0, i32 11
  %23 = ptrtoint ptr %fs_maxbsize to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %fs_maxbsize, align 4
  %fs_bsize = getelementptr inbounds %struct.ufs_super_block_first, ptr %11, i32 0, i32 12
  %25 = ptrtoint ptr %fs_bsize to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %fs_bsize, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %26)
  %cmp26 = icmp eq i32 %24, %26
  br i1 %cmp26, label %land.lhs.true.if.then28_crit_edge, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

land.lhs.true.if.then28_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then28

if.then28:                                        ; preds = %land.lhs.true.if.then28_crit_edge, %do.end22.if.then28_crit_edge
  %cs_ndir = getelementptr inbounds %struct.anon.93, ptr %add.ptr.i, i32 0, i32 14
  %27 = ptrtoint ptr %cs_ndir to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %cs_ndir, align 8
  %29 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %s_fs_info.i, align 16
  %s_bytesex.i = getelementptr inbounds %struct.ufs_sb_info, ptr %30, i32 0, i32 2
  %31 = ptrtoint ptr %s_bytesex.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %s_bytesex.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp.i = icmp eq i32 %32, 0
  %33 = tail call i64 @llvm.bswap.i64(i64 %28) #10
  %retval.0.i152 = select i1 %cmp.i, i64 %33, i64 %28
  %cs_total = getelementptr inbounds %struct.ufs_sb_private_info, ptr %3, i32 0, i32 1
  %34 = ptrtoint ptr %cs_total to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 %retval.0.i152, ptr %cs_total, align 8
  %cs_nbfree = getelementptr inbounds %struct.anon.93, ptr %add.ptr.i, i32 0, i32 15
  %35 = ptrtoint ptr %cs_nbfree to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %cs_nbfree, align 8
  %37 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %s_fs_info.i, align 16
  %s_bytesex.i154 = getelementptr inbounds %struct.ufs_sb_info, ptr %38, i32 0, i32 2
  %39 = ptrtoint ptr %s_bytesex.i154 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %s_bytesex.i154, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp.i155 = icmp eq i32 %40, 0
  %41 = tail call i64 @llvm.bswap.i64(i64 %36) #10
  %retval.0.i156 = select i1 %cmp.i155, i64 %41, i64 %36
  %cs_nbfree35 = getelementptr inbounds %struct.ufs_sb_private_info, ptr %3, i32 0, i32 1, i32 1
  %42 = ptrtoint ptr %cs_nbfree35 to i32
  call void @__asan_store8_noabort(i32 %42)
  store i64 %retval.0.i156, ptr %cs_nbfree35, align 8
  %43 = ptrtoint ptr %add.ptr.i151 to i32
  call void @__asan_loadN_noabort(i32 %43, i32 8)
  %44 = load i64, ptr %add.ptr.i151, align 4
  %45 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %s_fs_info.i, align 16
  %s_bytesex.i158 = getelementptr inbounds %struct.ufs_sb_info, ptr %46, i32 0, i32 2
  %47 = ptrtoint ptr %s_bytesex.i158 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %s_bytesex.i158, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %cmp.i159 = icmp eq i32 %48, 0
  %49 = tail call i64 @llvm.bswap.i64(i64 %44) #10
  %retval.0.i160 = select i1 %cmp.i159, i64 %49, i64 %44
  %cs_nifree38 = getelementptr inbounds %struct.ufs_sb_private_info, ptr %3, i32 0, i32 1, i32 2
  %50 = ptrtoint ptr %cs_nifree38 to i32
  call void @__asan_store8_noabort(i32 %50)
  store i64 %retval.0.i160, ptr %cs_nifree38, align 8
  %cs_nffree = getelementptr inbounds %struct.anon.96, ptr %add.ptr.i151, i32 0, i32 1
  %51 = ptrtoint ptr %cs_nffree to i32
  call void @__asan_loadN_noabort(i32 %51, i32 8)
  %52 = load i64, ptr %cs_nffree, align 4
  %53 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %s_fs_info.i, align 16
  %s_bytesex.i162 = getelementptr inbounds %struct.ufs_sb_info, ptr %54, i32 0, i32 2
  %55 = ptrtoint ptr %s_bytesex.i162 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %s_bytesex.i162, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %cmp.i163 = icmp eq i32 %56, 0
  %57 = tail call i64 @llvm.bswap.i64(i64 %52) #10
  %retval.0.i164 = select i1 %cmp.i163, i64 %57, i64 %52
  br label %do.body66

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %do.end22.if.else_crit_edge
  %fs_cstotal = getelementptr inbounds %struct.ufs_super_block_first, ptr %11, i32 0, i32 47
  %58 = ptrtoint ptr %fs_cstotal to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %fs_cstotal, align 4
  %60 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %s_fs_info.i, align 16
  %s_bytesex.i166 = getelementptr inbounds %struct.ufs_sb_info, ptr %61, i32 0, i32 2
  %62 = ptrtoint ptr %s_bytesex.i166 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %s_bytesex.i166, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %cmp.i167 = icmp eq i32 %63, 0
  %64 = tail call i32 @llvm.bswap.i32(i32 %59) #10
  %retval.0.i168 = select i1 %cmp.i167, i32 %64, i32 %59
  %conv = zext i32 %retval.0.i168 to i64
  %cs_total45 = getelementptr inbounds %struct.ufs_sb_private_info, ptr %3, i32 0, i32 1
  %65 = ptrtoint ptr %cs_total45 to i32
  call void @__asan_store8_noabort(i32 %65)
  store i64 %conv, ptr %cs_total45, align 8
  %cs_nbfree48 = getelementptr inbounds %struct.ufs_super_block_first, ptr %11, i32 0, i32 47, i32 1
  %66 = ptrtoint ptr %cs_nbfree48 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %cs_nbfree48, align 4
  %68 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %s_fs_info.i, align 16
  %s_bytesex.i170 = getelementptr inbounds %struct.ufs_sb_info, ptr %69, i32 0, i32 2
  %70 = ptrtoint ptr %s_bytesex.i170 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %s_bytesex.i170, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %cmp.i171 = icmp eq i32 %71, 0
  %72 = tail call i32 @llvm.bswap.i32(i32 %67) #10
  %retval.0.i172 = select i1 %cmp.i171, i32 %72, i32 %67
  %conv50 = zext i32 %retval.0.i172 to i64
  %cs_nbfree52 = getelementptr inbounds %struct.ufs_sb_private_info, ptr %3, i32 0, i32 1, i32 1
  %73 = ptrtoint ptr %cs_nbfree52 to i32
  call void @__asan_store8_noabort(i32 %73)
  store i64 %conv50, ptr %cs_nbfree52, align 8
  %cs_nifree54 = getelementptr inbounds %struct.ufs_super_block_first, ptr %11, i32 0, i32 47, i32 2
  %74 = ptrtoint ptr %cs_nifree54 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %cs_nifree54, align 4
  %76 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %s_fs_info.i, align 16
  %s_bytesex.i174 = getelementptr inbounds %struct.ufs_sb_info, ptr %77, i32 0, i32 2
  %78 = ptrtoint ptr %s_bytesex.i174 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %s_bytesex.i174, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %cmp.i175 = icmp eq i32 %79, 0
  %80 = tail call i32 @llvm.bswap.i32(i32 %75) #10
  %retval.0.i176 = select i1 %cmp.i175, i32 %80, i32 %75
  %conv56 = zext i32 %retval.0.i176 to i64
  %cs_nifree58 = getelementptr inbounds %struct.ufs_sb_private_info, ptr %3, i32 0, i32 1, i32 2
  %81 = ptrtoint ptr %cs_nifree58 to i32
  call void @__asan_store8_noabort(i32 %81)
  store i64 %conv56, ptr %cs_nifree58, align 8
  %cs_nffree60 = getelementptr inbounds %struct.ufs_super_block_first, ptr %11, i32 0, i32 47, i32 3
  %82 = ptrtoint ptr %cs_nffree60 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %cs_nffree60, align 4
  %84 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %s_fs_info.i, align 16
  %s_bytesex.i178 = getelementptr inbounds %struct.ufs_sb_info, ptr %85, i32 0, i32 2
  %86 = ptrtoint ptr %s_bytesex.i178 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %s_bytesex.i178, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %87)
  %cmp.i179 = icmp eq i32 %87, 0
  %88 = tail call i32 @llvm.bswap.i32(i32 %83) #10
  %retval.0.i180 = select i1 %cmp.i179, i32 %88, i32 %83
  %conv62 = zext i32 %retval.0.i180 to i64
  br label %do.body66

do.body66:                                        ; preds = %if.else, %if.then28
  %retval.0.i164.sink = phi i64 [ %retval.0.i164, %if.then28 ], [ %conv62, %if.else ]
  %cs_nffree42 = getelementptr inbounds %struct.ufs_sb_private_info, ptr %3, i32 0, i32 1, i32 3
  %89 = ptrtoint ptr %cs_nffree42 to i32
  call void @__asan_store8_noabort(i32 %89)
  store i64 %retval.0.i164.sink, ptr %cs_nffree42, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_setup_cstotal.__UNIQUE_ID_ddebug358, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_setup_cstotal, %do.body84)) #10
          to label %if.then80 [label %do.body84], !srcloc !647

if.then80:                                        ; preds = %do.body66
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_setup_cstotal.__UNIQUE_ID_ddebug358, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.3, i32 noundef 497, ptr noundef nonnull @.str.250) #10
  br label %do.body84

do.body84:                                        ; preds = %if.then80, %do.body66
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_setup_cstotal.__UNIQUE_ID_ddebug359, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_setup_cstotal, %do.end101)) #10
          to label %if.then98 [label %do.end101], !srcloc !647

if.then98:                                        ; preds = %do.body84
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_setup_cstotal.__UNIQUE_ID_ddebug359, ptr noundef nonnull @.str.118) #10
  br label %do.end101

do.end101:                                        ; preds = %if.then98, %do.body84
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ufs_read_cylinder_structures(ptr noundef %sb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_read_cylinder_structures.__UNIQUE_ID_ddebug360, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_read_cylinder_structures, %do.body5)) #10
          to label %if.then [label %do.body5], !srcloc !647

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_read_cylinder_structures.__UNIQUE_ID_ddebug360, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.3, i32 noundef 511, ptr noundef nonnull @.str.253) #10
  br label %do.body5

do.body5:                                         ; preds = %if.then, %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_read_cylinder_structures.__UNIQUE_ID_ddebug361, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_read_cylinder_structures, %do.end22)) #10
          to label %if.then19 [label %do.end22], !srcloc !647

if.then19:                                        ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_read_cylinder_structures.__UNIQUE_ID_ddebug361, ptr noundef nonnull @.str.13) #10
  br label %do.end22

do.end22:                                         ; preds = %if.then19, %do.body5
  %s_cssize = getelementptr inbounds %struct.ufs_sb_private_info, ptr %3, i32 0, i32 31
  %4 = ptrtoint ptr %s_cssize to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %s_cssize, align 8
  %s_fsize = getelementptr inbounds %struct.ufs_sb_private_info, ptr %3, i32 0, i32 12
  %6 = ptrtoint ptr %s_fsize to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %s_fsize, align 8
  %add = add i32 %5, -1
  %sub = add i32 %add, %7
  %s_fshift = getelementptr inbounds %struct.ufs_sb_private_info, ptr %3, i32 0, i32 18
  %8 = ptrtoint ptr %s_fshift to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %s_fshift, align 8
  %shr = lshr i32 %sub, %9
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %5, i32 noundef 3136) #18
  %tobool24.not = icmp eq ptr %call9.i, null
  br i1 %tobool24.not, label %do.end22.failed_crit_edge, label %if.end26

do.end22.failed_crit_edge:                        ; preds = %do.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %failed

if.end26:                                         ; preds = %do.end22
  %s_csp = getelementptr inbounds %struct.ufs_sb_info, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %s_csp to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call9.i, ptr %s_csp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr)
  %cmp392.not = icmp eq i32 %shr, 0
  br i1 %cmp392.not, label %if.end26.for.end_crit_edge, label %for.body.lr.ph

if.end26.for.end_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end26
  %s_bsize = getelementptr inbounds %struct.ufs_sb_private_info, ptr %3, i32 0, i32 11
  %s_fpb = getelementptr inbounds %struct.ufs_sb_private_info, ptr %3, i32 0, i32 13
  %s_csaddr = getelementptr inbounds %struct.ufs_sb_private_info, ptr %3, i32 0, i32 30
  br label %for.body

for.body:                                         ; preds = %if.end38.for.body_crit_edge, %for.body.lr.ph
  %space.0395 = phi ptr [ %call9.i, %for.body.lr.ph ], [ %add.ptr, %if.end38.for.body_crit_edge ]
  %i.0393 = phi i32 [ 0, %for.body.lr.ph ], [ %add40, %if.end38.for.body_crit_edge ]
  %11 = ptrtoint ptr %s_bsize to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %s_bsize, align 4
  %13 = ptrtoint ptr %s_fpb to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %s_fpb, align 4
  %add27 = add i32 %14, %i.0393
  call void @__sanitizer_cov_trace_cmp4(i32 %add27, i32 %shr)
  %cmp28 = icmp ugt i32 %add27, %shr
  br i1 %cmp28, label %if.then29, label %for.body.if.end32_crit_edge

for.body.if.end32_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end32

if.then29:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %sub30 = sub i32 %shr, %i.0393
  %15 = ptrtoint ptr %s_fsize to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %s_fsize, align 8
  %mul = mul i32 %16, %sub30
  br label %if.end32

if.end32:                                         ; preds = %if.then29, %for.body.if.end32_crit_edge
  %size.0 = phi i32 [ %mul, %if.then29 ], [ %12, %for.body.if.end32_crit_edge ]
  %17 = ptrtoint ptr %s_csaddr to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %s_csaddr, align 8
  %conv = zext i32 %i.0393 to i64
  %add33 = add i64 %18, %conv
  %conv34 = zext i32 %size.0 to i64
  %call35 = tail call ptr @_ubh_bread_(ptr noundef %3, ptr noundef %sb, i64 noundef %add33, i64 noundef %conv34) #10
  %tobool36.not = icmp eq ptr %call35, null
  br i1 %tobool36.not, label %if.end32.failed_crit_edge, label %if.end38

if.end32.failed_crit_edge:                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  br label %failed

if.end38:                                         ; preds = %if.end32
  tail call void @_ubh_ubhcpymem_(ptr noundef %3, ptr noundef %space.0395, ptr noundef nonnull %call35, i32 noundef %size.0) #10
  %add.ptr = getelementptr i8, ptr %space.0395, i32 %size.0
  tail call void @ubh_brelse(ptr noundef nonnull %call35) #10
  %19 = ptrtoint ptr %s_fpb to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %s_fpb, align 4
  %add40 = add i32 %20, %i.0393
  %cmp = icmp ugt i32 %shr, %add40
  br i1 %cmp, label %if.end38.for.body_crit_edge, label %if.end38.for.end_crit_edge

if.end38.for.end_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.end38.for.body_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %if.end38.for.end_crit_edge, %if.end26.for.end_crit_edge
  %s_ncg = getelementptr inbounds %struct.ufs_sb_private_info, ptr %3, i32 0, i32 10
  %21 = ptrtoint ptr %s_ncg to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %s_ncg, align 8
  %23 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %22, i32 4) #10
  %24 = extractvalue { i32, i1 } %23, 1
  br i1 %24, label %kmalloc_array.exit.thread, label %if.end7.i, !prof !651

kmalloc_array.exit.thread:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %s_ucg382 = getelementptr inbounds %struct.ufs_sb_info, ptr %1, i32 0, i32 4
  %25 = ptrtoint ptr %s_ucg382 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %s_ucg382, align 4
  br label %failed

if.end7.i:                                        ; preds = %for.end
  %26 = extractvalue { i32, i1 } %23, 0
  %call8.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %26, i32 noundef 3136) #18
  %s_ucg = getelementptr inbounds %struct.ufs_sb_info, ptr %1, i32 0, i32 4
  %27 = ptrtoint ptr %s_ucg to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call8.i, ptr %s_ucg, align 4
  %tobool43.not = icmp eq ptr %call8.i, null
  br i1 %tobool43.not, label %if.end7.i.failed_crit_edge, label %for.cond46.preheader

if.end7.i.failed_crit_edge:                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %failed

for.cond46.preheader:                             ; preds = %if.end7.i
  %28 = ptrtoint ptr %s_ncg to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %s_ncg, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp48396.not = icmp eq i32 %29, 0
  br i1 %cmp48396.not, label %for.cond46.preheader.for.cond54.preheader_crit_edge, label %for.cond46.preheader.for.body50_crit_edge

for.cond46.preheader.for.body50_crit_edge:        ; preds = %for.cond46.preheader
  br label %for.body50

for.cond46.preheader.for.cond54.preheader_crit_edge: ; preds = %for.cond46.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond54.preheader

for.cond54.preheader:                             ; preds = %for.body50.for.cond54.preheader_crit_edge, %for.cond46.preheader.for.cond54.preheader_crit_edge
  %arrayidx58 = getelementptr %struct.ufs_sb_info, ptr %1, i32 0, i32 5, i32 0
  %30 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %arrayidx58, align 4
  %arrayidx59 = getelementptr %struct.ufs_sb_info, ptr %1, i32 0, i32 6, i32 0
  %31 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 -1, ptr %arrayidx59, align 4
  %arrayidx58.1 = getelementptr %struct.ufs_sb_info, ptr %1, i32 0, i32 5, i32 1
  %32 = ptrtoint ptr %arrayidx58.1 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %arrayidx58.1, align 4
  %arrayidx59.1 = getelementptr %struct.ufs_sb_info, ptr %1, i32 0, i32 6, i32 1
  %33 = ptrtoint ptr %arrayidx59.1 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 -1, ptr %arrayidx59.1, align 4
  %arrayidx58.2 = getelementptr %struct.ufs_sb_info, ptr %1, i32 0, i32 5, i32 2
  %34 = ptrtoint ptr %arrayidx58.2 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr null, ptr %arrayidx58.2, align 4
  %arrayidx59.2 = getelementptr %struct.ufs_sb_info, ptr %1, i32 0, i32 6, i32 2
  %35 = ptrtoint ptr %arrayidx59.2 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 -1, ptr %arrayidx59.2, align 4
  %arrayidx58.3 = getelementptr %struct.ufs_sb_info, ptr %1, i32 0, i32 5, i32 3
  %36 = ptrtoint ptr %arrayidx58.3 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr null, ptr %arrayidx58.3, align 4
  %arrayidx59.3 = getelementptr %struct.ufs_sb_info, ptr %1, i32 0, i32 6, i32 3
  %37 = ptrtoint ptr %arrayidx59.3 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 -1, ptr %arrayidx59.3, align 4
  %arrayidx58.4 = getelementptr %struct.ufs_sb_info, ptr %1, i32 0, i32 5, i32 4
  %38 = ptrtoint ptr %arrayidx58.4 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr null, ptr %arrayidx58.4, align 4
  %arrayidx59.4 = getelementptr %struct.ufs_sb_info, ptr %1, i32 0, i32 6, i32 4
  %39 = ptrtoint ptr %arrayidx59.4 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 -1, ptr %arrayidx59.4, align 4
  %arrayidx58.5 = getelementptr %struct.ufs_sb_info, ptr %1, i32 0, i32 5, i32 5
  %40 = ptrtoint ptr %arrayidx58.5 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr null, ptr %arrayidx58.5, align 4
  %arrayidx59.5 = getelementptr %struct.ufs_sb_info, ptr %1, i32 0, i32 6, i32 5
  %41 = ptrtoint ptr %arrayidx59.5 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 -1, ptr %arrayidx59.5, align 4
  %arrayidx58.6 = getelementptr %struct.ufs_sb_info, ptr %1, i32 0, i32 5, i32 6
  %42 = ptrtoint ptr %arrayidx58.6 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr null, ptr %arrayidx58.6, align 4
  %arrayidx59.6 = getelementptr %struct.ufs_sb_info, ptr %1, i32 0, i32 6, i32 6
  %43 = ptrtoint ptr %arrayidx59.6 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 -1, ptr %arrayidx59.6, align 4
  %arrayidx58.7 = getelementptr %struct.ufs_sb_info, ptr %1, i32 0, i32 5, i32 7
  %44 = ptrtoint ptr %arrayidx58.7 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr null, ptr %arrayidx58.7, align 4
  %arrayidx59.7 = getelementptr %struct.ufs_sb_info, ptr %1, i32 0, i32 6, i32 7
  %45 = ptrtoint ptr %arrayidx59.7 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 -1, ptr %arrayidx59.7, align 4
  %46 = ptrtoint ptr %s_ncg to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %s_ncg, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %cmp65399.not = icmp eq i32 %47, 0
  br i1 %cmp65399.not, label %for.cond54.preheader.for.cond132.preheader_crit_edge, label %do.body68.lr.ph

for.cond54.preheader.for.cond132.preheader_crit_edge: ; preds = %for.cond54.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond132.preheader

for.body50:                                       ; preds = %for.body50.for.body50_crit_edge, %for.cond46.preheader.for.body50_crit_edge
  %i.1397 = phi i32 [ %inc, %for.body50.for.body50_crit_edge ], [ 0, %for.cond46.preheader.for.body50_crit_edge ]
  %48 = ptrtoint ptr %s_ucg to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %s_ucg, align 4
  %arrayidx = getelementptr ptr, ptr %49, i32 %i.1397
  %50 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr null, ptr %arrayidx, align 4
  %inc = add nuw i32 %i.1397, 1
  %51 = ptrtoint ptr %s_ncg to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %s_ncg, align 8
  %cmp48 = icmp ult i32 %inc, %52
  br i1 %cmp48, label %for.body50.for.body50_crit_edge, label %for.body50.for.cond54.preheader_crit_edge

for.body50.for.cond54.preheader_crit_edge:        ; preds = %for.body50
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond54.preheader

for.body50.for.body50_crit_edge:                  ; preds = %for.body50
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body50

do.body68.lr.ph:                                  ; preds = %for.cond54.preheader
  %fs_magic = getelementptr inbounds %struct.ufs_sb_private_info, ptr %3, i32 0, i32 62
  %s_fpg107 = getelementptr inbounds %struct.ufs_sb_private_info, ptr %3, i32 0, i32 37
  %s_cgoffset = getelementptr inbounds %struct.ufs_sb_private_info, ptr %3, i32 0, i32 6
  %s_cgmask = getelementptr inbounds %struct.ufs_sb_private_info, ptr %3, i32 0, i32 7
  %s_cblkno = getelementptr inbounds %struct.ufs_sb_private_info, ptr %3, i32 0, i32 3
  %s_bdev.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 26
  %s_blocksize.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 3
  br label %do.body68

for.cond132.preheader:                            ; preds = %if.end125.for.cond132.preheader_crit_edge, %for.cond54.preheader.for.cond132.preheader_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %53 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i352 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %53, i32 noundef 3136, i32 noundef 104) #16
  %54 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %call7.i352, ptr %arrayidx58, align 4
  %tobool139.not = icmp eq ptr %call7.i352, null
  br i1 %tobool139.not, label %for.cond132.preheader.failed_crit_edge, label %if.end141

for.cond132.preheader.failed_crit_edge:           ; preds = %for.cond132.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %failed

do.body68:                                        ; preds = %if.end125.do.body68_crit_edge, %do.body68.lr.ph
  %i.3400 = phi i32 [ 0, %do.body68.lr.ph ], [ %inc130, %if.end125.do.body68_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_read_cylinder_structures.__UNIQUE_ID_ddebug362, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_read_cylinder_structures, %do.body86)) #10
          to label %if.then82 [label %do.body86], !srcloc !647

if.then82:                                        ; preds = %do.body68
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_read_cylinder_structures.__UNIQUE_ID_ddebug362, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.3, i32 noundef 555, ptr noundef nonnull @.str.253) #10
  br label %do.body86

do.body86:                                        ; preds = %if.then82, %do.body68
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_read_cylinder_structures.__UNIQUE_ID_ddebug363, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_read_cylinder_structures, %do.end103)) #10
          to label %if.then100 [label %do.end103], !srcloc !647

if.then100:                                       ; preds = %do.body86
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_read_cylinder_structures.__UNIQUE_ID_ddebug363, ptr noundef nonnull @.str.255, i32 noundef %i.3400) #10
  br label %do.end103

do.end103:                                        ; preds = %if.then100, %do.body86
  %55 = ptrtoint ptr %fs_magic to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %fs_magic, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 424935705, i32 %56)
  %cmp104 = icmp eq i32 %56, 424935705
  %57 = ptrtoint ptr %s_fpg107 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %s_fpg107, align 8
  %mul106 = mul i32 %58, %i.3400
  br i1 %cmp104, label %do.end103.cond.end_crit_edge, label %cond.false

do.end103.cond.end_crit_edge:                     ; preds = %do.end103
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

cond.false:                                       ; preds = %do.end103
  call void @__sanitizer_cov_trace_pc() #12
  %59 = ptrtoint ptr %s_cgoffset to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %s_cgoffset, align 8
  %61 = ptrtoint ptr %s_cgmask to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %s_cgmask, align 4
  %neg = xor i32 %62, -1
  %and = and i32 %i.3400, %neg
  %mul109 = mul i32 %and, %60
  %add110 = add i32 %mul109, %mul106
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %do.end103.cond.end_crit_edge
  %cond = phi i32 [ %add110, %cond.false ], [ %mul106, %do.end103.cond.end_crit_edge ]
  %63 = ptrtoint ptr %s_cblkno to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %s_cblkno, align 4
  %add111 = add i32 %64, %cond
  %conv112 = zext i32 %add111 to i64
  %65 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %s_bdev.i, align 4
  %67 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %s_blocksize.i, align 16
  %call.i = tail call ptr @__bread_gfp(ptr noundef %66, i64 noundef %conv112, i32 noundef %68, i32 noundef 8) #10
  %69 = ptrtoint ptr %s_ucg to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %s_ucg, align 4
  %arrayidx115 = getelementptr ptr, ptr %70, i32 %i.3400
  %71 = ptrtoint ptr %arrayidx115 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %call.i, ptr %arrayidx115, align 4
  %tobool116.not = icmp eq ptr %call.i, null
  br i1 %tobool116.not, label %cond.end.failed_crit_edge, label %if.end118

cond.end.failed_crit_edge:                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %failed

if.end118:                                        ; preds = %cond.end
  %72 = ptrtoint ptr %s_ucg to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %s_ucg, align 4
  %arrayidx120 = getelementptr ptr, ptr %73, i32 %i.3400
  %74 = ptrtoint ptr %arrayidx120 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %arrayidx120, align 4
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %75, i32 0, i32 5
  %76 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %b_data, align 4
  %cg_magic = getelementptr inbounds %struct.ufs_cylinder_group, ptr %77, i32 0, i32 1
  %78 = ptrtoint ptr %cg_magic to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %cg_magic, align 4
  %80 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %s_fs_info.i, align 16
  %s_bytesex.i = getelementptr inbounds %struct.ufs_sb_info, ptr %81, i32 0, i32 2
  %82 = ptrtoint ptr %s_bytesex.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %s_bytesex.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %83)
  %cmp.i371 = icmp eq i32 %83, 0
  %84 = tail call i32 @llvm.bswap.i32(i32 %79) #10
  %retval.0.i372 = select i1 %cmp.i371, i32 %84, i32 %79
  call void @__sanitizer_cov_trace_const_cmp4(i32 590421, i32 %retval.0.i372)
  %cmp122 = icmp eq i32 %retval.0.i372, 590421
  br i1 %cmp122, label %if.end125, label %if.end118.failed_crit_edge

if.end118.failed_crit_edge:                       ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #12
  br label %failed

if.end125:                                        ; preds = %if.end118
  tail call fastcc void @ufs_print_cylinder_stuff(ptr noundef %sb, ptr noundef %77)
  %inc130 = add nuw i32 %i.3400, 1
  %85 = ptrtoint ptr %s_ncg to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %s_ncg, align 8
  %cmp65 = icmp ult i32 %inc130, %86
  br i1 %cmp65, label %if.end125.do.body68_crit_edge, label %if.end125.for.cond132.preheader_crit_edge

if.end125.for.cond132.preheader_crit_edge:        ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond132.preheader

if.end125.do.body68_crit_edge:                    ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body68

if.end141:                                        ; preds = %for.cond132.preheader
  %87 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 -1, ptr %arrayidx59, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %88 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i352.1 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %88, i32 noundef 3136, i32 noundef 104) #16
  %89 = ptrtoint ptr %arrayidx58.1 to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %call7.i352.1, ptr %arrayidx58.1, align 4
  %tobool139.not.1 = icmp eq ptr %call7.i352.1, null
  br i1 %tobool139.not.1, label %if.end141.failed_crit_edge, label %if.end141.1

if.end141.failed_crit_edge:                       ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #12
  br label %failed

if.end141.1:                                      ; preds = %if.end141
  %90 = ptrtoint ptr %arrayidx59.1 to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 -1, ptr %arrayidx59.1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %91 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i352.2 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %91, i32 noundef 3136, i32 noundef 104) #16
  %92 = ptrtoint ptr %arrayidx58.2 to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %call7.i352.2, ptr %arrayidx58.2, align 4
  %tobool139.not.2 = icmp eq ptr %call7.i352.2, null
  br i1 %tobool139.not.2, label %if.end141.1.failed_crit_edge, label %if.end141.2

if.end141.1.failed_crit_edge:                     ; preds = %if.end141.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %failed

if.end141.2:                                      ; preds = %if.end141.1
  %93 = ptrtoint ptr %arrayidx59.2 to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 -1, ptr %arrayidx59.2, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %94 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i352.3 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %94, i32 noundef 3136, i32 noundef 104) #16
  %95 = ptrtoint ptr %arrayidx58.3 to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %call7.i352.3, ptr %arrayidx58.3, align 4
  %tobool139.not.3 = icmp eq ptr %call7.i352.3, null
  br i1 %tobool139.not.3, label %if.end141.2.failed_crit_edge, label %if.end141.3

if.end141.2.failed_crit_edge:                     ; preds = %if.end141.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %failed

if.end141.3:                                      ; preds = %if.end141.2
  %96 = ptrtoint ptr %arrayidx59.3 to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 -1, ptr %arrayidx59.3, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %97 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i352.4 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %97, i32 noundef 3136, i32 noundef 104) #16
  %98 = ptrtoint ptr %arrayidx58.4 to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr %call7.i352.4, ptr %arrayidx58.4, align 4
  %tobool139.not.4 = icmp eq ptr %call7.i352.4, null
  br i1 %tobool139.not.4, label %if.end141.3.failed_crit_edge, label %if.end141.4

if.end141.3.failed_crit_edge:                     ; preds = %if.end141.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %failed

if.end141.4:                                      ; preds = %if.end141.3
  %99 = ptrtoint ptr %arrayidx59.4 to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 -1, ptr %arrayidx59.4, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %100 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i352.5 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %100, i32 noundef 3136, i32 noundef 104) #16
  %101 = ptrtoint ptr %arrayidx58.5 to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr %call7.i352.5, ptr %arrayidx58.5, align 4
  %tobool139.not.5 = icmp eq ptr %call7.i352.5, null
  br i1 %tobool139.not.5, label %if.end141.4.failed_crit_edge, label %if.end141.5

if.end141.4.failed_crit_edge:                     ; preds = %if.end141.4
  call void @__sanitizer_cov_trace_pc() #12
  br label %failed

if.end141.5:                                      ; preds = %if.end141.4
  %102 = ptrtoint ptr %arrayidx59.5 to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 -1, ptr %arrayidx59.5, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %103 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i352.6 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %103, i32 noundef 3136, i32 noundef 104) #16
  %104 = ptrtoint ptr %arrayidx58.6 to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr %call7.i352.6, ptr %arrayidx58.6, align 4
  %tobool139.not.6 = icmp eq ptr %call7.i352.6, null
  br i1 %tobool139.not.6, label %if.end141.5.failed_crit_edge, label %if.end141.6

if.end141.5.failed_crit_edge:                     ; preds = %if.end141.5
  call void @__sanitizer_cov_trace_pc() #12
  br label %failed

if.end141.6:                                      ; preds = %if.end141.5
  %105 = ptrtoint ptr %arrayidx59.6 to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 -1, ptr %arrayidx59.6, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %106 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i352.7 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %106, i32 noundef 3136, i32 noundef 104) #16
  %107 = ptrtoint ptr %arrayidx58.7 to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr %call7.i352.7, ptr %arrayidx58.7, align 4
  %tobool139.not.7 = icmp eq ptr %call7.i352.7, null
  br i1 %tobool139.not.7, label %if.end141.6.failed_crit_edge, label %if.end141.7

if.end141.6.failed_crit_edge:                     ; preds = %if.end141.6
  call void @__sanitizer_cov_trace_pc() #12
  br label %failed

if.end141.7:                                      ; preds = %if.end141.6
  %108 = ptrtoint ptr %arrayidx59.7 to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 -1, ptr %arrayidx59.7, align 4
  %s_cg_loaded = getelementptr inbounds %struct.ufs_sb_info, ptr %1, i32 0, i32 7
  %109 = ptrtoint ptr %s_cg_loaded to i32
  call void @__asan_store2_noabort(i32 %109)
  store i16 0, ptr %s_cg_loaded, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_read_cylinder_structures.__UNIQUE_ID_ddebug364, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_read_cylinder_structures, %do.body165)) #10
          to label %if.then161 [label %do.body165], !srcloc !647

if.then161:                                       ; preds = %if.end141.7
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_read_cylinder_structures.__UNIQUE_ID_ddebug364, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.3, i32 noundef 569, ptr noundef nonnull @.str.253) #10
  br label %do.body165

do.body165:                                       ; preds = %if.then161, %if.end141.7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_read_cylinder_structures.__UNIQUE_ID_ddebug365, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_read_cylinder_structures, %cleanup)) #10
          to label %if.then179 [label %cleanup], !srcloc !647

if.then179:                                       ; preds = %do.body165
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_read_cylinder_structures.__UNIQUE_ID_ddebug365, ptr noundef nonnull @.str.118) #10
  br label %cleanup

failed:                                           ; preds = %if.end141.6.failed_crit_edge, %if.end141.5.failed_crit_edge, %if.end141.4.failed_crit_edge, %if.end141.3.failed_crit_edge, %if.end141.2.failed_crit_edge, %if.end141.1.failed_crit_edge, %if.end141.failed_crit_edge, %if.end118.failed_crit_edge, %cond.end.failed_crit_edge, %for.cond132.preheader.failed_crit_edge, %if.end7.i.failed_crit_edge, %kmalloc_array.exit.thread, %if.end32.failed_crit_edge, %do.end22.failed_crit_edge
  %retval.1.i380 = phi ptr [ %call9.i, %if.end7.i.failed_crit_edge ], [ null, %do.end22.failed_crit_edge ], [ %call9.i, %kmalloc_array.exit.thread ], [ %call9.i, %if.end141.6.failed_crit_edge ], [ %call9.i, %if.end141.5.failed_crit_edge ], [ %call9.i, %if.end141.4.failed_crit_edge ], [ %call9.i, %if.end141.3.failed_crit_edge ], [ %call9.i, %if.end141.2.failed_crit_edge ], [ %call9.i, %if.end141.1.failed_crit_edge ], [ %call9.i, %if.end141.failed_crit_edge ], [ %call9.i, %for.cond132.preheader.failed_crit_edge ], [ %call9.i, %cond.end.failed_crit_edge ], [ %call9.i, %if.end118.failed_crit_edge ], [ %call9.i, %if.end32.failed_crit_edge ]
  tail call void @kfree(ptr noundef %retval.1.i380) #10
  %s_ucg183 = getelementptr inbounds %struct.ufs_sb_info, ptr %1, i32 0, i32 4
  %110 = ptrtoint ptr %s_ucg183 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %s_ucg183, align 4
  %tobool184.not = icmp eq ptr %111, null
  br i1 %tobool184.not, label %failed.do.body212_crit_edge, label %for.cond186.preheader

failed.do.body212_crit_edge:                      ; preds = %failed
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body212

for.cond186.preheader:                            ; preds = %failed
  %s_ncg187 = getelementptr inbounds %struct.ufs_sb_private_info, ptr %3, i32 0, i32 10
  %112 = ptrtoint ptr %s_ncg187 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %s_ncg187, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %113)
  %cmp188404.not = icmp eq i32 %113, 0
  br i1 %cmp188404.not, label %for.cond186.preheader.for.end200_crit_edge, label %for.cond186.preheader.for.body190_crit_edge

for.cond186.preheader.for.body190_crit_edge:      ; preds = %for.cond186.preheader
  br label %for.body190

for.cond186.preheader.for.end200_crit_edge:       ; preds = %for.cond186.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end200

for.body190:                                      ; preds = %for.inc198.for.body190_crit_edge, %for.cond186.preheader.for.body190_crit_edge
  %i.5405 = phi i32 [ %inc199, %for.inc198.for.body190_crit_edge ], [ 0, %for.cond186.preheader.for.body190_crit_edge ]
  %114 = ptrtoint ptr %s_ucg183 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %s_ucg183, align 4
  %arrayidx192 = getelementptr ptr, ptr %115, i32 %i.5405
  %116 = ptrtoint ptr %arrayidx192 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %arrayidx192, align 4
  %tobool193.not = icmp eq ptr %117, null
  br i1 %tobool193.not, label %for.body190.for.inc198_crit_edge, label %brelse.exit

for.body190.for.inc198_crit_edge:                 ; preds = %for.body190
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc198

brelse.exit:                                      ; preds = %for.body190
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__brelse(ptr noundef nonnull %117) #10
  br label %for.inc198

for.inc198:                                       ; preds = %brelse.exit, %for.body190.for.inc198_crit_edge
  %inc199 = add nuw i32 %i.5405, 1
  %118 = ptrtoint ptr %s_ncg187 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %s_ncg187, align 8
  %cmp188 = icmp ult i32 %inc199, %119
  br i1 %cmp188, label %for.inc198.for.body190_crit_edge, label %for.inc198.for.end200_crit_edge

for.inc198.for.end200_crit_edge:                  ; preds = %for.inc198
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end200

for.inc198.for.body190_crit_edge:                 ; preds = %for.inc198
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body190

for.end200:                                       ; preds = %for.inc198.for.end200_crit_edge, %for.cond186.preheader.for.end200_crit_edge
  %120 = ptrtoint ptr %s_ucg183 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %s_ucg183, align 4
  tail call void @kfree(ptr noundef %121) #10
  %arrayidx207 = getelementptr %struct.ufs_sb_info, ptr %1, i32 0, i32 5, i32 0
  %122 = ptrtoint ptr %arrayidx207 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %arrayidx207, align 4
  tail call void @kfree(ptr noundef %123) #10
  %arrayidx207.1 = getelementptr %struct.ufs_sb_info, ptr %1, i32 0, i32 5, i32 1
  %124 = ptrtoint ptr %arrayidx207.1 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %arrayidx207.1, align 4
  tail call void @kfree(ptr noundef %125) #10
  %arrayidx207.2 = getelementptr %struct.ufs_sb_info, ptr %1, i32 0, i32 5, i32 2
  %126 = ptrtoint ptr %arrayidx207.2 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %arrayidx207.2, align 4
  tail call void @kfree(ptr noundef %127) #10
  %arrayidx207.3 = getelementptr %struct.ufs_sb_info, ptr %1, i32 0, i32 5, i32 3
  %128 = ptrtoint ptr %arrayidx207.3 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %arrayidx207.3, align 4
  tail call void @kfree(ptr noundef %129) #10
  %arrayidx207.4 = getelementptr %struct.ufs_sb_info, ptr %1, i32 0, i32 5, i32 4
  %130 = ptrtoint ptr %arrayidx207.4 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %arrayidx207.4, align 4
  tail call void @kfree(ptr noundef %131) #10
  %arrayidx207.5 = getelementptr %struct.ufs_sb_info, ptr %1, i32 0, i32 5, i32 5
  %132 = ptrtoint ptr %arrayidx207.5 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %arrayidx207.5, align 4
  tail call void @kfree(ptr noundef %133) #10
  %arrayidx207.6 = getelementptr %struct.ufs_sb_info, ptr %1, i32 0, i32 5, i32 6
  %134 = ptrtoint ptr %arrayidx207.6 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %arrayidx207.6, align 4
  tail call void @kfree(ptr noundef %135) #10
  %arrayidx207.7 = getelementptr %struct.ufs_sb_info, ptr %1, i32 0, i32 5, i32 7
  %136 = ptrtoint ptr %arrayidx207.7 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %arrayidx207.7, align 4
  tail call void @kfree(ptr noundef %137) #10
  br label %do.body212

do.body212:                                       ; preds = %for.end200, %failed.do.body212_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_read_cylinder_structures.__UNIQUE_ID_ddebug366, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_read_cylinder_structures, %do.body230)) #10
          to label %if.then226 [label %do.body230], !srcloc !647

if.then226:                                       ; preds = %do.body212
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_read_cylinder_structures.__UNIQUE_ID_ddebug366, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.3, i32 noundef 582, ptr noundef nonnull @.str.253) #10
  br label %do.body230

do.body230:                                       ; preds = %if.then226, %do.body212
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_read_cylinder_structures.__UNIQUE_ID_ddebug367, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_read_cylinder_structures, %cleanup)) #10
          to label %if.then244 [label %cleanup], !srcloc !647

if.then244:                                       ; preds = %do.body230
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_read_cylinder_structures.__UNIQUE_ID_ddebug367, ptr noundef nonnull @.str.120) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then244, %do.body230, %if.then179, %do.body165
  %retval.0 = phi i32 [ 1, %if.then179 ], [ 0, %if.then244 ], [ 1, %do.body165 ], [ 0, %do.body230 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ufs_sync_fs(ptr noundef %sb, i32 noundef %wait) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  %s_lock = getelementptr inbounds %struct.ufs_sb_info, ptr %1, i32 0, i32 13
  tail call void @mutex_lock_nested(ptr noundef %s_lock, i32 noundef 0) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_sync_fs.__UNIQUE_ID_ddebug376, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_sync_fs, %do.body5)) #10
          to label %if.then [label %do.body5], !srcloc !647

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_sync_fs.__UNIQUE_ID_ddebug376, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.3, i32 noundef 694, ptr noundef nonnull @.str.123) #10
  br label %do.body5

do.body5:                                         ; preds = %if.then, %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_sync_fs.__UNIQUE_ID_ddebug377, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_sync_fs, %do.end22)) #10
          to label %if.then19 [label %do.end22], !srcloc !647

if.then19:                                        ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_sync_fs.__UNIQUE_ID_ddebug377, ptr noundef nonnull @.str.13) #10
  br label %do.end22

do.end22:                                         ; preds = %if.then19, %do.body5
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %s_flags = getelementptr inbounds %struct.ufs_sb_info, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %s_flags, align 4
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %s_fshift.i = getelementptr inbounds %struct.ufs_sb_private_info, ptr %7, i32 0, i32 18
  %s_fmask.i = getelementptr inbounds %struct.ufs_sb_private_info, ptr %7, i32 0, i32 16
  %8 = ptrtoint ptr %s_fmask.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %s_fmask.i, align 8
  %arrayidx.i = getelementptr %struct.ufs_buffer_head, ptr %7, i32 0, i32 2, i32 0
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i, align 4
  %b_data.i = getelementptr inbounds %struct.buffer_head, ptr %11, i32 0, i32 5
  %12 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %b_data.i, align 4
  %14 = ptrtoint ptr %s_fshift.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %s_fshift.i, align 8
  %shr.i = lshr i32 1024, %15
  %neg.i100 = and i32 %9, 1024
  %and.i = xor i32 %neg.i100, 1024
  %arrayidx.i101 = getelementptr %struct.ufs_buffer_head, ptr %7, i32 0, i32 2, i32 %shr.i
  %16 = ptrtoint ptr %arrayidx.i101 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.i101, align 4
  %b_data.i102 = getelementptr inbounds %struct.buffer_head, ptr %17, i32 0, i32 5
  %18 = ptrtoint ptr %b_data.i102 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %b_data.i102, align 4
  %add.ptr.i = getelementptr i8, ptr %19, i32 %and.i
  %call.i = tail call i64 @ktime_get_real_seconds() #10
  %conv.i = trunc i64 %call.i to i32
  %20 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %s_fs_info.i, align 16
  %s_bytesex.i.i = getelementptr inbounds %struct.ufs_sb_info, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %s_bytesex.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %s_bytesex.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp.i.i = icmp eq i32 %23, 0
  %24 = tail call i32 @llvm.bswap.i32(i32 %conv.i) #10
  %retval.0.i.i = select i1 %cmp.i.i, i32 %24, i32 %conv.i
  %fs_time = getelementptr inbounds %struct.ufs_super_block_first, ptr %13, i32 0, i32 8
  %25 = ptrtoint ptr %fs_time to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %retval.0.i.i, ptr %fs_time, align 4
  %and = and i32 %5, 1792
  %26 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.318)
  switch i32 %and, label %do.end22.if.end36_crit_edge [
    i32 512, label %do.end22.if.then33_crit_edge
    i32 768, label %do.end22.if.then33_crit_edge115
    i32 1024, label %do.end22.if.then33_crit_edge116
  ]

do.end22.if.then33_crit_edge116:                  ; preds = %do.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then33

do.end22.if.then33_crit_edge115:                  ; preds = %do.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then33

do.end22.if.then33_crit_edge:                     ; preds = %do.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then33

do.end22.if.end36_crit_edge:                      ; preds = %do.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36

if.then33:                                        ; preds = %do.end22.if.then33_crit_edge, %do.end22.if.then33_crit_edge115, %do.end22.if.then33_crit_edge116
  %27 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %s_fs_info.i, align 16
  %s_bytesex.i = getelementptr inbounds %struct.ufs_sb_info, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %s_bytesex.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %s_bytesex.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp.i = icmp eq i32 %30, 0
  %31 = tail call i32 @llvm.bswap.i32(i32 %retval.0.i.i) #10
  %retval.0.i103 = select i1 %cmp.i, i32 %31, i32 %retval.0.i.i
  %sub = sub i32 2082905400, %retval.0.i103
  %s_flags.i = getelementptr inbounds %struct.ufs_sb_info, ptr %28, i32 0, i32 3
  %32 = ptrtoint ptr %s_flags.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %s_flags.i, align 4
  %and.i105 = and i32 %33, 1792
  %34 = add nsw i32 %and.i105, -256
  %35 = lshr exact i32 %34, 8
  %36 = zext i32 %35 to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values.319)
  switch i32 %35, label %if.then33.if.end36_crit_edge [
    i32 2, label %sw.bb.i
    i32 1, label %if.then33.sw.bb3.i_crit_edge
    i32 3, label %sw.bb6.i
    i32 0, label %sw.bb9.i
  ]

if.then33.sw.bb3.i_crit_edge:                     ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb3.i

if.then33.if.end36_crit_edge:                     ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36

sw.bb.i:                                          ; preds = %if.then33
  %fs_postblformat.i = getelementptr inbounds %struct.ufs_super_block_third, ptr %add.ptr.i, i32 0, i32 2
  %37 = ptrtoint ptr %fs_postblformat.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %fs_postblformat.i, align 4
  %39 = tail call i32 @llvm.bswap.i32(i32 %38) #10
  %retval.0.i.i108 = select i1 %cmp.i, i32 %39, i32 %38
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i.i108)
  %cmp.i109 = icmp eq i32 %retval.0.i.i108, -1
  br i1 %cmp.i109, label %if.then.i, label %sw.bb.i.sw.bb3.i_crit_edge

sw.bb.i.sw.bb3.i_crit_edge:                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb3.i

if.then.i:                                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #12
  %40 = tail call i32 @llvm.bswap.i32(i32 %sub) #10
  %retval.0.i27.i = select i1 %cmp.i, i32 %40, i32 %sub
  %41 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %retval.0.i27.i, ptr %13, align 4
  br label %if.end36

sw.bb3.i:                                         ; preds = %sw.bb.i.sw.bb3.i_crit_edge, %if.then33.sw.bb3.i_crit_edge
  %42 = tail call i32 @llvm.bswap.i32(i32 %sub) #10
  %retval.0.i31.i = select i1 %cmp.i, i32 %42, i32 %sub
  %fs_state5.i = getelementptr inbounds %struct.ufs_super_block_third, ptr %add.ptr.i, i32 0, i32 1, i32 0, i32 3
  %43 = ptrtoint ptr %fs_state5.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %retval.0.i31.i, ptr %fs_state5.i, align 4
  br label %if.end36

sw.bb6.i:                                         ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #12
  %44 = tail call i32 @llvm.bswap.i32(i32 %sub) #10
  %retval.0.i35.i = select i1 %cmp.i, i32 %44, i32 %sub
  %fs_u1.i = getelementptr inbounds %struct.ufs_super_block_first, ptr %13, i32 0, i32 33
  %45 = ptrtoint ptr %fs_u1.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %retval.0.i35.i, ptr %fs_u1.i, align 4
  br label %if.end36

sw.bb9.i:                                         ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #12
  %46 = tail call i32 @llvm.bswap.i32(i32 %sub) #10
  %retval.0.i39.i = select i1 %cmp.i, i32 %46, i32 %sub
  %fs_state12.i = getelementptr inbounds %struct.ufs_super_block_third, ptr %add.ptr.i, i32 0, i32 1, i32 0, i32 5, i32 1
  %47 = ptrtoint ptr %fs_state12.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %retval.0.i39.i, ptr %fs_state12.i, align 4
  br label %if.end36

if.end36:                                         ; preds = %sw.bb9.i, %sw.bb6.i, %sw.bb3.i, %if.then.i, %if.then33.if.end36_crit_edge, %do.end22.if.end36_crit_edge
  tail call fastcc void @ufs_put_cstotal(ptr noundef %sb)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_sync_fs.__UNIQUE_ID_ddebug378, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_sync_fs, %do.body55)) #10
          to label %if.then51 [label %do.body55], !srcloc !647

if.then51:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_sync_fs.__UNIQUE_ID_ddebug378, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.3, i32 noundef 709, ptr noundef nonnull @.str.123) #10
  br label %do.body55

do.body55:                                        ; preds = %if.then51, %if.end36
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_sync_fs.__UNIQUE_ID_ddebug379, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_sync_fs, %do.end72)) #10
          to label %if.then69 [label %do.end72], !srcloc !647

if.then69:                                        ; preds = %do.body55
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_sync_fs.__UNIQUE_ID_ddebug379, ptr noundef nonnull @.str.118) #10
  br label %do.end72

do.end72:                                         ; preds = %if.then69, %do.body55
  %48 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %s_fs_info.i, align 16
  %s_lock74 = getelementptr inbounds %struct.ufs_sb_info, ptr %49, i32 0, i32 13
  tail call void @mutex_unlock(ptr noundef %s_lock74) #10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ufs_put_cstotal(ptr noundef %sb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  %s_mount_opt = getelementptr inbounds %struct.ufs_sb_info, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %s_mount_opt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %s_mount_opt, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_put_cstotal.__UNIQUE_ID_ddebug368, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_put_cstotal, %do.body6)) #10
          to label %if.then [label %do.body6], !srcloc !647

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_put_cstotal.__UNIQUE_ID_ddebug368, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.3, i32 noundef 597, ptr noundef nonnull @.str.124) #10
  br label %do.body6

do.body6:                                         ; preds = %if.then, %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_put_cstotal.__UNIQUE_ID_ddebug369, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_put_cstotal, %do.end23)) #10
          to label %if.then20 [label %do.end23], !srcloc !647

if.then20:                                        ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_put_cstotal.__UNIQUE_ID_ddebug369, ptr noundef nonnull @.str.13) #10
  br label %do.end23

do.end23:                                         ; preds = %if.then20, %do.body6
  %s_fshift.i = getelementptr inbounds %struct.ufs_sb_private_info, ptr %5, i32 0, i32 18
  %s_fmask.i = getelementptr inbounds %struct.ufs_sb_private_info, ptr %5, i32 0, i32 16
  %6 = ptrtoint ptr %s_fmask.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %s_fmask.i, align 8
  %arrayidx.i = getelementptr %struct.ufs_buffer_head, ptr %5, i32 0, i32 2, i32 0
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i, align 4
  %b_data.i = getelementptr inbounds %struct.buffer_head, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %b_data.i, align 4
  %12 = ptrtoint ptr %s_fshift.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %s_fshift.i, align 8
  %shr.i = lshr i32 512, %13
  %neg.i182 = xor i32 %7, -1
  %and.i = and i32 %neg.i182, 512
  %arrayidx.i183 = getelementptr %struct.ufs_buffer_head, ptr %5, i32 0, i32 2, i32 %shr.i
  %14 = ptrtoint ptr %arrayidx.i183 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.i183, align 4
  %b_data.i184 = getelementptr inbounds %struct.buffer_head, ptr %15, i32 0, i32 5
  %16 = ptrtoint ptr %b_data.i184 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %b_data.i184, align 4
  %add.ptr.i = getelementptr i8, ptr %17, i32 %and.i
  %shr.i186 = lshr i32 1024, %13
  %and.i189 = and i32 %neg.i182, 1024
  %arrayidx.i190 = getelementptr %struct.ufs_buffer_head, ptr %5, i32 0, i32 2, i32 %shr.i186
  %18 = ptrtoint ptr %arrayidx.i190 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.i190, align 4
  %b_data.i191 = getelementptr inbounds %struct.buffer_head, ptr %19, i32 0, i32 5
  %20 = ptrtoint ptr %b_data.i191 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %b_data.i191, align 4
  %add.ptr.i192 = getelementptr i8, ptr %21, i32 %and.i189
  %22 = trunc i32 %3 to i16
  %trunc = and i16 %22, -16
  %23 = zext i16 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.320)
  switch i16 %trunc, label %do.end23.if.end66_crit_edge [
    i16 4096, label %if.then27
    i16 32, label %land.lhs.true
  ]

do.end23.if.end66_crit_edge:                      ; preds = %do.end23
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end66

if.then27:                                        ; preds = %do.end23
  call void @__sanitizer_cov_trace_pc() #12
  %cs_total = getelementptr inbounds %struct.ufs_sb_private_info, ptr %5, i32 0, i32 1
  %24 = ptrtoint ptr %cs_total to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %cs_total, align 8
  %26 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %s_fs_info.i, align 16
  %s_bytesex.i = getelementptr inbounds %struct.ufs_sb_info, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %s_bytesex.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %s_bytesex.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp.i = icmp eq i32 %29, 0
  %30 = tail call i64 @llvm.bswap.i64(i64 %25) #10
  %retval.0.i193 = select i1 %cmp.i, i64 %30, i64 %25
  %cs_ndir29 = getelementptr inbounds %struct.anon.93, ptr %add.ptr.i, i32 0, i32 14
  %31 = ptrtoint ptr %cs_ndir29 to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 %retval.0.i193, ptr %cs_ndir29, align 8
  %cs_nbfree = getelementptr inbounds %struct.ufs_sb_private_info, ptr %5, i32 0, i32 1, i32 1
  %32 = ptrtoint ptr %cs_nbfree to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %cs_nbfree, align 8
  %34 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %s_fs_info.i, align 16
  %s_bytesex.i195 = getelementptr inbounds %struct.ufs_sb_info, ptr %35, i32 0, i32 2
  %36 = ptrtoint ptr %s_bytesex.i195 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %s_bytesex.i195, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp.i196 = icmp eq i32 %37, 0
  %38 = tail call i64 @llvm.bswap.i64(i64 %33) #10
  %retval.0.i197 = select i1 %cmp.i196, i64 %38, i64 %33
  %cs_nbfree33 = getelementptr inbounds %struct.anon.93, ptr %add.ptr.i, i32 0, i32 15
  %39 = ptrtoint ptr %cs_nbfree33 to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 %retval.0.i197, ptr %cs_nbfree33, align 8
  %cs_nifree = getelementptr inbounds %struct.ufs_sb_private_info, ptr %5, i32 0, i32 1, i32 2
  %40 = ptrtoint ptr %cs_nifree to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %cs_nifree, align 8
  %42 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %s_fs_info.i, align 16
  %s_bytesex.i199 = getelementptr inbounds %struct.ufs_sb_info, ptr %43, i32 0, i32 2
  %44 = ptrtoint ptr %s_bytesex.i199 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %s_bytesex.i199, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %cmp.i200 = icmp eq i32 %45, 0
  %46 = tail call i64 @llvm.bswap.i64(i64 %41) #10
  %retval.0.i201 = select i1 %cmp.i200, i64 %46, i64 %41
  %47 = ptrtoint ptr %add.ptr.i192 to i32
  call void @__asan_storeN_noabort(i32 %47, i32 8)
  store i64 %retval.0.i201, ptr %add.ptr.i192, align 4
  %cs_nffree = getelementptr inbounds %struct.ufs_sb_private_info, ptr %5, i32 0, i32 1, i32 3
  %48 = ptrtoint ptr %cs_nffree to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %cs_nffree, align 8
  %50 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %s_fs_info.i, align 16
  %s_bytesex.i203 = getelementptr inbounds %struct.ufs_sb_info, ptr %51, i32 0, i32 2
  %52 = ptrtoint ptr %s_bytesex.i203 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %s_bytesex.i203, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %cmp.i204 = icmp eq i32 %53, 0
  %54 = tail call i64 @llvm.bswap.i64(i64 %49) #10
  %retval.0.i205 = select i1 %cmp.i204, i64 %54, i64 %49
  %cs_nffree40 = getelementptr inbounds %struct.anon.96, ptr %add.ptr.i192, i32 0, i32 1
  %55 = ptrtoint ptr %cs_nffree40 to i32
  call void @__asan_storeN_noabort(i32 %55, i32 8)
  store i64 %retval.0.i205, ptr %cs_nffree40, align 4
  br label %out

land.lhs.true:                                    ; preds = %do.end23
  %fs_maxbsize = getelementptr inbounds %struct.anon.93, ptr %add.ptr.i, i32 0, i32 11
  %56 = ptrtoint ptr %fs_maxbsize to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %fs_maxbsize, align 4
  %fs_bsize = getelementptr inbounds %struct.ufs_super_block_first, ptr %11, i32 0, i32 12
  %58 = ptrtoint ptr %fs_bsize to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %fs_bsize, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %57, i32 %59)
  %cmp44 = icmp eq i32 %57, %59
  br i1 %cmp44, label %if.then45, label %land.lhs.true.if.end66_crit_edge

land.lhs.true.if.end66_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end66

if.then45:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %cs_total46 = getelementptr inbounds %struct.ufs_sb_private_info, ptr %5, i32 0, i32 1
  %60 = ptrtoint ptr %cs_total46 to i32
  call void @__asan_load8_noabort(i32 %60)
  %61 = load i64, ptr %cs_total46, align 8
  %62 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %s_fs_info.i, align 16
  %s_bytesex.i207 = getelementptr inbounds %struct.ufs_sb_info, ptr %63, i32 0, i32 2
  %64 = ptrtoint ptr %s_bytesex.i207 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %s_bytesex.i207, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %cmp.i208 = icmp eq i32 %65, 0
  %66 = tail call i64 @llvm.bswap.i64(i64 %61) #10
  %retval.0.i209 = select i1 %cmp.i208, i64 %66, i64 %61
  %cs_ndir50 = getelementptr inbounds %struct.anon.93, ptr %add.ptr.i, i32 0, i32 14
  %67 = ptrtoint ptr %cs_ndir50 to i32
  call void @__asan_store8_noabort(i32 %67)
  store i64 %retval.0.i209, ptr %cs_ndir50, align 8
  %cs_nbfree52 = getelementptr inbounds %struct.ufs_sb_private_info, ptr %5, i32 0, i32 1, i32 1
  %68 = ptrtoint ptr %cs_nbfree52 to i32
  call void @__asan_load8_noabort(i32 %68)
  %69 = load i64, ptr %cs_nbfree52, align 8
  %70 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %s_fs_info.i, align 16
  %s_bytesex.i211 = getelementptr inbounds %struct.ufs_sb_info, ptr %71, i32 0, i32 2
  %72 = ptrtoint ptr %s_bytesex.i211 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %s_bytesex.i211, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %cmp.i212 = icmp eq i32 %73, 0
  %74 = tail call i64 @llvm.bswap.i64(i64 %69) #10
  %retval.0.i213 = select i1 %cmp.i212, i64 %74, i64 %69
  %cs_nbfree55 = getelementptr inbounds %struct.anon.93, ptr %add.ptr.i, i32 0, i32 15
  %75 = ptrtoint ptr %cs_nbfree55 to i32
  call void @__asan_store8_noabort(i32 %75)
  store i64 %retval.0.i213, ptr %cs_nbfree55, align 8
  %cs_nifree57 = getelementptr inbounds %struct.ufs_sb_private_info, ptr %5, i32 0, i32 1, i32 2
  %76 = ptrtoint ptr %cs_nifree57 to i32
  call void @__asan_load8_noabort(i32 %76)
  %77 = load i64, ptr %cs_nifree57, align 8
  %78 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %s_fs_info.i, align 16
  %s_bytesex.i215 = getelementptr inbounds %struct.ufs_sb_info, ptr %79, i32 0, i32 2
  %80 = ptrtoint ptr %s_bytesex.i215 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %s_bytesex.i215, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %cmp.i216 = icmp eq i32 %81, 0
  %82 = tail call i64 @llvm.bswap.i64(i64 %77) #10
  %retval.0.i217 = select i1 %cmp.i216, i64 %82, i64 %77
  %83 = ptrtoint ptr %add.ptr.i192 to i32
  call void @__asan_storeN_noabort(i32 %83, i32 8)
  store i64 %retval.0.i217, ptr %add.ptr.i192, align 4
  %cs_nffree62 = getelementptr inbounds %struct.ufs_sb_private_info, ptr %5, i32 0, i32 1, i32 3
  %84 = ptrtoint ptr %cs_nffree62 to i32
  call void @__asan_load8_noabort(i32 %84)
  %85 = load i64, ptr %cs_nffree62, align 8
  %86 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %s_fs_info.i, align 16
  %s_bytesex.i219 = getelementptr inbounds %struct.ufs_sb_info, ptr %87, i32 0, i32 2
  %88 = ptrtoint ptr %s_bytesex.i219 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %s_bytesex.i219, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %89)
  %cmp.i220 = icmp eq i32 %89, 0
  %90 = tail call i64 @llvm.bswap.i64(i64 %85) #10
  %retval.0.i221 = select i1 %cmp.i220, i64 %90, i64 %85
  %cs_nffree65 = getelementptr inbounds %struct.anon.96, ptr %add.ptr.i192, i32 0, i32 1
  %91 = ptrtoint ptr %cs_nffree65 to i32
  call void @__asan_storeN_noabort(i32 %91, i32 8)
  store i64 %retval.0.i221, ptr %cs_nffree65, align 4
  br label %if.end66

if.end66:                                         ; preds = %if.then45, %land.lhs.true.if.end66_crit_edge, %do.end23.if.end66_crit_edge
  %cs_total67 = getelementptr inbounds %struct.ufs_sb_private_info, ptr %5, i32 0, i32 1
  %92 = ptrtoint ptr %cs_total67 to i32
  call void @__asan_load8_noabort(i32 %92)
  %93 = load i64, ptr %cs_total67, align 8
  %conv = trunc i64 %93 to i32
  %94 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %s_fs_info.i, align 16
  %s_bytesex.i223 = getelementptr inbounds %struct.ufs_sb_info, ptr %95, i32 0, i32 2
  %96 = ptrtoint ptr %s_bytesex.i223 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %s_bytesex.i223, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %97)
  %cmp.i224 = icmp eq i32 %97, 0
  %98 = tail call i32 @llvm.bswap.i32(i32 %conv) #10
  %retval.0.i225 = select i1 %cmp.i224, i32 %98, i32 %conv
  %fs_cstotal = getelementptr inbounds %struct.ufs_super_block_first, ptr %11, i32 0, i32 47
  %99 = ptrtoint ptr %fs_cstotal to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %retval.0.i225, ptr %fs_cstotal, align 4
  %cs_nbfree72 = getelementptr inbounds %struct.ufs_sb_private_info, ptr %5, i32 0, i32 1, i32 1
  %100 = ptrtoint ptr %cs_nbfree72 to i32
  call void @__asan_load8_noabort(i32 %100)
  %101 = load i64, ptr %cs_nbfree72, align 8
  %conv73 = trunc i64 %101 to i32
  %102 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %s_fs_info.i, align 16
  %s_bytesex.i227 = getelementptr inbounds %struct.ufs_sb_info, ptr %103, i32 0, i32 2
  %104 = ptrtoint ptr %s_bytesex.i227 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %s_bytesex.i227, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %105)
  %cmp.i228 = icmp eq i32 %105, 0
  %106 = tail call i32 @llvm.bswap.i32(i32 %conv73) #10
  %retval.0.i229 = select i1 %cmp.i228, i32 %106, i32 %conv73
  %cs_nbfree76 = getelementptr inbounds %struct.ufs_super_block_first, ptr %11, i32 0, i32 47, i32 1
  %107 = ptrtoint ptr %cs_nbfree76 to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %retval.0.i229, ptr %cs_nbfree76, align 4
  %cs_nifree78 = getelementptr inbounds %struct.ufs_sb_private_info, ptr %5, i32 0, i32 1, i32 2
  %108 = ptrtoint ptr %cs_nifree78 to i32
  call void @__asan_load8_noabort(i32 %108)
  %109 = load i64, ptr %cs_nifree78, align 8
  %conv79 = trunc i64 %109 to i32
  %110 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %s_fs_info.i, align 16
  %s_bytesex.i231 = getelementptr inbounds %struct.ufs_sb_info, ptr %111, i32 0, i32 2
  %112 = ptrtoint ptr %s_bytesex.i231 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %s_bytesex.i231, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %113)
  %cmp.i232 = icmp eq i32 %113, 0
  %114 = tail call i32 @llvm.bswap.i32(i32 %conv79) #10
  %retval.0.i233 = select i1 %cmp.i232, i32 %114, i32 %conv79
  %cs_nifree82 = getelementptr inbounds %struct.ufs_super_block_first, ptr %11, i32 0, i32 47, i32 2
  %115 = ptrtoint ptr %cs_nifree82 to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %retval.0.i233, ptr %cs_nifree82, align 4
  %cs_nffree84 = getelementptr inbounds %struct.ufs_sb_private_info, ptr %5, i32 0, i32 1, i32 3
  %116 = ptrtoint ptr %cs_nffree84 to i32
  call void @__asan_load8_noabort(i32 %116)
  %117 = load i64, ptr %cs_nffree84, align 8
  %conv85 = trunc i64 %117 to i32
  %118 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %s_fs_info.i, align 16
  %s_bytesex.i235 = getelementptr inbounds %struct.ufs_sb_info, ptr %119, i32 0, i32 2
  %120 = ptrtoint ptr %s_bytesex.i235 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %s_bytesex.i235, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %121)
  %cmp.i236 = icmp eq i32 %121, 0
  %122 = tail call i32 @llvm.bswap.i32(i32 %conv85) #10
  %retval.0.i237 = select i1 %cmp.i236, i32 %122, i32 %conv85
  %cs_nffree88 = getelementptr inbounds %struct.ufs_super_block_first, ptr %11, i32 0, i32 47, i32 3
  %123 = ptrtoint ptr %cs_nffree88 to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 %retval.0.i237, ptr %cs_nffree88, align 4
  br label %out

out:                                              ; preds = %if.end66, %if.then27
  tail call void @ubh_mark_buffer_dirty(ptr noundef %5) #10
  tail call fastcc void @ufs_print_super_stuff(ptr noundef %sb, ptr noundef %11, ptr noundef %add.ptr.i, ptr noundef %add.ptr.i192)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_put_cstotal.__UNIQUE_ID_ddebug370, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_put_cstotal, %do.body108)) #10
          to label %if.then104 [label %do.body108], !srcloc !647

if.then104:                                       ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_put_cstotal.__UNIQUE_ID_ddebug370, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.3, i32 noundef 634, ptr noundef nonnull @.str.124) #10
  br label %do.body108

do.body108:                                       ; preds = %if.then104, %out
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_put_cstotal.__UNIQUE_ID_ddebug371, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_put_cstotal, %do.end125)) #10
          to label %if.then122 [label %do.end125], !srcloc !647

if.then122:                                       ; preds = %do.body108
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_put_cstotal.__UNIQUE_ID_ddebug371, ptr noundef nonnull @.str.118) #10
  br label %do.end125

do.end125:                                        ; preds = %if.then122, %do.body108
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_real_seconds() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #9

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strsep(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @match_token(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #9

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @ufs_alloc_inode(ptr nocapture noundef readnone %sb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @ufs_inode_cachep, align 4
  %call = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %0, i32 noundef 3136) #10
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %vfs_inode = getelementptr inbounds %struct.ufs_inode_info, ptr %call, i32 0, i32 11
  %i_version.i.i = getelementptr inbounds %struct.ufs_inode_info, ptr %call, i32 0, i32 11, i32 38
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %i_version.i.i, i32 noundef 8) #10
  tail call void @generic_atomic64_set(ptr noundef %i_version.i.i, i64 noundef 2) #10
  %meta_lock = getelementptr inbounds %struct.ufs_inode_info, ptr %call, i32 0, i32 8
  %lock = getelementptr inbounds %struct.ufs_inode_info, ptr %call, i32 0, i32 8, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.234, ptr noundef nonnull @ufs_alloc_inode.__key, i16 noundef signext 3) #10
  %dep_map.i = getelementptr inbounds %struct.ufs_inode_info, ptr %call, i32 0, i32 8, i32 0, i32 0, i32 1
  tail call void @lockdep_init_map_type(ptr noundef %dep_map.i, ptr noundef nonnull @.str.236, ptr noundef nonnull @ufs_alloc_inode.__key.235, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  %1 = ptrtoint ptr %meta_lock to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %meta_lock, align 8
  %lock11 = getelementptr inbounds %struct.ufs_inode_info, ptr %call, i32 0, i32 8, i32 0, i32 1
  %2 = ptrtoint ptr %lock11 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %lock, ptr %lock11, align 8
  %truncate_mutex = getelementptr inbounds %struct.ufs_inode_info, ptr %call, i32 0, i32 9
  tail call void @__mutex_init(ptr noundef %truncate_mutex, ptr noundef nonnull @.str.238, ptr noundef nonnull @ufs_alloc_inode.__key.237) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %vfs_inode, %if.end ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ufs_free_in_core_inode(ptr noundef %inode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @ufs_inode_cachep, align 4
  %add.ptr.i = getelementptr i8, ptr %inode, i32 -328
  tail call void @kmem_cache_free(ptr noundef %0, ptr noundef %add.ptr.i) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ufs_write_inode(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ufs_evict_inode(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ufs_put_super(ptr noundef %sb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_put_super.__UNIQUE_ID_ddebug380, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_put_super, %do.body5)) #10
          to label %if.then [label %do.body5], !srcloc !647

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_put_super.__UNIQUE_ID_ddebug380, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.3, i32 noundef 746, ptr noundef nonnull @.str.239) #10
  br label %do.body5

do.body5:                                         ; preds = %if.then, %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_put_super.__UNIQUE_ID_ddebug381, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_put_super, %do.end22)) #10
          to label %if.then19 [label %do.end22], !srcloc !647

if.then19:                                        ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_put_super.__UNIQUE_ID_ddebug381, ptr noundef nonnull @.str.13) #10
  br label %do.end22

do.end22:                                         ; preds = %if.then19, %do.body5
  %s_flags.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 10
  %2 = ptrtoint ptr %s_flags.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %s_flags.i, align 4
  %and.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.then24, label %do.end22.if.end25_crit_edge

do.end22.if.end25_crit_edge:                      ; preds = %do.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25

if.then24:                                        ; preds = %do.end22
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @ufs_put_super_internal(ptr noundef %sb)
  br label %if.end25

if.end25:                                         ; preds = %if.then24, %do.end22.if.end25_crit_edge
  %sync_work = getelementptr inbounds %struct.ufs_sb_info, ptr %1, i32 0, i32 11
  %call26 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %sync_work) #10
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  tail call void @ubh_brelse_uspi(ptr noundef %5) #10
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  tail call void @kfree(ptr noundef %7) #10
  tail call void @kfree(ptr noundef %1) #10
  %8 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %s_fs_info.i, align 16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_put_super.__UNIQUE_ID_ddebug382, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_put_super, %do.body46)) #10
          to label %if.then42 [label %do.body46], !srcloc !647

if.then42:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_put_super.__UNIQUE_ID_ddebug382, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.3, i32 noundef 756, ptr noundef nonnull @.str.239) #10
  br label %do.body46

do.body46:                                        ; preds = %if.then42, %if.end25
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_put_super.__UNIQUE_ID_ddebug383, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_put_super, %do.end63)) #10
          to label %if.then60 [label %do.end63], !srcloc !647

if.then60:                                        ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_put_super.__UNIQUE_ID_ddebug383, ptr noundef nonnull @.str.118) #10
  br label %do.end63

do.end63:                                         ; preds = %if.then60, %do.body46
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ufs_statfs(ptr nocapture noundef readonly %dentry, ptr nocapture noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %d_sb = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 9
  %0 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %s_flags = getelementptr inbounds %struct.ufs_sb_info, ptr %3, i32 0, i32 3
  %6 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %s_flags, align 4
  %s_bdev = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 26
  %8 = ptrtoint ptr %s_bdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %s_bdev, align 4
  %bd_dev = getelementptr inbounds %struct.block_device, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %bd_dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %bd_dev, align 4
  %and1.i.i = and i32 %11, 255
  %12 = lshr i32 %11, 12
  %shl.i.i = and i32 %12, 1048320
  %or.i.i = or i32 %shl.i.i, %and1.i.i
  %and2.i.i = shl i32 %11, 12
  %shl3.i.i = and i32 %and2.i.i, -1048576
  %or4.i.i = or i32 %or.i.i, %shl3.i.i
  %s_lock = getelementptr inbounds %struct.ufs_sb_info, ptr %3, i32 0, i32 13
  tail call void @mutex_lock_nested(ptr noundef %s_lock, i32 noundef 0) #10
  %and = and i32 %7, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp.not = icmp eq i32 %and, 0
  %. = select i1 %cmp.not, i32 72020, i32 424935705
  %13 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %., ptr %buf, align 8
  %s_dsize = getelementptr inbounds %struct.ufs_sb_private_info, ptr %5, i32 0, i32 9
  %14 = ptrtoint ptr %s_dsize to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %s_dsize, align 8
  %f_blocks = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 2
  %16 = ptrtoint ptr %f_blocks to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %15, ptr %f_blocks, align 8
  %cs_nbfree.i = getelementptr inbounds %struct.ufs_sb_private_info, ptr %5, i32 0, i32 1, i32 1
  %17 = ptrtoint ptr %cs_nbfree.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %cs_nbfree.i, align 8
  %s_fpbshift.i = getelementptr inbounds %struct.ufs_sb_private_info, ptr %5, i32 0, i32 19
  %19 = ptrtoint ptr %s_fpbshift.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %s_fpbshift.i, align 4
  %sh_prom.i = zext i32 %20 to i64
  %shl.i = shl i64 %18, %sh_prom.i
  %cs_nffree.i = getelementptr inbounds %struct.ufs_sb_private_info, ptr %5, i32 0, i32 1, i32 3
  %21 = ptrtoint ptr %cs_nffree.i to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %cs_nffree.i, align 8
  %add.i = add i64 %shl.i, %22
  %f_bfree = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 3
  %23 = ptrtoint ptr %f_bfree to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %add.i, ptr %f_bfree, align 8
  %cs_nifree = getelementptr inbounds %struct.ufs_sb_private_info, ptr %5, i32 0, i32 1, i32 2
  %24 = ptrtoint ptr %cs_nifree to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %cs_nifree, align 8
  %f_ffree = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 6
  %26 = ptrtoint ptr %f_ffree to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 %25, ptr %f_ffree, align 8
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 3
  %27 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %s_blocksize, align 16
  %f_bsize = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 1
  %29 = ptrtoint ptr %f_bsize to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %f_bsize, align 4
  %s_root_blocks = getelementptr inbounds %struct.ufs_sb_private_info, ptr %5, i32 0, i32 64
  %30 = ptrtoint ptr %s_root_blocks to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %s_root_blocks, align 8
  %32 = tail call i64 @llvm.usub.sat.i64(i64 %add.i, i64 %31)
  %f_bavail = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 4
  %33 = ptrtoint ptr %f_bavail to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 %32, ptr %f_bavail, align 8
  %s_ncg = getelementptr inbounds %struct.ufs_sb_private_info, ptr %5, i32 0, i32 10
  %34 = ptrtoint ptr %s_ncg to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %s_ncg, align 8
  %s_ipg = getelementptr inbounds %struct.ufs_sb_private_info, ptr %5, i32 0, i32 36
  %36 = ptrtoint ptr %s_ipg to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %s_ipg, align 4
  %mul = mul i32 %37, %35
  %conv = zext i32 %mul to i64
  %f_files = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 5
  %38 = ptrtoint ptr %f_files to i32
  call void @__asan_store8_noabort(i32 %38)
  store i64 %conv, ptr %f_files, align 8
  %f_namelen = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 8
  %39 = ptrtoint ptr %f_namelen to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 255, ptr %f_namelen, align 8
  %f_fsid = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 7
  %tmp.sroa.0.0.insert.ext = zext i32 %or4.i.i to i64
  %tmp.sroa.0.0.insert.shift = shl nuw i64 %tmp.sroa.0.0.insert.ext, 32
  %40 = ptrtoint ptr %f_fsid to i32
  call void @__asan_store8_noabort(i32 %40)
  store i64 %tmp.sroa.0.0.insert.shift, ptr %f_fsid, align 8
  %41 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %s_fs_info.i, align 16
  %s_lock11 = getelementptr inbounds %struct.ufs_sb_info, ptr %42, i32 0, i32 13
  tail call void @mutex_unlock(ptr noundef %s_lock11) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ufs_remount(ptr noundef %sb, ptr nocapture noundef readonly %mount_flags, ptr noundef %data) #0 align 64 {
entry:
  %new_mount_opt = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %new_mount_opt) #10
  %call = tail call i32 @sync_filesystem(ptr noundef %sb) #10
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  %s_lock = getelementptr inbounds %struct.ufs_sb_info, ptr %1, i32 0, i32 13
  tail call void @mutex_lock_nested(ptr noundef %s_lock, i32 noundef 0) #10
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %s_flags = getelementptr inbounds %struct.ufs_sb_info, ptr %3, i32 0, i32 3
  %6 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %s_flags, align 4
  %s_fshift.i = getelementptr inbounds %struct.ufs_sb_private_info, ptr %5, i32 0, i32 18
  %s_fmask.i = getelementptr inbounds %struct.ufs_sb_private_info, ptr %5, i32 0, i32 16
  %8 = ptrtoint ptr %s_fmask.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %s_fmask.i, align 8
  %arrayidx.i = getelementptr %struct.ufs_buffer_head, ptr %5, i32 0, i32 2, i32 0
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i, align 4
  %b_data.i = getelementptr inbounds %struct.buffer_head, ptr %11, i32 0, i32 5
  %12 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %b_data.i, align 4
  %14 = ptrtoint ptr %s_fshift.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %s_fshift.i, align 8
  %shr.i = lshr i32 1024, %15
  %neg.i137 = and i32 %9, 1024
  %and.i = xor i32 %neg.i137, 1024
  %arrayidx.i138 = getelementptr %struct.ufs_buffer_head, ptr %5, i32 0, i32 2, i32 %shr.i
  %16 = ptrtoint ptr %arrayidx.i138 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.i138, align 4
  %b_data.i139 = getelementptr inbounds %struct.buffer_head, ptr %17, i32 0, i32 5
  %18 = ptrtoint ptr %b_data.i139 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %b_data.i139, align 4
  %add.ptr.i = getelementptr i8, ptr %19, i32 %and.i
  %s_mount_opt = getelementptr inbounds %struct.ufs_sb_info, ptr %3, i32 0, i32 8
  %20 = ptrtoint ptr %s_mount_opt to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %s_mount_opt, align 4
  %and = and i32 %21, 65520
  %22 = ptrtoint ptr %new_mount_opt to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 2, ptr %new_mount_opt, align 4
  %call7 = call fastcc i32 @ufs_parse_options(ptr noundef %data, ptr noundef nonnull %new_mount_opt)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool.not = icmp eq i32 %call7, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %23 = ptrtoint ptr %new_mount_opt to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %new_mount_opt, align 4
  %and10 = and i32 %24, 65520
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %if.then12, label %if.else

if.then12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %or13 = or i32 %24, %and
  %25 = ptrtoint ptr %new_mount_opt to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %or13, ptr %new_mount_opt, align 4
  br label %if.end20

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_cmp4(i32 %and10, i32 %and)
  %cmp.not = icmp eq i32 %and10, %and
  br i1 %cmp.not, label %if.else.if.end20_crit_edge, label %do.end

if.else.if.end20_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

do.end:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %call16 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.241) #14
  br label %cleanup

if.end20:                                         ; preds = %if.else.if.end20_crit_edge, %if.then12
  %26 = ptrtoint ptr %mount_flags to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %mount_flags, align 4
  %s_flags.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 10
  %28 = ptrtoint ptr %s_flags.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %s_flags.i, align 4
  %and.i143 = and i32 %29, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i143)
  %tobool.i = icmp ne i32 %and.i143, 0
  %30 = and i32 %27, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %31 = icmp eq i32 %30, 0
  %cmp25 = xor i1 %31, %tobool.i
  br i1 %cmp25, label %if.then27, label %if.end32

if.then27:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  %32 = ptrtoint ptr %new_mount_opt to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %new_mount_opt, align 4
  %34 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %s_fs_info.i, align 16
  %s_mount_opt29 = getelementptr inbounds %struct.ufs_sb_info, ptr %35, i32 0, i32 8
  %36 = ptrtoint ptr %s_mount_opt29 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %33, ptr %s_mount_opt29, align 4
  br label %cleanup

if.end32:                                         ; preds = %if.end20
  br i1 %31, label %if.else54, label %if.then35

if.then35:                                        ; preds = %if.end32
  call fastcc void @ufs_put_super_internal(ptr noundef %sb)
  %call.i = call i64 @ktime_get_real_seconds() #10
  %conv.i = trunc i64 %call.i to i32
  %37 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %s_fs_info.i, align 16
  %s_bytesex.i.i = getelementptr inbounds %struct.ufs_sb_info, ptr %38, i32 0, i32 2
  %39 = ptrtoint ptr %s_bytesex.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %s_bytesex.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp.i.i = icmp eq i32 %40, 0
  %41 = call i32 @llvm.bswap.i32(i32 %conv.i) #10
  %retval.0.i.i = select i1 %cmp.i.i, i32 %41, i32 %conv.i
  %fs_time = getelementptr inbounds %struct.ufs_super_block_first, ptr %13, i32 0, i32 8
  %42 = ptrtoint ptr %fs_time to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %retval.0.i.i, ptr %fs_time, align 4
  %and37 = and i32 %7, 1792
  %43 = zext i32 %and37 to i64
  call void @__sanitizer_cov_trace_switch(i64 %43, ptr @__sancov_gen_cov_switch_values.321)
  switch i32 %and37, label %if.then35.if.end50_crit_edge [
    i32 512, label %if.then35.if.then47_crit_edge
    i32 768, label %if.then35.if.then47_crit_edge157
    i32 1024, label %if.then35.if.then47_crit_edge158
  ]

if.then35.if.then47_crit_edge158:                 ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then47

if.then35.if.then47_crit_edge157:                 ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then47

if.then35.if.then47_crit_edge:                    ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then47

if.then35.if.end50_crit_edge:                     ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end50

if.then47:                                        ; preds = %if.then35.if.then47_crit_edge, %if.then35.if.then47_crit_edge157, %if.then35.if.then47_crit_edge158
  %44 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %s_fs_info.i, align 16
  %s_bytesex.i = getelementptr inbounds %struct.ufs_sb_info, ptr %45, i32 0, i32 2
  %46 = ptrtoint ptr %s_bytesex.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %s_bytesex.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %cmp.i = icmp eq i32 %47, 0
  %48 = call i32 @llvm.bswap.i32(i32 %retval.0.i.i) #10
  %retval.0.i = select i1 %cmp.i, i32 %48, i32 %retval.0.i.i
  %sub = sub i32 2082905400, %retval.0.i
  %s_flags.i147 = getelementptr inbounds %struct.ufs_sb_info, ptr %45, i32 0, i32 3
  %49 = ptrtoint ptr %s_flags.i147 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %s_flags.i147, align 4
  %and.i148 = and i32 %50, 1792
  %51 = add nsw i32 %and.i148, -256
  %52 = lshr exact i32 %51, 8
  %53 = zext i32 %52 to i64
  call void @__sanitizer_cov_trace_switch(i64 %53, ptr @__sancov_gen_cov_switch_values.322)
  switch i32 %52, label %if.then47.if.end50_crit_edge [
    i32 2, label %sw.bb.i
    i32 1, label %if.then47.sw.bb3.i_crit_edge
    i32 3, label %sw.bb6.i
    i32 0, label %sw.bb9.i
  ]

if.then47.sw.bb3.i_crit_edge:                     ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb3.i

if.then47.if.end50_crit_edge:                     ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end50

sw.bb.i:                                          ; preds = %if.then47
  %fs_postblformat.i = getelementptr inbounds %struct.ufs_super_block_third, ptr %add.ptr.i, i32 0, i32 2
  %54 = ptrtoint ptr %fs_postblformat.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %fs_postblformat.i, align 4
  %56 = call i32 @llvm.bswap.i32(i32 %55) #10
  %retval.0.i.i151 = select i1 %cmp.i, i32 %56, i32 %55
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i.i151)
  %cmp.i152 = icmp eq i32 %retval.0.i.i151, -1
  br i1 %cmp.i152, label %if.then.i, label %sw.bb.i.sw.bb3.i_crit_edge

sw.bb.i.sw.bb3.i_crit_edge:                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb3.i

if.then.i:                                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #12
  %57 = call i32 @llvm.bswap.i32(i32 %sub) #10
  %retval.0.i27.i = select i1 %cmp.i, i32 %57, i32 %sub
  %58 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %retval.0.i27.i, ptr %13, align 4
  br label %if.end50

sw.bb3.i:                                         ; preds = %sw.bb.i.sw.bb3.i_crit_edge, %if.then47.sw.bb3.i_crit_edge
  %59 = call i32 @llvm.bswap.i32(i32 %sub) #10
  %retval.0.i31.i = select i1 %cmp.i, i32 %59, i32 %sub
  %fs_state5.i = getelementptr inbounds %struct.ufs_super_block_third, ptr %add.ptr.i, i32 0, i32 1, i32 0, i32 3
  %60 = ptrtoint ptr %fs_state5.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %retval.0.i31.i, ptr %fs_state5.i, align 4
  br label %if.end50

sw.bb6.i:                                         ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #12
  %61 = call i32 @llvm.bswap.i32(i32 %sub) #10
  %retval.0.i35.i = select i1 %cmp.i, i32 %61, i32 %sub
  %fs_u1.i = getelementptr inbounds %struct.ufs_super_block_first, ptr %13, i32 0, i32 33
  %62 = ptrtoint ptr %fs_u1.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %retval.0.i35.i, ptr %fs_u1.i, align 4
  br label %if.end50

sw.bb9.i:                                         ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #12
  %63 = call i32 @llvm.bswap.i32(i32 %sub) #10
  %retval.0.i39.i = select i1 %cmp.i, i32 %63, i32 %sub
  %fs_state12.i = getelementptr inbounds %struct.ufs_super_block_third, ptr %add.ptr.i, i32 0, i32 1, i32 0, i32 5, i32 1
  %64 = ptrtoint ptr %fs_state12.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %retval.0.i39.i, ptr %fs_state12.i, align 4
  br label %if.end50

if.end50:                                         ; preds = %sw.bb9.i, %sw.bb6.i, %sw.bb3.i, %if.then.i, %if.then47.if.end50_crit_edge, %if.then35.if.end50_crit_edge
  call void @ubh_mark_buffer_dirty(ptr noundef %5) #10
  %65 = ptrtoint ptr %s_flags.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %s_flags.i, align 4
  %or53 = or i32 %66, 1
  br label %if.end90

if.else54:                                        ; preds = %if.end32
  %trunc = trunc i32 %and to i16
  %67 = zext i16 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %67, ptr @__sancov_gen_cov_switch_values.323)
  switch i16 %trunc, label %do.end71 [
    i16 64, label %if.else54.if.end76_crit_edge
    i16 8192, label %if.else54.if.end76_crit_edge159
    i16 32, label %if.else54.if.end76_crit_edge160
    i16 1024, label %if.else54.if.end76_crit_edge161
    i16 4096, label %if.else54.if.end76_crit_edge162
  ]

if.else54.if.end76_crit_edge162:                  ; preds = %if.else54
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end76

if.else54.if.end76_crit_edge161:                  ; preds = %if.else54
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end76

if.else54.if.end76_crit_edge160:                  ; preds = %if.else54
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end76

if.else54.if.end76_crit_edge159:                  ; preds = %if.else54
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end76

if.else54.if.end76_crit_edge:                     ; preds = %if.else54
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end76

do.end71:                                         ; preds = %if.else54
  call void @__sanitizer_cov_trace_pc() #12
  %call73 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.244) #14
  br label %cleanup

if.end76:                                         ; preds = %if.else54.if.end76_crit_edge, %if.else54.if.end76_crit_edge159, %if.else54.if.end76_crit_edge160, %if.else54.if.end76_crit_edge161, %if.else54.if.end76_crit_edge162
  %call77 = call fastcc i32 @ufs_read_cylinder_structures(ptr noundef %sb)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77)
  %tobool78.not = icmp eq i32 %call77, 0
  br i1 %tobool78.not, label %do.end82, label %if.end87

do.end82:                                         ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #12
  %call84 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.247) #14
  br label %cleanup

if.end87:                                         ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #12
  %68 = ptrtoint ptr %s_flags.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %s_flags.i, align 4
  %and89 = and i32 %69, -2
  br label %if.end90

if.end90:                                         ; preds = %if.end87, %if.end50
  %storemerge = phi i32 [ %or53, %if.end50 ], [ %and89, %if.end87 ]
  %70 = ptrtoint ptr %s_flags.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %storemerge, ptr %s_flags.i, align 4
  %71 = ptrtoint ptr %new_mount_opt to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %new_mount_opt, align 4
  %73 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %s_fs_info.i, align 16
  %s_mount_opt92 = getelementptr inbounds %struct.ufs_sb_info, ptr %74, i32 0, i32 8
  %75 = ptrtoint ptr %s_mount_opt92 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %72, ptr %s_mount_opt92, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end90, %do.end82, %do.end71, %if.then27, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.then27 ], [ 0, %if.end90 ], [ -22, %do.end71 ], [ -1, %do.end82 ], [ -22, %entry.cleanup_crit_edge ]
  %76 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %s_fs_info.i, align 16
  %s_lock94 = getelementptr inbounds %struct.ufs_sb_info, ptr %77, i32 0, i32 13
  call void @mutex_unlock(ptr noundef %s_lock94) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %new_mount_opt) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ufs_show_options(ptr noundef %seq, ptr nocapture noundef readonly %root) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %d_sb = getelementptr inbounds %struct.dentry, ptr %root, i32 0, i32 9
  %0 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %s_mount_opt = getelementptr inbounds %struct.ufs_sb_info, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %s_mount_opt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %s_mount_opt, align 4
  %and = and i32 %5, 65520
  br label %while.cond

while.cond:                                       ; preds = %while.cond.while.cond_crit_edge, %entry
  %tp.0 = phi ptr [ @tokens, %entry ], [ %incdec.ptr, %while.cond.while.cond_crit_edge ]
  %6 = ptrtoint ptr %tp.0 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tp.0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp.not = icmp eq i32 %7, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %and)
  %cmp2.not = icmp eq i32 %7, %and
  %or.cond = select i1 %cmp.not, i1 true, i1 %cmp2.not
  %incdec.ptr = getelementptr %struct.match_token, ptr %tp.0, i32 1
  br i1 %or.cond, label %do.body, label %while.cond.while.cond_crit_edge

while.cond.while.cond_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond

do.body:                                          ; preds = %while.cond
  br i1 %cmp.not, label %do.body6, label %do.end11, !prof !651

do.body6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ufs/super.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1399, 0\0A.popsection", ""() #10, !srcloc !652
  unreachable

do.end11:                                         ; preds = %do.body
  %pattern = getelementptr inbounds %struct.match_token, ptr %tp.0, i32 0, i32 1
  %8 = ptrtoint ptr %pattern to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pattern, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.249, ptr noundef %9) #10
  %10 = ptrtoint ptr %s_mount_opt to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %s_mount_opt, align 4
  %and13 = and i32 %11, 15
  br label %while.cond14

while.cond14:                                     ; preds = %while.cond14.while.cond14_crit_edge, %do.end11
  %tp.1 = phi ptr [ %tp.0, %do.end11 ], [ %incdec.ptr22, %while.cond14.while.cond14_crit_edge ]
  %12 = ptrtoint ptr %tp.1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tp.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %13)
  %cmp16.not = icmp eq i32 %13, 9
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %and13)
  %cmp19.not = icmp eq i32 %13, %and13
  %or.cond57 = select i1 %cmp16.not, i1 true, i1 %cmp19.not
  %incdec.ptr22 = getelementptr %struct.match_token, ptr %tp.1, i32 1
  br i1 %or.cond57, label %do.body24, label %while.cond14.while.cond14_crit_edge

while.cond14.while.cond14_crit_edge:              ; preds = %while.cond14
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond14

do.body24:                                        ; preds = %while.cond14
  br i1 %cmp16.not, label %do.body34, label %do.end42, !prof !651

do.body34:                                        ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ufs/super.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1405, 0\0A.popsection", ""() #10, !srcloc !653
  unreachable

do.end42:                                         ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #12
  %pattern43 = getelementptr inbounds %struct.match_token, ptr %tp.1, i32 0, i32 1
  %14 = ptrtoint ptr %pattern43 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pattern43, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.249, ptr noundef %15) #10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_atomic64_set(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ufs_put_super_internal(ptr noundef %sb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_put_super_internal.__UNIQUE_ID_ddebug372, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_put_super_internal, %do.body5)) #10
          to label %if.then [label %do.body5], !srcloc !647

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_put_super_internal.__UNIQUE_ID_ddebug372, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.3, i32 noundef 652, ptr noundef nonnull @.str.240) #10
  br label %do.body5

do.body5:                                         ; preds = %if.then, %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_put_super_internal.__UNIQUE_ID_ddebug373, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_put_super_internal, %do.end22)) #10
          to label %if.then19 [label %do.end22], !srcloc !647

if.then19:                                        ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_put_super_internal.__UNIQUE_ID_ddebug373, ptr noundef nonnull @.str.13) #10
  br label %do.end22

do.end22:                                         ; preds = %if.then19, %do.body5
  tail call fastcc void @ufs_put_cstotal(ptr noundef %sb)
  %s_cssize = getelementptr inbounds %struct.ufs_sb_private_info, ptr %3, i32 0, i32 31
  %4 = ptrtoint ptr %s_cssize to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %s_cssize, align 8
  %s_fsize = getelementptr inbounds %struct.ufs_sb_private_info, ptr %3, i32 0, i32 12
  %6 = ptrtoint ptr %s_fsize to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %s_fsize, align 8
  %add = add i32 %5, -1
  %sub = add i32 %add, %7
  %s_fshift = getelementptr inbounds %struct.ufs_sb_private_info, ptr %3, i32 0, i32 18
  %8 = ptrtoint ptr %s_fshift to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %s_fshift, align 8
  %shr = lshr i32 %sub, %9
  %s_csp = getelementptr inbounds %struct.ufs_sb_info, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %s_csp to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %s_csp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr)
  %cmp150.not = icmp eq i32 %shr, 0
  br i1 %cmp150.not, label %do.end22.for.cond34.preheader_crit_edge, label %for.body.lr.ph

do.end22.for.cond34.preheader_crit_edge:          ; preds = %do.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond34.preheader

for.body.lr.ph:                                   ; preds = %do.end22
  %s_bsize = getelementptr inbounds %struct.ufs_sb_private_info, ptr %3, i32 0, i32 11
  %s_fpb = getelementptr inbounds %struct.ufs_sb_private_info, ptr %3, i32 0, i32 13
  %s_csaddr = getelementptr inbounds %struct.ufs_sb_private_info, ptr %3, i32 0, i32 30
  br label %for.body

for.cond34.preheader:                             ; preds = %if.end28.for.cond34.preheader_crit_edge, %do.end22.for.cond34.preheader_crit_edge
  %s_cg_loaded = getelementptr inbounds %struct.ufs_sb_info, ptr %1, i32 0, i32 7
  %12 = ptrtoint ptr %s_cg_loaded to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %s_cg_loaded, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %cmp36155.not = icmp eq i16 %13, 0
  br i1 %cmp36155.not, label %for.cond34.preheader.for.body44.preheader_crit_edge, label %for.cond34.preheader.for.body38_crit_edge

for.cond34.preheader.for.body38_crit_edge:        ; preds = %for.cond34.preheader
  br label %for.body38

for.cond34.preheader.for.body44.preheader_crit_edge: ; preds = %for.cond34.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body44.preheader

for.body:                                         ; preds = %if.end28.for.body_crit_edge, %for.body.lr.ph
  %space.0153 = phi ptr [ %11, %for.body.lr.ph ], [ %add.ptr, %if.end28.for.body_crit_edge ]
  %i.0151 = phi i32 [ 0, %for.body.lr.ph ], [ %add33, %if.end28.for.body_crit_edge ]
  %14 = ptrtoint ptr %s_bsize to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %s_bsize, align 4
  %16 = ptrtoint ptr %s_fpb to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %s_fpb, align 4
  %add23 = add i32 %17, %i.0151
  call void @__sanitizer_cov_trace_cmp4(i32 %add23, i32 %shr)
  %cmp24 = icmp ugt i32 %add23, %shr
  br i1 %cmp24, label %if.then25, label %for.body.if.end28_crit_edge

for.body.if.end28_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end28

if.then25:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %sub26 = sub i32 %shr, %i.0151
  %18 = ptrtoint ptr %s_fsize to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %s_fsize, align 8
  %mul = mul i32 %19, %sub26
  br label %if.end28

if.end28:                                         ; preds = %if.then25, %for.body.if.end28_crit_edge
  %size.0 = phi i32 [ %mul, %if.then25 ], [ %15, %for.body.if.end28_crit_edge ]
  %20 = ptrtoint ptr %s_csaddr to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %s_csaddr, align 8
  %conv = zext i32 %i.0151 to i64
  %add29 = add i64 %21, %conv
  %conv30 = zext i32 %size.0 to i64
  %call31 = tail call ptr @_ubh_bread_(ptr noundef %3, ptr noundef %sb, i64 noundef %add29, i64 noundef %conv30) #10
  tail call void @_ubh_memcpyubh_(ptr noundef %3, ptr noundef %call31, ptr noundef %space.0153, i32 noundef %size.0) #10
  %add.ptr = getelementptr i8, ptr %space.0153, i32 %size.0
  tail call void @ubh_mark_buffer_uptodate(ptr noundef %call31, i32 noundef 1) #10
  tail call void @ubh_mark_buffer_dirty(ptr noundef %call31) #10
  tail call void @ubh_brelse(ptr noundef %call31) #10
  %22 = ptrtoint ptr %s_fpb to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %s_fpb, align 4
  %add33 = add i32 %23, %i.0151
  %cmp = icmp ugt i32 %shr, %add33
  br i1 %cmp, label %if.end28.for.body_crit_edge, label %if.end28.for.cond34.preheader_crit_edge

if.end28.for.cond34.preheader_crit_edge:          ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond34.preheader

if.end28.for.body_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.cond41.preheader:                             ; preds = %for.body38
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %i.1156)
  %cmp42157 = icmp ult i32 %i.1156, 7
  br i1 %cmp42157, label %for.cond41.preheader.for.body44.preheader_crit_edge, label %for.cond41.preheader.for.cond50.preheader_crit_edge

for.cond41.preheader.for.cond50.preheader_crit_edge: ; preds = %for.cond41.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond50.preheader

for.cond41.preheader.for.body44.preheader_crit_edge: ; preds = %for.cond41.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body44.preheader

for.body44.preheader:                             ; preds = %for.cond41.preheader.for.body44.preheader_crit_edge, %for.cond34.preheader.for.body44.preheader_crit_edge
  %i.2158.ph = phi i32 [ 0, %for.cond34.preheader.for.body44.preheader_crit_edge ], [ %inc, %for.cond41.preheader.for.body44.preheader_crit_edge ]
  br label %for.body44

for.body38:                                       ; preds = %for.body38.for.body38_crit_edge, %for.cond34.preheader.for.body38_crit_edge
  %i.1156 = phi i32 [ %inc, %for.body38.for.body38_crit_edge ], [ 0, %for.cond34.preheader.for.body38_crit_edge ]
  tail call void @ufs_put_cylinder(ptr noundef %sb, i32 noundef %i.1156) #10
  %arrayidx = getelementptr %struct.ufs_sb_info, ptr %1, i32 0, i32 5, i32 %i.1156
  %24 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx, align 4
  tail call void @kfree(ptr noundef %25) #10
  %inc = add nuw nsw i32 %i.1156, 1
  %26 = ptrtoint ptr %s_cg_loaded to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %s_cg_loaded, align 4
  %conv35 = zext i16 %27 to i32
  %cmp36 = icmp ult i32 %inc, %conv35
  br i1 %cmp36, label %for.body38.for.body38_crit_edge, label %for.cond41.preheader

for.body38.for.body38_crit_edge:                  ; preds = %for.body38
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body38

for.cond50.preheader:                             ; preds = %for.body44.for.cond50.preheader_crit_edge, %for.cond41.preheader.for.cond50.preheader_crit_edge
  %s_ncg = getelementptr inbounds %struct.ufs_sb_private_info, ptr %3, i32 0, i32 10
  %28 = ptrtoint ptr %s_ncg to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %s_ncg, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp51159.not = icmp eq i32 %29, 0
  br i1 %cmp51159.not, label %for.cond50.preheader.for.end57_crit_edge, label %for.body53.lr.ph

for.cond50.preheader.for.end57_crit_edge:         ; preds = %for.cond50.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end57

for.body53.lr.ph:                                 ; preds = %for.cond50.preheader
  %s_ucg = getelementptr inbounds %struct.ufs_sb_info, ptr %1, i32 0, i32 4
  br label %for.body53

for.body44:                                       ; preds = %for.body44.for.body44_crit_edge, %for.body44.preheader
  %i.2158 = phi i32 [ %inc48, %for.body44.for.body44_crit_edge ], [ %i.2158.ph, %for.body44.preheader ]
  %arrayidx46 = getelementptr %struct.ufs_sb_info, ptr %1, i32 0, i32 5, i32 %i.2158
  %30 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx46, align 4
  tail call void @kfree(ptr noundef %31) #10
  %inc48 = add nuw nsw i32 %i.2158, 1
  %exitcond.not = icmp eq i32 %inc48, 8
  br i1 %exitcond.not, label %for.body44.for.cond50.preheader_crit_edge, label %for.body44.for.body44_crit_edge

for.body44.for.body44_crit_edge:                  ; preds = %for.body44
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body44

for.body44.for.cond50.preheader_crit_edge:        ; preds = %for.body44
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond50.preheader

for.body53:                                       ; preds = %brelse.exit.for.body53_crit_edge, %for.body53.lr.ph
  %i.3160 = phi i32 [ 0, %for.body53.lr.ph ], [ %inc56, %brelse.exit.for.body53_crit_edge ]
  %32 = ptrtoint ptr %s_ucg to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %s_ucg, align 4
  %arrayidx54 = getelementptr ptr, ptr %33, i32 %i.3160
  %34 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx54, align 4
  %tobool.not.i = icmp eq ptr %35, null
  br i1 %tobool.not.i, label %for.body53.brelse.exit_crit_edge, label %if.then.i

for.body53.brelse.exit_crit_edge:                 ; preds = %for.body53
  call void @__sanitizer_cov_trace_pc() #12
  br label %brelse.exit

if.then.i:                                        ; preds = %for.body53
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__brelse(ptr noundef nonnull %35) #10
  br label %brelse.exit

brelse.exit:                                      ; preds = %if.then.i, %for.body53.brelse.exit_crit_edge
  %inc56 = add nuw i32 %i.3160, 1
  %36 = ptrtoint ptr %s_ncg to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %s_ncg, align 8
  %cmp51 = icmp ult i32 %inc56, %37
  br i1 %cmp51, label %brelse.exit.for.body53_crit_edge, label %brelse.exit.for.end57_crit_edge

brelse.exit.for.end57_crit_edge:                  ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end57

brelse.exit.for.body53_crit_edge:                 ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body53

for.end57:                                        ; preds = %brelse.exit.for.end57_crit_edge, %for.cond50.preheader.for.end57_crit_edge
  %s_ucg58 = getelementptr inbounds %struct.ufs_sb_info, ptr %1, i32 0, i32 4
  %38 = ptrtoint ptr %s_ucg58 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %s_ucg58, align 4
  tail call void @kfree(ptr noundef %39) #10
  tail call void @kfree(ptr noundef %11) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_put_super_internal.__UNIQUE_ID_ddebug374, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_put_super_internal, %do.body77)) #10
          to label %if.then73 [label %do.body77], !srcloc !647

if.then73:                                        ; preds = %for.end57
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_put_super_internal.__UNIQUE_ID_ddebug374, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.3, i32 noundef 682, ptr noundef nonnull @.str.240) #10
  br label %do.body77

do.body77:                                        ; preds = %if.then73, %for.end57
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_put_super_internal.__UNIQUE_ID_ddebug375, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_put_super_internal, %do.end94)) #10
          to label %if.then91 [label %do.end94], !srcloc !647

if.then91:                                        ; preds = %do.body77
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_put_super_internal.__UNIQUE_ID_ddebug375, ptr noundef nonnull @.str.118) #10
  br label %do.end94

do.end94:                                         ; preds = %if.then91, %do.body77
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @_ubh_bread_(ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_ubh_memcpyubh_(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubh_mark_buffer_uptodate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubh_brelse(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ufs_put_cylinder(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__brelse(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sync_filesystem(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @ufs_fh_to_dentry(ptr noundef %sb, ptr noundef %fid, i32 noundef %fh_len, i32 noundef %fh_type) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @generic_fh_to_dentry(ptr noundef %sb, ptr noundef %fid, i32 noundef %fh_len, i32 noundef %fh_type, ptr noundef nonnull @ufs_nfs_get_inode) #10
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @ufs_fh_to_parent(ptr noundef %sb, ptr noundef %fid, i32 noundef %fh_len, i32 noundef %fh_type) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @generic_fh_to_parent(ptr noundef %sb, ptr noundef %fid, i32 noundef %fh_len, i32 noundef %fh_type, ptr noundef nonnull @ufs_nfs_get_inode) #10
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @ufs_get_parent(ptr nocapture noundef readonly %child) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %child, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode.i, align 8
  %call1 = tail call i32 @ufs_inode_by_name(ptr noundef %1, ptr noundef nonnull @dotdot_name) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %d_sb = getelementptr inbounds %struct.dentry, ptr %child, i32 0, i32 9
  %2 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %d_sb, align 4
  %call3 = tail call ptr @ufs_iget(ptr noundef %3, i32 noundef %call1) #10
  %call4 = tail call ptr @d_obtain_alias(ptr noundef %call3) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call4, %if.end ], [ inttoptr (i32 -2 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @generic_fh_to_dentry(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @ufs_nfs_get_inode(ptr noundef %sb, i64 noundef %ino, i32 noundef %generation) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp8(i64 2, i64 %ino)
  %cmp = icmp ult i64 %ino, 2
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %s_ncg = getelementptr inbounds %struct.ufs_sb_private_info, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %s_ncg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %s_ncg, align 8
  %conv = zext i32 %5 to i64
  %s_ipg = getelementptr inbounds %struct.ufs_sb_private_info, ptr %3, i32 0, i32 36
  %6 = ptrtoint ptr %s_ipg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %s_ipg, align 4
  %conv1 = zext i32 %7 to i64
  %mul = mul nuw i64 %conv1, %conv
  call void @__sanitizer_cov_trace_cmp8(i64 %mul, i64 %ino)
  %cmp2 = icmp ult i64 %mul, %ino
  br i1 %cmp2, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %conv5 = trunc i64 %ino to i32
  %call6 = tail call ptr @ufs_iget(ptr noundef %sb, i32 noundef %conv5) #10
  %cmp.i = icmp ugt ptr %call6, inttoptr (i32 -4096 to ptr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %generation)
  %tobool.not = icmp eq i32 %generation, 0
  %or.cond = or i1 %tobool.not, %cmp.i
  br i1 %or.cond, label %if.end.cleanup_crit_edge, label %land.lhs.true

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end
  %i_generation = getelementptr inbounds %struct.inode, ptr %call6, i32 0, i32 49
  %8 = ptrtoint ptr %i_generation to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %i_generation, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %generation)
  %cmp11.not = icmp eq i32 %9, %generation
  br i1 %cmp11.not, label %land.lhs.true.cleanup_crit_edge, label %if.then13

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then13:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @iput(ptr noundef %call6) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then13, %land.lhs.true.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -116 to ptr), %if.then13 ], [ %call6, %land.lhs.true.cleanup_crit_edge ], [ inttoptr (i32 -116 to ptr), %lor.lhs.false.cleanup_crit_edge ], [ inttoptr (i32 -116 to ptr), %entry.cleanup_crit_edge ], [ %call6, %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iput(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @generic_fh_to_parent(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ufs_inode_by_name(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_obtain_alias(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_ubh_ubhcpymem_(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ufs_print_cylinder_stuff(ptr noundef readonly %sb, ptr noundef readonly %cg) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_print_cylinder_stuff.__UNIQUE_ID_ddebug329, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_print_cylinder_stuff, %do.body4)) #10
          to label %if.then [label %do.body4], !srcloc !647

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_print_cylinder_stuff.__UNIQUE_ID_ddebug329, ptr noundef nonnull @.str.258) #10
  br label %do.body4

do.body4:                                         ; preds = %if.then, %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_print_cylinder_stuff.__UNIQUE_ID_ddebug330, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_print_cylinder_stuff, %do.body21)) #10
          to label %if.then18 [label %do.body21], !srcloc !647

if.then18:                                        ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_print_cylinder_stuff.__UNIQUE_ID_ddebug330, ptr noundef nonnull @.str.260, i32 noundef 176) #10
  br label %do.body21

do.body21:                                        ; preds = %if.then18, %do.body4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_print_cylinder_stuff.__UNIQUE_ID_ddebug331, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_print_cylinder_stuff, %do.body39)) #10
          to label %if.then35 [label %do.body39], !srcloc !647

if.then35:                                        ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #12
  %cg_magic = getelementptr inbounds %struct.ufs_cylinder_group, ptr %cg, i32 0, i32 1
  %0 = ptrtoint ptr %cg_magic to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cg_magic, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i.i, align 16
  %s_bytesex.i = getelementptr inbounds %struct.ufs_sb_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %s_bytesex.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %s_bytesex.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.i = icmp eq i32 %5, 0
  %6 = tail call i32 @llvm.bswap.i32(i32 %1) #10
  %retval.0.i589 = select i1 %cmp.i, i32 %6, i32 %1
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_print_cylinder_stuff.__UNIQUE_ID_ddebug331, ptr noundef nonnull @.str.262, i32 noundef %retval.0.i589) #10
  br label %do.body39

do.body39:                                        ; preds = %if.then35, %do.body21
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_print_cylinder_stuff.__UNIQUE_ID_ddebug332, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_print_cylinder_stuff, %do.body57)) #10
          to label %if.then53 [label %do.body57], !srcloc !647

if.then53:                                        ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #12
  %cg_time = getelementptr inbounds %struct.ufs_cylinder_group, ptr %cg, i32 0, i32 2
  %7 = ptrtoint ptr %cg_time to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cg_time, align 8
  %s_fs_info.i.i590 = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %9 = ptrtoint ptr %s_fs_info.i.i590 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %s_fs_info.i.i590, align 16
  %s_bytesex.i591 = getelementptr inbounds %struct.ufs_sb_info, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %s_bytesex.i591 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %s_bytesex.i591, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp.i592 = icmp eq i32 %12, 0
  %13 = tail call i32 @llvm.bswap.i32(i32 %8) #10
  %retval.0.i593 = select i1 %cmp.i592, i32 %13, i32 %8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_print_cylinder_stuff.__UNIQUE_ID_ddebug332, ptr noundef nonnull @.str.264, i32 noundef %retval.0.i593) #10
  br label %do.body57

do.body57:                                        ; preds = %if.then53, %do.body39
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_print_cylinder_stuff.__UNIQUE_ID_ddebug333, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_print_cylinder_stuff, %do.body75)) #10
          to label %if.then71 [label %do.body75], !srcloc !647

if.then71:                                        ; preds = %do.body57
  call void @__sanitizer_cov_trace_pc() #12
  %cg_cgx = getelementptr inbounds %struct.ufs_cylinder_group, ptr %cg, i32 0, i32 3
  %14 = ptrtoint ptr %cg_cgx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %cg_cgx, align 4
  %s_fs_info.i.i594 = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %16 = ptrtoint ptr %s_fs_info.i.i594 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %s_fs_info.i.i594, align 16
  %s_bytesex.i595 = getelementptr inbounds %struct.ufs_sb_info, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %s_bytesex.i595 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %s_bytesex.i595, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp.i596 = icmp eq i32 %19, 0
  %20 = tail call i32 @llvm.bswap.i32(i32 %15) #10
  %retval.0.i597 = select i1 %cmp.i596, i32 %20, i32 %15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_print_cylinder_stuff.__UNIQUE_ID_ddebug333, ptr noundef nonnull @.str.266, i32 noundef %retval.0.i597) #10
  br label %do.body75

do.body75:                                        ; preds = %if.then71, %do.body57
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_print_cylinder_stuff.__UNIQUE_ID_ddebug334, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_print_cylinder_stuff, %do.body93)) #10
          to label %if.then89 [label %do.body93], !srcloc !647

if.then89:                                        ; preds = %do.body75
  call void @__sanitizer_cov_trace_pc() #12
  %cg_ncyl = getelementptr inbounds %struct.ufs_cylinder_group, ptr %cg, i32 0, i32 4
  %21 = ptrtoint ptr %cg_ncyl to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %cg_ncyl, align 8
  %s_fs_info.i.i598 = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %23 = ptrtoint ptr %s_fs_info.i.i598 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %s_fs_info.i.i598, align 16
  %s_bytesex.i599 = getelementptr inbounds %struct.ufs_sb_info, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %s_bytesex.i599 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %s_bytesex.i599, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp.i600 = icmp eq i32 %26, 0
  %27 = tail call i16 @llvm.bswap.i16(i16 %22) #10
  %retval.0.i601 = select i1 %cmp.i600, i16 %27, i16 %22
  %conv = zext i16 %retval.0.i601 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_print_cylinder_stuff.__UNIQUE_ID_ddebug334, ptr noundef nonnull @.str.268, i32 noundef %conv) #10
  br label %do.body93

do.body93:                                        ; preds = %if.then89, %do.body75
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_print_cylinder_stuff.__UNIQUE_ID_ddebug335, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_print_cylinder_stuff, %do.body112)) #10
          to label %if.then107 [label %do.body112], !srcloc !647

if.then107:                                       ; preds = %do.body93
  call void @__sanitizer_cov_trace_pc() #12
  %cg_niblk = getelementptr inbounds %struct.ufs_cylinder_group, ptr %cg, i32 0, i32 5
  %28 = ptrtoint ptr %cg_niblk to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %cg_niblk, align 2
  %s_fs_info.i.i602 = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %30 = ptrtoint ptr %s_fs_info.i.i602 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %s_fs_info.i.i602, align 16
  %s_bytesex.i603 = getelementptr inbounds %struct.ufs_sb_info, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %s_bytesex.i603 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %s_bytesex.i603, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp.i604 = icmp eq i32 %33, 0
  %34 = tail call i16 @llvm.bswap.i16(i16 %29) #10
  %retval.0.i605 = select i1 %cmp.i604, i16 %34, i16 %29
  %conv109 = zext i16 %retval.0.i605 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_print_cylinder_stuff.__UNIQUE_ID_ddebug335, ptr noundef nonnull @.str.270, i32 noundef %conv109) #10
  br label %do.body112

do.body112:                                       ; preds = %if.then107, %do.body93
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_print_cylinder_stuff.__UNIQUE_ID_ddebug336, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_print_cylinder_stuff, %do.body130)) #10
          to label %if.then126 [label %do.body130], !srcloc !647

if.then126:                                       ; preds = %do.body112
  call void @__sanitizer_cov_trace_pc() #12
  %cg_ndblk = getelementptr inbounds %struct.ufs_cylinder_group, ptr %cg, i32 0, i32 6
  %35 = ptrtoint ptr %cg_ndblk to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %cg_ndblk, align 4
  %s_fs_info.i.i606 = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %37 = ptrtoint ptr %s_fs_info.i.i606 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %s_fs_info.i.i606, align 16
  %s_bytesex.i607 = getelementptr inbounds %struct.ufs_sb_info, ptr %38, i32 0, i32 2
  %39 = ptrtoint ptr %s_bytesex.i607 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %s_bytesex.i607, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp.i608 = icmp eq i32 %40, 0
  %41 = tail call i32 @llvm.bswap.i32(i32 %36) #10
  %retval.0.i609 = select i1 %cmp.i608, i32 %41, i32 %36
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_print_cylinder_stuff.__UNIQUE_ID_ddebug336, ptr noundef nonnull @.str.272, i32 noundef %retval.0.i609) #10
  br label %do.body130

do.body130:                                       ; preds = %if.then126, %do.body112
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_print_cylinder_stuff.__UNIQUE_ID_ddebug337, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_print_cylinder_stuff, %do.body148)) #10
          to label %if.then144 [label %do.body148], !srcloc !647

if.then144:                                       ; preds = %do.body130
  call void @__sanitizer_cov_trace_pc() #12
  %cg_cs = getelementptr inbounds %struct.ufs_cylinder_group, ptr %cg, i32 0, i32 7
  %42 = ptrtoint ptr %cg_cs to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %cg_cs, align 8
  %s_fs_info.i.i610 = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %44 = ptrtoint ptr %s_fs_info.i.i610 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %s_fs_info.i.i610, align 16
  %s_bytesex.i611 = getelementptr inbounds %struct.ufs_sb_info, ptr %45, i32 0, i32 2
  %46 = ptrtoint ptr %s_bytesex.i611 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %s_bytesex.i611, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %cmp.i612 = icmp eq i32 %47, 0
  %48 = tail call i32 @llvm.bswap.i32(i32 %43) #10
  %retval.0.i613 = select i1 %cmp.i612, i32 %48, i32 %43
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_print_cylinder_stuff.__UNIQUE_ID_ddebug337, ptr noundef nonnull @.str.274, i32 noundef %retval.0.i613) #10
  br label %do.body148

do.body148:                                       ; preds = %if.then144, %do.body130
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_print_cylinder_stuff.__UNIQUE_ID_ddebug338, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_print_cylinder_stuff, %do.body167)) #10
          to label %if.then162 [label %do.body167], !srcloc !647

if.then162:                                       ; preds = %do.body148
  call void @__sanitizer_cov_trace_pc() #12
  %cs_nbfree = getelementptr inbounds %struct.ufs_cylinder_group, ptr %cg, i32 0, i32 7, i32 1
  %49 = ptrtoint ptr %cs_nbfree to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %cs_nbfree, align 4
  %s_fs_info.i.i614 = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %51 = ptrtoint ptr %s_fs_info.i.i614 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %s_fs_info.i.i614, align 16
  %s_bytesex.i615 = getelementptr inbounds %struct.ufs_sb_info, ptr %52, i32 0, i32 2
  %53 = ptrtoint ptr %s_bytesex.i615 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %s_bytesex.i615, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %cmp.i616 = icmp eq i32 %54, 0
  %55 = tail call i32 @llvm.bswap.i32(i32 %50) #10
  %retval.0.i617 = select i1 %cmp.i616, i32 %55, i32 %50
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_print_cylinder_stuff.__UNIQUE_ID_ddebug338, ptr noundef nonnull @.str.276, i32 noundef %retval.0.i617) #10
  br label %do.body167

do.body167:                                       ; preds = %if.then162, %do.body148
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_print_cylinder_stuff.__UNIQUE_ID_ddebug339, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_print_cylinder_stuff, %do.body186)) #10
          to label %if.then181 [label %do.body186], !srcloc !647

if.then181:                                       ; preds = %do.body167
  call void @__sanitizer_cov_trace_pc() #12
  %cs_nifree = getelementptr inbounds %struct.ufs_cylinder_group, ptr %cg, i32 0, i32 7, i32 2
  %56 = ptrtoint ptr %cs_nifree to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %cs_nifree, align 8
  %s_fs_info.i.i618 = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %58 = ptrtoint ptr %s_fs_info.i.i618 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %s_fs_info.i.i618, align 16
  %s_bytesex.i619 = getelementptr inbounds %struct.ufs_sb_info, ptr %59, i32 0, i32 2
  %60 = ptrtoint ptr %s_bytesex.i619 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %s_bytesex.i619, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %cmp.i620 = icmp eq i32 %61, 0
  %62 = tail call i32 @llvm.bswap.i32(i32 %57) #10
  %retval.0.i621 = select i1 %cmp.i620, i32 %62, i32 %57
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_print_cylinder_stuff.__UNIQUE_ID_ddebug339, ptr noundef nonnull @.str.278, i32 noundef %retval.0.i621) #10
  br label %do.body186

do.body186:                                       ; preds = %if.then181, %do.body167
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_print_cylinder_stuff.__UNIQUE_ID_ddebug340, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_print_cylinder_stuff, %do.body205)) #10
          to label %if.then200 [label %do.body205], !srcloc !647

if.then200:                                       ; preds = %do.body186
  call void @__sanitizer_cov_trace_pc() #12
  %cs_nffree = getelementptr inbounds %struct.ufs_cylinder_group, ptr %cg, i32 0, i32 7, i32 3
  %63 = ptrtoint ptr %cs_nffree to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %cs_nffree, align 4
  %s_fs_info.i.i622 = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %65 = ptrtoint ptr %s_fs_info.i.i622 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %s_fs_info.i.i622, align 16
  %s_bytesex.i623 = getelementptr inbounds %struct.ufs_sb_info, ptr %66, i32 0, i32 2
  %67 = ptrtoint ptr %s_bytesex.i623 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %s_bytesex.i623, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %cmp.i624 = icmp eq i32 %68, 0
  %69 = tail call i32 @llvm.bswap.i32(i32 %64) #10
  %retval.0.i625 = select i1 %cmp.i624, i32 %69, i32 %64
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_print_cylinder_stuff.__UNIQUE_ID_ddebug340, ptr noundef nonnull @.str.280, i32 noundef %retval.0.i625) #10
  br label %do.body205

do.body205:                                       ; preds = %if.then200, %do.body186
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_print_cylinder_stuff.__UNIQUE_ID_ddebug341, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_print_cylinder_stuff, %do.body223)) #10
          to label %if.then219 [label %do.body223], !srcloc !647

if.then219:                                       ; preds = %do.body205
  call void @__sanitizer_cov_trace_pc() #12
  %cg_rotor = getelementptr inbounds %struct.ufs_cylinder_group, ptr %cg, i32 0, i32 8
  %70 = ptrtoint ptr %cg_rotor to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %cg_rotor, align 8
  %s_fs_info.i.i626 = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %72 = ptrtoint ptr %s_fs_info.i.i626 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %s_fs_info.i.i626, align 16
  %s_bytesex.i627 = getelementptr inbounds %struct.ufs_sb_info, ptr %73, i32 0, i32 2
  %74 = ptrtoint ptr %s_bytesex.i627 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %s_bytesex.i627, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %cmp.i628 = icmp eq i32 %75, 0
  %76 = tail call i32 @llvm.bswap.i32(i32 %71) #10
  %retval.0.i629 = select i1 %cmp.i628, i32 %76, i32 %71
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_print_cylinder_stuff.__UNIQUE_ID_ddebug341, ptr noundef nonnull @.str.282, i32 noundef %retval.0.i629) #10
  br label %do.body223

do.body223:                                       ; preds = %if.then219, %do.body205
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_print_cylinder_stuff.__UNIQUE_ID_ddebug342, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_print_cylinder_stuff, %do.body241)) #10
          to label %if.then237 [label %do.body241], !srcloc !647

if.then237:                                       ; preds = %do.body223
  call void @__sanitizer_cov_trace_pc() #12
  %cg_frotor = getelementptr inbounds %struct.ufs_cylinder_group, ptr %cg, i32 0, i32 9
  %77 = ptrtoint ptr %cg_frotor to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %cg_frotor, align 4
  %s_fs_info.i.i630 = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %79 = ptrtoint ptr %s_fs_info.i.i630 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %s_fs_info.i.i630, align 16
  %s_bytesex.i631 = getelementptr inbounds %struct.ufs_sb_info, ptr %80, i32 0, i32 2
  %81 = ptrtoint ptr %s_bytesex.i631 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %s_bytesex.i631, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %cmp.i632 = icmp eq i32 %82, 0
  %83 = tail call i32 @llvm.bswap.i32(i32 %78) #10
  %retval.0.i633 = select i1 %cmp.i632, i32 %83, i32 %78
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_print_cylinder_stuff.__UNIQUE_ID_ddebug342, ptr noundef nonnull @.str.284, i32 noundef %retval.0.i633) #10
  br label %do.body241

do.body241:                                       ; preds = %if.then237, %do.body223
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_print_cylinder_stuff.__UNIQUE_ID_ddebug343, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_print_cylinder_stuff, %do.body259)) #10
          to label %if.then255 [label %do.body259], !srcloc !647

if.then255:                                       ; preds = %do.body241
  call void @__sanitizer_cov_trace_pc() #12
  %cg_irotor = getelementptr inbounds %struct.ufs_cylinder_group, ptr %cg, i32 0, i32 10
  %84 = ptrtoint ptr %cg_irotor to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %cg_irotor, align 8
  %s_fs_info.i.i634 = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %86 = ptrtoint ptr %s_fs_info.i.i634 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %s_fs_info.i.i634, align 16
  %s_bytesex.i635 = getelementptr inbounds %struct.ufs_sb_info, ptr %87, i32 0, i32 2
  %88 = ptrtoint ptr %s_bytesex.i635 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %s_bytesex.i635, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %89)
  %cmp.i636 = icmp eq i32 %89, 0
  %90 = tail call i32 @llvm.bswap.i32(i32 %85) #10
  %retval.0.i637 = select i1 %cmp.i636, i32 %90, i32 %85
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_print_cylinder_stuff.__UNIQUE_ID_ddebug343, ptr noundef nonnull @.str.286, i32 noundef %retval.0.i637) #10
  br label %do.body259

do.body259:                                       ; preds = %if.then255, %do.body241
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_print_cylinder_stuff.__UNIQUE_ID_ddebug344, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_print_cylinder_stuff, %do.body298)) #10
          to label %if.then273 [label %do.body298], !srcloc !647

if.then273:                                       ; preds = %do.body259
  call void @__sanitizer_cov_trace_pc() #12
  %cg_frsum = getelementptr inbounds %struct.ufs_cylinder_group, ptr %cg, i32 0, i32 11
  %91 = ptrtoint ptr %cg_frsum to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %cg_frsum, align 4
  %s_fs_info.i.i638 = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %93 = ptrtoint ptr %s_fs_info.i.i638 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %s_fs_info.i.i638, align 16
  %s_bytesex.i639 = getelementptr inbounds %struct.ufs_sb_info, ptr %94, i32 0, i32 2
  %95 = ptrtoint ptr %s_bytesex.i639 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %s_bytesex.i639, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %96)
  %cmp.i640 = icmp eq i32 %96, 0
  %97 = tail call i32 @llvm.bswap.i32(i32 %92) #10
  %retval.0.i641 = select i1 %cmp.i640, i32 %97, i32 %92
  %arrayidx276 = getelementptr %struct.ufs_cylinder_group, ptr %cg, i32 0, i32 11, i32 1
  %98 = ptrtoint ptr %arrayidx276 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %arrayidx276, align 4
  %100 = tail call i32 @llvm.bswap.i32(i32 %99) #10
  %retval.0.i645 = select i1 %cmp.i640, i32 %100, i32 %99
  %arrayidx279 = getelementptr %struct.ufs_cylinder_group, ptr %cg, i32 0, i32 11, i32 2
  %101 = ptrtoint ptr %arrayidx279 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %arrayidx279, align 4
  %103 = tail call i32 @llvm.bswap.i32(i32 %102) #10
  %retval.0.i649 = select i1 %cmp.i640, i32 %103, i32 %102
  %arrayidx282 = getelementptr %struct.ufs_cylinder_group, ptr %cg, i32 0, i32 11, i32 3
  %104 = ptrtoint ptr %arrayidx282 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %arrayidx282, align 4
  %106 = tail call i32 @llvm.bswap.i32(i32 %105) #10
  %retval.0.i653 = select i1 %cmp.i640, i32 %106, i32 %105
  %arrayidx285 = getelementptr %struct.ufs_cylinder_group, ptr %cg, i32 0, i32 11, i32 4
  %107 = ptrtoint ptr %arrayidx285 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %arrayidx285, align 4
  %109 = tail call i32 @llvm.bswap.i32(i32 %108) #10
  %retval.0.i657 = select i1 %cmp.i640, i32 %109, i32 %108
  %arrayidx288 = getelementptr %struct.ufs_cylinder_group, ptr %cg, i32 0, i32 11, i32 5
  %110 = ptrtoint ptr %arrayidx288 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %arrayidx288, align 4
  %112 = tail call i32 @llvm.bswap.i32(i32 %111) #10
  %retval.0.i661 = select i1 %cmp.i640, i32 %112, i32 %111
  %arrayidx291 = getelementptr %struct.ufs_cylinder_group, ptr %cg, i32 0, i32 11, i32 6
  %113 = ptrtoint ptr %arrayidx291 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %arrayidx291, align 4
  %115 = tail call i32 @llvm.bswap.i32(i32 %114) #10
  %retval.0.i665 = select i1 %cmp.i640, i32 %115, i32 %114
  %arrayidx294 = getelementptr %struct.ufs_cylinder_group, ptr %cg, i32 0, i32 11, i32 7
  %116 = ptrtoint ptr %arrayidx294 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %arrayidx294, align 4
  %118 = tail call i32 @llvm.bswap.i32(i32 %117) #10
  %retval.0.i669 = select i1 %cmp.i640, i32 %118, i32 %117
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_print_cylinder_stuff.__UNIQUE_ID_ddebug344, ptr noundef nonnull @.str.288, i32 noundef %retval.0.i641, i32 noundef %retval.0.i645, i32 noundef %retval.0.i649, i32 noundef %retval.0.i653, i32 noundef %retval.0.i657, i32 noundef %retval.0.i661, i32 noundef %retval.0.i665, i32 noundef %retval.0.i669) #10
  br label %do.body298

do.body298:                                       ; preds = %if.then273, %do.body259
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_print_cylinder_stuff.__UNIQUE_ID_ddebug345, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_print_cylinder_stuff, %do.body316)) #10
          to label %if.then312 [label %do.body316], !srcloc !647

if.then312:                                       ; preds = %do.body298
  call void @__sanitizer_cov_trace_pc() #12
  %cg_btotoff = getelementptr inbounds %struct.ufs_cylinder_group, ptr %cg, i32 0, i32 12
  %119 = ptrtoint ptr %cg_btotoff to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %cg_btotoff, align 4
  %s_fs_info.i.i670 = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %121 = ptrtoint ptr %s_fs_info.i.i670 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %s_fs_info.i.i670, align 16
  %s_bytesex.i671 = getelementptr inbounds %struct.ufs_sb_info, ptr %122, i32 0, i32 2
  %123 = ptrtoint ptr %s_bytesex.i671 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %s_bytesex.i671, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %124)
  %cmp.i672 = icmp eq i32 %124, 0
  %125 = tail call i32 @llvm.bswap.i32(i32 %120) #10
  %retval.0.i673 = select i1 %cmp.i672, i32 %125, i32 %120
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_print_cylinder_stuff.__UNIQUE_ID_ddebug345, ptr noundef nonnull @.str.290, i32 noundef %retval.0.i673) #10
  br label %do.body316

do.body316:                                       ; preds = %if.then312, %do.body298
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_print_cylinder_stuff.__UNIQUE_ID_ddebug346, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_print_cylinder_stuff, %do.body334)) #10
          to label %if.then330 [label %do.body334], !srcloc !647

if.then330:                                       ; preds = %do.body316
  call void @__sanitizer_cov_trace_pc() #12
  %cg_boff = getelementptr inbounds %struct.ufs_cylinder_group, ptr %cg, i32 0, i32 13
  %126 = ptrtoint ptr %cg_boff to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %cg_boff, align 8
  %s_fs_info.i.i674 = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %128 = ptrtoint ptr %s_fs_info.i.i674 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %s_fs_info.i.i674, align 16
  %s_bytesex.i675 = getelementptr inbounds %struct.ufs_sb_info, ptr %129, i32 0, i32 2
  %130 = ptrtoint ptr %s_bytesex.i675 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %s_bytesex.i675, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %131)
  %cmp.i676 = icmp eq i32 %131, 0
  %132 = tail call i32 @llvm.bswap.i32(i32 %127) #10
  %retval.0.i677 = select i1 %cmp.i676, i32 %132, i32 %127
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_print_cylinder_stuff.__UNIQUE_ID_ddebug346, ptr noundef nonnull @.str.292, i32 noundef %retval.0.i677) #10
  br label %do.body334

do.body334:                                       ; preds = %if.then330, %do.body316
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_print_cylinder_stuff.__UNIQUE_ID_ddebug347, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_print_cylinder_stuff, %do.body352)) #10
          to label %if.then348 [label %do.body352], !srcloc !647

if.then348:                                       ; preds = %do.body334
  call void @__sanitizer_cov_trace_pc() #12
  %cg_iusedoff = getelementptr inbounds %struct.ufs_cylinder_group, ptr %cg, i32 0, i32 14
  %133 = ptrtoint ptr %cg_iusedoff to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %cg_iusedoff, align 4
  %s_fs_info.i.i678 = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %135 = ptrtoint ptr %s_fs_info.i.i678 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %s_fs_info.i.i678, align 16
  %s_bytesex.i679 = getelementptr inbounds %struct.ufs_sb_info, ptr %136, i32 0, i32 2
  %137 = ptrtoint ptr %s_bytesex.i679 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %s_bytesex.i679, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %138)
  %cmp.i680 = icmp eq i32 %138, 0
  %139 = tail call i32 @llvm.bswap.i32(i32 %134) #10
  %retval.0.i681 = select i1 %cmp.i680, i32 %139, i32 %134
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_print_cylinder_stuff.__UNIQUE_ID_ddebug347, ptr noundef nonnull @.str.294, i32 noundef %retval.0.i681) #10
  br label %do.body352

do.body352:                                       ; preds = %if.then348, %do.body334
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_print_cylinder_stuff.__UNIQUE_ID_ddebug348, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_print_cylinder_stuff, %do.body370)) #10
          to label %if.then366 [label %do.body370], !srcloc !647

if.then366:                                       ; preds = %do.body352
  call void @__sanitizer_cov_trace_pc() #12
  %cg_freeoff = getelementptr inbounds %struct.ufs_cylinder_group, ptr %cg, i32 0, i32 15
  %140 = ptrtoint ptr %cg_freeoff to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %cg_freeoff, align 8
  %s_fs_info.i.i682 = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %142 = ptrtoint ptr %s_fs_info.i.i682 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %s_fs_info.i.i682, align 16
  %s_bytesex.i683 = getelementptr inbounds %struct.ufs_sb_info, ptr %143, i32 0, i32 2
  %144 = ptrtoint ptr %s_bytesex.i683 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %s_bytesex.i683, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %145)
  %cmp.i684 = icmp eq i32 %145, 0
  %146 = tail call i32 @llvm.bswap.i32(i32 %141) #10
  %retval.0.i685 = select i1 %cmp.i684, i32 %146, i32 %141
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_print_cylinder_stuff.__UNIQUE_ID_ddebug348, ptr noundef nonnull @.str.296, i32 noundef %retval.0.i685) #10
  br label %do.body370

do.body370:                                       ; preds = %if.then366, %do.body352
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_print_cylinder_stuff.__UNIQUE_ID_ddebug349, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_print_cylinder_stuff, %do.body388)) #10
          to label %if.then384 [label %do.body388], !srcloc !647

if.then384:                                       ; preds = %do.body370
  call void @__sanitizer_cov_trace_pc() #12
  %cg_nextfreeoff = getelementptr inbounds %struct.ufs_cylinder_group, ptr %cg, i32 0, i32 16
  %147 = ptrtoint ptr %cg_nextfreeoff to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %cg_nextfreeoff, align 4
  %s_fs_info.i.i686 = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %149 = ptrtoint ptr %s_fs_info.i.i686 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %s_fs_info.i.i686, align 16
  %s_bytesex.i687 = getelementptr inbounds %struct.ufs_sb_info, ptr %150, i32 0, i32 2
  %151 = ptrtoint ptr %s_bytesex.i687 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %s_bytesex.i687, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %152)
  %cmp.i688 = icmp eq i32 %152, 0
  %153 = tail call i32 @llvm.bswap.i32(i32 %148) #10
  %retval.0.i689 = select i1 %cmp.i688, i32 %153, i32 %148
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_print_cylinder_stuff.__UNIQUE_ID_ddebug349, ptr noundef nonnull @.str.298, i32 noundef %retval.0.i689) #10
  br label %do.body388

do.body388:                                       ; preds = %if.then384, %do.body370
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_print_cylinder_stuff.__UNIQUE_ID_ddebug350, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_print_cylinder_stuff, %do.body406)) #10
          to label %if.then402 [label %do.body406], !srcloc !647

if.then402:                                       ; preds = %do.body388
  call void @__sanitizer_cov_trace_pc() #12
  %cg_u = getelementptr inbounds %struct.ufs_cylinder_group, ptr %cg, i32 0, i32 17
  %154 = ptrtoint ptr %cg_u to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %cg_u, align 8
  %s_fs_info.i.i690 = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %156 = ptrtoint ptr %s_fs_info.i.i690 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %s_fs_info.i.i690, align 16
  %s_bytesex.i691 = getelementptr inbounds %struct.ufs_sb_info, ptr %157, i32 0, i32 2
  %158 = ptrtoint ptr %s_bytesex.i691 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %s_bytesex.i691, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %159)
  %cmp.i692 = icmp eq i32 %159, 0
  %160 = tail call i32 @llvm.bswap.i32(i32 %155) #10
  %retval.0.i693 = select i1 %cmp.i692, i32 %160, i32 %155
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_print_cylinder_stuff.__UNIQUE_ID_ddebug350, ptr noundef nonnull @.str.300, i32 noundef %retval.0.i693) #10
  br label %do.body406

do.body406:                                       ; preds = %if.then402, %do.body388
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_print_cylinder_stuff.__UNIQUE_ID_ddebug351, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_print_cylinder_stuff, %do.body425)) #10
          to label %if.then420 [label %do.body425], !srcloc !647

if.then420:                                       ; preds = %do.body406
  call void @__sanitizer_cov_trace_pc() #12
  %cg_clusteroff = getelementptr inbounds %struct.ufs_cylinder_group, ptr %cg, i32 0, i32 17, i32 0, i32 1
  %161 = ptrtoint ptr %cg_clusteroff to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %cg_clusteroff, align 4
  %s_fs_info.i.i694 = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %163 = ptrtoint ptr %s_fs_info.i.i694 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %s_fs_info.i.i694, align 16
  %s_bytesex.i695 = getelementptr inbounds %struct.ufs_sb_info, ptr %164, i32 0, i32 2
  %165 = ptrtoint ptr %s_bytesex.i695 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %s_bytesex.i695, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %166)
  %cmp.i696 = icmp eq i32 %166, 0
  %167 = tail call i32 @llvm.bswap.i32(i32 %162) #10
  %retval.0.i697 = select i1 %cmp.i696, i32 %167, i32 %162
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_print_cylinder_stuff.__UNIQUE_ID_ddebug351, ptr noundef nonnull @.str.302, i32 noundef %retval.0.i697) #10
  br label %do.body425

do.body425:                                       ; preds = %if.then420, %do.body406
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_print_cylinder_stuff.__UNIQUE_ID_ddebug352, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_print_cylinder_stuff, %do.body444)) #10
          to label %if.then439 [label %do.body444], !srcloc !647

if.then439:                                       ; preds = %do.body425
  call void @__sanitizer_cov_trace_pc() #12
  %cg_nclusterblks = getelementptr inbounds %struct.ufs_cylinder_group, ptr %cg, i32 0, i32 17, i32 0, i32 2
  %168 = ptrtoint ptr %cg_nclusterblks to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %cg_nclusterblks, align 8
  %s_fs_info.i.i698 = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %170 = ptrtoint ptr %s_fs_info.i.i698 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %s_fs_info.i.i698, align 16
  %s_bytesex.i699 = getelementptr inbounds %struct.ufs_sb_info, ptr %171, i32 0, i32 2
  %172 = ptrtoint ptr %s_bytesex.i699 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %s_bytesex.i699, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %173)
  %cmp.i700 = icmp eq i32 %173, 0
  %174 = tail call i32 @llvm.bswap.i32(i32 %169) #10
  %retval.0.i701 = select i1 %cmp.i700, i32 %174, i32 %169
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_print_cylinder_stuff.__UNIQUE_ID_ddebug352, ptr noundef nonnull @.str.304, i32 noundef %retval.0.i701) #10
  br label %do.body444

do.body444:                                       ; preds = %if.then439, %do.body425
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_print_cylinder_stuff.__UNIQUE_ID_ddebug353, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_print_cylinder_stuff, %do.end460)) #10
          to label %if.then458 [label %do.end460], !srcloc !647

if.then458:                                       ; preds = %do.body444
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_print_cylinder_stuff.__UNIQUE_ID_ddebug353, ptr noundef nonnull @.str.233) #10
  br label %do.end460

do.end460:                                        ; preds = %if.then458, %do.body444
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__bread_gfp(ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_barrier() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @init_inodecache() unnamed_addr #6 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @kmem_cache_create_usercopy(ptr noundef nonnull @.str.305, i32 noundef 1112, i32 noundef 0, i32 noundef 68288512, i32 noundef 0, i32 noundef 120, ptr noundef nonnull @init_once) #10
  store ptr %call, ptr @ufs_inode_cachep, align 4
  %cmp = icmp eq ptr %call, null
  %. = select i1 %cmp, i32 -12, i32 0
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_filesystem(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create_usercopy(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @init_once(ptr noundef %foo) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %vfs_inode = getelementptr inbounds %struct.ufs_inode_info, ptr %foo, i32 0, i32 11
  tail call void @inode_init_once(ptr noundef %vfs_inode) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @inode_init_once(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.usub.sat.i64(i64, i64) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_handle_no_return()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 295)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 295)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold noreturn null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold noreturn nounwind }
attributes #14 = { cold nounwind }
attributes #15 = { cold }
attributes #16 = { nounwind allocsize(2) }
attributes #17 = { nounwind readnone }
attributes #18 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !11, !12, !13, !15, !16, !17, !18, !20, !22, !24, !26, !27, !29, !31, !33, !34, !35, !36, !37, !38, !39, !41, !42, !43, !44, !46, !47, !49, !50, !52, !53, !54, !55, !57, !58, !59, !61, !62, !63, !65, !66, !67, !68, !70, !71, !72, !73, !75, !76, !77, !78, !80, !81, !82, !83, !85, !86, !87, !88, !90, !91, !92, !93, !95, !96, !97, !99, !100, !101, !102, !104, !105, !106, !108, !109, !110, !111, !113, !114, !115, !117, !118, !119, !120, !122, !123, !124, !126, !127, !128, !129, !131, !132, !133, !135, !136, !137, !139, !140, !141, !143, !144, !145, !147, !148, !149, !151, !152, !153, !155, !156, !157, !159, !160, !161, !163, !164, !165, !167, !168, !169, !171, !172, !173, !175, !176, !177, !178, !180, !181, !182, !183, !185, !186, !187, !188, !190, !191, !192, !193, !195, !196, !197, !198, !200, !201, !202, !204, !205, !206, !208, !209, !210, !212, !213, !214, !216, !217, !218, !219, !221, !223, !224, !225, !226, !228, !229, !230, !231, !233, !234, !235, !236, !238, !239, !240, !242, !243, !245, !246, !247, !249, !250, !252, !253, !254, !256, !258, !259, !260, !262, !263, !264, !266, !268, !270, !272, !274, !276, !278, !280, !282, !284, !286, !288, !290, !292, !294, !296, !298, !299, !300, !301, !303, !304, !305, !307, !308, !309, !311, !312, !313, !315, !316, !317, !319, !320, !321, !323, !324, !325, !327, !328, !329, !331, !332, !333, !335, !336, !337, !339, !340, !341, !343, !344, !345, !347, !348, !349, !351, !352, !353, !355, !356, !357, !359, !360, !361, !363, !364, !365, !367, !368, !369, !371, !372, !373, !375, !376, !377, !379, !380, !381, !383, !384, !385, !387, !388, !389, !391, !392, !393, !395, !396, !397, !399, !400, !401, !403, !404, !405, !407, !408, !409, !411, !412, !413, !415, !416, !417, !419, !420, !421, !423, !424, !425, !427, !428, !429, !431, !432, !433, !435, !436, !437, !439, !440, !441, !443, !444, !445, !447, !448, !449, !451, !452, !453, !455, !456, !457, !459, !460, !461, !463, !464, !465, !467, !468, !469, !471, !473, !474, !475, !476, !478, !479, !481, !483, !484, !485, !487, !488, !490, !491, !492, !494, !495, !497, !498, !499, !500, !502, !503, !504, !506, !507, !508, !510, !512, !514, !515, !516, !517, !518, !520, !521, !523, !524, !525, !527, !528, !529, !530, !532, !533, !535, !536, !538, !539, !540, !541, !543, !544, !545, !547, !548, !549, !551, !552, !553, !555, !556, !557, !559, !560, !561, !563, !564, !565, !567, !568, !569, !571, !572, !573, !575, !576, !577, !579, !580, !581, !583, !584, !585, !587, !588, !589, !591, !592, !593, !595, !596, !597, !599, !600, !601, !603, !604, !605, !607, !608, !609, !611, !612, !613, !615, !616, !617, !619, !620, !621, !623, !624, !625, !627, !628, !629, !631, !632, !633, !635}
!llvm.module.flags = !{!637, !638, !639, !640, !641, !642, !643, !644}
!llvm.ident = !{!645}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/ufs/super.c", i32 293, i32 9}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../fs/ufs/super.c", i32 299, i32 3}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @ufs_error._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @ufs_error._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../fs/ufs/super.c", i32 325, i32 2}
!10 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @ufs_panic._entry, !9, !"_entry", i1 false, i1 false}
!12 = !{ptr @ufs_panic._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../fs/ufs/super.c", i32 339, i32 2}
!15 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @ufs_warning._entry, !14, !"_entry", i1 false, i1 false}
!17 = !{ptr @ufs_warning._entry_ptr, !14, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @__UNIQUE_ID_alias426, !19, !"__UNIQUE_ID_alias426", i1 false, i1 false}
!19 = !{!"../fs/ufs/super.c", i32 1518, i32 1}
!20 = !{ptr @__initcall__kmod_ufs__427_1541_init_ufs_fs6, !21, !"__initcall__kmod_ufs__427_1541_init_ufs_fs6", i1 false, i1 false}
!21 = !{!"../fs/ufs/super.c", i32 1541, i32 1}
!22 = !{ptr @__exitcall_exit_ufs_fs, !23, !"__exitcall_exit_ufs_fs", i1 false, i1 false}
!23 = !{!"../fs/ufs/super.c", i32 1542, i32 1}
!24 = !{ptr @__UNIQUE_ID_file428, !25, !"__UNIQUE_ID_file428", i1 false, i1 false}
!25 = !{!"../fs/ufs/super.c", i32 1543, i32 1}
!26 = !{ptr @__UNIQUE_ID_license429, !25, !"__UNIQUE_ID_license429", i1 false, i1 false}
!27 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../fs/ufs/super.c", i32 1513, i32 11}
!29 = !{ptr @ufs_fs_type, !30, !"ufs_fs_type", i1 false, i1 false}
!30 = !{!"../fs/ufs/super.c", i32 1511, i32 32}
!31 = !{ptr @.str.9, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../fs/ufs/super.c", i32 796, i32 2}
!33 = !{ptr @.str.10, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @ufs_fill_super.__UNIQUE_ID_ddebug384, !32, !"__UNIQUE_ID_ddebug384", i1 false, i1 false}
!35 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.12, !32, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @ufs_fill_super.__UNIQUE_ID_ddebug385, !32, !"__UNIQUE_ID_ddebug385", i1 false, i1 false}
!38 = !{ptr @.str.13, !32, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @ufs_fill_super.__UNIQUE_ID_ddebug386, !40, !"__UNIQUE_ID_ddebug386", i1 false, i1 false}
!40 = !{!"../fs/ufs/super.c", i32 811, i32 2}
!41 = !{ptr @.str.14, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @ufs_fill_super.__UNIQUE_ID_ddebug387, !40, !"__UNIQUE_ID_ddebug387", i1 false, i1 false}
!43 = !{ptr @.str.15, !40, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @ufs_fill_super.__key, !45, !"__key", i1 false, i1 false}
!45 = !{!"../fs/ufs/super.c", i32 813, i32 2}
!46 = !{ptr @.str.16, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @ufs_fill_super.__key.17, !48, !"__key", i1 false, i1 false}
!48 = !{!"../fs/ufs/super.c", i32 814, i32 2}
!49 = !{ptr @.str.18, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @ufs_fill_super.__key.19, !51, !"__key", i1 false, i1 false}
!51 = !{!"../fs/ufs/super.c", i32 815, i32 2}
!52 = !{ptr @.str.20, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @ufs_fill_super.__key.21, !51, !"__key", i1 false, i1 false}
!54 = !{ptr @.str.22, !51, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @.str.23, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../fs/ufs/super.c", i32 823, i32 3}
!57 = !{ptr @ufs_fill_super._entry, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @ufs_fill_super._entry_ptr, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.25, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../fs/ufs/super.c", i32 828, i32 4}
!61 = !{ptr @ufs_fill_super._entry.24, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @ufs_fill_super._entry_ptr.26, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @ufs_fill_super.__UNIQUE_ID_ddebug388, !64, !"__UNIQUE_ID_ddebug388", i1 false, i1 false}
!64 = !{!"../fs/ufs/super.c", i32 851, i32 3}
!65 = !{ptr @.str.27, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @ufs_fill_super.__UNIQUE_ID_ddebug389, !64, !"__UNIQUE_ID_ddebug389", i1 false, i1 false}
!67 = !{ptr @.str.28, !64, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @ufs_fill_super.__UNIQUE_ID_ddebug390, !69, !"__UNIQUE_ID_ddebug390", i1 false, i1 false}
!69 = !{!"../fs/ufs/super.c", i32 860, i32 3}
!70 = !{ptr @.str.29, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @ufs_fill_super.__UNIQUE_ID_ddebug391, !69, !"__UNIQUE_ID_ddebug391", i1 false, i1 false}
!72 = !{ptr @.str.30, !69, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @ufs_fill_super.__UNIQUE_ID_ddebug392, !74, !"__UNIQUE_ID_ddebug392", i1 false, i1 false}
!74 = !{!"../fs/ufs/super.c", i32 874, i32 3}
!75 = !{ptr @.str.31, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @ufs_fill_super.__UNIQUE_ID_ddebug393, !74, !"__UNIQUE_ID_ddebug393", i1 false, i1 false}
!77 = !{ptr @.str.32, !74, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @ufs_fill_super.__UNIQUE_ID_ddebug394, !79, !"__UNIQUE_ID_ddebug394", i1 false, i1 false}
!79 = !{!"../fs/ufs/super.c", i32 885, i32 3}
!80 = !{ptr @.str.33, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @ufs_fill_super.__UNIQUE_ID_ddebug395, !79, !"__UNIQUE_ID_ddebug395", i1 false, i1 false}
!82 = !{ptr @.str.34, !79, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @ufs_fill_super.__UNIQUE_ID_ddebug396, !84, !"__UNIQUE_ID_ddebug396", i1 false, i1 false}
!84 = !{!"../fs/ufs/super.c", i32 897, i32 3}
!85 = !{ptr @.str.35, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @ufs_fill_super.__UNIQUE_ID_ddebug397, !84, !"__UNIQUE_ID_ddebug397", i1 false, i1 false}
!87 = !{ptr @.str.36, !84, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @ufs_fill_super.__UNIQUE_ID_ddebug398, !89, !"__UNIQUE_ID_ddebug398", i1 false, i1 false}
!89 = !{!"../fs/ufs/super.c", i32 908, i32 3}
!90 = !{ptr @.str.37, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @ufs_fill_super.__UNIQUE_ID_ddebug399, !89, !"__UNIQUE_ID_ddebug399", i1 false, i1 false}
!92 = !{ptr @.str.38, !89, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @.str.40, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../fs/ufs/super.c", i32 917, i32 5}
!95 = !{ptr @ufs_fill_super._entry.39, !94, !"_entry", i1 false, i1 false}
!96 = !{ptr @ufs_fill_super._entry_ptr.41, !94, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @ufs_fill_super.__UNIQUE_ID_ddebug400, !98, !"__UNIQUE_ID_ddebug400", i1 false, i1 false}
!98 = !{!"../fs/ufs/super.c", i32 923, i32 3}
!99 = !{ptr @.str.42, !98, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @ufs_fill_super.__UNIQUE_ID_ddebug401, !98, !"__UNIQUE_ID_ddebug401", i1 false, i1 false}
!101 = !{ptr @.str.43, !98, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @.str.45, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../fs/ufs/super.c", i32 933, i32 5}
!104 = !{ptr @ufs_fill_super._entry.44, !103, !"_entry", i1 false, i1 false}
!105 = !{ptr @ufs_fill_super._entry_ptr.46, !103, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @ufs_fill_super.__UNIQUE_ID_ddebug402, !107, !"__UNIQUE_ID_ddebug402", i1 false, i1 false}
!107 = !{!"../fs/ufs/super.c", i32 939, i32 3}
!108 = !{ptr @.str.47, !107, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @ufs_fill_super.__UNIQUE_ID_ddebug403, !107, !"__UNIQUE_ID_ddebug403", i1 false, i1 false}
!110 = !{ptr @.str.48, !107, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @.str.50, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../fs/ufs/super.c", i32 949, i32 5}
!113 = !{ptr @ufs_fill_super._entry.49, !112, !"_entry", i1 false, i1 false}
!114 = !{ptr @ufs_fill_super._entry_ptr.51, !112, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @ufs_fill_super.__UNIQUE_ID_ddebug404, !116, !"__UNIQUE_ID_ddebug404", i1 false, i1 false}
!116 = !{!"../fs/ufs/super.c", i32 955, i32 3}
!117 = !{ptr @.str.52, !116, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @ufs_fill_super.__UNIQUE_ID_ddebug405, !116, !"__UNIQUE_ID_ddebug405", i1 false, i1 false}
!119 = !{ptr @.str.53, !116, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @.str.55, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../fs/ufs/super.c", i32 965, i32 5}
!122 = !{ptr @ufs_fill_super._entry.54, !121, !"_entry", i1 false, i1 false}
!123 = !{ptr @ufs_fill_super._entry_ptr.56, !121, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @ufs_fill_super.__UNIQUE_ID_ddebug406, !125, !"__UNIQUE_ID_ddebug406", i1 false, i1 false}
!125 = !{!"../fs/ufs/super.c", i32 971, i32 3}
!126 = !{ptr @.str.57, !125, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @ufs_fill_super.__UNIQUE_ID_ddebug407, !125, !"__UNIQUE_ID_ddebug407", i1 false, i1 false}
!128 = !{ptr @.str.58, !125, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @.str.60, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../fs/ufs/super.c", i32 980, i32 5}
!131 = !{ptr @ufs_fill_super._entry.59, !130, !"_entry", i1 false, i1 false}
!132 = !{ptr @ufs_fill_super._entry_ptr.61, !130, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @.str.63, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../fs/ufs/super.c", i32 986, i32 4}
!135 = !{ptr @ufs_fill_super._entry.62, !134, !"_entry", i1 false, i1 false}
!136 = !{ptr @ufs_fill_super._entry_ptr.64, !134, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @.str.66, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../fs/ufs/super.c", i32 992, i32 3}
!139 = !{ptr @ufs_fill_super._entry.65, !138, !"_entry", i1 false, i1 false}
!140 = !{ptr @ufs_fill_super._entry_ptr.67, !138, !"_entry_ptr", i1 false, i1 false}
!141 = !{ptr @.str.69, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../fs/ufs/super.c", i32 1020, i32 4}
!143 = !{ptr @ufs_fill_super._entry.68, !142, !"_entry", i1 false, i1 false}
!144 = !{ptr @ufs_fill_super._entry_ptr.70, !142, !"_entry_ptr", i1 false, i1 false}
!145 = !{ptr @.str.72, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../fs/ufs/super.c", i32 1058, i32 3}
!147 = !{ptr @ufs_fill_super._entry.71, !146, !"_entry", i1 false, i1 false}
!148 = !{ptr @ufs_fill_super._entry_ptr.73, !146, !"_entry_ptr", i1 false, i1 false}
!149 = !{ptr @.str.75, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../fs/ufs/super.c", i32 1072, i32 3}
!151 = !{ptr @ufs_fill_super._entry.74, !150, !"_entry", i1 false, i1 false}
!152 = !{ptr @ufs_fill_super._entry_ptr.76, !150, !"_entry_ptr", i1 false, i1 false}
!153 = !{ptr @.str.78, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../fs/ufs/super.c", i32 1077, i32 3}
!155 = !{ptr @ufs_fill_super._entry.77, !154, !"_entry", i1 false, i1 false}
!156 = !{ptr @ufs_fill_super._entry_ptr.79, !154, !"_entry_ptr", i1 false, i1 false}
!157 = !{ptr @.str.81, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../fs/ufs/super.c", i32 1082, i32 3}
!159 = !{ptr @ufs_fill_super._entry.80, !158, !"_entry", i1 false, i1 false}
!160 = !{ptr @ufs_fill_super._entry_ptr.82, !158, !"_entry_ptr", i1 false, i1 false}
!161 = !{ptr @.str.84, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../fs/ufs/super.c", i32 1087, i32 3}
!163 = !{ptr @ufs_fill_super._entry.83, !162, !"_entry", i1 false, i1 false}
!164 = !{ptr @ufs_fill_super._entry_ptr.85, !162, !"_entry_ptr", i1 false, i1 false}
!165 = !{ptr @.str.87, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../fs/ufs/super.c", i32 1092, i32 3}
!167 = !{ptr @ufs_fill_super._entry.86, !166, !"_entry", i1 false, i1 false}
!168 = !{ptr @ufs_fill_super._entry_ptr.88, !166, !"_entry_ptr", i1 false, i1 false}
!169 = !{ptr @.str.90, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../fs/ufs/super.c", i32 1097, i32 3}
!171 = !{ptr @ufs_fill_super._entry.89, !170, !"_entry", i1 false, i1 false}
!172 = !{ptr @ufs_fill_super._entry_ptr.91, !170, !"_entry_ptr", i1 false, i1 false}
!173 = !{ptr @ufs_fill_super.__UNIQUE_ID_ddebug408, !174, !"__UNIQUE_ID_ddebug408", i1 false, i1 false}
!174 = !{!"../fs/ufs/super.c", i32 1106, i32 3}
!175 = !{ptr @.str.92, !174, !"<string literal>", i1 false, i1 false}
!176 = !{ptr @ufs_fill_super.__UNIQUE_ID_ddebug409, !174, !"__UNIQUE_ID_ddebug409", i1 false, i1 false}
!177 = !{ptr @.str.93, !174, !"<string literal>", i1 false, i1 false}
!178 = !{ptr @ufs_fill_super.__UNIQUE_ID_ddebug410, !179, !"__UNIQUE_ID_ddebug410", i1 false, i1 false}
!179 = !{!"../fs/ufs/super.c", i32 1125, i32 4}
!180 = !{ptr @.str.94, !179, !"<string literal>", i1 false, i1 false}
!181 = !{ptr @ufs_fill_super.__UNIQUE_ID_ddebug411, !179, !"__UNIQUE_ID_ddebug411", i1 false, i1 false}
!182 = !{ptr @.str.95, !179, !"<string literal>", i1 false, i1 false}
!183 = !{ptr @ufs_fill_super.__UNIQUE_ID_ddebug412, !184, !"__UNIQUE_ID_ddebug412", i1 false, i1 false}
!184 = !{!"../fs/ufs/super.c", i32 1128, i32 4}
!185 = !{ptr @.str.96, !184, !"<string literal>", i1 false, i1 false}
!186 = !{ptr @ufs_fill_super.__UNIQUE_ID_ddebug413, !184, !"__UNIQUE_ID_ddebug413", i1 false, i1 false}
!187 = !{ptr @.str.97, !184, !"<string literal>", i1 false, i1 false}
!188 = !{ptr @ufs_fill_super.__UNIQUE_ID_ddebug414, !189, !"__UNIQUE_ID_ddebug414", i1 false, i1 false}
!189 = !{!"../fs/ufs/super.c", i32 1131, i32 4}
!190 = !{ptr @.str.98, !189, !"<string literal>", i1 false, i1 false}
!191 = !{ptr @ufs_fill_super.__UNIQUE_ID_ddebug415, !189, !"__UNIQUE_ID_ddebug415", i1 false, i1 false}
!192 = !{ptr @.str.99, !189, !"<string literal>", i1 false, i1 false}
!193 = !{ptr @ufs_fill_super.__UNIQUE_ID_ddebug416, !194, !"__UNIQUE_ID_ddebug416", i1 false, i1 false}
!194 = !{!"../fs/ufs/super.c", i32 1134, i32 4}
!195 = !{ptr @.str.100, !194, !"<string literal>", i1 false, i1 false}
!196 = !{ptr @ufs_fill_super.__UNIQUE_ID_ddebug417, !194, !"__UNIQUE_ID_ddebug417", i1 false, i1 false}
!197 = !{ptr @.str.101, !194, !"<string literal>", i1 false, i1 false}
!198 = !{ptr @.str.103, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../fs/ufs/super.c", i32 1137, i32 4}
!200 = !{ptr @ufs_fill_super._entry.102, !199, !"_entry", i1 false, i1 false}
!201 = !{ptr @ufs_fill_super._entry_ptr.104, !199, !"_entry_ptr", i1 false, i1 false}
!202 = !{ptr @.str.106, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../fs/ufs/super.c", i32 1141, i32 4}
!204 = !{ptr @ufs_fill_super._entry.105, !203, !"_entry", i1 false, i1 false}
!205 = !{ptr @ufs_fill_super._entry_ptr.107, !203, !"_entry_ptr", i1 false, i1 false}
!206 = !{ptr @.str.109, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../fs/ufs/super.c", i32 1145, i32 4}
!208 = !{ptr @ufs_fill_super._entry.108, !207, !"_entry", i1 false, i1 false}
!209 = !{ptr @ufs_fill_super._entry_ptr.110, !207, !"_entry_ptr", i1 false, i1 false}
!210 = !{ptr @.str.112, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../fs/ufs/super.c", i32 1151, i32 3}
!212 = !{ptr @ufs_fill_super._entry.111, !211, !"_entry", i1 false, i1 false}
!213 = !{ptr @ufs_fill_super._entry_ptr.113, !211, !"_entry_ptr", i1 false, i1 false}
!214 = !{ptr @ufs_fill_super.__UNIQUE_ID_ddebug418, !215, !"__UNIQUE_ID_ddebug418", i1 false, i1 false}
!215 = !{!"../fs/ufs/super.c", i32 1187, i32 2}
!216 = !{ptr @.str.114, !215, !"<string literal>", i1 false, i1 false}
!217 = !{ptr @ufs_fill_super.__UNIQUE_ID_ddebug419, !215, !"__UNIQUE_ID_ddebug419", i1 false, i1 false}
!218 = !{ptr @.str.115, !215, !"<string literal>", i1 false, i1 false}
!219 = !{ptr @.str.116, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../fs/ufs/super.c", i32 1264, i32 29}
!221 = !{ptr @ufs_fill_super.__UNIQUE_ID_ddebug420, !222, !"__UNIQUE_ID_ddebug420", i1 false, i1 false}
!222 = !{!"../fs/ufs/super.c", i32 1290, i32 2}
!223 = !{ptr @.str.117, !222, !"<string literal>", i1 false, i1 false}
!224 = !{ptr @ufs_fill_super.__UNIQUE_ID_ddebug421, !222, !"__UNIQUE_ID_ddebug421", i1 false, i1 false}
!225 = !{ptr @.str.118, !222, !"<string literal>", i1 false, i1 false}
!226 = !{ptr @ufs_fill_super.__UNIQUE_ID_ddebug422, !227, !"__UNIQUE_ID_ddebug422", i1 false, i1 false}
!227 = !{!"../fs/ufs/super.c", i32 1299, i32 2}
!228 = !{ptr @.str.119, !227, !"<string literal>", i1 false, i1 false}
!229 = !{ptr @ufs_fill_super.__UNIQUE_ID_ddebug423, !227, !"__UNIQUE_ID_ddebug423", i1 false, i1 false}
!230 = !{ptr @.str.120, !227, !"<string literal>", i1 false, i1 false}
!231 = !{ptr @ufs_fill_super.__UNIQUE_ID_ddebug424, !232, !"__UNIQUE_ID_ddebug424", i1 false, i1 false}
!232 = !{!"../fs/ufs/super.c", i32 1303, i32 2}
!233 = !{ptr @.str.121, !232, !"<string literal>", i1 false, i1 false}
!234 = !{ptr @ufs_fill_super.__UNIQUE_ID_ddebug425, !232, !"__UNIQUE_ID_ddebug425", i1 false, i1 false}
!235 = !{ptr @.str.122, !232, !"<string literal>", i1 false, i1 false}
!236 = !{ptr @.str.123, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../fs/ufs/super.c", i32 694, i32 2}
!238 = !{ptr @ufs_sync_fs.__UNIQUE_ID_ddebug376, !237, !"__UNIQUE_ID_ddebug376", i1 false, i1 false}
!239 = !{ptr @ufs_sync_fs.__UNIQUE_ID_ddebug377, !237, !"__UNIQUE_ID_ddebug377", i1 false, i1 false}
!240 = !{ptr @ufs_sync_fs.__UNIQUE_ID_ddebug378, !241, !"__UNIQUE_ID_ddebug378", i1 false, i1 false}
!241 = !{!"../fs/ufs/super.c", i32 709, i32 2}
!242 = !{ptr @ufs_sync_fs.__UNIQUE_ID_ddebug379, !241, !"__UNIQUE_ID_ddebug379", i1 false, i1 false}
!243 = !{ptr @.str.124, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../fs/ufs/super.c", i32 597, i32 2}
!245 = !{ptr @ufs_put_cstotal.__UNIQUE_ID_ddebug368, !244, !"__UNIQUE_ID_ddebug368", i1 false, i1 false}
!246 = !{ptr @ufs_put_cstotal.__UNIQUE_ID_ddebug369, !244, !"__UNIQUE_ID_ddebug369", i1 false, i1 false}
!247 = !{ptr @ufs_put_cstotal.__UNIQUE_ID_ddebug370, !248, !"__UNIQUE_ID_ddebug370", i1 false, i1 false}
!248 = !{!"../fs/ufs/super.c", i32 634, i32 2}
!249 = !{ptr @ufs_put_cstotal.__UNIQUE_ID_ddebug371, !248, !"__UNIQUE_ID_ddebug371", i1 false, i1 false}
!250 = !{ptr @.str.125, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../fs/ufs/super.c", i32 386, i32 2}
!252 = !{ptr @ufs_parse_options.__UNIQUE_ID_ddebug354, !251, !"__UNIQUE_ID_ddebug354", i1 false, i1 false}
!253 = !{ptr @ufs_parse_options.__UNIQUE_ID_ddebug355, !251, !"__UNIQUE_ID_ddebug355", i1 false, i1 false}
!254 = !{ptr @.str.126, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../fs/ufs/super.c", i32 391, i32 31}
!256 = !{ptr @.str.127, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../fs/ufs/super.c", i32 452, i32 4}
!258 = !{ptr @ufs_parse_options._entry, !257, !"_entry", i1 false, i1 false}
!259 = !{ptr @ufs_parse_options._entry_ptr, !257, !"_entry_ptr", i1 false, i1 false}
!260 = !{ptr @.str.129, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../fs/ufs/super.c", i32 457, i32 4}
!262 = !{ptr @ufs_parse_options._entry.128, !261, !"_entry", i1 false, i1 false}
!263 = !{ptr @ufs_parse_options._entry_ptr.130, !261, !"_entry_ptr", i1 false, i1 false}
!264 = !{ptr @.str.131, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../fs/ufs/super.c", i32 363, i32 17}
!266 = !{ptr @.str.132, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../fs/ufs/super.c", i32 364, i32 20}
!268 = !{ptr @.str.133, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../fs/ufs/super.c", i32 365, i32 17}
!270 = !{ptr @.str.134, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../fs/ufs/super.c", i32 366, i32 19}
!272 = !{ptr @.str.135, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../fs/ufs/super.c", i32 367, i32 19}
!274 = !{ptr @.str.136, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../fs/ufs/super.c", i32 368, i32 18}
!276 = !{ptr @.str.137, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../fs/ufs/super.c", i32 369, i32 18}
!278 = !{ptr @.str.138, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../fs/ufs/super.c", i32 370, i32 16}
!280 = !{ptr @.str.139, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../fs/ufs/super.c", i32 371, i32 24}
!282 = !{ptr @.str.140, !283, !"<string literal>", i1 false, i1 false}
!283 = !{!"../fs/ufs/super.c", i32 372, i32 22}
!284 = !{ptr @.str.141, !285, !"<string literal>", i1 false, i1 false}
!285 = !{!"../fs/ufs/super.c", i32 373, i32 22}
!286 = !{ptr @.str.142, !287, !"<string literal>", i1 false, i1 false}
!287 = !{!"../fs/ufs/super.c", i32 375, i32 22}
!288 = !{ptr @.str.143, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../fs/ufs/super.c", i32 376, i32 21}
!290 = !{ptr @.str.144, !291, !"<string literal>", i1 false, i1 false}
!291 = !{!"../fs/ufs/super.c", i32 377, i32 23}
!292 = !{ptr @.str.145, !293, !"<string literal>", i1 false, i1 false}
!293 = !{!"../fs/ufs/super.c", i32 378, i32 23}
!294 = !{ptr @tokens, !295, !"tokens", i1 false, i1 false}
!295 = !{!"../fs/ufs/super.c", i32 362, i32 28}
!296 = !{ptr @.str.146, !297, !"<string literal>", i1 false, i1 false}
!297 = !{!"../fs/ufs/super.c", i32 156, i32 2}
!298 = !{ptr @.str.147, !297, !"<string literal>", i1 false, i1 false}
!299 = !{ptr @ufs_print_super_stuff.__UNIQUE_ID_ddebug289, !297, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!300 = !{ptr @.str.148, !297, !"<string literal>", i1 false, i1 false}
!301 = !{ptr @.str.149, !302, !"<string literal>", i1 false, i1 false}
!302 = !{!"../fs/ufs/super.c", i32 157, i32 2}
!303 = !{ptr @ufs_print_super_stuff.__UNIQUE_ID_ddebug290, !302, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!304 = !{ptr @.str.150, !302, !"<string literal>", i1 false, i1 false}
!305 = !{ptr @.str.151, !306, !"<string literal>", i1 false, i1 false}
!306 = !{!"../fs/ufs/super.c", i32 159, i32 3}
!307 = !{ptr @ufs_print_super_stuff.__UNIQUE_ID_ddebug291, !306, !"__UNIQUE_ID_ddebug291", i1 false, i1 false}
!308 = !{ptr @.str.152, !306, !"<string literal>", i1 false, i1 false}
!309 = !{ptr @.str.153, !310, !"<string literal>", i1 false, i1 false}
!310 = !{!"../fs/ufs/super.c", i32 161, i32 3}
!311 = !{ptr @ufs_print_super_stuff.__UNIQUE_ID_ddebug292, !310, !"__UNIQUE_ID_ddebug292", i1 false, i1 false}
!312 = !{ptr @.str.154, !310, !"<string literal>", i1 false, i1 false}
!313 = !{ptr @.str.155, !314, !"<string literal>", i1 false, i1 false}
!314 = !{!"../fs/ufs/super.c", i32 163, i32 3}
!315 = !{ptr @ufs_print_super_stuff.__UNIQUE_ID_ddebug293, !314, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!316 = !{ptr @.str.156, !314, !"<string literal>", i1 false, i1 false}
!317 = !{ptr @.str.157, !318, !"<string literal>", i1 false, i1 false}
!318 = !{!"../fs/ufs/super.c", i32 165, i32 3}
!319 = !{ptr @ufs_print_super_stuff.__UNIQUE_ID_ddebug294, !318, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!320 = !{ptr @.str.158, !318, !"<string literal>", i1 false, i1 false}
!321 = !{ptr @.str.159, !322, !"<string literal>", i1 false, i1 false}
!322 = !{!"../fs/ufs/super.c", i32 167, i32 3}
!323 = !{ptr @ufs_print_super_stuff.__UNIQUE_ID_ddebug295, !322, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!324 = !{ptr @.str.160, !322, !"<string literal>", i1 false, i1 false}
!325 = !{ptr @.str.161, !326, !"<string literal>", i1 false, i1 false}
!326 = !{!"../fs/ufs/super.c", i32 168, i32 3}
!327 = !{ptr @ufs_print_super_stuff.__UNIQUE_ID_ddebug296, !326, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!328 = !{ptr @.str.162, !326, !"<string literal>", i1 false, i1 false}
!329 = !{ptr @.str.163, !330, !"<string literal>", i1 false, i1 false}
!330 = !{!"../fs/ufs/super.c", i32 170, i32 3}
!331 = !{ptr @ufs_print_super_stuff.__UNIQUE_ID_ddebug297, !330, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!332 = !{ptr @.str.164, !330, !"<string literal>", i1 false, i1 false}
!333 = !{ptr @.str.165, !334, !"<string literal>", i1 false, i1 false}
!334 = !{!"../fs/ufs/super.c", i32 172, i32 3}
!335 = !{ptr @ufs_print_super_stuff.__UNIQUE_ID_ddebug298, !334, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!336 = !{ptr @.str.166, !334, !"<string literal>", i1 false, i1 false}
!337 = !{ptr @.str.167, !338, !"<string literal>", i1 false, i1 false}
!338 = !{!"../fs/ufs/super.c", i32 175, i32 3}
!339 = !{ptr @ufs_print_super_stuff._entry, !338, !"_entry", i1 false, i1 false}
!340 = !{ptr @ufs_print_super_stuff._entry_ptr, !338, !"_entry_ptr", i1 false, i1 false}
!341 = !{ptr @.str.169, !342, !"<string literal>", i1 false, i1 false}
!342 = !{!"../fs/ufs/super.c", i32 178, i32 3}
!343 = !{ptr @ufs_print_super_stuff._entry.168, !342, !"_entry", i1 false, i1 false}
!344 = !{ptr @ufs_print_super_stuff._entry_ptr.170, !342, !"_entry_ptr", i1 false, i1 false}
!345 = !{ptr @.str.172, !346, !"<string literal>", i1 false, i1 false}
!346 = !{!"../fs/ufs/super.c", i32 181, i32 3}
!347 = !{ptr @ufs_print_super_stuff._entry.171, !346, !"_entry", i1 false, i1 false}
!348 = !{ptr @ufs_print_super_stuff._entry_ptr.173, !346, !"_entry_ptr", i1 false, i1 false}
!349 = !{ptr @.str.174, !350, !"<string literal>", i1 false, i1 false}
!350 = !{!"../fs/ufs/super.c", i32 184, i32 3}
!351 = !{ptr @ufs_print_super_stuff.__UNIQUE_ID_ddebug299, !350, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!352 = !{ptr @.str.175, !350, !"<string literal>", i1 false, i1 false}
!353 = !{ptr @.str.176, !354, !"<string literal>", i1 false, i1 false}
!354 = !{!"../fs/ufs/super.c", i32 185, i32 3}
!355 = !{ptr @ufs_print_super_stuff.__UNIQUE_ID_ddebug300, !354, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!356 = !{ptr @.str.177, !354, !"<string literal>", i1 false, i1 false}
!357 = !{ptr @.str.178, !358, !"<string literal>", i1 false, i1 false}
!358 = !{!"../fs/ufs/super.c", i32 186, i32 3}
!359 = !{ptr @ufs_print_super_stuff.__UNIQUE_ID_ddebug301, !358, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!360 = !{ptr @.str.179, !358, !"<string literal>", i1 false, i1 false}
!361 = !{ptr @.str.180, !362, !"<string literal>", i1 false, i1 false}
!362 = !{!"../fs/ufs/super.c", i32 187, i32 3}
!363 = !{ptr @ufs_print_super_stuff.__UNIQUE_ID_ddebug302, !362, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!364 = !{ptr @.str.181, !362, !"<string literal>", i1 false, i1 false}
!365 = !{ptr @.str.182, !366, !"<string literal>", i1 false, i1 false}
!366 = !{!"../fs/ufs/super.c", i32 188, i32 3}
!367 = !{ptr @ufs_print_super_stuff.__UNIQUE_ID_ddebug303, !366, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!368 = !{ptr @.str.183, !366, !"<string literal>", i1 false, i1 false}
!369 = !{ptr @.str.184, !370, !"<string literal>", i1 false, i1 false}
!370 = !{!"../fs/ufs/super.c", i32 190, i32 3}
!371 = !{ptr @ufs_print_super_stuff.__UNIQUE_ID_ddebug304, !370, !"__UNIQUE_ID_ddebug304", i1 false, i1 false}
!372 = !{ptr @.str.185, !370, !"<string literal>", i1 false, i1 false}
!373 = !{ptr @.str.186, !374, !"<string literal>", i1 false, i1 false}
!374 = !{!"../fs/ufs/super.c", i32 192, i32 3}
!375 = !{ptr @ufs_print_super_stuff.__UNIQUE_ID_ddebug305, !374, !"__UNIQUE_ID_ddebug305", i1 false, i1 false}
!376 = !{ptr @.str.187, !374, !"<string literal>", i1 false, i1 false}
!377 = !{ptr @.str.188, !378, !"<string literal>", i1 false, i1 false}
!378 = !{!"../fs/ufs/super.c", i32 193, i32 3}
!379 = !{ptr @ufs_print_super_stuff.__UNIQUE_ID_ddebug306, !378, !"__UNIQUE_ID_ddebug306", i1 false, i1 false}
!380 = !{ptr @.str.189, !378, !"<string literal>", i1 false, i1 false}
!381 = !{ptr @.str.190, !382, !"<string literal>", i1 false, i1 false}
!382 = !{!"../fs/ufs/super.c", i32 194, i32 3}
!383 = !{ptr @ufs_print_super_stuff.__UNIQUE_ID_ddebug307, !382, !"__UNIQUE_ID_ddebug307", i1 false, i1 false}
!384 = !{ptr @.str.191, !382, !"<string literal>", i1 false, i1 false}
!385 = !{ptr @.str.192, !386, !"<string literal>", i1 false, i1 false}
!386 = !{!"../fs/ufs/super.c", i32 195, i32 3}
!387 = !{ptr @ufs_print_super_stuff.__UNIQUE_ID_ddebug308, !386, !"__UNIQUE_ID_ddebug308", i1 false, i1 false}
!388 = !{ptr @.str.193, !386, !"<string literal>", i1 false, i1 false}
!389 = !{ptr @.str.194, !390, !"<string literal>", i1 false, i1 false}
!390 = !{!"../fs/ufs/super.c", i32 196, i32 3}
!391 = !{ptr @ufs_print_super_stuff.__UNIQUE_ID_ddebug309, !390, !"__UNIQUE_ID_ddebug309", i1 false, i1 false}
!392 = !{ptr @.str.195, !390, !"<string literal>", i1 false, i1 false}
!393 = !{ptr @.str.196, !394, !"<string literal>", i1 false, i1 false}
!394 = !{!"../fs/ufs/super.c", i32 197, i32 3}
!395 = !{ptr @ufs_print_super_stuff.__UNIQUE_ID_ddebug310, !394, !"__UNIQUE_ID_ddebug310", i1 false, i1 false}
!396 = !{ptr @.str.197, !394, !"<string literal>", i1 false, i1 false}
!397 = !{ptr @.str.198, !398, !"<string literal>", i1 false, i1 false}
!398 = !{!"../fs/ufs/super.c", i32 198, i32 3}
!399 = !{ptr @ufs_print_super_stuff.__UNIQUE_ID_ddebug311, !398, !"__UNIQUE_ID_ddebug311", i1 false, i1 false}
!400 = !{ptr @.str.199, !398, !"<string literal>", i1 false, i1 false}
!401 = !{ptr @.str.200, !402, !"<string literal>", i1 false, i1 false}
!402 = !{!"../fs/ufs/super.c", i32 200, i32 3}
!403 = !{ptr @ufs_print_super_stuff.__UNIQUE_ID_ddebug312, !402, !"__UNIQUE_ID_ddebug312", i1 false, i1 false}
!404 = !{ptr @.str.201, !402, !"<string literal>", i1 false, i1 false}
!405 = !{ptr @.str.202, !406, !"<string literal>", i1 false, i1 false}
!406 = !{!"../fs/ufs/super.c", i32 201, i32 3}
!407 = !{ptr @ufs_print_super_stuff.__UNIQUE_ID_ddebug313, !406, !"__UNIQUE_ID_ddebug313", i1 false, i1 false}
!408 = !{ptr @.str.203, !406, !"<string literal>", i1 false, i1 false}
!409 = !{ptr @.str.204, !410, !"<string literal>", i1 false, i1 false}
!410 = !{!"../fs/ufs/super.c", i32 202, i32 3}
!411 = !{ptr @ufs_print_super_stuff.__UNIQUE_ID_ddebug314, !410, !"__UNIQUE_ID_ddebug314", i1 false, i1 false}
!412 = !{ptr @.str.205, !410, !"<string literal>", i1 false, i1 false}
!413 = !{ptr @.str.206, !414, !"<string literal>", i1 false, i1 false}
!414 = !{!"../fs/ufs/super.c", i32 203, i32 3}
!415 = !{ptr @ufs_print_super_stuff.__UNIQUE_ID_ddebug315, !414, !"__UNIQUE_ID_ddebug315", i1 false, i1 false}
!416 = !{ptr @.str.207, !414, !"<string literal>", i1 false, i1 false}
!417 = !{ptr @.str.208, !418, !"<string literal>", i1 false, i1 false}
!418 = !{!"../fs/ufs/super.c", i32 204, i32 3}
!419 = !{ptr @ufs_print_super_stuff.__UNIQUE_ID_ddebug316, !418, !"__UNIQUE_ID_ddebug316", i1 false, i1 false}
!420 = !{ptr @.str.209, !418, !"<string literal>", i1 false, i1 false}
!421 = !{ptr @.str.210, !422, !"<string literal>", i1 false, i1 false}
!422 = !{!"../fs/ufs/super.c", i32 205, i32 3}
!423 = !{ptr @ufs_print_super_stuff.__UNIQUE_ID_ddebug317, !422, !"__UNIQUE_ID_ddebug317", i1 false, i1 false}
!424 = !{ptr @.str.211, !422, !"<string literal>", i1 false, i1 false}
!425 = !{ptr @.str.212, !426, !"<string literal>", i1 false, i1 false}
!426 = !{!"../fs/ufs/super.c", i32 206, i32 3}
!427 = !{ptr @ufs_print_super_stuff.__UNIQUE_ID_ddebug318, !426, !"__UNIQUE_ID_ddebug318", i1 false, i1 false}
!428 = !{ptr @.str.213, !426, !"<string literal>", i1 false, i1 false}
!429 = !{ptr @.str.214, !430, !"<string literal>", i1 false, i1 false}
!430 = !{!"../fs/ufs/super.c", i32 207, i32 3}
!431 = !{ptr @ufs_print_super_stuff.__UNIQUE_ID_ddebug319, !430, !"__UNIQUE_ID_ddebug319", i1 false, i1 false}
!432 = !{ptr @.str.215, !430, !"<string literal>", i1 false, i1 false}
!433 = !{ptr @.str.216, !434, !"<string literal>", i1 false, i1 false}
!434 = !{!"../fs/ufs/super.c", i32 208, i32 3}
!435 = !{ptr @ufs_print_super_stuff.__UNIQUE_ID_ddebug320, !434, !"__UNIQUE_ID_ddebug320", i1 false, i1 false}
!436 = !{ptr @.str.217, !434, !"<string literal>", i1 false, i1 false}
!437 = !{ptr @.str.218, !438, !"<string literal>", i1 false, i1 false}
!438 = !{!"../fs/ufs/super.c", i32 209, i32 3}
!439 = !{ptr @ufs_print_super_stuff.__UNIQUE_ID_ddebug321, !438, !"__UNIQUE_ID_ddebug321", i1 false, i1 false}
!440 = !{ptr @.str.219, !438, !"<string literal>", i1 false, i1 false}
!441 = !{ptr @.str.220, !442, !"<string literal>", i1 false, i1 false}
!442 = !{!"../fs/ufs/super.c", i32 210, i32 3}
!443 = !{ptr @ufs_print_super_stuff.__UNIQUE_ID_ddebug322, !442, !"__UNIQUE_ID_ddebug322", i1 false, i1 false}
!444 = !{ptr @.str.221, !442, !"<string literal>", i1 false, i1 false}
!445 = !{ptr @.str.222, !446, !"<string literal>", i1 false, i1 false}
!446 = !{!"../fs/ufs/super.c", i32 212, i32 3}
!447 = !{ptr @ufs_print_super_stuff.__UNIQUE_ID_ddebug323, !446, !"__UNIQUE_ID_ddebug323", i1 false, i1 false}
!448 = !{ptr @.str.223, !446, !"<string literal>", i1 false, i1 false}
!449 = !{ptr @.str.224, !450, !"<string literal>", i1 false, i1 false}
!450 = !{!"../fs/ufs/super.c", i32 213, i32 3}
!451 = !{ptr @ufs_print_super_stuff.__UNIQUE_ID_ddebug324, !450, !"__UNIQUE_ID_ddebug324", i1 false, i1 false}
!452 = !{ptr @.str.225, !450, !"<string literal>", i1 false, i1 false}
!453 = !{ptr @.str.226, !454, !"<string literal>", i1 false, i1 false}
!454 = !{!"../fs/ufs/super.c", i32 215, i32 3}
!455 = !{ptr @ufs_print_super_stuff.__UNIQUE_ID_ddebug325, !454, !"__UNIQUE_ID_ddebug325", i1 false, i1 false}
!456 = !{ptr @.str.227, !454, !"<string literal>", i1 false, i1 false}
!457 = !{ptr @.str.228, !458, !"<string literal>", i1 false, i1 false}
!458 = !{!"../fs/ufs/super.c", i32 217, i32 3}
!459 = !{ptr @ufs_print_super_stuff.__UNIQUE_ID_ddebug326, !458, !"__UNIQUE_ID_ddebug326", i1 false, i1 false}
!460 = !{ptr @.str.229, !458, !"<string literal>", i1 false, i1 false}
!461 = !{ptr @.str.230, !462, !"<string literal>", i1 false, i1 false}
!462 = !{!"../fs/ufs/super.c", i32 219, i32 3}
!463 = !{ptr @ufs_print_super_stuff.__UNIQUE_ID_ddebug327, !462, !"__UNIQUE_ID_ddebug327", i1 false, i1 false}
!464 = !{ptr @.str.231, !462, !"<string literal>", i1 false, i1 false}
!465 = !{ptr @.str.232, !466, !"<string literal>", i1 false, i1 false}
!466 = !{!"../fs/ufs/super.c", i32 222, i32 2}
!467 = !{ptr @ufs_print_super_stuff.__UNIQUE_ID_ddebug328, !466, !"__UNIQUE_ID_ddebug328", i1 false, i1 false}
!468 = !{ptr @.str.233, !466, !"<string literal>", i1 false, i1 false}
!469 = !{ptr @ufs_super_ops, !470, !"ufs_super_ops", i1 false, i1 false}
!470 = !{!"../fs/ufs/super.c", i32 1493, i32 38}
!471 = !{ptr @ufs_alloc_inode.__key, !472, !"__key", i1 false, i1 false}
!472 = !{!"../fs/ufs/super.c", i32 1451, i32 2}
!473 = !{ptr @.str.234, !472, !"<string literal>", i1 false, i1 false}
!474 = !{ptr @ufs_alloc_inode.__key.235, !472, !"__key", i1 false, i1 false}
!475 = !{ptr @.str.236, !472, !"<string literal>", i1 false, i1 false}
!476 = !{ptr @ufs_alloc_inode.__key.237, !477, !"__key", i1 false, i1 false}
!477 = !{!"../fs/ufs/super.c", i32 1452, i32 2}
!478 = !{ptr @.str.238, !477, !"<string literal>", i1 false, i1 false}
!479 = !{ptr @ufs_inode_cachep, !480, !"ufs_inode_cachep", i1 false, i1 false}
!480 = !{!"../fs/ufs/super.c", i32 1440, i32 28}
!481 = !{ptr @.str.239, !482, !"<string literal>", i1 false, i1 false}
!482 = !{!"../fs/ufs/super.c", i32 746, i32 2}
!483 = !{ptr @ufs_put_super.__UNIQUE_ID_ddebug380, !482, !"__UNIQUE_ID_ddebug380", i1 false, i1 false}
!484 = !{ptr @ufs_put_super.__UNIQUE_ID_ddebug381, !482, !"__UNIQUE_ID_ddebug381", i1 false, i1 false}
!485 = !{ptr @ufs_put_super.__UNIQUE_ID_ddebug382, !486, !"__UNIQUE_ID_ddebug382", i1 false, i1 false}
!486 = !{!"../fs/ufs/super.c", i32 756, i32 2}
!487 = !{ptr @ufs_put_super.__UNIQUE_ID_ddebug383, !486, !"__UNIQUE_ID_ddebug383", i1 false, i1 false}
!488 = !{ptr @.str.240, !489, !"<string literal>", i1 false, i1 false}
!489 = !{!"../fs/ufs/super.c", i32 652, i32 2}
!490 = !{ptr @ufs_put_super_internal.__UNIQUE_ID_ddebug372, !489, !"__UNIQUE_ID_ddebug372", i1 false, i1 false}
!491 = !{ptr @ufs_put_super_internal.__UNIQUE_ID_ddebug373, !489, !"__UNIQUE_ID_ddebug373", i1 false, i1 false}
!492 = !{ptr @ufs_put_super_internal.__UNIQUE_ID_ddebug374, !493, !"__UNIQUE_ID_ddebug374", i1 false, i1 false}
!493 = !{!"../fs/ufs/super.c", i32 682, i32 2}
!494 = !{ptr @ufs_put_super_internal.__UNIQUE_ID_ddebug375, !493, !"__UNIQUE_ID_ddebug375", i1 false, i1 false}
!495 = !{ptr @.str.241, !496, !"<string literal>", i1 false, i1 false}
!496 = !{!"../fs/ufs/super.c", i32 1336, i32 3}
!497 = !{ptr @.str.242, !496, !"<string literal>", i1 false, i1 false}
!498 = !{ptr @ufs_remount._entry, !496, !"_entry", i1 false, i1 false}
!499 = !{ptr @ufs_remount._entry_ptr, !496, !"_entry_ptr", i1 false, i1 false}
!500 = !{ptr @.str.244, !501, !"<string literal>", i1 false, i1 false}
!501 = !{!"../fs/ufs/super.c", i32 1374, i32 4}
!502 = !{ptr @ufs_remount._entry.243, !501, !"_entry", i1 false, i1 false}
!503 = !{ptr @ufs_remount._entry_ptr.245, !501, !"_entry_ptr", i1 false, i1 false}
!504 = !{ptr @.str.247, !505, !"<string literal>", i1 false, i1 false}
!505 = !{!"../fs/ufs/super.c", i32 1379, i32 4}
!506 = !{ptr @ufs_remount._entry.246, !505, !"_entry", i1 false, i1 false}
!507 = !{ptr @ufs_remount._entry_ptr.248, !505, !"_entry_ptr", i1 false, i1 false}
!508 = !{ptr @.str.249, !509, !"<string literal>", i1 false, i1 false}
!509 = !{!"../fs/ufs/super.c", i32 1400, i32 18}
!510 = !{ptr @ufs_export_ops, !511, !"ufs_export_ops", i1 false, i1 false}
!511 = !{!"../fs/ufs/super.c", i32 139, i32 39}
!512 = !{ptr @.str.250, !513, !"<string literal>", i1 false, i1 false}
!513 = !{!"../fs/ufs/super.c", i32 478, i32 2}
!514 = !{ptr @ufs_setup_cstotal.__UNIQUE_ID_ddebug356, !513, !"__UNIQUE_ID_ddebug356", i1 false, i1 false}
!515 = !{ptr @.str.251, !513, !"<string literal>", i1 false, i1 false}
!516 = !{ptr @ufs_setup_cstotal.__UNIQUE_ID_ddebug357, !513, !"__UNIQUE_ID_ddebug357", i1 false, i1 false}
!517 = !{ptr @.str.252, !513, !"<string literal>", i1 false, i1 false}
!518 = !{ptr @ufs_setup_cstotal.__UNIQUE_ID_ddebug358, !519, !"__UNIQUE_ID_ddebug358", i1 false, i1 false}
!519 = !{!"../fs/ufs/super.c", i32 497, i32 2}
!520 = !{ptr @ufs_setup_cstotal.__UNIQUE_ID_ddebug359, !519, !"__UNIQUE_ID_ddebug359", i1 false, i1 false}
!521 = !{ptr @.str.253, !522, !"<string literal>", i1 false, i1 false}
!522 = !{!"../fs/ufs/super.c", i32 511, i32 2}
!523 = !{ptr @ufs_read_cylinder_structures.__UNIQUE_ID_ddebug360, !522, !"__UNIQUE_ID_ddebug360", i1 false, i1 false}
!524 = !{ptr @ufs_read_cylinder_structures.__UNIQUE_ID_ddebug361, !522, !"__UNIQUE_ID_ddebug361", i1 false, i1 false}
!525 = !{ptr @ufs_read_cylinder_structures.__UNIQUE_ID_ddebug362, !526, !"__UNIQUE_ID_ddebug362", i1 false, i1 false}
!526 = !{!"../fs/ufs/super.c", i32 555, i32 3}
!527 = !{ptr @.str.254, !526, !"<string literal>", i1 false, i1 false}
!528 = !{ptr @ufs_read_cylinder_structures.__UNIQUE_ID_ddebug363, !526, !"__UNIQUE_ID_ddebug363", i1 false, i1 false}
!529 = !{ptr @.str.255, !526, !"<string literal>", i1 false, i1 false}
!530 = !{ptr @ufs_read_cylinder_structures.__UNIQUE_ID_ddebug364, !531, !"__UNIQUE_ID_ddebug364", i1 false, i1 false}
!531 = !{!"../fs/ufs/super.c", i32 569, i32 2}
!532 = !{ptr @ufs_read_cylinder_structures.__UNIQUE_ID_ddebug365, !531, !"__UNIQUE_ID_ddebug365", i1 false, i1 false}
!533 = !{ptr @ufs_read_cylinder_structures.__UNIQUE_ID_ddebug366, !534, !"__UNIQUE_ID_ddebug366", i1 false, i1 false}
!534 = !{!"../fs/ufs/super.c", i32 582, i32 2}
!535 = !{ptr @ufs_read_cylinder_structures.__UNIQUE_ID_ddebug367, !534, !"__UNIQUE_ID_ddebug367", i1 false, i1 false}
!536 = !{ptr @.str.256, !537, !"<string literal>", i1 false, i1 false}
!537 = !{!"../fs/ufs/super.c", i32 231, i32 2}
!538 = !{ptr @.str.257, !537, !"<string literal>", i1 false, i1 false}
!539 = !{ptr @ufs_print_cylinder_stuff.__UNIQUE_ID_ddebug329, !537, !"__UNIQUE_ID_ddebug329", i1 false, i1 false}
!540 = !{ptr @.str.258, !537, !"<string literal>", i1 false, i1 false}
!541 = !{ptr @.str.259, !542, !"<string literal>", i1 false, i1 false}
!542 = !{!"../fs/ufs/super.c", i32 232, i32 2}
!543 = !{ptr @ufs_print_cylinder_stuff.__UNIQUE_ID_ddebug330, !542, !"__UNIQUE_ID_ddebug330", i1 false, i1 false}
!544 = !{ptr @.str.260, !542, !"<string literal>", i1 false, i1 false}
!545 = !{ptr @.str.261, !546, !"<string literal>", i1 false, i1 false}
!546 = !{!"../fs/ufs/super.c", i32 233, i32 2}
!547 = !{ptr @ufs_print_cylinder_stuff.__UNIQUE_ID_ddebug331, !546, !"__UNIQUE_ID_ddebug331", i1 false, i1 false}
!548 = !{ptr @.str.262, !546, !"<string literal>", i1 false, i1 false}
!549 = !{ptr @.str.263, !550, !"<string literal>", i1 false, i1 false}
!550 = !{!"../fs/ufs/super.c", i32 234, i32 2}
!551 = !{ptr @ufs_print_cylinder_stuff.__UNIQUE_ID_ddebug332, !550, !"__UNIQUE_ID_ddebug332", i1 false, i1 false}
!552 = !{ptr @.str.264, !550, !"<string literal>", i1 false, i1 false}
!553 = !{ptr @.str.265, !554, !"<string literal>", i1 false, i1 false}
!554 = !{!"../fs/ufs/super.c", i32 235, i32 2}
!555 = !{ptr @ufs_print_cylinder_stuff.__UNIQUE_ID_ddebug333, !554, !"__UNIQUE_ID_ddebug333", i1 false, i1 false}
!556 = !{ptr @.str.266, !554, !"<string literal>", i1 false, i1 false}
!557 = !{ptr @.str.267, !558, !"<string literal>", i1 false, i1 false}
!558 = !{!"../fs/ufs/super.c", i32 236, i32 2}
!559 = !{ptr @ufs_print_cylinder_stuff.__UNIQUE_ID_ddebug334, !558, !"__UNIQUE_ID_ddebug334", i1 false, i1 false}
!560 = !{ptr @.str.268, !558, !"<string literal>", i1 false, i1 false}
!561 = !{ptr @.str.269, !562, !"<string literal>", i1 false, i1 false}
!562 = !{!"../fs/ufs/super.c", i32 237, i32 2}
!563 = !{ptr @ufs_print_cylinder_stuff.__UNIQUE_ID_ddebug335, !562, !"__UNIQUE_ID_ddebug335", i1 false, i1 false}
!564 = !{ptr @.str.270, !562, !"<string literal>", i1 false, i1 false}
!565 = !{ptr @.str.271, !566, !"<string literal>", i1 false, i1 false}
!566 = !{!"../fs/ufs/super.c", i32 238, i32 2}
!567 = !{ptr @ufs_print_cylinder_stuff.__UNIQUE_ID_ddebug336, !566, !"__UNIQUE_ID_ddebug336", i1 false, i1 false}
!568 = !{ptr @.str.272, !566, !"<string literal>", i1 false, i1 false}
!569 = !{ptr @.str.273, !570, !"<string literal>", i1 false, i1 false}
!570 = !{!"../fs/ufs/super.c", i32 239, i32 2}
!571 = !{ptr @ufs_print_cylinder_stuff.__UNIQUE_ID_ddebug337, !570, !"__UNIQUE_ID_ddebug337", i1 false, i1 false}
!572 = !{ptr @.str.274, !570, !"<string literal>", i1 false, i1 false}
!573 = !{ptr @.str.275, !574, !"<string literal>", i1 false, i1 false}
!574 = !{!"../fs/ufs/super.c", i32 240, i32 2}
!575 = !{ptr @ufs_print_cylinder_stuff.__UNIQUE_ID_ddebug338, !574, !"__UNIQUE_ID_ddebug338", i1 false, i1 false}
!576 = !{ptr @.str.276, !574, !"<string literal>", i1 false, i1 false}
!577 = !{ptr @.str.277, !578, !"<string literal>", i1 false, i1 false}
!578 = !{!"../fs/ufs/super.c", i32 241, i32 2}
!579 = !{ptr @ufs_print_cylinder_stuff.__UNIQUE_ID_ddebug339, !578, !"__UNIQUE_ID_ddebug339", i1 false, i1 false}
!580 = !{ptr @.str.278, !578, !"<string literal>", i1 false, i1 false}
!581 = !{ptr @.str.279, !582, !"<string literal>", i1 false, i1 false}
!582 = !{!"../fs/ufs/super.c", i32 242, i32 2}
!583 = !{ptr @ufs_print_cylinder_stuff.__UNIQUE_ID_ddebug340, !582, !"__UNIQUE_ID_ddebug340", i1 false, i1 false}
!584 = !{ptr @.str.280, !582, !"<string literal>", i1 false, i1 false}
!585 = !{ptr @.str.281, !586, !"<string literal>", i1 false, i1 false}
!586 = !{!"../fs/ufs/super.c", i32 243, i32 2}
!587 = !{ptr @ufs_print_cylinder_stuff.__UNIQUE_ID_ddebug341, !586, !"__UNIQUE_ID_ddebug341", i1 false, i1 false}
!588 = !{ptr @.str.282, !586, !"<string literal>", i1 false, i1 false}
!589 = !{ptr @.str.283, !590, !"<string literal>", i1 false, i1 false}
!590 = !{!"../fs/ufs/super.c", i32 244, i32 2}
!591 = !{ptr @ufs_print_cylinder_stuff.__UNIQUE_ID_ddebug342, !590, !"__UNIQUE_ID_ddebug342", i1 false, i1 false}
!592 = !{ptr @.str.284, !590, !"<string literal>", i1 false, i1 false}
!593 = !{ptr @.str.285, !594, !"<string literal>", i1 false, i1 false}
!594 = !{!"../fs/ufs/super.c", i32 245, i32 2}
!595 = !{ptr @ufs_print_cylinder_stuff.__UNIQUE_ID_ddebug343, !594, !"__UNIQUE_ID_ddebug343", i1 false, i1 false}
!596 = !{ptr @.str.286, !594, !"<string literal>", i1 false, i1 false}
!597 = !{ptr @.str.287, !598, !"<string literal>", i1 false, i1 false}
!598 = !{!"../fs/ufs/super.c", i32 246, i32 2}
!599 = !{ptr @ufs_print_cylinder_stuff.__UNIQUE_ID_ddebug344, !598, !"__UNIQUE_ID_ddebug344", i1 false, i1 false}
!600 = !{ptr @.str.288, !598, !"<string literal>", i1 false, i1 false}
!601 = !{ptr @.str.289, !602, !"<string literal>", i1 false, i1 false}
!602 = !{!"../fs/ufs/super.c", i32 251, i32 2}
!603 = !{ptr @ufs_print_cylinder_stuff.__UNIQUE_ID_ddebug345, !602, !"__UNIQUE_ID_ddebug345", i1 false, i1 false}
!604 = !{ptr @.str.290, !602, !"<string literal>", i1 false, i1 false}
!605 = !{ptr @.str.291, !606, !"<string literal>", i1 false, i1 false}
!606 = !{!"../fs/ufs/super.c", i32 252, i32 2}
!607 = !{ptr @ufs_print_cylinder_stuff.__UNIQUE_ID_ddebug346, !606, !"__UNIQUE_ID_ddebug346", i1 false, i1 false}
!608 = !{ptr @.str.292, !606, !"<string literal>", i1 false, i1 false}
!609 = !{ptr @.str.293, !610, !"<string literal>", i1 false, i1 false}
!610 = !{!"../fs/ufs/super.c", i32 253, i32 2}
!611 = !{ptr @ufs_print_cylinder_stuff.__UNIQUE_ID_ddebug347, !610, !"__UNIQUE_ID_ddebug347", i1 false, i1 false}
!612 = !{ptr @.str.294, !610, !"<string literal>", i1 false, i1 false}
!613 = !{ptr @.str.295, !614, !"<string literal>", i1 false, i1 false}
!614 = !{!"../fs/ufs/super.c", i32 254, i32 2}
!615 = !{ptr @ufs_print_cylinder_stuff.__UNIQUE_ID_ddebug348, !614, !"__UNIQUE_ID_ddebug348", i1 false, i1 false}
!616 = !{ptr @.str.296, !614, !"<string literal>", i1 false, i1 false}
!617 = !{ptr @.str.297, !618, !"<string literal>", i1 false, i1 false}
!618 = !{!"../fs/ufs/super.c", i32 255, i32 2}
!619 = !{ptr @ufs_print_cylinder_stuff.__UNIQUE_ID_ddebug349, !618, !"__UNIQUE_ID_ddebug349", i1 false, i1 false}
!620 = !{ptr @.str.298, !618, !"<string literal>", i1 false, i1 false}
!621 = !{ptr @.str.299, !622, !"<string literal>", i1 false, i1 false}
!622 = !{!"../fs/ufs/super.c", i32 256, i32 2}
!623 = !{ptr @ufs_print_cylinder_stuff.__UNIQUE_ID_ddebug350, !622, !"__UNIQUE_ID_ddebug350", i1 false, i1 false}
!624 = !{ptr @.str.300, !622, !"<string literal>", i1 false, i1 false}
!625 = !{ptr @.str.301, !626, !"<string literal>", i1 false, i1 false}
!626 = !{!"../fs/ufs/super.c", i32 258, i32 2}
!627 = !{ptr @ufs_print_cylinder_stuff.__UNIQUE_ID_ddebug351, !626, !"__UNIQUE_ID_ddebug351", i1 false, i1 false}
!628 = !{ptr @.str.302, !626, !"<string literal>", i1 false, i1 false}
!629 = !{ptr @.str.303, !630, !"<string literal>", i1 false, i1 false}
!630 = !{!"../fs/ufs/super.c", i32 260, i32 2}
!631 = !{ptr @ufs_print_cylinder_stuff.__UNIQUE_ID_ddebug352, !630, !"__UNIQUE_ID_ddebug352", i1 false, i1 false}
!632 = !{ptr @.str.304, !630, !"<string literal>", i1 false, i1 false}
!633 = !{ptr @ufs_print_cylinder_stuff.__UNIQUE_ID_ddebug353, !634, !"__UNIQUE_ID_ddebug353", i1 false, i1 false}
!634 = !{!"../fs/ufs/super.c", i32 262, i32 2}
!635 = !{ptr @.str.305, !636, !"<string literal>", i1 false, i1 false}
!636 = !{!"../fs/ufs/super.c", i32 1470, i32 48}
!637 = !{i32 1, !"wchar_size", i32 2}
!638 = !{i32 1, !"min_enum_size", i32 4}
!639 = !{i32 8, !"branch-target-enforcement", i32 0}
!640 = !{i32 8, !"sign-return-address", i32 0}
!641 = !{i32 8, !"sign-return-address-all", i32 0}
!642 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!643 = !{i32 7, !"uwtable", i32 1}
!644 = !{i32 7, !"frame-pointer", i32 2}
!645 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!646 = !{!"auto-init"}
!647 = !{i64 2149005039, i64 2149005044, i64 2149005057, i64 2149005101, i64 2149005135, i64 2149005156}
!648 = !{i32 0, i32 33}
!649 = !{i64 752542, i64 752569, i64 752591, i64 752619}
!650 = !{i64 752950, i64 752977, i64 753010, i64 753031, i64 753058, i64 753084}
!651 = !{!"branch_weights", i32 1, i32 2000}
!652 = !{i64 2155351873, i64 2155352353, i64 2155351910, i64 2155351966, i64 2155352000, i64 2155352024, i64 2155352065, i64 2155352086, i64 2155352114, i64 2155352148}
!653 = !{i64 2155353468, i64 2155353948, i64 2155353505, i64 2155353561, i64 2155353595, i64 2155353619, i64 2155353660, i64 2155353681, i64 2155353709, i64 2155353743}
