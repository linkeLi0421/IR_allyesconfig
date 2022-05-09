; ModuleID = '/llk/IR_all_yes/fs/squashfs/super.c_pt.bc'
source_filename = "../fs/squashfs/super.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.file_system_type = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.hlist_head = type { ptr }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.fs_parameter_spec = type { ptr, ptr, i8, i16, ptr }
%struct.fs_context_operations = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.super_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.export_operations = type opaque
%struct.backing_dev_info = type { i64, %struct.rb_node, %struct.list_head, i32, i32, %struct.kref, i32, i32, i32, i32, %struct.atomic_t, %struct.bdi_writeback, %struct.list_head, %struct.xarray, %struct.mutex, %struct.rw_semaphore, %struct.wait_queue_head, ptr, [64 x i8], ptr, %struct.timer_list, ptr }
%struct.rb_node = type { i32, ptr, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.bdi_writeback = type { ptr, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.atomic_t, [4 x %struct.percpu_counter], i32, i32, i32, i32, i32, i32, i32, i32, %struct.fprop_local_percpu, i32, i32, %struct.spinlock, %struct.list_head, %struct.delayed_work, %struct.delayed_work, i32, %struct.list_head, %struct.percpu_ref, %struct.fprop_local_percpu, ptr, ptr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.69 }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.3 }
%union.anon.3 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.percpu_ref = type { i32, ptr }
%struct.fprop_local_percpu = type { %struct.percpu_counter, i32, %struct.raw_spinlock }
%union.anon.69 = type { %struct.work_struct }
%struct.list_head = type { ptr, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.constant_table = type { ptr, i32 }
%struct.fs_context = type { ptr, %struct.mutex, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.p_log, ptr, ptr, ptr, i32, i32, i32, i32, i24 }
%struct.p_log = type { ptr, ptr }
%struct.fs_parse_result = type { i8, %union.anon.81 }
%union.anon.81 = type { i64 }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.79, %struct.list_head, %struct.list_head, %union.anon.80 }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.4, ptr }
%union.anon.4 = type { i64 }
%struct.lockref = type { %union.anon.77 }
%union.anon.77 = type { %struct.anon.78 }
%struct.anon.78 = type { %struct.spinlock, i32 }
%union.anon.79 = type { %struct.list_head }
%union.anon.80 = type { %struct.hlist_node }
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
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
%struct.callback_head = type { ptr, ptr }
%struct.squashfs_sb_info = type { ptr, i32, i32, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.mutex, ptr, ptr, ptr, i64, i64, i64, i32, i16, i64, i32, i32, i32, i32, i8 }
%struct.squashfs_super_block = type { i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.squashfs_decompressor = type { ptr, ptr, ptr, ptr, i32, ptr, i32 }
%struct.block_device = type { i64, i64, ptr, i32, i8, i32, i32, ptr, ptr, ptr, %struct.device, ptr, i32, i8, ptr, i8, %struct.spinlock, ptr, ptr, i32, %struct.mutex, ptr, ptr, i8 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.71, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.72, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.73, ptr, %struct.address_space, %struct.list_head, %union.anon.76, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.71 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%union.anon.72 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.73 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.76 = type { ptr }
%struct.squashfs_inode_info = type { i64, i32, i64, i32, i32, %union.anon.85, %struct.inode }
%union.anon.85 = type { %struct.anon.86 }
%struct.anon.86 = type { i64, i32, i32, i64 }
%struct.kstatfs = type { i32, i32, i64, i64, i64, i64, i64, %struct.__kernel_fsid_t, i32, i32, i32, [4 x i32] }
%struct.__kernel_fsid_t = type { [2 x i32] }

@squashfs_fs_type = internal global { %struct.file_system_type, [44 x i8] } { %struct.file_system_type { ptr @.str, i32 1, ptr @squashfs_init_fs_context, ptr @squashfs_fs_parameters, ptr null, ptr @kill_block_super, ptr null, ptr null, %struct.hlist_head zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, [3 x %struct.lock_class_key] zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@__UNIQUE_ID_alias300 = internal constant [27 x i8] c"squashfs.alias=fs-squashfs\00", section ".modinfo", align 1
@__initcall__kmod_squashfs__301_616_init_squashfs_fs6 = internal global ptr @init_squashfs_fs, section ".initcall6.init", align 4
@__exitcall_exit_squashfs_fs = internal global ptr @exit_squashfs_fs, section ".exitcall.exit", align 4
@__UNIQUE_ID_description302 = internal constant [69 x i8] c"squashfs.description=squashfs 4.0, a compressed read-only filesystem\00", section ".modinfo", align 1
@__UNIQUE_ID_author303 = internal constant [58 x i8] c"squashfs.author=Phillip Lougher <phillip@squashfs.org.uk>\00", section ".modinfo", align 1
@__UNIQUE_ID_file304 = internal constant [35 x i8] c"squashfs.file=fs/squashfs/squashfs\00", section ".modinfo", align 1
@__UNIQUE_ID_license305 = internal constant [21 x i8] c"squashfs.license=GPL\00", section ".modinfo", align 1
@squashfs_inode_cachep = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"squashfs\00", [23 x i8] zeroinitializer }, align 32
@squashfs_fs_parameters = internal constant { [2 x %struct.fs_parameter_spec], [32 x i8] } { [2 x %struct.fs_parameter_spec] [%struct.fs_parameter_spec { ptr @.str.61, ptr @fs_param_is_enum, i8 0, i16 0, ptr @squashfs_param_errors }, %struct.fs_parameter_spec zeroinitializer], [32 x i8] zeroinitializer }, align 32
@squashfs_context_ops = internal constant { %struct.fs_context_operations, [40 x i8] } { %struct.fs_context_operations { ptr @squashfs_free_fs_context, ptr null, ptr @squashfs_parse_param, ptr null, ptr @squashfs_get_tree, ptr @squashfs_reconfigure }, [40 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@squashfs_fill_super.__UNIQUE_ID_ddebug285 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 36, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"squashfs_fill_super\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"fs/squashfs/super.c\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"SQUASHFS: Entered squashfs_fill_superblock\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"squashfs: SQUASHFS: Entered squashfs_fill_superblock\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"squashfs init bdi failed\00", [39 x i8] zeroinitializer }, align 32
@squashfs_fill_super._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 165, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\013squashfs: SQUASHFS error: Failed to allocate squashfs_sb_info\0A\00", [63 x i8] zeroinitializer }, align 32
@squashfs_fill_super._entry_ptr = internal global ptr @squashfs_fill_super._entry, section ".printk_index", align 4
@squashfs_fill_super.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"&msblk->meta_index_mutex\00", [39 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"unable to read squashfs_super_block\00", [60 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Can't find a SQUASHFS superblock on %pg\00", [56 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"Page size > filesystem block size (%d).  This is currently not supported!\00", [54 x i8] zeroinitializer }, align 32
@squashfs_fill_super.__UNIQUE_ID_ddebug286 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.11, i8 0, i8 64, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"SQUASHFS: Found valid superblock on %pg\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"squashfs: SQUASHFS: Found valid superblock on %pg\0A\00", [45 x i8] zeroinitializer }, align 32
@squashfs_fill_super.__UNIQUE_ID_ddebug287 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.13, i8 0, i8 64, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"SQUASHFS: Inodes are %scompressed\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"squashfs: SQUASHFS: Inodes are %scompressed\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"un\00", [29 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@squashfs_fill_super.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.17, i8 0, i8 65, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"SQUASHFS: Data is %scompressed\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"squashfs: SQUASHFS: Data is %scompressed\0A\00", [54 x i8] zeroinitializer }, align 32
@squashfs_fill_super.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.19, i8 0, i8 65, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"SQUASHFS: Filesystem size %lld bytes\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"squashfs: SQUASHFS: Filesystem size %lld bytes\0A\00", [48 x i8] zeroinitializer }, align 32
@squashfs_fill_super.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.21, i8 0, i8 65, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"SQUASHFS: Block size %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"squashfs: SQUASHFS: Block size %d\0A\00", [61 x i8] zeroinitializer }, align 32
@squashfs_fill_super.__UNIQUE_ID_ddebug291 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.23, i8 0, i8 65, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"SQUASHFS: Number of inodes %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"squashfs: SQUASHFS: Number of inodes %d\0A\00", [55 x i8] zeroinitializer }, align 32
@squashfs_fill_super.__UNIQUE_ID_ddebug292 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.25, i8 0, i8 66, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"SQUASHFS: Number of fragments %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"squashfs: SQUASHFS: Number of fragments %d\0A\00", [52 x i8] zeroinitializer }, align 32
@squashfs_fill_super.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.27, i8 0, i8 66, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"SQUASHFS: Number of ids %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"squashfs: SQUASHFS: Number of ids %d\0A\00", [58 x i8] zeroinitializer }, align 32
@squashfs_fill_super.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.29, i8 0, i8 66, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"SQUASHFS: sblk->inode_table_start %llx\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"squashfs: SQUASHFS: sblk->inode_table_start %llx\0A\00", [46 x i8] zeroinitializer }, align 32
@squashfs_fill_super.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.31, i8 0, i8 66, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"SQUASHFS: sblk->directory_table_start %llx\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"squashfs: SQUASHFS: sblk->directory_table_start %llx\0A\00", [42 x i8] zeroinitializer }, align 32
@squashfs_fill_super.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.33, i8 0, i8 67, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"SQUASHFS: sblk->fragment_table_start %llx\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"squashfs: SQUASHFS: sblk->fragment_table_start %llx\0A\00", [43 x i8] zeroinitializer }, align 32
@squashfs_fill_super.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.35, i8 0, i8 67, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"SQUASHFS: sblk->id_table_start %llx\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"squashfs: SQUASHFS: sblk->id_table_start %llx\0A\00", [49 x i8] zeroinitializer }, align 32
@squashfs_super_ops = internal constant { %struct.super_operations, [60 x i8] } { %struct.super_operations { ptr @squashfs_alloc_inode, ptr null, ptr @squashfs_free_inode, ptr null, ptr null, ptr null, ptr null, ptr @squashfs_put_super, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @squashfs_statfs, ptr null, ptr null, ptr @squashfs_show_options, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"metadata\00", [23 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"data\00", [27 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to allocate read_page block\00", [61 x i8] zeroinitializer }, align 32
@squashfs_xattr_handlers = external dso_local global [0 x ptr], align 4
@.str.40 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"unable to read xattr id index table\00", [60 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"unable to read id index table\00", [34 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"unable to read inode lookup table\00", [62 x i8] zeroinitializer }, align 32
@squashfs_export_ops = external dso_local constant %struct.export_operations, align 1
@.str.43 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fragment\00", [23 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"unable to read fragment index table\00", [60 x i8] zeroinitializer }, align 32
@squashfs_fill_super._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.1, ptr @.str.2, i32 404, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013squashfs: SQUASHFS error: Root inode create failed\0A\00", [42 x i8] zeroinitializer }, align 32
@squashfs_fill_super._entry_ptr.47 = internal global ptr @squashfs_fill_super._entry.45, section ".printk_index", align 4
@squashfs_fill_super.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.48, i8 0, i8 102, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.48 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"SQUASHFS: Leaving squashfs_fill_super\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"squashfs: SQUASHFS: Leaving squashfs_fill_super\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"squashfs image failed sanity check\00", [61 x i8] zeroinitializer }, align 32
@noop_backing_dev_info = external dso_local global %struct.backing_dev_info, align 8
@.str.51 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"squashfs_%u_%u\00", [17 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"Major/Minor mismatch, older Squashfs %d.%d filesystems are unsupported\00", [57 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"Major/Minor mismatch, trying to mount newer %d.%d filesystem\00", [35 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Please update your kernel\00", [38 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"Filesystem uses \22%s\22 compression. This is not supported\00", [40 x i8] zeroinitializer }, align 32
@squashfs_statfs.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.56, ptr @.str.2, ptr @.str.57, i8 0, i8 123, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.56 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"squashfs_statfs\00", [16 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"SQUASHFS: Entered squashfs_statfs\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"squashfs: SQUASHFS: Entered squashfs_statfs\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c",errors=panic\00", [18 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c",errors=continue\00", [47 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"errors\00", [25 x i8] zeroinitializer }, align 32
@squashfs_param_errors = internal constant { [3 x %struct.constant_table], [40 x i8] } { [3 x %struct.constant_table] [%struct.constant_table { ptr @.str.62, i32 0 }, %struct.constant_table { ptr @.str.63, i32 1 }, %struct.constant_table zeroinitializer], [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"continue\00", [23 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"panic\00", [26 x i8] zeroinitializer }, align 32
@init_squashfs_fs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.65, ptr @.str.2, i32 571, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\016squashfs: version 4.0 (2009/01/31) Phillip Lougher\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"init_squashfs_fs\00", [47 x i8] zeroinitializer }, align 32
@init_squashfs_fs._entry_ptr = internal global ptr @init_squashfs_fs._entry, section ".printk_index", align 4
@.str.66 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"squashfs_inode_cache\00", [43 x i8] zeroinitializer }, align 32
@___asan_gen_.67 = private unnamed_addr constant [17 x i8] c"squashfs_fs_type\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 598, i32 32 }
@___asan_gen_.70 = private unnamed_addr constant [22 x i8] c"squashfs_inode_cachep\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 525, i32 27 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 600, i32 10 }
@___asan_gen_.76 = private unnamed_addr constant [23 x i8] c"squashfs_fs_parameters\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 63, i32 39 }
@___asan_gen_.79 = private unnamed_addr constant [21 x i8] c"squashfs_context_ops\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 454, i32 43 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 147, i32 2 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 159, i32 3 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 165, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 175, i32 2 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 187, i32 3 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 199, i32 4 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 230, i32 3 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 256, i32 2 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 257, i32 2 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 259, i32 2 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 261, i32 2 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 262, i32 2 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 263, i32 2 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 264, i32 2 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 265, i32 2 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 266, i32 2 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 267, i32 2 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 268, i32 2 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 270, i32 2 }
@___asan_gen_.196 = private unnamed_addr constant [19 x i8] c"squashfs_super_ops\00", align 1
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 608, i32 38 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 281, i32 43 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 287, i32 41 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 290, i32 3 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 313, i32 3 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 326, i32 3 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 342, i32 3 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 356, i32 46 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 367, i32 3 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 404, i32 3 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 409, i32 2 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 414, i32 2 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 125, i32 33 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 96, i32 3 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 100, i32 3 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 102, i32 3 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 108, i32 3 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 492, i32 2 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 467, i32 15 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 469, i32 15 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 64, i32 2 }
@___asan_gen_.271 = private unnamed_addr constant [22 x i8] c"squashfs_param_errors\00", align 1
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 57, i32 36 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 58, i32 3 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 59, i32 3 }
@___asan_gen_.280 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 571, i32 2 }
@___asan_gen_.289 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.290 = private constant [23 x i8] c"../fs/squashfs/super.c\00", align 1
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 538, i32 44 }
@llvm.compiler.used = appending global [86 x ptr] [ptr @__UNIQUE_ID_alias300, ptr @__UNIQUE_ID_author303, ptr @__UNIQUE_ID_description302, ptr @__UNIQUE_ID_file304, ptr @__UNIQUE_ID_license305, ptr @__exitcall_exit_squashfs_fs, ptr @__initcall__kmod_squashfs__301_616_init_squashfs_fs6, ptr @exit_squashfs_fs, ptr @init_squashfs_fs._entry, ptr @init_squashfs_fs._entry_ptr, ptr @squashfs_fill_super._entry, ptr @squashfs_fill_super._entry.45, ptr @squashfs_fill_super._entry_ptr, ptr @squashfs_fill_super._entry_ptr.47, ptr @squashfs_fs_type, ptr @squashfs_inode_cachep, ptr @.str, ptr @squashfs_fs_parameters, ptr @squashfs_context_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @squashfs_fill_super.__key, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @squashfs_super_ops, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.46, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @squashfs_param_errors, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66], section "llvm.metadata"
@0 = internal global [75 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @squashfs_fs_type to i32), i32 116, i32 160, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @squashfs_inode_cachep to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @squashfs_fs_parameters to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @squashfs_context_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @squashfs_fill_super._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @squashfs_fill_super.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @squashfs_super_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @squashfs_fill_super._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @squashfs_param_errors to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_squashfs_fs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @exit_squashfs_fs() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 @unregister_filesystem(ptr noundef nonnull @squashfs_fs_type) #7
  tail call void @rcu_barrier() #7
  %0 = load ptr, ptr @squashfs_inode_cachep, align 4
  tail call void @kmem_cache_destroy(ptr noundef %0) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_filesystem(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @init_squashfs_fs() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.66, i32 noundef 840, i32 noundef 0, i32 noundef 67248128, ptr noundef nonnull @init_once) #7
  store ptr %call.i, ptr @squashfs_inode_cachep, align 4
  %tobool.not.i.not = icmp eq ptr %call.i, null
  br i1 %tobool.not.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @register_filesystem(ptr noundef nonnull @squashfs_fs_type) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %do.end, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @rcu_barrier() #7
  %0 = load ptr, ptr @squashfs_inode_cachep, align 4
  tail call void @kmem_cache_destroy(ptr noundef %0) #7
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.then3 ], [ 0, %do.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_barrier() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @squashfs_init_fs_context(ptr nocapture noundef writeonly %fc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 4) #11
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %fs_private = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 3
  %1 = ptrtoint ptr %fs_private to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i, ptr %fs_private, align 4
  %2 = ptrtoint ptr %fc to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @squashfs_context_ops, ptr %fc, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kill_block_super(ptr noundef) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @squashfs_free_fs_context(ptr nocapture noundef readonly %fc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %fs_private = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 3
  %0 = ptrtoint ptr %fs_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fs_private, align 4
  tail call void @kfree(ptr noundef %1) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @squashfs_parse_param(ptr noundef %fc, ptr noundef %param) #2 align 64 {
entry:
  %result = alloca %struct.fs_parse_result, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %fs_private = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 3
  %0 = ptrtoint ptr %fs_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fs_private, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %result) #7
  %2 = call ptr @memset(ptr %result, i32 255, i32 16)
  %log.i = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 9
  %call.i = call i32 @__fs_parse(ptr noundef %log.i, ptr noundef nonnull @squashfs_fs_parameters, ptr noundef %param, ptr noundef nonnull %result) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cond = icmp eq i32 %call.i, 0
  br i1 %cond, label %sw.bb, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %3 = getelementptr inbounds %struct.fs_parse_result, ptr %result, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 8
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %1, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.bb, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.bb ], [ %call.i, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %result) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @squashfs_get_tree(ptr noundef %fc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @get_tree_bdev(ptr noundef %fc, ptr noundef nonnull @squashfs_fill_super) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @squashfs_reconfigure(ptr nocapture noundef %fc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %root = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 5
  %0 = ptrtoint ptr %root to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %root, align 4
  %d_sb = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %d_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info, align 16
  %fs_private = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 3
  %6 = ptrtoint ptr %fs_private to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fs_private, align 4
  %call = tail call i32 @sync_filesystem(ptr noundef %3) #7
  %sb_flags = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 13
  %8 = ptrtoint ptr %sb_flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sb_flags, align 4
  %or = or i32 %9, 1
  store i32 %or, ptr %sb_flags, align 4
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp = icmp eq i32 %11, 1
  %panic_on_errors = getelementptr inbounds %struct.squashfs_sb_info, ptr %5, i32 0, i32 24
  %frombool = zext i1 %cmp to i8
  %12 = ptrtoint ptr %panic_on_errors to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %frombool, ptr %panic_on_errors, align 8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__fs_parse(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_tree_bdev(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @squashfs_fill_super(ptr noundef %sb, ptr nocapture noundef readonly %fc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %fs_private = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 3
  %0 = ptrtoint ptr %fs_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fs_private, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @squashfs_fill_super.__UNIQUE_ID_ddebug285, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@squashfs_fill_super, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !165

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @squashfs_fill_super.__UNIQUE_ID_ddebug285, ptr noundef nonnull @.str.4) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %s_dev.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 1
  %2 = ptrtoint ptr %s_dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %s_dev.i, align 8
  %shr.i = lshr i32 %3, 20
  %and.i = and i32 %3, 1048575
  %s_bdi.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 27
  %4 = ptrtoint ptr %s_bdi.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_bdi.i, align 8
  tail call void @bdi_put(ptr noundef %5) #7
  %6 = ptrtoint ptr %s_bdi.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @noop_backing_dev_info, ptr %s_bdi.i, align 8
  %call.i = tail call i32 (ptr, ptr, ...) @super_setup_bdi_name(ptr noundef %sb, ptr noundef nonnull @.str.51, i32 noundef %shr.i, i32 noundef %and.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end7, label %if.then5

if.then5:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %log6 = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 9, i32 1
  %7 = ptrtoint ptr %log6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %log6, align 4
  tail call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef %8, ptr noundef null, i8 noundef zeroext 101, ptr noundef nonnull @.str.5) #7
  br label %cleanup

if.end7:                                          ; preds = %do.end
  %9 = ptrtoint ptr %s_bdi.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %s_bdi.i, align 8
  %ra_pages.i = getelementptr inbounds %struct.backing_dev_info, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %ra_pages.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %ra_pages.i, align 4
  %12 = load ptr, ptr %s_bdi.i, align 8
  %io_pages.i = getelementptr inbounds %struct.backing_dev_info, ptr %12, i32 0, i32 4
  %13 = ptrtoint ptr %io_pages.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %io_pages.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %14 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %14, i32 noundef 3520, i32 noundef 208) #11
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %15 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call7.i.i, ptr %s_fs_info, align 16
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %do.end13, label %if.end16

do.end13:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #10
  br label %cleanup

if.end16:                                         ; preds = %if.end7
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %17)
  %cmp18 = icmp eq i32 %17, 1
  %panic_on_errors = getelementptr inbounds %struct.squashfs_sb_info, ptr %call7.i.i, i32 0, i32 24
  %frombool19 = zext i1 %cmp18 to i8
  %18 = ptrtoint ptr %panic_on_errors to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %frombool19, ptr %panic_on_errors, align 8
  %call20 = tail call i32 @sb_min_blocksize(ptr noundef %sb, i32 noundef 4096) #7
  %devblksize = getelementptr inbounds %struct.squashfs_sb_info, ptr %call7.i.i, i32 0, i32 1
  %19 = ptrtoint ptr %devblksize to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %call20, ptr %devblksize, align 4
  %20 = tail call i32 @llvm.cttz.i32(i32 %call20, i1 false) #7, !range !166
  %devblksize_log2 = getelementptr inbounds %struct.squashfs_sb_info, ptr %call7.i.i, i32 0, i32 2
  %21 = ptrtoint ptr %devblksize_log2 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %devblksize_log2, align 8
  %meta_index_mutex = getelementptr inbounds %struct.squashfs_sb_info, ptr %call7.i.i, i32 0, i32 10
  tail call void @__mutex_init(ptr noundef %meta_index_mutex, ptr noundef nonnull @.str.7, ptr noundef nonnull @squashfs_fill_super.__key) #7
  %bytes_used = getelementptr inbounds %struct.squashfs_sb_info, ptr %call7.i.i, i32 0, i32 19
  %22 = ptrtoint ptr %bytes_used to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 96, ptr %bytes_used, align 8
  %call27 = tail call ptr @squashfs_read_table(ptr noundef %sb, i64 noundef 0, i32 noundef 96) #7
  %cmp.i = icmp ugt ptr %call27, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then29, label %if.end33

if.then29:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  %log31 = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 9, i32 1
  %23 = ptrtoint ptr %log31 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %log31, align 4
  tail call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef %24, ptr noundef null, i8 noundef zeroext 101, ptr noundef nonnull @.str.8) #7
  %25 = ptrtoint ptr %call27 to i32
  br label %failed_mount

if.end33:                                         ; preds = %if.end16
  %26 = ptrtoint ptr %call27 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %call27, align 8
  %28 = tail call i32 @llvm.bswap.i32(i32 %27)
  %s_magic34 = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 12
  %29 = ptrtoint ptr %s_magic34 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %s_magic34, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1752396147, i32 %27)
  %cmp36.not = icmp eq i32 %27, 1752396147
  br i1 %cmp36.not, label %if.end43, label %if.then37

if.then37:                                        ; preds = %if.end33
  %sb_flags = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 13
  %30 = ptrtoint ptr %sb_flags to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %sb_flags, align 4
  %and = and i32 %31, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool38.not = icmp eq i32 %and, 0
  br i1 %tobool38.not, label %if.then39, label %if.then37.failed_mount_crit_edge

if.then37.failed_mount_crit_edge:                 ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #9
  br label %failed_mount

if.then39:                                        ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #9
  %log41 = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 9, i32 1
  %32 = ptrtoint ptr %log41 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %log41, align 4
  %s_bdev = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 26
  %34 = ptrtoint ptr %s_bdev to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %s_bdev, align 4
  tail call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef %33, ptr noundef null, i8 noundef zeroext 101, ptr noundef nonnull @.str.9, ptr noundef %35) #7
  br label %failed_mount

if.end43:                                         ; preds = %if.end33
  %s_major = getelementptr inbounds %struct.squashfs_super_block, ptr %call27, i32 0, i32 9
  %36 = ptrtoint ptr %s_major to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %s_major, align 4
  %38 = tail call i16 @llvm.bswap.i16(i16 %37)
  %s_minor = getelementptr inbounds %struct.squashfs_super_block, ptr %call27, i32 0, i32 10
  %39 = ptrtoint ptr %s_minor to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %s_minor, align 2
  %41 = tail call i16 @llvm.bswap.i16(i16 %40)
  %compression = getelementptr inbounds %struct.squashfs_super_block, ptr %call27, i32 0, i32 5
  %42 = ptrtoint ptr %compression to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %compression, align 4
  %44 = tail call i16 @llvm.bswap.i16(i16 %43)
  %conv.i = sext i16 %38 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %38)
  %cmp.i677 = icmp slt i16 %38, 4
  br i1 %cmp.i677, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #9
  %log2.i = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 9, i32 1
  %45 = ptrtoint ptr %log2.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %log2.i, align 4
  %conv4.i = sext i16 %41 to i32
  tail call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef %46, ptr noundef null, i8 noundef zeroext 101, ptr noundef nonnull @.str.52, i32 noundef %conv.i, i32 noundef %conv4.i) #7
  br label %supported_squashfs_filesystem.exit.thread

if.else.i:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_const_cmp2(i16 1024, i16 %37)
  %cmp6.not.i = icmp ne i16 %37, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %41)
  %cmp9.i = icmp sgt i16 %41, 0
  %or.cond.i = or i1 %cmp6.not.i, %cmp9.i
  br i1 %or.cond.i, label %if.then11.i, label %if.end18.i

if.then11.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  %log13.i = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 9, i32 1
  %47 = ptrtoint ptr %log13.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %log13.i, align 4
  %conv15.i = sext i16 %41 to i32
  tail call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef %48, ptr noundef null, i8 noundef zeroext 101, ptr noundef nonnull @.str.53, i32 noundef %conv.i, i32 noundef %conv15.i) #7
  %49 = ptrtoint ptr %log13.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %log13.i, align 4
  tail call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef %50, ptr noundef null, i8 noundef zeroext 101, ptr noundef nonnull @.str.54) #7
  br label %supported_squashfs_filesystem.exit.thread

if.end18.i:                                       ; preds = %if.else.i
  %conv19.i = sext i16 %44 to i32
  %call.i678 = tail call ptr @squashfs_lookup_decompressor(i32 noundef %conv19.i) #7
  %supported.i = getelementptr inbounds %struct.squashfs_decompressor, ptr %call.i678, i32 0, i32 6
  %51 = ptrtoint ptr %supported.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %supported.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool.not.i679 = icmp eq i32 %52, 0
  br i1 %tobool.not.i679, label %if.then20.i, label %supported_squashfs_filesystem.exit

if.then20.i:                                      ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #9
  %log22.i = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 9, i32 1
  %53 = ptrtoint ptr %log22.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %log22.i, align 4
  %name.i = getelementptr inbounds %struct.squashfs_decompressor, ptr %call.i678, i32 0, i32 5
  %55 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %name.i, align 4
  tail call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef %54, ptr noundef null, i8 noundef zeroext 101, ptr noundef nonnull @.str.55, ptr noundef %56) #7
  br label %supported_squashfs_filesystem.exit.thread

supported_squashfs_filesystem.exit.thread:        ; preds = %if.then20.i, %if.then11.i, %if.then.i
  %57 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr null, ptr %call7.i.i, align 8
  br label %failed_mount

supported_squashfs_filesystem.exit:               ; preds = %if.end18.i
  %58 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %call.i678, ptr %call7.i.i, align 8
  %cmp46 = icmp eq ptr %call.i678, null
  br i1 %cmp46, label %supported_squashfs_filesystem.exit.failed_mount_crit_edge, label %if.end48

supported_squashfs_filesystem.exit.failed_mount_crit_edge: ; preds = %supported_squashfs_filesystem.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %failed_mount

if.end48:                                         ; preds = %supported_squashfs_filesystem.exit
  %bytes_used49 = getelementptr inbounds %struct.squashfs_super_block, ptr %call27, i32 0, i32 12
  %59 = ptrtoint ptr %bytes_used49 to i32
  call void @__asan_load8_noabort(i32 %59)
  %60 = load i64, ptr %bytes_used49, align 8
  %61 = tail call i64 @llvm.bswap.i64(i64 %60)
  %62 = ptrtoint ptr %bytes_used to i32
  call void @__asan_store8_noabort(i32 %62)
  store i64 %61, ptr %bytes_used, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %61)
  %cmp52 = icmp slt i64 %61, 0
  br i1 %cmp52, label %if.end48.failed_mount_crit_edge, label %lor.lhs.false

if.end48.failed_mount_crit_edge:                  ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #9
  br label %failed_mount

lor.lhs.false:                                    ; preds = %if.end48
  %s_bdev54 = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 26
  %63 = ptrtoint ptr %s_bdev54 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %s_bdev54, align 4
  %bd_nr_sectors.i.i = getelementptr inbounds %struct.block_device, ptr %64, i32 0, i32 1
  %65 = ptrtoint ptr %bd_nr_sectors.i.i to i32
  call void @__asan_load8_noabort(i32 %65)
  %66 = load i64, ptr %bd_nr_sectors.i.i, align 8
  %shl.i = shl i64 %66, 9
  call void @__sanitizer_cov_trace_cmp8(i64 %61, i64 %shl.i)
  %cmp56 = icmp sgt i64 %61, %shl.i
  br i1 %cmp56, label %lor.lhs.false.failed_mount_crit_edge, label %if.end58

lor.lhs.false.failed_mount_crit_edge:             ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %failed_mount

if.end58:                                         ; preds = %lor.lhs.false
  %block_size = getelementptr inbounds %struct.squashfs_super_block, ptr %call27, i32 0, i32 3
  %67 = ptrtoint ptr %block_size to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %block_size, align 4
  %69 = tail call i32 @llvm.bswap.i32(i32 %68)
  %block_size59 = getelementptr inbounds %struct.squashfs_sb_info, ptr %call7.i.i, i32 0, i32 17
  %70 = ptrtoint ptr %block_size59 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %69, ptr %block_size59, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1048576, i32 %69)
  %cmp61 = icmp ugt i32 %69, 1048576
  br i1 %cmp61, label %if.end58.insanity_crit_edge, label %if.end63

if.end58.insanity_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #9
  br label %insanity

if.end63:                                         ; preds = %if.end58
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %69)
  %cmp65 = icmp ult i32 %69, 4096
  br i1 %cmp65, label %if.then66, label %if.end70

if.then66:                                        ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #9
  %log68 = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 9, i32 1
  %71 = ptrtoint ptr %log68 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %log68, align 4
  tail call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef %72, ptr noundef null, i8 noundef zeroext 101, ptr noundef nonnull @.str.10, i32 noundef %69) #7
  br label %failed_mount

if.end70:                                         ; preds = %if.end63
  %block_log = getelementptr inbounds %struct.squashfs_super_block, ptr %call27, i32 0, i32 6
  %73 = ptrtoint ptr %block_log to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %block_log, align 2
  %75 = tail call i16 @llvm.bswap.i16(i16 %74)
  %block_log71 = getelementptr inbounds %struct.squashfs_sb_info, ptr %call7.i.i, i32 0, i32 18
  %76 = ptrtoint ptr %block_log71 to i32
  call void @__asan_store2_noabort(i32 %76)
  store i16 %75, ptr %block_log71, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 20, i16 %75)
  %cmp73 = icmp ugt i16 %75, 20
  br i1 %cmp73, label %if.end70.failed_mount_crit_edge, label %if.end76

if.end70.failed_mount_crit_edge:                  ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #9
  br label %failed_mount

if.end76:                                         ; preds = %if.end70
  %conv = zext i16 %75 to i32
  %shl = shl nuw nsw i32 1, %conv
  call void @__sanitizer_cov_trace_cmp4(i32 %69, i32 %shl)
  %cmp80.not = icmp eq i32 %69, %shl
  br i1 %cmp80.not, label %if.end83, label %if.end76.insanity_crit_edge

if.end76.insanity_crit_edge:                      ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #9
  br label %insanity

if.end83:                                         ; preds = %if.end76
  %root_inode84 = getelementptr inbounds %struct.squashfs_super_block, ptr %call27, i32 0, i32 11
  %77 = ptrtoint ptr %root_inode84 to i32
  call void @__asan_load8_noabort(i32 %77)
  %78 = load i64, ptr %root_inode84, align 8
  %79 = tail call i64 @llvm.bswap.i64(i64 %78)
  %conv86637 = and i64 %79, 65535
  call void @__sanitizer_cov_trace_const_cmp8(i64 8192, i64 %conv86637)
  %cmp87 = icmp ugt i64 %conv86637, 8192
  br i1 %cmp87, label %if.end83.insanity_crit_edge, label %if.end90

if.end83.insanity_crit_edge:                      ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #9
  br label %insanity

if.end90:                                         ; preds = %if.end83
  %inode_table_start = getelementptr inbounds %struct.squashfs_super_block, ptr %call27, i32 0, i32 15
  %80 = ptrtoint ptr %inode_table_start to i32
  call void @__asan_load8_noabort(i32 %80)
  %81 = load i64, ptr %inode_table_start, align 8
  %82 = tail call i64 @llvm.bswap.i64(i64 %81)
  %inode_table = getelementptr inbounds %struct.squashfs_sb_info, ptr %call7.i.i, i32 0, i32 14
  %83 = ptrtoint ptr %inode_table to i32
  call void @__asan_store8_noabort(i32 %83)
  store i64 %82, ptr %inode_table, align 8
  %directory_table_start = getelementptr inbounds %struct.squashfs_super_block, ptr %call27, i32 0, i32 16
  %84 = ptrtoint ptr %directory_table_start to i32
  call void @__asan_load8_noabort(i32 %84)
  %85 = load i64, ptr %directory_table_start, align 8
  %86 = tail call i64 @llvm.bswap.i64(i64 %85)
  %directory_table = getelementptr inbounds %struct.squashfs_sb_info, ptr %call7.i.i, i32 0, i32 15
  %87 = ptrtoint ptr %directory_table to i32
  call void @__asan_store8_noabort(i32 %87)
  store i64 %86, ptr %directory_table, align 8
  %inodes = getelementptr inbounds %struct.squashfs_super_block, ptr %call27, i32 0, i32 1
  %88 = ptrtoint ptr %inodes to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %inodes, align 4
  %90 = tail call i32 @llvm.bswap.i32(i32 %89)
  %inodes91 = getelementptr inbounds %struct.squashfs_sb_info, ptr %call7.i.i, i32 0, i32 20
  %91 = ptrtoint ptr %inodes91 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %90, ptr %inodes91, align 8
  %fragments92 = getelementptr inbounds %struct.squashfs_super_block, ptr %call27, i32 0, i32 4
  %92 = ptrtoint ptr %fragments92 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %fragments92, align 8
  %94 = tail call i32 @llvm.bswap.i32(i32 %93)
  %fragments93 = getelementptr inbounds %struct.squashfs_sb_info, ptr %call7.i.i, i32 0, i32 21
  %95 = ptrtoint ptr %fragments93 to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %94, ptr %fragments93, align 4
  %no_ids = getelementptr inbounds %struct.squashfs_super_block, ptr %call27, i32 0, i32 8
  %96 = ptrtoint ptr %no_ids to i32
  call void @__asan_load2_noabort(i32 %96)
  %97 = load i16, ptr %no_ids, align 2
  %98 = tail call i16 @llvm.bswap.i16(i16 %97)
  %conv94 = zext i16 %98 to i32
  %ids = getelementptr inbounds %struct.squashfs_sb_info, ptr %call7.i.i, i32 0, i32 23
  %99 = ptrtoint ptr %ids to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %conv94, ptr %ids, align 4
  %flags95 = getelementptr inbounds %struct.squashfs_super_block, ptr %call27, i32 0, i32 7
  %100 = ptrtoint ptr %flags95 to i32
  call void @__asan_load2_noabort(i32 %100)
  %101 = load i16, ptr %flags95, align 8
  %102 = tail call i16 @llvm.bswap.i16(i16 %101)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @squashfs_fill_super.__UNIQUE_ID_ddebug286, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@squashfs_fill_super, %if.then108)) #7
          to label %do.body113 [label %if.then108], !srcloc !165

if.then108:                                       ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #9
  %103 = ptrtoint ptr %s_bdev54 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %s_bdev54, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @squashfs_fill_super.__UNIQUE_ID_ddebug286, ptr noundef nonnull @.str.12, ptr noundef %104) #7
  br label %do.body113

do.body113:                                       ; preds = %if.then108, %if.end90
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @squashfs_fill_super.__UNIQUE_ID_ddebug287, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@squashfs_fill_super, %if.then125)) #7
          to label %do.body132 [label %if.then125], !srcloc !165

if.then125:                                       ; preds = %do.body113
  call void @__sanitizer_cov_trace_pc() #9
  %105 = and i16 %102, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %105)
  %tobool128.not = icmp eq i16 %105, 0
  %cond = select i1 %tobool128.not, ptr @.str.16, ptr @.str.15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @squashfs_fill_super.__UNIQUE_ID_ddebug287, ptr noundef nonnull @.str.14, ptr noundef nonnull %cond) #7
  br label %do.body132

do.body132:                                       ; preds = %if.then125, %do.body113
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @squashfs_fill_super.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@squashfs_fill_super, %if.then144)) #7
          to label %do.body153 [label %if.then144], !srcloc !165

if.then144:                                       ; preds = %do.body132
  call void @__sanitizer_cov_trace_pc() #9
  %106 = and i16 %102, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %106)
  %tobool148.not = icmp eq i16 %106, 0
  %cond149 = select i1 %tobool148.not, ptr @.str.16, ptr @.str.15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @squashfs_fill_super.__UNIQUE_ID_ddebug288, ptr noundef nonnull @.str.18, ptr noundef nonnull %cond149) #7
  br label %do.body153

do.body153:                                       ; preds = %if.then144, %do.body132
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @squashfs_fill_super.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@squashfs_fill_super, %if.then165)) #7
          to label %do.body170 [label %if.then165], !srcloc !165

if.then165:                                       ; preds = %do.body153
  call void @__sanitizer_cov_trace_pc() #9
  %107 = ptrtoint ptr %bytes_used to i32
  call void @__asan_load8_noabort(i32 %107)
  %108 = load i64, ptr %bytes_used, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @squashfs_fill_super.__UNIQUE_ID_ddebug289, ptr noundef nonnull @.str.20, i64 noundef %108) #7
  br label %do.body170

do.body170:                                       ; preds = %if.then165, %do.body153
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @squashfs_fill_super.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@squashfs_fill_super, %if.then182)) #7
          to label %do.body187 [label %if.then182], !srcloc !165

if.then182:                                       ; preds = %do.body170
  call void @__sanitizer_cov_trace_pc() #9
  %109 = ptrtoint ptr %block_size59 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %block_size59, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @squashfs_fill_super.__UNIQUE_ID_ddebug290, ptr noundef nonnull @.str.22, i32 noundef %110) #7
  br label %do.body187

do.body187:                                       ; preds = %if.then182, %do.body170
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @squashfs_fill_super.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@squashfs_fill_super, %if.then199)) #7
          to label %do.body204 [label %if.then199], !srcloc !165

if.then199:                                       ; preds = %do.body187
  call void @__sanitizer_cov_trace_pc() #9
  %111 = ptrtoint ptr %inodes91 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %inodes91, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @squashfs_fill_super.__UNIQUE_ID_ddebug291, ptr noundef nonnull @.str.24, i32 noundef %112) #7
  br label %do.body204

do.body204:                                       ; preds = %if.then199, %do.body187
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @squashfs_fill_super.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@squashfs_fill_super, %if.then216)) #7
          to label %do.body221 [label %if.then216], !srcloc !165

if.then216:                                       ; preds = %do.body204
  call void @__sanitizer_cov_trace_pc() #9
  %113 = ptrtoint ptr %fragments93 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %fragments93, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @squashfs_fill_super.__UNIQUE_ID_ddebug292, ptr noundef nonnull @.str.26, i32 noundef %114) #7
  br label %do.body221

do.body221:                                       ; preds = %if.then216, %do.body204
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @squashfs_fill_super.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@squashfs_fill_super, %if.then233)) #7
          to label %do.body238 [label %if.then233], !srcloc !165

if.then233:                                       ; preds = %do.body221
  call void @__sanitizer_cov_trace_pc() #9
  %115 = ptrtoint ptr %ids to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %ids, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @squashfs_fill_super.__UNIQUE_ID_ddebug293, ptr noundef nonnull @.str.28, i32 noundef %116) #7
  br label %do.body238

do.body238:                                       ; preds = %if.then233, %do.body221
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @squashfs_fill_super.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@squashfs_fill_super, %if.then250)) #7
          to label %do.body255 [label %if.then250], !srcloc !165

if.then250:                                       ; preds = %do.body238
  call void @__sanitizer_cov_trace_pc() #9
  %117 = ptrtoint ptr %inode_table to i32
  call void @__asan_load8_noabort(i32 %117)
  %118 = load i64, ptr %inode_table, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @squashfs_fill_super.__UNIQUE_ID_ddebug294, ptr noundef nonnull @.str.30, i64 noundef %118) #7
  br label %do.body255

do.body255:                                       ; preds = %if.then250, %do.body238
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @squashfs_fill_super.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@squashfs_fill_super, %if.then267)) #7
          to label %do.body272 [label %if.then267], !srcloc !165

if.then267:                                       ; preds = %do.body255
  call void @__sanitizer_cov_trace_pc() #9
  %119 = ptrtoint ptr %directory_table to i32
  call void @__asan_load8_noabort(i32 %119)
  %120 = load i64, ptr %directory_table, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @squashfs_fill_super.__UNIQUE_ID_ddebug295, ptr noundef nonnull @.str.32, i64 noundef %120) #7
  br label %do.body272

do.body272:                                       ; preds = %if.then267, %do.body255
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @squashfs_fill_super.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@squashfs_fill_super, %if.then284)) #7
          to label %do.body288 [label %if.then284], !srcloc !165

if.then284:                                       ; preds = %do.body272
  call void @__sanitizer_cov_trace_pc() #9
  %fragment_table_start = getelementptr inbounds %struct.squashfs_super_block, ptr %call27, i32 0, i32 17
  %121 = ptrtoint ptr %fragment_table_start to i32
  call void @__asan_load8_noabort(i32 %121)
  %122 = load i64, ptr %fragment_table_start, align 8
  %123 = tail call i64 @llvm.bswap.i64(i64 %122)
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @squashfs_fill_super.__UNIQUE_ID_ddebug296, ptr noundef nonnull @.str.34, i64 noundef %123) #7
  br label %do.body288

do.body288:                                       ; preds = %if.then284, %do.body272
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @squashfs_fill_super.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@squashfs_fill_super, %if.then300)) #7
          to label %do.end303 [label %if.then300], !srcloc !165

if.then300:                                       ; preds = %do.body288
  call void @__sanitizer_cov_trace_pc() #9
  %id_table_start = getelementptr inbounds %struct.squashfs_super_block, ptr %call27, i32 0, i32 13
  %124 = ptrtoint ptr %id_table_start to i32
  call void @__asan_load8_noabort(i32 %124)
  %125 = load i64, ptr %id_table_start, align 8
  %126 = tail call i64 @llvm.bswap.i64(i64 %125)
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @squashfs_fill_super.__UNIQUE_ID_ddebug297, ptr noundef nonnull @.str.36, i64 noundef %126) #7
  br label %do.end303

do.end303:                                        ; preds = %if.then300, %do.body288
  %s_maxbytes = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 4
  %127 = ptrtoint ptr %s_maxbytes to i32
  call void @__asan_store8_noabort(i32 %127)
  store i64 17592186040320, ptr %s_maxbytes, align 8
  %s_time_min = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 35
  %128 = ptrtoint ptr %s_time_min to i32
  call void @__asan_store8_noabort(i32 %128)
  store i64 0, ptr %s_time_min, align 8
  %s_time_max = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 36
  %129 = ptrtoint ptr %s_time_max to i32
  call void @__asan_store8_noabort(i32 %129)
  store i64 4294967295, ptr %s_time_max, align 64
  %s_flags = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 10
  %130 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %s_flags, align 4
  %or = or i32 %131, 1
  store i32 %or, ptr %s_flags, align 4
  %s_op = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 6
  %132 = ptrtoint ptr %s_op to i32
  call void @__asan_store4_noabort(i32 %132)
  store ptr @squashfs_super_ops, ptr %s_op, align 4
  %call304 = tail call ptr @squashfs_cache_init(ptr noundef nonnull @.str.37, i32 noundef 8, i32 noundef 8192) #7
  %block_cache = getelementptr inbounds %struct.squashfs_sb_info, ptr %call7.i.i, i32 0, i32 3
  %133 = ptrtoint ptr %block_cache to i32
  call void @__asan_store4_noabort(i32 %133)
  store ptr %call304, ptr %block_cache, align 4
  %cmp306 = icmp eq ptr %call304, null
  br i1 %cmp306, label %do.end303.failed_mount_crit_edge, label %if.end309

do.end303.failed_mount_crit_edge:                 ; preds = %do.end303
  call void @__sanitizer_cov_trace_pc() #9
  br label %failed_mount

if.end309:                                        ; preds = %do.end303
  %call310 = tail call i32 @squashfs_max_decompressors() #7
  %134 = ptrtoint ptr %block_size59 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %block_size59, align 8
  %call312 = tail call ptr @squashfs_cache_init(ptr noundef nonnull @.str.38, i32 noundef %call310, i32 noundef %135) #7
  %read_page = getelementptr inbounds %struct.squashfs_sb_info, ptr %call7.i.i, i32 0, i32 5
  %136 = ptrtoint ptr %read_page to i32
  call void @__asan_store4_noabort(i32 %136)
  store ptr %call312, ptr %read_page, align 4
  %cmp314 = icmp eq ptr %call312, null
  br i1 %cmp314, label %if.then316, label %if.end319

if.then316:                                       ; preds = %if.end309
  call void @__sanitizer_cov_trace_pc() #9
  %log318 = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 9, i32 1
  %137 = ptrtoint ptr %log318 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %log318, align 4
  tail call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef %138, ptr noundef null, i8 noundef zeroext 101, ptr noundef nonnull @.str.39) #7
  br label %failed_mount

if.end319:                                        ; preds = %if.end309
  %call320 = tail call ptr @squashfs_decompressor_setup(ptr noundef %sb, i16 noundef zeroext %102) #7
  %stream = getelementptr inbounds %struct.squashfs_sb_info, ptr %call7.i.i, i32 0, i32 12
  %139 = ptrtoint ptr %stream to i32
  call void @__asan_store4_noabort(i32 %139)
  store ptr %call320, ptr %stream, align 8
  %cmp.i681 = icmp ugt ptr %call320, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i681, label %if.then323, label %if.end327

if.then323:                                       ; preds = %if.end319
  call void @__sanitizer_cov_trace_pc() #9
  %140 = ptrtoint ptr %call320 to i32
  %141 = ptrtoint ptr %stream to i32
  call void @__asan_store4_noabort(i32 %141)
  store ptr null, ptr %stream, align 8
  br label %insanity

if.end327:                                        ; preds = %if.end319
  %s_xattr = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 18
  %142 = ptrtoint ptr %s_xattr to i32
  call void @__asan_store4_noabort(i32 %142)
  store ptr @squashfs_xattr_handlers, ptr %s_xattr, align 16
  %xattr_id_table_start328 = getelementptr inbounds %struct.squashfs_super_block, ptr %call27, i32 0, i32 14
  %143 = ptrtoint ptr %xattr_id_table_start328 to i32
  call void @__asan_load8_noabort(i32 %143)
  %144 = load i64, ptr %xattr_id_table_start328, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %144)
  %cmp329 = icmp eq i64 %144, -1
  br i1 %cmp329, label %if.end327.allocate_id_index_table_crit_edge, label %if.end333

if.end327.allocate_id_index_table_crit_edge:      ; preds = %if.end327
  call void @__sanitizer_cov_trace_pc() #9
  br label %allocate_id_index_table

if.end333:                                        ; preds = %if.end327
  %145 = tail call i64 @llvm.bswap.i64(i64 %144)
  %xattr_table = getelementptr inbounds %struct.squashfs_sb_info, ptr %call7.i.i, i32 0, i32 16
  %xattr_ids = getelementptr inbounds %struct.squashfs_sb_info, ptr %call7.i.i, i32 0, i32 22
  %call334 = tail call ptr @squashfs_read_xattr_id_table(ptr noundef %sb, i64 noundef %145, ptr noundef %xattr_table, ptr noundef %xattr_ids) #7
  %xattr_id_table = getelementptr inbounds %struct.squashfs_sb_info, ptr %call7.i.i, i32 0, i32 9
  %146 = ptrtoint ptr %xattr_id_table to i32
  call void @__asan_store4_noabort(i32 %146)
  store ptr %call334, ptr %xattr_id_table, align 4
  %cmp.i682 = icmp ugt ptr %call334, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i682, label %if.then337, label %if.end333.allocate_id_index_table_crit_edge

if.end333.allocate_id_index_table_crit_edge:      ; preds = %if.end333
  call void @__sanitizer_cov_trace_pc() #9
  br label %allocate_id_index_table

if.then337:                                       ; preds = %if.end333
  %log339 = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 9, i32 1
  %147 = ptrtoint ptr %log339 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %log339, align 4
  tail call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef %148, ptr noundef null, i8 noundef zeroext 101, ptr noundef nonnull @.str.40) #7
  %149 = ptrtoint ptr %xattr_id_table to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %xattr_id_table, align 4
  %151 = ptrtoint ptr %150 to i32
  store ptr null, ptr %xattr_id_table, align 4
  %cmp343.not = icmp eq ptr %150, inttoptr (i32 -524 to ptr)
  br i1 %cmp343.not, label %if.then337.allocate_id_index_table_crit_edge, label %if.then337.failed_mount_crit_edge

if.then337.failed_mount_crit_edge:                ; preds = %if.then337
  call void @__sanitizer_cov_trace_pc() #9
  br label %failed_mount

if.then337.allocate_id_index_table_crit_edge:     ; preds = %if.then337
  call void @__sanitizer_cov_trace_pc() #9
  br label %allocate_id_index_table

allocate_id_index_table:                          ; preds = %if.then337.allocate_id_index_table_crit_edge, %if.end333.allocate_id_index_table_crit_edge, %if.end327.allocate_id_index_table_crit_edge
  %next_table.0.in = phi ptr [ %bytes_used, %if.end327.allocate_id_index_table_crit_edge ], [ %xattr_table, %if.then337.allocate_id_index_table_crit_edge ], [ %xattr_table, %if.end333.allocate_id_index_table_crit_edge ]
  %152 = ptrtoint ptr %next_table.0.in to i32
  call void @__asan_load8_noabort(i32 %152)
  %next_table.0 = load i64, ptr %next_table.0.in, align 8
  %id_table_start349 = getelementptr inbounds %struct.squashfs_super_block, ptr %call27, i32 0, i32 13
  %153 = ptrtoint ptr %id_table_start349 to i32
  call void @__asan_load8_noabort(i32 %153)
  %154 = load i64, ptr %id_table_start349, align 8
  %155 = tail call i64 @llvm.bswap.i64(i64 %154)
  %156 = ptrtoint ptr %ids to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %ids, align 4
  %conv351 = trunc i32 %157 to i16
  %call352 = tail call ptr @squashfs_read_id_index_table(ptr noundef %sb, i64 noundef %155, i64 noundef %next_table.0, i16 noundef zeroext %conv351) #7
  %id_table = getelementptr inbounds %struct.squashfs_sb_info, ptr %call7.i.i, i32 0, i32 7
  %158 = ptrtoint ptr %id_table to i32
  call void @__asan_store4_noabort(i32 %158)
  store ptr %call352, ptr %id_table, align 4
  %cmp.i683 = icmp ugt ptr %call352, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i683, label %if.then355, label %if.end361

if.then355:                                       ; preds = %allocate_id_index_table
  call void @__sanitizer_cov_trace_pc() #9
  %log357 = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 9, i32 1
  %159 = ptrtoint ptr %log357 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %log357, align 4
  tail call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef %160, ptr noundef null, i8 noundef zeroext 101, ptr noundef nonnull @.str.41) #7
  %161 = ptrtoint ptr %id_table to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %id_table, align 4
  %163 = ptrtoint ptr %162 to i32
  store ptr null, ptr %id_table, align 4
  br label %failed_mount

if.end361:                                        ; preds = %allocate_id_index_table
  %164 = ptrtoint ptr %call352 to i32
  call void @__asan_load8_noabort(i32 %164)
  %165 = load i64, ptr %call352, align 8
  %166 = tail call i64 @llvm.bswap.i64(i64 %165)
  %lookup_table_start363 = getelementptr inbounds %struct.squashfs_super_block, ptr %call27, i32 0, i32 18
  %167 = ptrtoint ptr %lookup_table_start363 to i32
  call void @__asan_load8_noabort(i32 %167)
  %168 = load i64, ptr %lookup_table_start363, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %168)
  %cmp364 = icmp eq i64 %168, -1
  br i1 %cmp364, label %if.end361.handle_fragments_crit_edge, label %if.end367

if.end361.handle_fragments_crit_edge:             ; preds = %if.end361
  call void @__sanitizer_cov_trace_pc() #9
  br label %handle_fragments

if.end367:                                        ; preds = %if.end361
  %169 = tail call i64 @llvm.bswap.i64(i64 %168)
  %170 = ptrtoint ptr %inodes91 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %inodes91, align 8
  %call369 = tail call ptr @squashfs_read_inode_lookup_table(ptr noundef %sb, i64 noundef %169, i64 noundef %166, i32 noundef %171) #7
  %inode_lookup_table = getelementptr inbounds %struct.squashfs_sb_info, ptr %call7.i.i, i32 0, i32 13
  %172 = ptrtoint ptr %inode_lookup_table to i32
  call void @__asan_store4_noabort(i32 %172)
  store ptr %call369, ptr %inode_lookup_table, align 4
  %cmp.i684 = icmp ugt ptr %call369, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i684, label %if.then372, label %if.end378

if.then372:                                       ; preds = %if.end367
  call void @__sanitizer_cov_trace_pc() #9
  %log374 = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 9, i32 1
  %173 = ptrtoint ptr %log374 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %log374, align 4
  tail call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef %174, ptr noundef null, i8 noundef zeroext 101, ptr noundef nonnull @.str.42) #7
  %175 = ptrtoint ptr %inode_lookup_table to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %inode_lookup_table, align 4
  %177 = ptrtoint ptr %176 to i32
  store ptr null, ptr %inode_lookup_table, align 4
  br label %failed_mount

if.end378:                                        ; preds = %if.end367
  call void @__sanitizer_cov_trace_pc() #9
  %178 = ptrtoint ptr %call369 to i32
  call void @__asan_load8_noabort(i32 %178)
  %179 = load i64, ptr %call369, align 8
  %180 = tail call i64 @llvm.bswap.i64(i64 %179)
  %s_export_op = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 9
  %181 = ptrtoint ptr %s_export_op to i32
  call void @__asan_store4_noabort(i32 %181)
  store ptr @squashfs_export_ops, ptr %s_export_op, align 16
  br label %handle_fragments

handle_fragments:                                 ; preds = %if.end378, %if.end361.handle_fragments_crit_edge
  %next_table.1 = phi i64 [ %166, %if.end361.handle_fragments_crit_edge ], [ %180, %if.end378 ]
  %182 = ptrtoint ptr %fragments93 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %fragments93, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %183)
  %cmp382 = icmp eq i32 %183, 0
  br i1 %cmp382, label %handle_fragments.check_directory_table_crit_edge, label %if.end385

handle_fragments.check_directory_table_crit_edge: ; preds = %handle_fragments
  call void @__sanitizer_cov_trace_pc() #9
  br label %check_directory_table

if.end385:                                        ; preds = %handle_fragments
  %184 = ptrtoint ptr %block_size59 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %block_size59, align 8
  %call387 = tail call ptr @squashfs_cache_init(ptr noundef nonnull @.str.43, i32 noundef 3, i32 noundef %185) #7
  %fragment_cache = getelementptr inbounds %struct.squashfs_sb_info, ptr %call7.i.i, i32 0, i32 4
  %186 = ptrtoint ptr %fragment_cache to i32
  call void @__asan_store4_noabort(i32 %186)
  store ptr %call387, ptr %fragment_cache, align 8
  %cmp389 = icmp eq ptr %call387, null
  br i1 %cmp389, label %if.end385.failed_mount_crit_edge, label %if.end392

if.end385.failed_mount_crit_edge:                 ; preds = %if.end385
  call void @__sanitizer_cov_trace_pc() #9
  br label %failed_mount

if.end392:                                        ; preds = %if.end385
  %fragment_table_start393 = getelementptr inbounds %struct.squashfs_super_block, ptr %call27, i32 0, i32 17
  %187 = ptrtoint ptr %fragment_table_start393 to i32
  call void @__asan_load8_noabort(i32 %187)
  %188 = load i64, ptr %fragment_table_start393, align 8
  %189 = tail call i64 @llvm.bswap.i64(i64 %188)
  %call394 = tail call ptr @squashfs_read_fragment_index_table(ptr noundef %sb, i64 noundef %189, i64 noundef %next_table.1, i32 noundef %183) #7
  %fragment_index = getelementptr inbounds %struct.squashfs_sb_info, ptr %call7.i.i, i32 0, i32 8
  %190 = ptrtoint ptr %fragment_index to i32
  call void @__asan_store4_noabort(i32 %190)
  store ptr %call394, ptr %fragment_index, align 8
  %cmp.i685 = icmp ugt ptr %call394, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i685, label %if.then397, label %if.end403

if.then397:                                       ; preds = %if.end392
  call void @__sanitizer_cov_trace_pc() #9
  %log399 = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 9, i32 1
  %191 = ptrtoint ptr %log399 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %log399, align 4
  tail call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef %192, ptr noundef null, i8 noundef zeroext 101, ptr noundef nonnull @.str.44) #7
  %193 = ptrtoint ptr %fragment_index to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %fragment_index, align 8
  %195 = ptrtoint ptr %194 to i32
  store ptr null, ptr %fragment_index, align 8
  br label %failed_mount

if.end403:                                        ; preds = %if.end392
  call void @__sanitizer_cov_trace_pc() #9
  %196 = ptrtoint ptr %call394 to i32
  call void @__asan_load8_noabort(i32 %196)
  %197 = load i64, ptr %call394, align 8
  %198 = tail call i64 @llvm.bswap.i64(i64 %197)
  br label %check_directory_table

check_directory_table:                            ; preds = %if.end403, %handle_fragments.check_directory_table_crit_edge
  %next_table.2 = phi i64 [ %next_table.1, %handle_fragments.check_directory_table_crit_edge ], [ %198, %if.end403 ]
  %199 = ptrtoint ptr %directory_table to i32
  call void @__asan_load8_noabort(i32 %199)
  %200 = load i64, ptr %directory_table, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %200, i64 %next_table.2)
  %cmp407 = icmp ugt i64 %200, %next_table.2
  br i1 %cmp407, label %check_directory_table.insanity_crit_edge, label %if.end410

check_directory_table.insanity_crit_edge:         ; preds = %check_directory_table
  call void @__sanitizer_cov_trace_pc() #9
  br label %insanity

if.end410:                                        ; preds = %check_directory_table
  %201 = ptrtoint ptr %inode_table to i32
  call void @__asan_load8_noabort(i32 %201)
  %202 = load i64, ptr %inode_table, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %202, i64 %200)
  %cmp413.not = icmp ult i64 %202, %200
  br i1 %cmp413.not, label %if.end416, label %if.end410.insanity_crit_edge

if.end410.insanity_crit_edge:                     ; preds = %if.end410
  call void @__sanitizer_cov_trace_pc() #9
  br label %insanity

if.end416:                                        ; preds = %if.end410
  %call417 = tail call ptr @new_inode(ptr noundef %sb) #7
  %tobool418.not = icmp eq ptr %call417, null
  br i1 %tobool418.not, label %if.end416.failed_mount_crit_edge, label %if.end420

if.end416.failed_mount_crit_edge:                 ; preds = %if.end416
  call void @__sanitizer_cov_trace_pc() #9
  br label %failed_mount

if.end420:                                        ; preds = %if.end416
  %call421 = tail call i32 @squashfs_read_inode(ptr noundef nonnull %call417, i64 noundef %79) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call421)
  %tobool422.not = icmp eq i32 %call421, 0
  br i1 %tobool422.not, label %if.end424, label %if.then423

if.then423:                                       ; preds = %if.end420
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @make_bad_inode(ptr noundef nonnull %call417) #7
  tail call void @iput(ptr noundef nonnull %call417) #7
  br label %failed_mount

if.end424:                                        ; preds = %if.end420
  %i_ino.i = getelementptr inbounds %struct.inode, ptr %call417, i32 0, i32 11
  %203 = ptrtoint ptr %i_ino.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %i_ino.i, align 8
  tail call void @__insert_inode_hash(ptr noundef nonnull %call417, i32 noundef %204) #7
  %call425 = tail call ptr @d_make_root(ptr noundef nonnull %call417) #7
  %s_root = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 13
  %205 = ptrtoint ptr %s_root to i32
  call void @__asan_store4_noabort(i32 %205)
  store ptr %call425, ptr %s_root, align 64
  %cmp427 = icmp eq ptr %call425, null
  br i1 %cmp427, label %do.end432, label %do.body436

do.end432:                                        ; preds = %if.end424
  call void @__sanitizer_cov_trace_pc() #9
  %call434 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46) #10
  br label %failed_mount

do.body436:                                       ; preds = %if.end424
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @squashfs_fill_super.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@squashfs_fill_super, %if.then448)) #7
          to label %do.end451 [label %if.then448], !srcloc !165

if.then448:                                       ; preds = %do.body436
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @squashfs_fill_super.__UNIQUE_ID_ddebug298, ptr noundef nonnull @.str.49) #7
  br label %do.end451

do.end451:                                        ; preds = %if.then448, %do.body436
  tail call void @kfree(ptr noundef %call27) #7
  br label %cleanup

insanity:                                         ; preds = %if.end410.insanity_crit_edge, %check_directory_table.insanity_crit_edge, %if.then323, %if.end83.insanity_crit_edge, %if.end76.insanity_crit_edge, %if.end58.insanity_crit_edge
  %err.0 = phi i32 [ -22, %if.end58.insanity_crit_edge ], [ -22, %if.end76.insanity_crit_edge ], [ -22, %if.end83.insanity_crit_edge ], [ %140, %if.then323 ], [ -22, %check_directory_table.insanity_crit_edge ], [ -22, %if.end410.insanity_crit_edge ]
  %log453 = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 9, i32 1
  %206 = ptrtoint ptr %log453 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %log453, align 4
  tail call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef %207, ptr noundef null, i8 noundef zeroext 101, ptr noundef nonnull @.str.50) #7
  br label %failed_mount

failed_mount:                                     ; preds = %insanity, %do.end432, %if.then423, %if.end416.failed_mount_crit_edge, %if.then397, %if.end385.failed_mount_crit_edge, %if.then372, %if.then355, %if.then337.failed_mount_crit_edge, %if.then316, %do.end303.failed_mount_crit_edge, %if.end70.failed_mount_crit_edge, %if.then66, %lor.lhs.false.failed_mount_crit_edge, %if.end48.failed_mount_crit_edge, %supported_squashfs_filesystem.exit.failed_mount_crit_edge, %supported_squashfs_filesystem.exit.thread, %if.then39, %if.then37.failed_mount_crit_edge, %if.then29
  %err.1 = phi i32 [ %25, %if.then29 ], [ -22, %if.then37.failed_mount_crit_edge ], [ -22, %if.then39 ], [ -22, %supported_squashfs_filesystem.exit.failed_mount_crit_edge ], [ -22, %if.end48.failed_mount_crit_edge ], [ -22, %lor.lhs.false.failed_mount_crit_edge ], [ %err.0, %insanity ], [ -22, %if.then66 ], [ -22, %if.end70.failed_mount_crit_edge ], [ -12, %do.end303.failed_mount_crit_edge ], [ -12, %if.then316 ], [ %163, %if.then355 ], [ %call421, %if.then423 ], [ -12, %do.end432 ], [ %195, %if.then397 ], [ %177, %if.then372 ], [ %151, %if.then337.failed_mount_crit_edge ], [ -12, %if.end385.failed_mount_crit_edge ], [ -12, %if.end416.failed_mount_crit_edge ], [ -22, %supported_squashfs_filesystem.exit.thread ]
  %sblk.0 = phi ptr [ null, %if.then29 ], [ %call27, %if.then37.failed_mount_crit_edge ], [ %call27, %if.then39 ], [ %call27, %supported_squashfs_filesystem.exit.failed_mount_crit_edge ], [ %call27, %if.end48.failed_mount_crit_edge ], [ %call27, %lor.lhs.false.failed_mount_crit_edge ], [ %call27, %insanity ], [ %call27, %if.then66 ], [ %call27, %if.end70.failed_mount_crit_edge ], [ %call27, %do.end303.failed_mount_crit_edge ], [ %call27, %if.then316 ], [ %call27, %if.then355 ], [ %call27, %if.then423 ], [ %call27, %do.end432 ], [ %call27, %if.then397 ], [ %call27, %if.then372 ], [ %call27, %if.then337.failed_mount_crit_edge ], [ %call27, %if.end385.failed_mount_crit_edge ], [ %call27, %if.end416.failed_mount_crit_edge ], [ %call27, %supported_squashfs_filesystem.exit.thread ]
  %block_cache454 = getelementptr inbounds %struct.squashfs_sb_info, ptr %call7.i.i, i32 0, i32 3
  %208 = ptrtoint ptr %block_cache454 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %block_cache454, align 4
  tail call void @squashfs_cache_delete(ptr noundef %209) #7
  %fragment_cache455 = getelementptr inbounds %struct.squashfs_sb_info, ptr %call7.i.i, i32 0, i32 4
  %210 = ptrtoint ptr %fragment_cache455 to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %fragment_cache455, align 8
  tail call void @squashfs_cache_delete(ptr noundef %211) #7
  %read_page456 = getelementptr inbounds %struct.squashfs_sb_info, ptr %call7.i.i, i32 0, i32 5
  %212 = ptrtoint ptr %read_page456 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %read_page456, align 4
  tail call void @squashfs_cache_delete(ptr noundef %213) #7
  tail call void @squashfs_decompressor_destroy(ptr noundef nonnull %call7.i.i) #7
  %inode_lookup_table457 = getelementptr inbounds %struct.squashfs_sb_info, ptr %call7.i.i, i32 0, i32 13
  %214 = ptrtoint ptr %inode_lookup_table457 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %inode_lookup_table457, align 4
  tail call void @kfree(ptr noundef %215) #7
  %fragment_index458 = getelementptr inbounds %struct.squashfs_sb_info, ptr %call7.i.i, i32 0, i32 8
  %216 = ptrtoint ptr %fragment_index458 to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %fragment_index458, align 8
  tail call void @kfree(ptr noundef %217) #7
  %id_table459 = getelementptr inbounds %struct.squashfs_sb_info, ptr %call7.i.i, i32 0, i32 7
  %218 = ptrtoint ptr %id_table459 to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %id_table459, align 4
  tail call void @kfree(ptr noundef %219) #7
  %xattr_id_table460 = getelementptr inbounds %struct.squashfs_sb_info, ptr %call7.i.i, i32 0, i32 9
  %220 = ptrtoint ptr %xattr_id_table460 to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %xattr_id_table460, align 4
  tail call void @kfree(ptr noundef %221) #7
  %222 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %s_fs_info, align 16
  tail call void @kfree(ptr noundef %223) #7
  %224 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_store4_noabort(i32 %224)
  store ptr null, ptr %s_fs_info, align 16
  tail call void @kfree(ptr noundef %sblk.0) #7
  br label %cleanup

cleanup:                                          ; preds = %failed_mount, %do.end451, %do.end13, %if.then5
  %retval.0 = phi i32 [ %call.i, %if.then5 ], [ -12, %do.end13 ], [ %err.1, %failed_mount ], [ 0, %do.end451 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @logfc(ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sb_min_blocksize(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @squashfs_read_table(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @squashfs_cache_init(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @squashfs_max_decompressors() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @squashfs_decompressor_setup(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @squashfs_read_xattr_id_table(ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @squashfs_read_id_index_table(ptr noundef, i64 noundef, i64 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @squashfs_read_inode_lookup_table(ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @squashfs_read_fragment_index_table(ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @new_inode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @squashfs_read_inode(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @make_bad_inode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iput(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_make_root(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @squashfs_cache_delete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @squashfs_decompressor_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bdi_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @super_setup_bdi_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @squashfs_lookup_decompressor(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal noalias ptr @squashfs_alloc_inode(ptr nocapture noundef readnone %sb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @squashfs_inode_cachep, align 4
  %call = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %0, i32 noundef 3264) #7
  %tobool.not = icmp eq ptr %call, null
  %vfs_inode = getelementptr inbounds %struct.squashfs_inode_info, ptr %call, i32 0, i32 6
  %spec.select = select i1 %tobool.not, ptr null, ptr %vfs_inode
  ret ptr %spec.select
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @squashfs_free_inode(ptr noundef %inode) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @squashfs_inode_cachep, align 4
  %add.ptr.i = getelementptr i8, ptr %inode, i32 -56
  tail call void @kmem_cache_free(ptr noundef %0, ptr noundef %add.ptr.i) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @squashfs_put_super(ptr nocapture noundef %sb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info, align 16
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %block_cache = getelementptr inbounds %struct.squashfs_sb_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %block_cache to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %block_cache, align 4
  tail call void @squashfs_cache_delete(ptr noundef %3) #7
  %fragment_cache = getelementptr inbounds %struct.squashfs_sb_info, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %fragment_cache to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fragment_cache, align 8
  tail call void @squashfs_cache_delete(ptr noundef %5) #7
  %read_page = getelementptr inbounds %struct.squashfs_sb_info, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %read_page to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %read_page, align 4
  tail call void @squashfs_cache_delete(ptr noundef %7) #7
  tail call void @squashfs_decompressor_destroy(ptr noundef nonnull %1) #7
  %id_table = getelementptr inbounds %struct.squashfs_sb_info, ptr %1, i32 0, i32 7
  %8 = ptrtoint ptr %id_table to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %id_table, align 4
  tail call void @kfree(ptr noundef %9) #7
  %fragment_index = getelementptr inbounds %struct.squashfs_sb_info, ptr %1, i32 0, i32 8
  %10 = ptrtoint ptr %fragment_index to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %fragment_index, align 8
  tail call void @kfree(ptr noundef %11) #7
  %meta_index = getelementptr inbounds %struct.squashfs_sb_info, ptr %1, i32 0, i32 11
  %12 = ptrtoint ptr %meta_index to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %meta_index, align 4
  tail call void @kfree(ptr noundef %13) #7
  %inode_lookup_table = getelementptr inbounds %struct.squashfs_sb_info, ptr %1, i32 0, i32 13
  %14 = ptrtoint ptr %inode_lookup_table to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %inode_lookup_table, align 4
  tail call void @kfree(ptr noundef %15) #7
  %xattr_id_table = getelementptr inbounds %struct.squashfs_sb_info, ptr %1, i32 0, i32 9
  %16 = ptrtoint ptr %xattr_id_table to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %xattr_id_table, align 4
  tail call void @kfree(ptr noundef %17) #7
  %18 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %s_fs_info, align 16
  tail call void @kfree(ptr noundef %19) #7
  %20 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %s_fs_info, align 16
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @squashfs_statfs(ptr nocapture noundef readonly %dentry, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %d_sb = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 9
  %0 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info, align 16
  %s_bdev = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 26
  %4 = ptrtoint ptr %s_bdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_bdev, align 4
  %bd_dev = getelementptr inbounds %struct.block_device, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %bd_dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bd_dev, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @squashfs_statfs.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@squashfs_statfs, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !165

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @squashfs_statfs.__UNIQUE_ID_ddebug299, ptr noundef nonnull @.str.58) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %8 = lshr i32 %7, 12
  %shl.i.i = and i32 %8, 1048320
  %and1.i.i = and i32 %7, 255
  %or.i.i = or i32 %shl.i.i, %and1.i.i
  %and2.i.i = shl i32 %7, 12
  %shl3.i.i = and i32 %and2.i.i, -1048576
  %or4.i.i = or i32 %or.i.i, %shl3.i.i
  %9 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1936814952, ptr %buf, align 8
  %block_size = getelementptr inbounds %struct.squashfs_sb_info, ptr %3, i32 0, i32 17
  %10 = ptrtoint ptr %block_size to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %block_size, align 8
  %f_bsize = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 1
  %12 = ptrtoint ptr %f_bsize to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %f_bsize, align 4
  %bytes_used = getelementptr inbounds %struct.squashfs_sb_info, ptr %3, i32 0, i32 19
  %13 = ptrtoint ptr %bytes_used to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %bytes_used, align 8
  %sub = add i64 %14, -1
  %block_log = getelementptr inbounds %struct.squashfs_sb_info, ptr %3, i32 0, i32 18
  %15 = ptrtoint ptr %block_log to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %block_log, align 4
  %sh_prom = zext i16 %16 to i64
  %shr = ashr i64 %sub, %sh_prom
  %add = add i64 %shr, 1
  %f_blocks = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 2
  %17 = ptrtoint ptr %f_blocks to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %add, ptr %f_blocks, align 8
  %f_bfree = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 3
  %inodes = getelementptr inbounds %struct.squashfs_sb_info, ptr %3, i32 0, i32 20
  %18 = call ptr @memset(ptr %f_bfree, i32 0, i32 16)
  %19 = ptrtoint ptr %inodes to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %inodes, align 8
  %conv5 = zext i32 %20 to i64
  %f_files = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 5
  %21 = ptrtoint ptr %f_files to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %conv5, ptr %f_files, align 8
  %f_ffree = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 6
  %22 = ptrtoint ptr %f_ffree to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 0, ptr %f_ffree, align 8
  %f_namelen = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 8
  %23 = ptrtoint ptr %f_namelen to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 256, ptr %f_namelen, align 8
  %f_fsid = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 7
  %tmp6.sroa.0.0.insert.ext = zext i32 %or4.i.i to i64
  %tmp6.sroa.0.0.insert.shift = shl nuw i64 %tmp6.sroa.0.0.insert.ext, 32
  %24 = ptrtoint ptr %f_fsid to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %tmp6.sroa.0.0.insert.shift, ptr %f_fsid, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @squashfs_show_options(ptr noundef %s, ptr nocapture noundef readonly %root) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %d_sb = getelementptr inbounds %struct.dentry, ptr %root, i32 0, i32 9
  %0 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info, align 16
  %panic_on_errors = getelementptr inbounds %struct.squashfs_sb_info, ptr %3, i32 0, i32 24
  %4 = ptrtoint ptr %panic_on_errors to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %panic_on_errors, align 8, !range !167
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  %.str.60..str.59 = select i1 %tobool.not, ptr @.str.60, ptr @.str.59
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull %.str.60..str.59) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__insert_inode_hash(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sync_filesystem(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fs_param_is_enum(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_filesystem(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @init_once(ptr noundef %foo) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %vfs_inode = getelementptr inbounds %struct.squashfs_inode_info, ptr %foo, i32 0, i32 6
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
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 75)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 75)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !15, !17, !19, !21, !23, !24, !25, !26, !27, !29, !31, !32, !33, !35, !36, !38, !40, !42, !44, !45, !46, !48, !49, !50, !51, !52, !54, !55, !56, !58, !59, !60, !62, !63, !64, !66, !67, !68, !70, !71, !72, !74, !75, !76, !78, !79, !80, !82, !83, !84, !86, !87, !88, !90, !91, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !111, !112, !114, !115, !116, !118, !120, !122, !124, !126, !128, !130, !132, !133, !134, !135, !137, !139, !141, !143, !145, !147, !149, !151, !152, !153, !154}
!llvm.module.flags = !{!156, !157, !158, !159, !160, !161, !162, !163}
!llvm.ident = !{!164}

!0 = !{ptr @__UNIQUE_ID_alias300, !1, !"__UNIQUE_ID_alias300", i1 false, i1 false}
!1 = !{!"../fs/squashfs/super.c", i32 606, i32 1}
!2 = !{ptr @__initcall__kmod_squashfs__301_616_init_squashfs_fs6, !3, !"__initcall__kmod_squashfs__301_616_init_squashfs_fs6", i1 false, i1 false}
!3 = !{!"../fs/squashfs/super.c", i32 616, i32 1}
!4 = !{ptr @__exitcall_exit_squashfs_fs, !5, !"__exitcall_exit_squashfs_fs", i1 false, i1 false}
!5 = !{!"../fs/squashfs/super.c", i32 617, i32 1}
!6 = !{ptr @__UNIQUE_ID_description302, !7, !"__UNIQUE_ID_description302", i1 false, i1 false}
!7 = !{!"../fs/squashfs/super.c", i32 618, i32 1}
!8 = !{ptr @__UNIQUE_ID_author303, !9, !"__UNIQUE_ID_author303", i1 false, i1 false}
!9 = !{!"../fs/squashfs/super.c", i32 619, i32 1}
!10 = !{ptr @__UNIQUE_ID_file304, !11, !"__UNIQUE_ID_file304", i1 false, i1 false}
!11 = !{!"../fs/squashfs/super.c", i32 620, i32 1}
!12 = !{ptr @__UNIQUE_ID_license305, !11, !"__UNIQUE_ID_license305", i1 false, i1 false}
!13 = !{ptr @squashfs_inode_cachep, !14, !"squashfs_inode_cachep", i1 false, i1 false}
!14 = !{!"../fs/squashfs/super.c", i32 525, i32 27}
!15 = !{ptr @.str, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../fs/squashfs/super.c", i32 600, i32 10}
!17 = !{ptr @squashfs_fs_type, !18, !"squashfs_fs_type", i1 false, i1 false}
!18 = !{!"../fs/squashfs/super.c", i32 598, i32 32}
!19 = !{ptr @squashfs_context_ops, !20, !"squashfs_context_ops", i1 false, i1 false}
!20 = !{!"../fs/squashfs/super.c", i32 454, i32 43}
!21 = !{ptr @.str.1, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../fs/squashfs/super.c", i32 147, i32 2}
!23 = !{ptr @.str.2, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.3, !22, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @squashfs_fill_super.__UNIQUE_ID_ddebug285, !22, !"__UNIQUE_ID_ddebug285", i1 false, i1 false}
!26 = !{ptr @.str.4, !22, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.5, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../fs/squashfs/super.c", i32 159, i32 3}
!29 = !{ptr @.str.6, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../fs/squashfs/super.c", i32 165, i32 3}
!31 = !{ptr @squashfs_fill_super._entry, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @squashfs_fill_super._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @squashfs_fill_super.__key, !34, !"__key", i1 false, i1 false}
!34 = !{!"../fs/squashfs/super.c", i32 175, i32 2}
!35 = !{ptr @.str.7, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.8, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../fs/squashfs/super.c", i32 187, i32 3}
!38 = !{ptr @.str.9, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../fs/squashfs/super.c", i32 199, i32 4}
!40 = !{ptr @.str.10, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../fs/squashfs/super.c", i32 230, i32 3}
!42 = !{ptr @.str.11, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../fs/squashfs/super.c", i32 256, i32 2}
!44 = !{ptr @squashfs_fill_super.__UNIQUE_ID_ddebug286, !43, !"__UNIQUE_ID_ddebug286", i1 false, i1 false}
!45 = !{ptr @.str.12, !43, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.13, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../fs/squashfs/super.c", i32 257, i32 2}
!48 = !{ptr @squashfs_fill_super.__UNIQUE_ID_ddebug287, !47, !"__UNIQUE_ID_ddebug287", i1 false, i1 false}
!49 = !{ptr @.str.14, !47, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.15, !47, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @.str.16, !47, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.17, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../fs/squashfs/super.c", i32 259, i32 2}
!54 = !{ptr @squashfs_fill_super.__UNIQUE_ID_ddebug288, !53, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!55 = !{ptr @.str.18, !53, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @.str.19, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../fs/squashfs/super.c", i32 261, i32 2}
!58 = !{ptr @squashfs_fill_super.__UNIQUE_ID_ddebug289, !57, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!59 = !{ptr @.str.20, !57, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @.str.21, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../fs/squashfs/super.c", i32 262, i32 2}
!62 = !{ptr @squashfs_fill_super.__UNIQUE_ID_ddebug290, !61, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!63 = !{ptr @.str.22, !61, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @.str.23, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../fs/squashfs/super.c", i32 263, i32 2}
!66 = !{ptr @squashfs_fill_super.__UNIQUE_ID_ddebug291, !65, !"__UNIQUE_ID_ddebug291", i1 false, i1 false}
!67 = !{ptr @.str.24, !65, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @.str.25, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../fs/squashfs/super.c", i32 264, i32 2}
!70 = !{ptr @squashfs_fill_super.__UNIQUE_ID_ddebug292, !69, !"__UNIQUE_ID_ddebug292", i1 false, i1 false}
!71 = !{ptr @.str.26, !69, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @.str.27, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../fs/squashfs/super.c", i32 265, i32 2}
!74 = !{ptr @squashfs_fill_super.__UNIQUE_ID_ddebug293, !73, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!75 = !{ptr @.str.28, !73, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @.str.29, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../fs/squashfs/super.c", i32 266, i32 2}
!78 = !{ptr @squashfs_fill_super.__UNIQUE_ID_ddebug294, !77, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!79 = !{ptr @.str.30, !77, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @.str.31, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../fs/squashfs/super.c", i32 267, i32 2}
!82 = !{ptr @squashfs_fill_super.__UNIQUE_ID_ddebug295, !81, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!83 = !{ptr @.str.32, !81, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @.str.33, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../fs/squashfs/super.c", i32 268, i32 2}
!86 = !{ptr @squashfs_fill_super.__UNIQUE_ID_ddebug296, !85, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!87 = !{ptr @.str.34, !85, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @.str.35, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../fs/squashfs/super.c", i32 270, i32 2}
!90 = !{ptr @squashfs_fill_super.__UNIQUE_ID_ddebug297, !89, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!91 = !{ptr @.str.36, !89, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @.str.37, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../fs/squashfs/super.c", i32 281, i32 43}
!94 = !{ptr @.str.38, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../fs/squashfs/super.c", i32 287, i32 41}
!96 = !{ptr @.str.39, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../fs/squashfs/super.c", i32 290, i32 3}
!98 = !{ptr @.str.40, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../fs/squashfs/super.c", i32 313, i32 3}
!100 = !{ptr @.str.41, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../fs/squashfs/super.c", i32 326, i32 3}
!102 = !{ptr @.str.42, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../fs/squashfs/super.c", i32 342, i32 3}
!104 = !{ptr @.str.43, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../fs/squashfs/super.c", i32 356, i32 46}
!106 = !{ptr @.str.44, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../fs/squashfs/super.c", i32 367, i32 3}
!108 = !{ptr @.str.46, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../fs/squashfs/super.c", i32 404, i32 3}
!110 = !{ptr @squashfs_fill_super._entry.45, !109, !"_entry", i1 false, i1 false}
!111 = !{ptr @squashfs_fill_super._entry_ptr.47, !109, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.48, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../fs/squashfs/super.c", i32 409, i32 2}
!114 = !{ptr @squashfs_fill_super.__UNIQUE_ID_ddebug298, !113, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!115 = !{ptr @.str.49, !113, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @.str.50, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../fs/squashfs/super.c", i32 414, i32 2}
!118 = !{ptr @.str.51, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../fs/squashfs/super.c", i32 125, i32 33}
!120 = !{ptr @.str.52, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../fs/squashfs/super.c", i32 96, i32 3}
!122 = !{ptr @.str.53, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../fs/squashfs/super.c", i32 100, i32 3}
!124 = !{ptr @.str.54, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../fs/squashfs/super.c", i32 102, i32 3}
!126 = !{ptr @.str.55, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../fs/squashfs/super.c", i32 108, i32 3}
!128 = !{ptr @squashfs_super_ops, !129, !"squashfs_super_ops", i1 false, i1 false}
!129 = !{!"../fs/squashfs/super.c", i32 608, i32 38}
!130 = !{ptr @.str.56, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../fs/squashfs/super.c", i32 492, i32 2}
!132 = !{ptr @.str.57, !131, !"<string literal>", i1 false, i1 false}
!133 = !{ptr @squashfs_statfs.__UNIQUE_ID_ddebug299, !131, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!134 = !{ptr @.str.58, !131, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @.str.59, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../fs/squashfs/super.c", i32 467, i32 15}
!137 = !{ptr @.str.60, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../fs/squashfs/super.c", i32 469, i32 15}
!139 = !{ptr @.str.61, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../fs/squashfs/super.c", i32 64, i32 2}
!141 = !{ptr @squashfs_fs_parameters, !142, !"squashfs_fs_parameters", i1 false, i1 false}
!142 = !{!"../fs/squashfs/super.c", i32 63, i32 39}
!143 = !{ptr @.str.62, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../fs/squashfs/super.c", i32 58, i32 3}
!145 = !{ptr @.str.63, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../fs/squashfs/super.c", i32 59, i32 3}
!147 = !{ptr @squashfs_param_errors, !148, !"squashfs_param_errors", i1 false, i1 false}
!148 = !{!"../fs/squashfs/super.c", i32 57, i32 36}
!149 = !{ptr @.str.64, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../fs/squashfs/super.c", i32 571, i32 2}
!151 = !{ptr @.str.65, !150, !"<string literal>", i1 false, i1 false}
!152 = !{ptr @init_squashfs_fs._entry, !150, !"_entry", i1 false, i1 false}
!153 = !{ptr @init_squashfs_fs._entry_ptr, !150, !"_entry_ptr", i1 false, i1 false}
!154 = !{ptr @.str.66, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../fs/squashfs/super.c", i32 538, i32 44}
!156 = !{i32 1, !"wchar_size", i32 2}
!157 = !{i32 1, !"min_enum_size", i32 4}
!158 = !{i32 8, !"branch-target-enforcement", i32 0}
!159 = !{i32 8, !"sign-return-address", i32 0}
!160 = !{i32 8, !"sign-return-address-all", i32 0}
!161 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!162 = !{i32 7, !"uwtable", i32 1}
!163 = !{i32 7, !"frame-pointer", i32 2}
!164 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!165 = !{i64 2148286855, i64 2148286860, i64 2148286873, i64 2148286917, i64 2148286951, i64 2148286972}
!166 = !{i32 0, i32 33}
!167 = !{i8 0, i8 2}
