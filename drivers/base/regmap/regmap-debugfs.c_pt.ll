; ModuleID = '/llk/IR_all_yes/drivers/base/regmap/regmap-debugfs.c_pt.bc'
source_filename = "../drivers/base/regmap/regmap-debugfs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.regmap = type { %union.anon, ptr, ptr, ptr, i32, ptr, ptr, %struct.regmap_format, ptr, ptr, ptr, i8, %struct.spinlock, %struct.wait_queue_head, %struct.list_head, %struct.list_head, i32, i8, ptr, ptr, i32, i32, i32, %struct.list_head, %struct.mutex, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i8, i8, i8, ptr, ptr, ptr, i8, i8, ptr, i32, i8, i8, i8, i32, i32, %struct.rb_root, ptr, ptr, i8 }
%union.anon = type { %struct.mutex }
%struct.regmap_format = type { i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.rb_root = type { ptr }
%struct.regmap_debugfs_node = type { ptr, %struct.list_head }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.regmap_range_node = type { %struct.rb_node, ptr, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.regcache_ops = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.file = type { %union.anon.16, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.16 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.regmap_debugfs_off_cache = type { %struct.list_head, i32, i32, i32, i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.67, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.68, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.69, ptr, %struct.address_space, %struct.list_head, %union.anon.70, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.67 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.68 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.69 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%union.anon.70 = type { ptr }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }

@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"dummy\00", [26 x i8] zeroinitializer }, align 32
@regmap_debugfs_init.__UNIQUE_ID_ddebug223 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, i8 0, i8 -116, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"regmap_debugfs\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"regmap_debugfs_init\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/base/regmap/regmap-debugfs.c\00", [59 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"regmap locking disabled - not creating debugfs entries\0A\00", [40 x i8] zeroinitializer }, align 32
@regmap_debugfs_root = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@regmap_debugfs_early_lock = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.16, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @regmap_debugfs_early_lock, i64 52), ptr getelementptr (i8, ptr @regmap_debugfs_early_lock, i64 52) }, ptr @regmap_debugfs_early_lock, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.17, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@regmap_debugfs_early_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @regmap_debugfs_early_list, ptr @regmap_debugfs_early_list }, [24 x i8] zeroinitializer }, align 32
@regmap_debugfs_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&map->cache_lock\00", [47 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s-%s\00", [26 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"dummy%d\00", [24 x i8] zeroinitializer }, align 32
@dummy_index = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"name\00", [27 x i8] zeroinitializer }, align 32
@regmap_name_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @default_llseek, ptr @regmap_name_read_file, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"range\00", [26 x i8] zeroinitializer }, align 32
@regmap_reg_ranges_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @default_llseek, ptr @regmap_reg_ranges_read_file, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"registers\00", [22 x i8] zeroinitializer }, align 32
@regmap_map_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @default_llseek, ptr @regmap_map_read_file, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"access\00", [25 x i8] zeroinitializer }, align 32
@regmap_access_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @regmap_access_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"cache_only\00", [21 x i8] zeroinitializer }, align 32
@regmap_cache_only_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr null, ptr @debugfs_read_file_bool, ptr @regmap_cache_only_write_file, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"cache_dirty\00", [20 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"cache_bypass\00", [19 x i8] zeroinitializer }, align 32
@regmap_cache_bypass_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr null, ptr @debugfs_read_file_bool, ptr @regmap_cache_bypass_write_file, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@regmap_range_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @default_llseek, ptr @regmap_range_read_file, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"regmap\00", [25 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.16 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"regmap_debugfs_early_lock.wait_lock\00", [60 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"regmap_debugfs_early_lock\00", [38 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"nodev\00", [26 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%x-%x\0A\00", [25 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%x\00", [29 x i8] zeroinitializer }, align 32
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.22 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%.*x: \00", [25 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%.*x\00", [27 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%.*x: %c %c %c %c\0A\00", [45 x i8] zeroinitializer }, align 32
@regmap_cache_only_write_file._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.3, i32 480, ptr @.str.30, ptr @.str.31 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"debugfs cache_only=Y forced\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"regmap_cache_only_write_file\00", [35 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@regmap_cache_only_write_file._entry_ptr = internal global ptr @regmap_cache_only_write_file._entry, section ".printk_index", align 4
@regmap_cache_only_write_file._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.29, ptr @.str.3, i32 483, ptr @.str.30, ptr @.str.31 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"debugfs cache_only=N forced: syncing cache\0A\00", [52 x i8] zeroinitializer }, align 32
@regmap_cache_only_write_file._entry_ptr.34 = internal global ptr @regmap_cache_only_write_file._entry.32, section ".printk_index", align 4
@regmap_cache_only_write_file._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.29, ptr @.str.3, i32 494, ptr @.str.37, ptr @.str.31 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Failed to sync cache %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@regmap_cache_only_write_file._entry_ptr.38 = internal global ptr @regmap_cache_only_write_file._entry.35, section ".printk_index", align 4
@regmap_cache_bypass_write_file._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.3, i32 527, ptr @.str.30, ptr @.str.31 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"debugfs cache_bypass=Y forced\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"regmap_cache_bypass_write_file\00", [33 x i8] zeroinitializer }, align 32
@regmap_cache_bypass_write_file._entry_ptr = internal global ptr @regmap_cache_bypass_write_file._entry, section ".printk_index", align 4
@regmap_cache_bypass_write_file._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.40, ptr @.str.3, i32 530, ptr @.str.30, ptr @.str.31 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"debugfs cache_bypass=N forced\0A\00", [33 x i8] zeroinitializer }, align 32
@regmap_cache_bypass_write_file._entry_ptr.43 = internal global ptr @regmap_cache_bypass_write_file._entry.41, section ".printk_index", align 4
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 550, i32 24 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 561, i32 3 }
@___asan_gen_.59 = private unnamed_addr constant [20 x i8] c"regmap_debugfs_root\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 24, i32 23 }
@___asan_gen_.62 = private unnamed_addr constant [26 x i8] c"regmap_debugfs_early_lock\00", align 1
@___asan_gen_.65 = private unnamed_addr constant [26 x i8] c"regmap_debugfs_early_list\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 25, i32 8 }
@___asan_gen_.68 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 579, i32 2 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 586, i32 46 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 598, i32 45 }
@___asan_gen_.80 = private unnamed_addr constant [12 x i8] c"dummy_index\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 23, i32 21 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 608, i32 22 }
@___asan_gen_.86 = private unnamed_addr constant [17 x i8] c"regmap_name_fops\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 61, i32 37 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 611, i32 22 }
@___asan_gen_.92 = private unnamed_addr constant [23 x i8] c"regmap_reg_ranges_fops\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 428, i32 37 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 623, i32 23 }
@___asan_gen_.98 = private unnamed_addr constant [16 x i8] c"regmap_map_fops\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 337, i32 37 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 625, i32 23 }
@___asan_gen_.104 = private unnamed_addr constant [19 x i8] c"regmap_access_fops\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 457, i32 1 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 630, i32 23 }
@___asan_gen_.110 = private unnamed_addr constant [23 x i8] c"regmap_cache_only_fops\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 500, i32 37 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 632, i32 23 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 634, i32 23 }
@___asan_gen_.119 = private unnamed_addr constant [25 x i8] c"regmap_cache_bypass_fops\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 540, i32 37 }
@___asan_gen_.122 = private unnamed_addr constant [18 x i8] c"regmap_range_fops\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 354, i32 37 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 683, i32 43 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 26, i32 8 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 39, i32 21 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 50, i32 33 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 402, i32 42 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 31, i32 27 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 230, i32 6 }
@___asan_gen_.150 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 214, i32 2 }
@___asan_gen_.153 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 174, i32 2 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 251, i32 45 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 259, i32 7 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 447, i32 17 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 480, i32 3 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 483, i32 3 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 494, i32 4 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 527, i32 3 }
@___asan_gen_.203 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.206 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.207 = private constant [40 x i8] c"../drivers/base/regmap/regmap-debugfs.c\00", align 1
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 530, i32 3 }
@llvm.compiler.used = appending global [60 x ptr] [ptr @regmap_cache_bypass_write_file._entry, ptr @regmap_cache_bypass_write_file._entry.41, ptr @regmap_cache_bypass_write_file._entry_ptr, ptr @regmap_cache_bypass_write_file._entry_ptr.43, ptr @regmap_cache_only_write_file._entry, ptr @regmap_cache_only_write_file._entry.32, ptr @regmap_cache_only_write_file._entry.35, ptr @regmap_cache_only_write_file._entry_ptr, ptr @regmap_cache_only_write_file._entry_ptr.34, ptr @regmap_cache_only_write_file._entry_ptr.38, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @regmap_debugfs_root, ptr @regmap_debugfs_early_lock, ptr @regmap_debugfs_early_list, ptr @regmap_debugfs_init.__key, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @dummy_index, ptr @.str.8, ptr @regmap_name_fops, ptr @.str.9, ptr @regmap_reg_ranges_fops, ptr @.str.10, ptr @regmap_map_fops, ptr @.str.11, ptr @regmap_access_fops, ptr @.str.12, ptr @regmap_cache_only_fops, ptr @.str.13, ptr @.str.14, ptr @regmap_cache_bypass_fops, ptr @regmap_range_fops, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.33, ptr @.str.36, ptr @.str.37, ptr @.str.39, ptr @.str.40, ptr @.str.42], section "llvm.metadata"
@0 = internal global [55 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @regmap_debugfs_root to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @regmap_debugfs_early_lock to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @regmap_debugfs_early_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @regmap_debugfs_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dummy_index to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @regmap_name_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @regmap_reg_ranges_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @regmap_map_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @regmap_access_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @regmap_cache_only_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @regmap_cache_bypass_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @regmap_range_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @regmap_cache_only_write_file._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @regmap_cache_only_write_file._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @regmap_cache_only_write_file._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @regmap_cache_bypass_write_file._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @regmap_cache_bypass_write_file._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @regmap_debugfs_init(ptr noundef %map) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %name1 = getelementptr inbounds %struct.regmap, ptr %map, i32 0, i32 10
  %0 = ptrtoint ptr %name1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %name1, align 4
  %debugfs_disable = getelementptr inbounds %struct.regmap, ptr %map, i32 0, i32 17
  %2 = ptrtoint ptr %debugfs_disable to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %debugfs_disable, align 4, !range !110
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end6, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @regmap_debugfs_init.__UNIQUE_ID_ddebug223, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@regmap_debugfs_init, %if.then5)) #9
          to label %cleanup89 [label %if.then5], !srcloc !111

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.regmap, ptr %map, i32 0, i32 5
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @regmap_debugfs_init.__UNIQUE_ID_ddebug223, ptr noundef %5, ptr noundef nonnull @.str.4) #9
  br label %cleanup89

if.end6:                                          ; preds = %entry
  %6 = load ptr, ptr @regmap_debugfs_root, align 4
  %tobool7.not = icmp eq ptr %6, null
  br i1 %tobool7.not, label %if.then8, label %if.end14

if.then8:                                         ; preds = %if.end6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %7 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3520, i32 noundef 12) #12
  %tobool10.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool10.not, label %if.then8.cleanup89_crit_edge, label %if.end12

if.then8.cleanup89_crit_edge:                     ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup89

if.end12:                                         ; preds = %if.then8
  %8 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %map, ptr %call7.i.i, align 8
  tail call void @mutex_lock_nested(ptr noundef nonnull @regmap_debugfs_early_lock, i32 noundef 0) #9
  %link = getelementptr inbounds %struct.regmap_debugfs_node, ptr %call7.i.i, i32 0, i32 1
  %9 = load ptr, ptr @regmap_debugfs_early_list, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %link, ptr noundef nonnull @regmap_debugfs_early_list, ptr noundef %9) #9
  br i1 %call.i.i, label %if.end.i.i, label %if.end12.list_add.exit_crit_edge

if.end12.list_add.exit_crit_edge:                 ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add.exit

if.end.i.i:                                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %link, ptr %prev1.i.i, align 4
  %11 = ptrtoint ptr %link to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %9, ptr %link, align 4
  %prev3.i.i = getelementptr inbounds %struct.regmap_debugfs_node, ptr %call7.i.i, i32 0, i32 1, i32 1
  %12 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @regmap_debugfs_early_list, ptr %prev3.i.i, align 8
  store volatile ptr %link, ptr @regmap_debugfs_early_list, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %if.end12.list_add.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @regmap_debugfs_early_lock) #9
  br label %cleanup89

if.end14:                                         ; preds = %if.end6
  %debugfs_off_cache = getelementptr inbounds %struct.regmap, ptr %map, i32 0, i32 23
  %13 = ptrtoint ptr %debugfs_off_cache to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %debugfs_off_cache, ptr %debugfs_off_cache, align 4
  %prev.i = getelementptr inbounds %struct.regmap, ptr %map, i32 0, i32 23, i32 1
  %14 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %debugfs_off_cache, ptr %prev.i, align 4
  %cache_lock = getelementptr inbounds %struct.regmap, ptr %map, i32 0, i32 24
  tail call void @__mutex_init(ptr noundef %cache_lock, ptr noundef nonnull @.str.5, ptr noundef nonnull @regmap_debugfs_init.__key) #9
  %dev18 = getelementptr inbounds %struct.regmap, ptr %map, i32 0, i32 5
  %15 = ptrtoint ptr %dev18 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev18, align 4
  %tobool19.not = icmp eq ptr %16, null
  br i1 %tobool19.not, label %if.end14.if.end23_crit_edge, label %if.then20

if.end14.if.end23_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23

if.then20:                                        ; preds = %if.end14
  %init_name.i = getelementptr inbounds %struct.device, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %18, null
  br i1 %tobool.not.i, label %if.end.i, label %if.then20.if.end23_crit_edge

if.then20.if.end23_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23

if.end.i:                                         ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #11
  %19 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %16, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.end.i, %if.then20.if.end23_crit_edge, %if.end14.if.end23_crit_edge
  %devname.0 = phi ptr [ @.str, %if.end14.if.end23_crit_edge ], [ %20, %if.end.i ], [ %18, %if.then20.if.end23_crit_edge ]
  %tobool24.not = icmp eq ptr %1, null
  br i1 %tobool24.not, label %if.end23.if.end36_crit_edge, label %if.then25

if.end23.if.end36_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36

if.then25:                                        ; preds = %if.end23
  %debugfs_name = getelementptr inbounds %struct.regmap, ptr %map, i32 0, i32 19
  %21 = ptrtoint ptr %debugfs_name to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %debugfs_name, align 4
  %tobool26.not = icmp eq ptr %22, null
  br i1 %tobool26.not, label %if.then27, label %if.then25.if.end34_crit_edge

if.then25.if.end34_crit_edge:                     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34

if.then27:                                        ; preds = %if.then25
  %call28 = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.6, ptr noundef %devname.0, ptr noundef nonnull %1) #9
  %23 = ptrtoint ptr %debugfs_name to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call28, ptr %debugfs_name, align 4
  %tobool31.not = icmp eq ptr %call28, null
  br i1 %tobool31.not, label %if.then27.cleanup89_crit_edge, label %if.then27.if.end34_crit_edge

if.then27.if.end34_crit_edge:                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34

if.then27.cleanup89_crit_edge:                    ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup89

if.end34:                                         ; preds = %if.then27.if.end34_crit_edge, %if.then25.if.end34_crit_edge
  %24 = ptrtoint ptr %debugfs_name to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %debugfs_name, align 4
  br label %if.end36

if.end36:                                         ; preds = %if.end34, %if.end23.if.end36_crit_edge
  %name.0 = phi ptr [ %25, %if.end34 ], [ %devname.0, %if.end23.if.end36_crit_edge ]
  %call37 = tail call i32 @strcmp(ptr noundef %name.0, ptr noundef nonnull dereferenceable(6) @.str) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.then39, label %if.end36.if.end48_crit_edge

if.end36.if.end48_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end48

if.then39:                                        ; preds = %if.end36
  %debugfs_name40 = getelementptr inbounds %struct.regmap, ptr %map, i32 0, i32 19
  %26 = ptrtoint ptr %debugfs_name40 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %debugfs_name40, align 4
  tail call void @kfree(ptr noundef %27) #9
  %28 = load i32, ptr @dummy_index, align 4
  %call41 = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.7, i32 noundef %28) #9
  %29 = ptrtoint ptr %debugfs_name40 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call41, ptr %debugfs_name40, align 4
  %tobool44.not = icmp eq ptr %call41, null
  br i1 %tobool44.not, label %if.then39.cleanup89_crit_edge, label %if.end46

if.then39.cleanup89_crit_edge:                    ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup89

if.end46:                                         ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #11
  %30 = load i32, ptr @dummy_index, align 4
  %inc = add i32 %30, 1
  store i32 %inc, ptr @dummy_index, align 4
  br label %if.end48

if.end48:                                         ; preds = %if.end46, %if.end36.if.end48_crit_edge
  %name.1 = phi ptr [ %name.0, %if.end36.if.end48_crit_edge ], [ %call41, %if.end46 ]
  %31 = load ptr, ptr @regmap_debugfs_root, align 4
  %call49 = tail call ptr @debugfs_create_dir(ptr noundef %name.1, ptr noundef %31) #9
  %debugfs = getelementptr inbounds %struct.regmap, ptr %map, i32 0, i32 18
  %32 = ptrtoint ptr %debugfs to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call49, ptr %debugfs, align 4
  %call51 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.8, i16 noundef zeroext 256, ptr noundef %call49, ptr noundef %map, ptr noundef nonnull @regmap_name_fops) #9
  %33 = ptrtoint ptr %debugfs to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %debugfs, align 4
  %call53 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.9, i16 noundef zeroext 256, ptr noundef %34, ptr noundef %map, ptr noundef nonnull @regmap_reg_ranges_fops) #9
  %max_register = getelementptr inbounds %struct.regmap, ptr %map, i32 0, i32 25
  %35 = ptrtoint ptr %max_register to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %max_register, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool54.not = icmp eq i32 %36, 0
  br i1 %tobool54.not, label %lor.lhs.false, label %if.end48.if.then56_crit_edge

if.end48.if.then56_crit_edge:                     ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then56

lor.lhs.false:                                    ; preds = %if.end48
  %call55 = tail call zeroext i1 @regmap_readable(ptr noundef %map, i32 noundef 0) #9
  br i1 %call55, label %lor.lhs.false.if.then56_crit_edge, label %lor.lhs.false.if.end61_crit_edge

lor.lhs.false.if.end61_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end61

lor.lhs.false.if.then56_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then56

if.then56:                                        ; preds = %lor.lhs.false.if.then56_crit_edge, %if.end48.if.then56_crit_edge
  %37 = ptrtoint ptr %debugfs to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %debugfs, align 4
  %call58 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.10, i16 noundef zeroext 256, ptr noundef %38, ptr noundef %map, ptr noundef nonnull @regmap_map_fops) #9
  %39 = ptrtoint ptr %debugfs to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %debugfs, align 4
  %call60 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.11, i16 noundef zeroext 256, ptr noundef %40, ptr noundef %map, ptr noundef nonnull @regmap_access_fops) #9
  br label %if.end61

if.end61:                                         ; preds = %if.then56, %lor.lhs.false.if.end61_crit_edge
  %cache_type = getelementptr inbounds %struct.regmap, ptr %map, i32 0, i32 48
  %41 = ptrtoint ptr %cache_type to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %cache_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool62.not = icmp eq i32 %42, 0
  br i1 %tobool62.not, label %if.end61.if.end69_crit_edge, label %if.then63

if.end61.if.end69_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.then63:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #11
  %43 = ptrtoint ptr %debugfs to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %debugfs, align 4
  %cache_only = getelementptr inbounds %struct.regmap, ptr %map, i32 0, i32 53
  %call65 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.12, i16 noundef zeroext 384, ptr noundef %44, ptr noundef %cache_only, ptr noundef nonnull @regmap_cache_only_fops) #9
  %45 = ptrtoint ptr %debugfs to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %debugfs, align 4
  %cache_dirty = getelementptr inbounds %struct.regmap, ptr %map, i32 0, i32 59
  tail call void @debugfs_create_bool(ptr noundef nonnull @.str.13, i16 noundef zeroext 256, ptr noundef %46, ptr noundef %cache_dirty) #9
  %47 = ptrtoint ptr %debugfs to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %debugfs, align 4
  %cache_bypass = getelementptr inbounds %struct.regmap, ptr %map, i32 0, i32 54
  %call68 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.14, i16 noundef zeroext 384, ptr noundef %48, ptr noundef %cache_bypass, ptr noundef nonnull @regmap_cache_bypass_fops) #9
  br label %if.end69

if.end69:                                         ; preds = %if.then63, %if.end61.if.end69_crit_edge
  %range_tree = getelementptr inbounds %struct.regmap, ptr %map, i32 0, i32 68
  %call70 = tail call ptr @rb_first(ptr noundef %range_tree) #9
  %tobool71.not148 = icmp eq ptr %call70, null
  br i1 %tobool71.not148, label %if.end69.while.end_crit_edge, label %if.end69.while.body_crit_edge

if.end69.while.body_crit_edge:                    ; preds = %if.end69
  br label %while.body

if.end69.while.end_crit_edge:                     ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body:                                       ; preds = %if.end79.while.body_crit_edge, %if.end69.while.body_crit_edge
  %next.0149 = phi ptr [ %call81, %if.end79.while.body_crit_edge ], [ %call70, %if.end69.while.body_crit_edge ]
  %name73 = getelementptr inbounds %struct.regmap_range_node, ptr %next.0149, i32 0, i32 1
  %49 = ptrtoint ptr %name73 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %name73, align 4
  %tobool74.not = icmp eq ptr %50, null
  br i1 %tobool74.not, label %while.body.if.end79_crit_edge, label %if.then75

while.body.if.end79_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end79

if.then75:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  %51 = ptrtoint ptr %debugfs to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %debugfs, align 4
  %call78 = tail call ptr @debugfs_create_file(ptr noundef nonnull %50, i16 noundef zeroext 256, ptr noundef %52, ptr noundef nonnull %next.0149, ptr noundef nonnull @regmap_range_fops) #9
  br label %if.end79

if.end79:                                         ; preds = %if.then75, %while.body.if.end79_crit_edge
  %call81 = tail call ptr @rb_next(ptr noundef nonnull %next.0149) #9
  %tobool71.not = icmp eq ptr %call81, null
  br i1 %tobool71.not, label %if.end79.while.end_crit_edge, label %if.end79.while.body_crit_edge

if.end79.while.body_crit_edge:                    ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

if.end79.while.end_crit_edge:                     ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.end:                                        ; preds = %if.end79.while.end_crit_edge, %if.end69.while.end_crit_edge
  %cache_ops = getelementptr inbounds %struct.regmap, ptr %map, i32 0, i32 47
  %53 = ptrtoint ptr %cache_ops to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %cache_ops, align 4
  %tobool82.not = icmp eq ptr %54, null
  br i1 %tobool82.not, label %while.end.cleanup89_crit_edge, label %land.lhs.true

while.end.cleanup89_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup89

land.lhs.true:                                    ; preds = %while.end
  %debugfs_init = getelementptr inbounds %struct.regcache_ops, ptr %54, i32 0, i32 4
  %55 = ptrtoint ptr %debugfs_init to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %debugfs_init, align 4
  %tobool84.not = icmp eq ptr %56, null
  br i1 %tobool84.not, label %land.lhs.true.cleanup89_crit_edge, label %if.then85

land.lhs.true.cleanup89_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup89

if.then85:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %56(ptr noundef %map) #9
  br label %cleanup89

cleanup89:                                        ; preds = %if.then85, %land.lhs.true.cleanup89_crit_edge, %while.end.cleanup89_crit_edge, %if.then39.cleanup89_crit_edge, %if.then27.cleanup89_crit_edge, %list_add.exit, %if.then8.cleanup89_crit_edge, %if.then5, %do.body
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @regmap_readable(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_create_bool(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_first(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @regmap_debugfs_exit(ptr noundef %map) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %debugfs = getelementptr inbounds %struct.regmap, ptr %map, i32 0, i32 18
  %0 = ptrtoint ptr %debugfs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %debugfs, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  tail call void @debugfs_remove(ptr noundef nonnull %1) #9
  %cache_lock = getelementptr inbounds %struct.regmap, ptr %map, i32 0, i32 24
  tail call void @mutex_lock_nested(ptr noundef %cache_lock, i32 noundef 0) #9
  %debugfs_off_cache.i = getelementptr inbounds %struct.regmap, ptr %map, i32 0, i32 23
  %2 = ptrtoint ptr %debugfs_off_cache.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %debugfs_off_cache.i, align 4
  %cmp.i.not4.i = icmp eq ptr %3, %debugfs_off_cache.i
  br i1 %cmp.i.not4.i, label %if.then.regmap_debugfs_free_dump_cache.exit_crit_edge, label %if.then.while.body.i_crit_edge

if.then.while.body.i_crit_edge:                   ; preds = %if.then
  br label %while.body.i

if.then.regmap_debugfs_free_dump_cache.exit_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %regmap_debugfs_free_dump_cache.exit

while.body.i:                                     ; preds = %list_del.exit.i.while.body.i_crit_edge, %if.then.while.body.i_crit_edge
  %4 = phi ptr [ %14, %list_del.exit.i.while.body.i_crit_edge ], [ %3, %if.then.while.body.i_crit_edge ]
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %4) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %while.body.i.list_del.exit.i_crit_edge

while.body.i.list_del.exit.i_crit_edge:           ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i.i.i, align 4
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %4, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev1.i.i.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %8, ptr %6, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %while.body.i.list_del.exit.i_crit_edge
  %11 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 256 to ptr), ptr %4, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @kfree(ptr noundef %4) #9
  %13 = ptrtoint ptr %debugfs_off_cache.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile ptr, ptr %debugfs_off_cache.i, align 4
  %cmp.i.not.i = icmp eq ptr %14, %debugfs_off_cache.i
  br i1 %cmp.i.not.i, label %list_del.exit.i.regmap_debugfs_free_dump_cache.exit_crit_edge, label %list_del.exit.i.while.body.i_crit_edge

list_del.exit.i.while.body.i_crit_edge:           ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

list_del.exit.i.regmap_debugfs_free_dump_cache.exit_crit_edge: ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %regmap_debugfs_free_dump_cache.exit

regmap_debugfs_free_dump_cache.exit:              ; preds = %list_del.exit.i.regmap_debugfs_free_dump_cache.exit_crit_edge, %if.then.regmap_debugfs_free_dump_cache.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %cache_lock) #9
  %debugfs_name = getelementptr inbounds %struct.regmap, ptr %map, i32 0, i32 19
  %15 = ptrtoint ptr %debugfs_name to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %debugfs_name, align 4
  tail call void @kfree(ptr noundef %16) #9
  %17 = ptrtoint ptr %debugfs_name to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %debugfs_name, align 4
  br label %if.end18

if.else:                                          ; preds = %entry
  tail call void @mutex_lock_nested(ptr noundef nonnull @regmap_debugfs_early_lock, i32 noundef 0) #9
  %18 = load ptr, ptr @regmap_debugfs_early_list, align 4
  %cmp.not35 = icmp eq ptr %18, @regmap_debugfs_early_list
  br i1 %cmp.not35, label %if.else.for.end_crit_edge, label %if.else.for.body_crit_edge

if.else.for.body_crit_edge:                       ; preds = %if.else
  br label %for.body

if.else.for.end_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.else.for.body_crit_edge
  %.pn.in36 = phi ptr [ %.pn39, %for.inc.for.body_crit_edge ], [ %18, %if.else.for.body_crit_edge ]
  %node.038 = getelementptr i8, ptr %.pn.in36, i32 -4
  %19 = ptrtoint ptr %.pn.in36 to i32
  call void @__asan_load4_noabort(i32 %19)
  %.pn39 = load ptr, ptr %.pn.in36, align 4
  %20 = ptrtoint ptr %node.038 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %node.038, align 4
  %cmp10 = icmp eq ptr %21, %map
  br i1 %cmp10, label %if.then11, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then11:                                        ; preds = %for.body
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in36) #9
  br i1 %call.i.i, label %if.end.i.i, label %if.then11.list_del.exit_crit_edge

if.then11.list_del.exit_crit_edge:                ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i32 = getelementptr inbounds %struct.list_head, ptr %.pn.in36, i32 0, i32 1
  %22 = ptrtoint ptr %prev.i.i32 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %prev.i.i32, align 4
  %24 = ptrtoint ptr %.pn.in36 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %.pn.in36, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %23, ptr %prev1.i.i.i, align 4
  %27 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %25, ptr %23, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then11.list_del.exit_crit_edge
  %28 = ptrtoint ptr %.pn.in36 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in36, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn.in36, i32 0, i32 1
  %29 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %node.038) #9
  br label %for.inc

for.inc:                                          ; preds = %list_del.exit, %for.body.for.inc_crit_edge
  %cmp.not = icmp eq ptr %.pn39, @regmap_debugfs_early_list
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.else.for.end_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @regmap_debugfs_early_lock) #9
  br label %if.end18

if.end18:                                         ; preds = %for.end, %regmap_debugfs_free_dump_cache.exit
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @regmap_debugfs_initcall() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str.15, ptr noundef null) #9
  store ptr %call, ptr @regmap_debugfs_root, align 4
  tail call void @mutex_lock_nested(ptr noundef nonnull @regmap_debugfs_early_lock, i32 noundef 0) #9
  %0 = load ptr, ptr @regmap_debugfs_early_list, align 4
  %cmp.not18 = icmp eq ptr %0, @regmap_debugfs_early_list
  br i1 %cmp.not18, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %list_del.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn.in19 = phi ptr [ %.pn, %list_del.exit.for.body_crit_edge ], [ %0, %entry.for.body_crit_edge ]
  %node.0 = getelementptr i8, ptr %.pn.in19, i32 -4
  %1 = ptrtoint ptr %.pn.in19 to i32
  call void @__asan_load4_noabort(i32 %1)
  %.pn = load ptr, ptr %.pn.in19, align 4
  %2 = ptrtoint ptr %node.0 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %node.0, align 4
  tail call void @regmap_debugfs_init(ptr noundef %3)
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in19) #9
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in19, i32 0, i32 1
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i, align 4
  %6 = ptrtoint ptr %.pn.in19 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %.pn.in19, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev1.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %5, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %10 = ptrtoint ptr %.pn.in19 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in19, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn.in19, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %node.0) #9
  %cmp.not = icmp eq ptr %.pn, @regmap_debugfs_early_list
  br i1 %cmp.not, label %list_del.exit.for.end_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %list_del.exit.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @regmap_debugfs_early_lock) #9
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @default_llseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @regmap_name_read_file(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3264, i32 noundef 4096) #12
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.regmap, ptr %1, i32 0, i32 5
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  %tobool1.not = icmp eq ptr %4, null
  br i1 %tobool1.not, label %if.end.if.end8_crit_edge, label %land.lhs.true

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

land.lhs.true:                                    ; preds = %if.end
  %driver = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 6
  %5 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %driver, align 4
  %tobool3.not = icmp eq ptr %6, null
  br i1 %tobool3.not, label %land.lhs.true.if.end8_crit_edge, label %if.then4

land.lhs.true.if.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

if.then4:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then4, %land.lhs.true.if.end8_crit_edge, %if.end.if.end8_crit_edge
  %name.0 = phi ptr [ %8, %if.then4 ], [ @.str.18, %land.lhs.true.if.end8_crit_edge ], [ @.str.18, %if.end.if.end8_crit_edge ]
  %call9 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %call7.i, i32 noundef 4096, ptr noundef nonnull @.str.19, ptr noundef %name.0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp = icmp slt i32 %call9, 0
  br i1 %cmp, label %if.end8.cleanup.sink.split_crit_edge, label %if.end11

if.end8.cleanup.sink.split_crit_edge:             ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

if.end11:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  %call12 = tail call i32 @simple_read_from_buffer(ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %call7.i, i32 noundef %call9) #9
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end11, %if.end8.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ %call12, %if.end11 ], [ %call9, %if.end8.cleanup.sink.split_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i) #9
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_open(ptr noundef, ptr noundef) #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_read_from_buffer(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @regmap_reg_ranges_read_file(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr nocapture noundef %ppos) #0 align 64 {
entry:
  %p = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %p) #9
  %2 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %ppos, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %3)
  %cmp = icmp slt i64 %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %tobool.not = icmp eq i32 %count, 0
  %or.cond = or i1 %tobool.not, %cmp
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = tail call i32 @llvm.umin.i32(i32 %count, i32 8388608)
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %4, i32 noundef 3264) #14
  %tobool5.not = icmp eq ptr %call9.i, null
  br i1 %tobool5.not, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i85 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3264, i32 noundef 4096) #12
  %tobool9.not = icmp eq ptr %call7.i85, null
  br i1 %tobool9.not, label %if.end7.cleanup.sink.split_crit_edge, label %if.end11

if.end7.cleanup.sink.split_crit_edge:             ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

if.end11:                                         ; preds = %if.end7
  %debugfs_tot_len.i = getelementptr inbounds %struct.regmap, ptr %1, i32 0, i32 22
  %6 = ptrtoint ptr %debugfs_tot_len.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %debugfs_tot_len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i, label %if.then.i92, label %if.end11.regmap_calc_tot_len.exit_crit_edge

if.end11.regmap_calc_tot_len.exit_crit_edge:      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %regmap_calc_tot_len.exit

if.then.i92:                                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  %max_register.i = getelementptr inbounds %struct.regmap, ptr %1, i32 0, i32 25
  %8 = ptrtoint ptr %max_register.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %max_register.i, align 4
  %call.i.i91 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.21, i32 noundef %9) #9
  %debugfs_reg_len.i = getelementptr inbounds %struct.regmap, ptr %1, i32 0, i32 20
  %10 = ptrtoint ptr %debugfs_reg_len.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %call.i.i91, ptr %debugfs_reg_len.i, align 4
  %val_bytes.i = getelementptr inbounds %struct.regmap, ptr %1, i32 0, i32 7, i32 3
  %11 = ptrtoint ptr %val_bytes.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %val_bytes.i, align 4
  %mul.i = shl i32 %12, 1
  %debugfs_val_len.i = getelementptr inbounds %struct.regmap, ptr %1, i32 0, i32 21
  %13 = ptrtoint ptr %debugfs_val_len.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %mul.i, ptr %debugfs_val_len.i, align 4
  %add.i = add i32 %call.i.i91, 3
  %add3.i = add i32 %add.i, %mul.i
  %14 = ptrtoint ptr %debugfs_tot_len.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %add3.i, ptr %debugfs_tot_len.i, align 4
  br label %regmap_calc_tot_len.exit

regmap_calc_tot_len.exit:                         ; preds = %if.then.i92, %if.end11.regmap_calc_tot_len.exit_crit_edge
  %15 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %ppos, align 8
  %call12 = call fastcc i32 @regmap_debugfs_get_dump_start(ptr noundef %1, i32 noundef 0, i64 noundef %16, ptr noundef nonnull %p)
  %cache_lock = getelementptr inbounds %struct.regmap, ptr %1, i32 0, i32 24
  tail call void @mutex_lock_nested(ptr noundef %cache_lock, i32 noundef 0) #9
  %debugfs_off_cache = getelementptr inbounds %struct.regmap, ptr %1, i32 0, i32 23
  %17 = ptrtoint ptr %debugfs_off_cache to i32
  call void @__asan_load4_noabort(i32 %17)
  %c.098 = load ptr, ptr %debugfs_off_cache, align 4
  %cmp14.not99 = icmp eq ptr %c.098, %debugfs_off_cache
  br i1 %cmp14.not99, label %regmap_calc_tot_len.exit.for.end_crit_edge, label %regmap_calc_tot_len.exit.for.body_crit_edge

regmap_calc_tot_len.exit.for.body_crit_edge:      ; preds = %regmap_calc_tot_len.exit
  br label %for.body

regmap_calc_tot_len.exit.for.end_crit_edge:       ; preds = %regmap_calc_tot_len.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %if.end23.for.body_crit_edge, %regmap_calc_tot_len.exit.for.body_crit_edge
  %c.0103 = phi ptr [ %c.0, %if.end23.for.body_crit_edge ], [ %c.098, %regmap_calc_tot_len.exit.for.body_crit_edge ]
  %buf_pos.0102 = phi i32 [ %buf_pos.1, %if.end23.for.body_crit_edge ], [ 0, %regmap_calc_tot_len.exit.for.body_crit_edge ]
  %add2496100 = phi i64 [ %add24, %if.end23.for.body_crit_edge ], [ 0, %regmap_calc_tot_len.exit.for.body_crit_edge ]
  %base_reg = getelementptr inbounds %struct.regmap_debugfs_off_cache, ptr %c.0103, i32 0, i32 3
  %18 = ptrtoint ptr %base_reg to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %base_reg, align 4
  %max_reg = getelementptr inbounds %struct.regmap_debugfs_off_cache, ptr %c.0103, i32 0, i32 4
  %20 = ptrtoint ptr %max_reg to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %max_reg, align 4
  %call15 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %call7.i85, i32 noundef 4096, ptr noundef nonnull @.str.20, i32 noundef %19, i32 noundef %21)
  %22 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %ppos, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add2496100, i64 %23)
  %cmp16.not = icmp slt i64 %add2496100, %23
  br i1 %cmp16.not, label %for.body.if.end23_crit_edge, label %if.then17

for.body.if.end23_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23

if.then17:                                        ; preds = %for.body
  %add = add i32 %call15, %buf_pos.0102
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %4)
  %cmp18 = icmp ugt i32 %add, %4
  br i1 %cmp18, label %if.then17.for.end_crit_edge, label %if.end20

if.then17.for.end_crit_edge:                      ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end20:                                         ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr21 = getelementptr i8, ptr %call9.i, i32 %buf_pos.0102
  %24 = call ptr @memcpy(ptr %add.ptr21, ptr %call7.i85, i32 %call15)
  br label %if.end23

if.end23:                                         ; preds = %if.end20, %for.body.if.end23_crit_edge
  %buf_pos.1 = phi i32 [ %add, %if.end20 ], [ %buf_pos.0102, %for.body.if.end23_crit_edge ]
  %conv = zext i32 %call15 to i64
  %add24 = add i64 %add2496100, %conv
  %25 = ptrtoint ptr %c.0103 to i32
  call void @__asan_load4_noabort(i32 %25)
  %c.0 = load ptr, ptr %c.0103, align 4
  %cmp14.not = icmp eq ptr %c.0, %debugfs_off_cache
  br i1 %cmp14.not, label %if.end23.for.end_crit_edge, label %if.end23.for.body_crit_edge

if.end23.for.body_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

if.end23.for.end_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %if.end23.for.end_crit_edge, %if.then17.for.end_crit_edge, %regmap_calc_tot_len.exit.for.end_crit_edge
  %add2497 = phi i64 [ 0, %regmap_calc_tot_len.exit.for.end_crit_edge ], [ %add2496100, %if.then17.for.end_crit_edge ], [ %add24, %if.end23.for.end_crit_edge ]
  %buf_pos.0.lcssa = phi i32 [ 0, %regmap_calc_tot_len.exit.for.end_crit_edge ], [ %buf_pos.0102, %if.then17.for.end_crit_edge ], [ %buf_pos.1, %if.end23.for.end_crit_edge ]
  %26 = ptrtoint ptr %p to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 %add2497, ptr %p, align 8
  tail call void @mutex_unlock(ptr noundef %cache_lock) #9
  tail call void @kfree(ptr noundef nonnull %call7.i85) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %buf_pos.0.lcssa)
  %cmp9.i.i = icmp slt i32 %buf_pos.0.lcssa, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i

land.rhs16.i.i:                                   ; preds = %for.end
  %.b1.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs16.i.i.cleanup.sink.split_crit_edge, label %if.then27.i.i, !prof !112

land.rhs16.i.i.cleanup.sink.split_crit_edge:      ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.22, i32 noundef 230, i32 noundef 9, ptr noundef null) #9
  br label %cleanup.sink.split

if.then.i.i.i:                                    ; preds = %for.end
  tail call void @__check_object_size(ptr noundef nonnull %call9.i, i32 noundef %buf_pos.0.lcssa, i1 noundef zeroext true) #9
  tail call void @__might_fault(ptr noundef nonnull @.str.24, i32 noundef 174) #9
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i, label %if.then.i.i.i.copy_to_user.exit_crit_edge, label %if.end.i.i

if.then.i.i.i.copy_to_user.exit_crit_edge:        ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %copy_to_user.exit

if.end.i.i:                                       ; preds = %if.then.i.i.i
  %27 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %user_buf, i32 %buf_pos.0.lcssa, i32 -1226833920) #15, !srcloc !113
  %asmresult.i.i = extractvalue { i32, i32 } %27, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then2.i.i, label %if.end.i.i.copy_to_user.exit_crit_edge

if.end.i.i.copy_to_user.exit_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %copy_to_user.exit

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull %call9.i, i32 noundef %buf_pos.0.lcssa) #9
  %call.i12.i.i = tail call i32 @arm_copy_to_user(ptr noundef %user_buf, ptr noundef nonnull %call9.i, i32 noundef %buf_pos.0.lcssa) #9
  br label %copy_to_user.exit

copy_to_user.exit:                                ; preds = %if.then2.i.i, %if.end.i.i.copy_to_user.exit_crit_edge, %if.then.i.i.i.copy_to_user.exit_crit_edge
  %n.addr.0.i = phi i32 [ %buf_pos.0.lcssa, %if.then.i.i.i.copy_to_user.exit_crit_edge ], [ %call.i12.i.i, %if.then2.i.i ], [ %buf_pos.0.lcssa, %if.end.i.i.copy_to_user.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i)
  %tobool32.not = icmp eq i32 %n.addr.0.i, 0
  br i1 %tobool32.not, label %if.end34, label %copy_to_user.exit.cleanup.sink.split_crit_edge

copy_to_user.exit.cleanup.sink.split_crit_edge:   ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

if.end34:                                         ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #11
  %conv35 = zext i32 %buf_pos.0.lcssa to i64
  %28 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %ppos, align 8
  %add36 = add i64 %29, %conv35
  store i64 %add36, ptr %ppos, align 8
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end34, %copy_to_user.exit.cleanup.sink.split_crit_edge, %if.then27.i.i, %land.rhs16.i.i.cleanup.sink.split_crit_edge, %if.end7.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ -12, %if.end7.cleanup.sink.split_crit_edge ], [ %buf_pos.0.lcssa, %if.end34 ], [ -14, %copy_to_user.exit.cleanup.sink.split_crit_edge ], [ -14, %if.then27.i.i ], [ -14, %land.rhs16.i.i.cleanup.sink.split_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call9.i) #9
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %p) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @regmap_debugfs_get_dump_start(ptr noundef %map, i32 noundef %base, i64 noundef %from, ptr nocapture noundef writeonly %pos) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %base)
  %tobool.not = icmp eq i32 %base, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %cache_lock = getelementptr inbounds %struct.regmap, ptr %map, i32 0, i32 24
  tail call void @mutex_lock_nested(ptr noundef %cache_lock, i32 noundef 0) #9
  %debugfs_off_cache = getelementptr inbounds %struct.regmap, ptr %map, i32 0, i32 23
  %0 = ptrtoint ptr %debugfs_off_cache to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %debugfs_off_cache, align 4
  %cmp.i.not = icmp eq ptr %1, %debugfs_off_cache
  br i1 %cmp.i.not, label %for.cond.preheader, label %if.end.if.end34_crit_edge

if.end.if.end34_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34

for.cond.preheader:                               ; preds = %if.end
  %max_register = getelementptr inbounds %struct.regmap, ptr %map, i32 0, i32 25
  %debugfs_tot_len = getelementptr inbounds %struct.regmap, ptr %map, i32 0, i32 22
  %reg_stride = getelementptr inbounds %struct.regmap, ptr %map, i32 0, i32 45
  %prev.i = getelementptr inbounds %struct.regmap, ptr %map, i32 0, i32 23, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader
  %extract.t192 = phi i32 [ 0, %for.cond.preheader ], [ %extract.t, %for.inc.for.body_crit_edge ]
  %c.0190 = phi ptr [ null, %for.cond.preheader ], [ %c.2, %for.inc.for.body_crit_edge ]
  %p.0188 = phi i64 [ 0, %for.cond.preheader ], [ %p.1, %for.inc.for.body_crit_edge ]
  %i.0183 = phi i32 [ 0, %for.cond.preheader ], [ %add22, %for.inc.for.body_crit_edge ]
  %call.i = tail call zeroext i1 @regmap_precious(ptr noundef %map, i32 noundef %i.0183) #9
  br i1 %call.i, label %for.body.if.then4_crit_edge, label %if.end.i

for.body.if.then4_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then4

if.end.i:                                         ; preds = %for.body
  %call1.i = tail call zeroext i1 @regmap_readable(ptr noundef %map, i32 noundef %i.0183) #9
  br i1 %call1.i, label %if.end.i.if.end10_crit_edge, label %land.lhs.true.i

if.end.i.if.end10_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

land.lhs.true.i:                                  ; preds = %if.end.i
  %call2.i = tail call zeroext i1 @regmap_cached(ptr noundef %map, i32 noundef %i.0183) #9
  br i1 %call2.i, label %land.lhs.true.i.if.end10_crit_edge, label %land.lhs.true.i.if.then4_crit_edge

land.lhs.true.i.if.then4_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then4

land.lhs.true.i.if.end10_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

if.then4:                                         ; preds = %land.lhs.true.i.if.then4_crit_edge, %for.body.if.then4_crit_edge
  %tobool5.not = icmp eq ptr %c.0190, null
  br i1 %tobool5.not, label %if.then4.for.inc_crit_edge, label %if.then6

if.then4.for.inc_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then6:                                         ; preds = %if.then4
  %conv = add i32 %extract.t192, -1
  %max = getelementptr inbounds %struct.regmap_debugfs_off_cache, ptr %c.0190, i32 0, i32 2
  %2 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %conv, ptr %max, align 4
  %3 = ptrtoint ptr %reg_stride to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %reg_stride, align 4
  %sub7 = sub i32 %i.0183, %4
  %max_reg = getelementptr inbounds %struct.regmap_debugfs_off_cache, ptr %c.0190, i32 0, i32 4
  %5 = ptrtoint ptr %max_reg to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %sub7, ptr %max_reg, align 4
  %6 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %c.0190, ptr noundef %7, ptr noundef %debugfs_off_cache) #9
  br i1 %call.i.i, label %if.end.i.i, label %if.then6.for.inc_crit_edge

if.then6.for.inc_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end.i.i:                                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %c.0190, ptr %prev.i, align 4
  %9 = ptrtoint ptr %c.0190 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %debugfs_off_cache, ptr %c.0190, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %c.0190, i32 0, i32 1
  %10 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %prev3.i.i, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %c.0190, ptr %7, align 4
  br label %for.inc

if.end10:                                         ; preds = %land.lhs.true.i.if.end10_crit_edge, %if.end.i.if.end10_crit_edge
  %tobool11.not = icmp eq ptr %c.0190, null
  br i1 %tobool11.not, label %if.then12, label %if.end10.if.end19_crit_edge

if.end10.if.end19_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

if.then12:                                        ; preds = %if.end10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %12 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %12, i32 noundef 3520, i32 noundef 24) #12
  %tobool14.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool14.not, label %if.then15, label %if.end17

if.then15:                                        ; preds = %if.then12
  %13 = ptrtoint ptr %debugfs_off_cache to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile ptr, ptr %debugfs_off_cache, align 4
  %cmp.i.not4.i = icmp eq ptr %14, %debugfs_off_cache
  br i1 %cmp.i.not4.i, label %if.then15.regmap_debugfs_free_dump_cache.exit_crit_edge, label %if.then15.while.body.i_crit_edge

if.then15.while.body.i_crit_edge:                 ; preds = %if.then15
  br label %while.body.i

if.then15.regmap_debugfs_free_dump_cache.exit_crit_edge: ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #11
  br label %regmap_debugfs_free_dump_cache.exit

while.body.i:                                     ; preds = %list_del.exit.i.while.body.i_crit_edge, %if.then15.while.body.i_crit_edge
  %15 = phi ptr [ %25, %list_del.exit.i.while.body.i_crit_edge ], [ %14, %if.then15.while.body.i_crit_edge ]
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %15) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %while.body.i.list_del.exit.i_crit_edge

while.body.i.list_del.exit.i_crit_edge:           ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %prev.i.i.i, align 4
  %18 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %15, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %17, ptr %prev1.i.i.i.i, align 4
  %21 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %19, ptr %17, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %while.body.i.list_del.exit.i_crit_edge
  %22 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr inttoptr (i32 256 to ptr), ptr %15, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  %23 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @kfree(ptr noundef %15) #9
  %24 = ptrtoint ptr %debugfs_off_cache to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile ptr, ptr %debugfs_off_cache, align 4
  %cmp.i.not.i = icmp eq ptr %25, %debugfs_off_cache
  br i1 %cmp.i.not.i, label %list_del.exit.i.regmap_debugfs_free_dump_cache.exit_crit_edge, label %list_del.exit.i.while.body.i_crit_edge

list_del.exit.i.while.body.i_crit_edge:           ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

list_del.exit.i.regmap_debugfs_free_dump_cache.exit_crit_edge: ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %regmap_debugfs_free_dump_cache.exit

regmap_debugfs_free_dump_cache.exit:              ; preds = %list_del.exit.i.regmap_debugfs_free_dump_cache.exit_crit_edge, %if.then15.regmap_debugfs_free_dump_cache.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %cache_lock) #9
  br label %cleanup

if.end17:                                         ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #11
  %min = getelementptr inbounds %struct.regmap_debugfs_off_cache, ptr %call7.i.i, i32 0, i32 1
  %26 = ptrtoint ptr %min to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %extract.t192, ptr %min, align 8
  %base_reg = getelementptr inbounds %struct.regmap_debugfs_off_cache, ptr %call7.i.i, i32 0, i32 3
  %27 = ptrtoint ptr %base_reg to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %i.0183, ptr %base_reg, align 8
  br label %if.end19

if.end19:                                         ; preds = %if.end17, %if.end10.if.end19_crit_edge
  %c.1 = phi ptr [ %c.0190, %if.end10.if.end19_crit_edge ], [ %call7.i.i, %if.end17 ]
  %28 = ptrtoint ptr %debugfs_tot_len to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %debugfs_tot_len, align 4
  %conv20 = zext i32 %29 to i64
  %add = add i64 %p.0188, %conv20
  br label %for.inc

for.inc:                                          ; preds = %if.end19, %if.end.i.i, %if.then6.for.inc_crit_edge, %if.then4.for.inc_crit_edge
  %p.1 = phi i64 [ %add, %if.end19 ], [ %p.0188, %if.then4.for.inc_crit_edge ], [ %p.0188, %if.then6.for.inc_crit_edge ], [ %p.0188, %if.end.i.i ]
  %c.2 = phi ptr [ %c.1, %if.end19 ], [ null, %if.then4.for.inc_crit_edge ], [ null, %if.then6.for.inc_crit_edge ], [ null, %if.end.i.i ]
  %30 = ptrtoint ptr %reg_stride to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %reg_stride, align 4
  %add22 = add i32 %31, %i.0183
  %32 = ptrtoint ptr %max_register to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %max_register, align 4
  %cmp.not = icmp ugt i32 %add22, %33
  %extract.t = trunc i64 %p.1 to i32
  br i1 %cmp.not, label %if.end23, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

if.end23:                                         ; preds = %for.inc
  %tobool24.not = icmp eq ptr %c.2, null
  br i1 %tobool24.not, label %if.end23.if.end34_crit_edge, label %if.then25

if.end23.if.end34_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34

if.then25:                                        ; preds = %if.end23
  %extract.t.le = trunc i64 %p.1 to i32
  %conv27 = add i32 %extract.t.le, -1
  %max28 = getelementptr inbounds %struct.regmap_debugfs_off_cache, ptr %c.2, i32 0, i32 2
  %34 = ptrtoint ptr %max28 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %conv27, ptr %max28, align 4
  %35 = ptrtoint ptr %reg_stride to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %reg_stride, align 4
  %sub30 = sub i32 %add22, %36
  %max_reg31 = getelementptr inbounds %struct.regmap_debugfs_off_cache, ptr %c.2, i32 0, i32 4
  %37 = ptrtoint ptr %max_reg31 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %sub30, ptr %max_reg31, align 4
  %38 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %prev.i, align 4
  %call.i.i167 = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %c.2, ptr noundef %39, ptr noundef %debugfs_off_cache) #9
  br i1 %call.i.i167, label %if.end.i.i169, label %if.then25.if.end34_crit_edge

if.then25.if.end34_crit_edge:                     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34

if.end.i.i169:                                    ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #11
  %40 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %c.2, ptr %prev.i, align 4
  %41 = ptrtoint ptr %c.2 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %debugfs_off_cache, ptr %c.2, align 4
  %prev3.i.i168 = getelementptr inbounds %struct.list_head, ptr %c.2, i32 0, i32 1
  %42 = ptrtoint ptr %prev3.i.i168 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %39, ptr %prev3.i.i168, align 4
  %43 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile ptr %c.2, ptr %39, align 4
  br label %if.end34

if.end34:                                         ; preds = %if.end.i.i169, %if.then25.if.end34_crit_edge, %if.end23.if.end34_crit_edge, %if.end.if.end34_crit_edge
  %44 = ptrtoint ptr %debugfs_off_cache to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile ptr, ptr %debugfs_off_cache, align 4
  %cmp.i171.not = icmp eq ptr %45, %debugfs_off_cache
  br i1 %cmp.i171.not, label %do.end, label %if.end34.if.end52_crit_edge, !prof !114

if.end34.if.end52_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end52

do.end:                                           ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 160, i32 noundef 9, ptr noundef null) #9
  br label %if.end52

if.end52:                                         ; preds = %do.end, %if.end34.if.end52_crit_edge
  %46 = ptrtoint ptr %debugfs_off_cache to i32
  call void @__asan_load4_noabort(i32 %46)
  %c.4194 = load ptr, ptr %debugfs_off_cache, align 4
  %cmp64.not195 = icmp eq ptr %c.4194, %debugfs_off_cache
  br i1 %cmp64.not195, label %if.end52.for.end102_crit_edge, label %if.end52.for.body68_crit_edge

if.end52.for.body68_crit_edge:                    ; preds = %if.end52
  br label %for.body68

if.end52.for.end102_crit_edge:                    ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end102

for.body68:                                       ; preds = %if.end92.for.body68_crit_edge, %if.end52.for.body68_crit_edge
  %c.4196 = phi ptr [ %c.4, %if.end92.for.body68_crit_edge ], [ %c.4194, %if.end52.for.body68_crit_edge ]
  %min69 = getelementptr inbounds %struct.regmap_debugfs_off_cache, ptr %c.4196, i32 0, i32 1
  %47 = ptrtoint ptr %min69 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %min69, align 4
  %conv70 = sext i32 %48 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %conv70, i64 %from)
  %cmp71.not = icmp sgt i64 %conv70, %from
  br i1 %cmp71.not, label %for.body68.if.end92_crit_edge, label %land.lhs.true

for.body68.if.end92_crit_edge:                    ; preds = %for.body68
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end92

land.lhs.true:                                    ; preds = %for.body68
  %max73 = getelementptr inbounds %struct.regmap_debugfs_off_cache, ptr %c.4196, i32 0, i32 2
  %49 = ptrtoint ptr %max73 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %max73, align 4
  %conv74 = sext i32 %50 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %conv74, i64 %from)
  %cmp75.not = icmp slt i64 %conv74, %from
  br i1 %cmp75.not, label %land.lhs.true.if.end92_crit_edge, label %if.then77

land.lhs.true.if.end92_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end92

if.then77:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %51 = trunc i64 %from to i32
  %conv81 = sub i32 %51, %48
  %debugfs_tot_len82 = getelementptr inbounds %struct.regmap, ptr %map, i32 0, i32 22
  %52 = ptrtoint ptr %debugfs_tot_len82 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %debugfs_tot_len82, align 4
  %div = udiv i32 %conv81, %53
  %mul = mul i32 %div, %53
  %add85 = add i32 %mul, %48
  %conv86 = zext i32 %add85 to i64
  %54 = ptrtoint ptr %pos to i32
  call void @__asan_store8_noabort(i32 %54)
  store i64 %conv86, ptr %pos, align 8
  tail call void @mutex_unlock(ptr noundef %cache_lock) #9
  %base_reg88 = getelementptr inbounds %struct.regmap_debugfs_off_cache, ptr %c.4196, i32 0, i32 3
  %55 = ptrtoint ptr %base_reg88 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %base_reg88, align 4
  %reg_stride89 = getelementptr inbounds %struct.regmap, ptr %map, i32 0, i32 45
  %57 = ptrtoint ptr %reg_stride89 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %reg_stride89, align 4
  %mul90 = mul i32 %58, %div
  %add91 = add i32 %mul90, %56
  br label %cleanup

if.end92:                                         ; preds = %land.lhs.true.if.end92_crit_edge, %for.body68.if.end92_crit_edge
  %max93 = getelementptr inbounds %struct.regmap_debugfs_off_cache, ptr %c.4196, i32 0, i32 2
  %59 = ptrtoint ptr %max93 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %max93, align 4
  %conv94 = sext i32 %60 to i64
  %61 = ptrtoint ptr %pos to i32
  call void @__asan_store8_noabort(i32 %61)
  store i64 %conv94, ptr %pos, align 8
  %62 = ptrtoint ptr %c.4196 to i32
  call void @__asan_load4_noabort(i32 %62)
  %c.4 = load ptr, ptr %c.4196, align 4
  %cmp64.not = icmp eq ptr %c.4, %debugfs_off_cache
  br i1 %cmp64.not, label %for.cond61.for.end102_crit_edge, label %if.end92.for.body68_crit_edge

if.end92.for.body68_crit_edge:                    ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body68

for.cond61.for.end102_crit_edge:                  ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #11
  %max_reg95.le = getelementptr inbounds %struct.regmap_debugfs_off_cache, ptr %c.4196, i32 0, i32 4
  %63 = ptrtoint ptr %max_reg95.le to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %max_reg95.le, align 4
  br label %for.end102

for.end102:                                       ; preds = %for.cond61.for.end102_crit_edge, %if.end52.for.end102_crit_edge
  %ret.0.lcssa = phi i32 [ %64, %for.cond61.for.end102_crit_edge ], [ 0, %if.end52.for.end102_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %cache_lock) #9
  br label %cleanup

cleanup:                                          ; preds = %for.end102, %if.then77, %regmap_debugfs_free_dump_cache.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %regmap_debugfs_free_dump_cache.exit ], [ %add91, %if.then77 ], [ %ret.0.lcssa, %for.end102 ], [ %base, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @regmap_precious(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @regmap_cached(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @regmap_map_read_file(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr nocapture noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %max_register = getelementptr inbounds %struct.regmap, ptr %1, i32 0, i32 25
  %2 = ptrtoint ptr %max_register to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %max_register, align 4
  %call = tail call fastcc i32 @regmap_read_debugfs(ptr noundef %1, i32 noundef 0, i32 noundef %3, ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @regmap_read_debugfs(ptr noundef %map, i32 noundef %from, i32 noundef %to, ptr noundef %user_buf, i32 noundef %count, ptr nocapture noundef %ppos) unnamed_addr #0 align 64 {
entry:
  %p = alloca i64, align 8
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %p) #9
  %0 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %ppos, align 8
  %2 = ptrtoint ptr %p to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %1, ptr %p, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #9
  %3 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %val, align 4, !annotation !115
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %1)
  %cmp = icmp slt i64 %1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %tobool.not = icmp eq i32 %count, 0
  %or.cond = or i1 %tobool.not, %cmp
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = tail call i32 @llvm.umin.i32(i32 %count, i32 8388608)
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %4, i32 noundef 3264) #14
  %tobool4.not = icmp eq ptr %call9.i, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %debugfs_tot_len.i = getelementptr inbounds %struct.regmap, ptr %map, i32 0, i32 22
  %5 = ptrtoint ptr %debugfs_tot_len.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %debugfs_tot_len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i = icmp eq i32 %6, 0
  br i1 %tobool.not.i, label %if.then.i96, label %if.end6.regmap_calc_tot_len.exit_crit_edge

if.end6.regmap_calc_tot_len.exit_crit_edge:       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %regmap_calc_tot_len.exit

if.then.i96:                                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  %max_register.i = getelementptr inbounds %struct.regmap, ptr %map, i32 0, i32 25
  %7 = ptrtoint ptr %max_register.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %max_register.i, align 4
  %call.i.i95 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.21, i32 noundef %8) #9
  %debugfs_reg_len.i = getelementptr inbounds %struct.regmap, ptr %map, i32 0, i32 20
  %9 = ptrtoint ptr %debugfs_reg_len.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %call.i.i95, ptr %debugfs_reg_len.i, align 4
  %val_bytes.i = getelementptr inbounds %struct.regmap, ptr %map, i32 0, i32 7, i32 3
  %10 = ptrtoint ptr %val_bytes.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %val_bytes.i, align 4
  %mul.i = shl i32 %11, 1
  %debugfs_val_len.i = getelementptr inbounds %struct.regmap, ptr %map, i32 0, i32 21
  %12 = ptrtoint ptr %debugfs_val_len.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %mul.i, ptr %debugfs_val_len.i, align 4
  %add.i = add i32 %call.i.i95, 3
  %add3.i = add i32 %add.i, %mul.i
  %13 = ptrtoint ptr %debugfs_tot_len.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %add3.i, ptr %debugfs_tot_len.i, align 4
  br label %regmap_calc_tot_len.exit

regmap_calc_tot_len.exit:                         ; preds = %if.then.i96, %if.end6.regmap_calc_tot_len.exit_crit_edge
  %14 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %ppos, align 8
  %call7 = call fastcc i32 @regmap_debugfs_get_dump_start(ptr noundef %map, i32 noundef %from, i64 noundef %15, ptr noundef nonnull %p)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8106 = icmp slt i32 %call7, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %call7, i32 %to)
  %cmp9.not107 = icmp ugt i32 %call7, %to
  %or.cond90108 = or i1 %cmp8106, %cmp9.not107
  br i1 %or.cond90108, label %regmap_calc_tot_len.exit.if.then.i.i.i_crit_edge, label %for.body.lr.ph

regmap_calc_tot_len.exit.if.then.i.i.i_crit_edge: ; preds = %regmap_calc_tot_len.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i.i

for.body.lr.ph:                                   ; preds = %regmap_calc_tot_len.exit
  %debugfs_reg_len = getelementptr inbounds %struct.regmap, ptr %map, i32 0, i32 20
  %debugfs_val_len27 = getelementptr inbounds %struct.regmap, ptr %map, i32 0, i32 21
  %val_bytes = getelementptr inbounds %struct.regmap, ptr %map, i32 0, i32 7, i32 3
  %reg_stride.i = getelementptr inbounds %struct.regmap, ptr %map, i32 0, i32 45
  %cache_lock.i = getelementptr inbounds %struct.regmap, ptr %map, i32 0, i32 24
  %debugfs_off_cache.i = getelementptr inbounds %struct.regmap, ptr %map, i32 0, i32 23
  %16 = ptrtoint ptr %p to i32
  call void @__asan_load8_noabort(i32 %16)
  %p.promoted = load i64, ptr %p, align 8
  br label %for.body

for.body:                                         ; preds = %regmap_next_readable_reg.exit.for.body_crit_edge, %for.body.lr.ph
  %add32121 = phi i64 [ %p.promoted, %for.body.lr.ph ], [ %add32, %regmap_next_readable_reg.exit.for.body_crit_edge ]
  %i.0110 = phi i32 [ %call7, %for.body.lr.ph ], [ %ret.1.i, %regmap_next_readable_reg.exit.for.body_crit_edge ]
  %buf_pos.0109 = phi i32 [ 0, %for.body.lr.ph ], [ %buf_pos.1, %regmap_next_readable_reg.exit.for.body_crit_edge ]
  %17 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %ppos, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add32121, i64 %18)
  %cmp10.not = icmp slt i64 %add32121, %18
  br i1 %cmp10.not, label %for.body.if.end30_crit_edge, label %if.then11

for.body.if.end30_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end30

if.then11:                                        ; preds = %for.body
  %19 = ptrtoint ptr %debugfs_tot_len.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %debugfs_tot_len.i, align 4
  %add = add i32 %20, %buf_pos.0109
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %4)
  %cmp12 = icmp ugt i32 %add, %4
  br i1 %cmp12, label %if.then11.if.end8.i.i_crit_edge, label %if.end14

if.then11.if.end8.i.i_crit_edge:                  ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.i.i

if.end14:                                         ; preds = %if.then11
  %add.ptr = getelementptr i8, ptr %call9.i, i32 %buf_pos.0109
  %sub = sub i32 %4, %buf_pos.0109
  %21 = ptrtoint ptr %debugfs_reg_len to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %debugfs_reg_len, align 4
  %sub15 = sub i32 %i.0110, %from
  %call16 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr, i32 noundef %sub, ptr noundef nonnull @.str.25, i32 noundef %22, i32 noundef %sub15)
  %23 = ptrtoint ptr %debugfs_reg_len to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %debugfs_reg_len, align 4
  %add18 = add i32 %buf_pos.0109, 2
  %add19 = add i32 %add18, %24
  %call20 = call i32 @regmap_read(ptr noundef %map, i32 noundef %i.0110, ptr noundef nonnull %val) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %cmp21 = icmp eq i32 %call20, 0
  %add.ptr23 = getelementptr i8, ptr %call9.i, i32 %add19
  br i1 %cmp21, label %if.then22, label %if.else

if.then22:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  %sub24 = sub i32 %4, %add19
  %25 = ptrtoint ptr %debugfs_val_len27 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %debugfs_val_len27, align 4
  %27 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %val, align 4
  %call25 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr23, i32 noundef %sub24, ptr noundef nonnull @.str.26, i32 noundef %26, i32 noundef %28)
  br label %if.end28

if.else:                                          ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  %29 = ptrtoint ptr %debugfs_val_len27 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %debugfs_val_len27, align 4
  %31 = call ptr @memset(ptr %add.ptr23, i32 88, i32 %30)
  br label %if.end28

if.end28:                                         ; preds = %if.else, %if.then22
  %32 = ptrtoint ptr %val_bytes to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %val_bytes, align 4
  %mul = shl i32 %33, 1
  %add29 = add i32 %mul, %add19
  %inc = add i32 %add29, 1
  %arrayidx = getelementptr i8, ptr %call9.i, i32 %add29
  %34 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 10, ptr %arrayidx, align 1
  br label %if.end30

if.end30:                                         ; preds = %if.end28, %for.body.if.end30_crit_edge
  %buf_pos.1 = phi i32 [ %inc, %if.end28 ], [ %buf_pos.0109, %for.body.if.end30_crit_edge ]
  %35 = ptrtoint ptr %debugfs_tot_len.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %debugfs_tot_len.i, align 4
  %conv = zext i32 %36 to i64
  %add32 = add i64 %add32121, %conv
  %37 = ptrtoint ptr %reg_stride.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %reg_stride.i, align 4
  %add.i98 = add i32 %38, %i.0110
  %call.i.i99 = call zeroext i1 @regmap_precious(ptr noundef %map, i32 noundef %add.i98) #9
  br i1 %call.i.i99, label %if.end30.if.else.i_crit_edge, label %if.end.i.i101

if.end30.if.else.i_crit_edge:                     ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i

if.end.i.i101:                                    ; preds = %if.end30
  %call1.i.i100 = call zeroext i1 @regmap_readable(ptr noundef %map, i32 noundef %add.i98) #9
  br i1 %call1.i.i100, label %if.end.i.i101.if.then.i102_crit_edge, label %land.lhs.true.i.i

if.end.i.i101.if.then.i102_crit_edge:             ; preds = %if.end.i.i101
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i102

land.lhs.true.i.i:                                ; preds = %if.end.i.i101
  %call2.i.i = call zeroext i1 @regmap_cached(ptr noundef %map, i32 noundef %add.i98) #9
  br i1 %call2.i.i, label %land.lhs.true.i.i.if.then.i102_crit_edge, label %land.lhs.true.i.i.if.else.i_crit_edge

land.lhs.true.i.i.if.else.i_crit_edge:            ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i

land.lhs.true.i.i.if.then.i102_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i102

if.then.i102:                                     ; preds = %land.lhs.true.i.i.if.then.i102_crit_edge, %if.end.i.i101.if.then.i102_crit_edge
  %39 = ptrtoint ptr %reg_stride.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %reg_stride.i, align 4
  %add2.i = add i32 %40, %i.0110
  br label %regmap_next_readable_reg.exit

if.else.i:                                        ; preds = %land.lhs.true.i.i.if.else.i_crit_edge, %if.end30.if.else.i_crit_edge
  call void @mutex_lock_nested(ptr noundef %cache_lock.i, i32 noundef 0) #9
  %41 = ptrtoint ptr %debugfs_off_cache.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %c.031.i = load ptr, ptr %debugfs_off_cache.i, align 4
  %cmp.not32.i = icmp eq ptr %c.031.i, %debugfs_off_cache.i
  br i1 %cmp.not32.i, label %if.else.i.for.end.i_crit_edge, label %if.else.i.for.body.i_crit_edge

if.else.i.for.body.i_crit_edge:                   ; preds = %if.else.i
  br label %for.body.i

if.else.i.for.end.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.else.i.for.body.i_crit_edge
  %c.033.i = phi ptr [ %c.0.i, %for.inc.i.for.body.i_crit_edge ], [ %c.031.i, %if.else.i.for.body.i_crit_edge ]
  %max_reg.i = getelementptr inbounds %struct.regmap_debugfs_off_cache, ptr %c.033.i, i32 0, i32 4
  %42 = ptrtoint ptr %max_reg.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %max_reg.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %43, i32 %i.0110)
  %cmp4.i = icmp ult i32 %43, %i.0110
  br i1 %cmp4.i, label %for.body.i.for.inc.i_crit_edge, label %if.end.i103

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.end.i103:                                      ; preds = %for.body.i
  %base_reg.i = getelementptr inbounds %struct.regmap_debugfs_off_cache, ptr %c.033.i, i32 0, i32 3
  %44 = ptrtoint ptr %base_reg.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %base_reg.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %45, i32 %i.0110)
  %cmp6.i = icmp ugt i32 %45, %i.0110
  br i1 %cmp6.i, label %if.end.i103.for.end.i_crit_edge, label %if.end.i103.for.inc.i_crit_edge

if.end.i103.for.inc.i_crit_edge:                  ; preds = %if.end.i103
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.end.i103.for.end.i_crit_edge:                  ; preds = %if.end.i103
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.inc.i:                                        ; preds = %if.end.i103.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %46 = ptrtoint ptr %c.033.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %c.0.i = load ptr, ptr %c.033.i, align 4
  %cmp.not.i = icmp eq ptr %c.0.i, %debugfs_off_cache.i
  br i1 %cmp.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %if.end.i103.for.end.i_crit_edge, %if.else.i.for.end.i_crit_edge
  %ret.0.i = phi i32 [ -22, %if.else.i.for.end.i_crit_edge ], [ -22, %for.inc.i.for.end.i_crit_edge ], [ %45, %if.end.i103.for.end.i_crit_edge ]
  call void @mutex_unlock(ptr noundef %cache_lock.i) #9
  br label %regmap_next_readable_reg.exit

regmap_next_readable_reg.exit:                    ; preds = %for.end.i, %if.then.i102
  %ret.1.i = phi i32 [ %add2.i, %if.then.i102 ], [ %ret.0.i, %for.end.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1.i)
  %cmp8 = icmp slt i32 %ret.1.i, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %ret.1.i, i32 %to)
  %cmp9.not = icmp ugt i32 %ret.1.i, %to
  %or.cond90 = or i1 %cmp8, %cmp9.not
  br i1 %or.cond90, label %regmap_next_readable_reg.exit.if.end8.i.i_crit_edge, label %regmap_next_readable_reg.exit.for.body_crit_edge

regmap_next_readable_reg.exit.for.body_crit_edge: ; preds = %regmap_next_readable_reg.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

regmap_next_readable_reg.exit.if.end8.i.i_crit_edge: ; preds = %regmap_next_readable_reg.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.i.i

if.end8.i.i:                                      ; preds = %regmap_next_readable_reg.exit.if.end8.i.i_crit_edge, %if.then11.if.end8.i.i_crit_edge
  %add32122 = phi i64 [ %add32121, %if.then11.if.end8.i.i_crit_edge ], [ %add32, %regmap_next_readable_reg.exit.if.end8.i.i_crit_edge ]
  %buf_pos.0.lcssa = phi i32 [ %buf_pos.0109, %if.then11.if.end8.i.i_crit_edge ], [ %buf_pos.1, %regmap_next_readable_reg.exit.if.end8.i.i_crit_edge ]
  %47 = ptrtoint ptr %p to i32
  call void @__asan_store8_noabort(i32 %47)
  store i64 %add32122, ptr %p, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %buf_pos.0.lcssa)
  %cmp9.i.i = icmp slt i32 %buf_pos.0.lcssa, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.end8.i.i.if.then.i.i.i_crit_edge

if.end8.i.i.if.then.i.i.i_crit_edge:              ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i.i

land.rhs16.i.i:                                   ; preds = %if.end8.i.i
  %.b1.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs16.i.i.out_crit_edge, label %if.then27.i.i, !prof !112

land.rhs16.i.i.out_crit_edge:                     ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.22, i32 noundef 230, i32 noundef 9, ptr noundef null) #9
  br label %out

if.then.i.i.i:                                    ; preds = %if.end8.i.i.if.then.i.i.i_crit_edge, %regmap_calc_tot_len.exit.if.then.i.i.i_crit_edge
  %buf_pos.0.lcssa117120 = phi i32 [ %buf_pos.0.lcssa, %if.end8.i.i.if.then.i.i.i_crit_edge ], [ 0, %regmap_calc_tot_len.exit.if.then.i.i.i_crit_edge ]
  call void @__check_object_size(ptr noundef nonnull %call9.i, i32 noundef %buf_pos.0.lcssa117120, i1 noundef zeroext true) #9
  call void @__might_fault(ptr noundef nonnull @.str.24, i32 noundef 174) #9
  %call.i.i = call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i, label %if.then.i.i.i.copy_to_user.exit_crit_edge, label %if.end.i.i

if.then.i.i.i.copy_to_user.exit_crit_edge:        ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %copy_to_user.exit

if.end.i.i:                                       ; preds = %if.then.i.i.i
  %48 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %user_buf, i32 %buf_pos.0.lcssa117120, i32 -1226833920) #15, !srcloc !113
  %asmresult.i.i = extractvalue { i32, i32 } %48, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then2.i.i, label %if.end.i.i.copy_to_user.exit_crit_edge

if.end.i.i.copy_to_user.exit_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %copy_to_user.exit

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %call9.i, i32 noundef %buf_pos.0.lcssa117120) #9
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %user_buf, ptr noundef nonnull %call9.i, i32 noundef %buf_pos.0.lcssa117120) #9
  br label %copy_to_user.exit

copy_to_user.exit:                                ; preds = %if.then2.i.i, %if.end.i.i.copy_to_user.exit_crit_edge, %if.then.i.i.i.copy_to_user.exit_crit_edge
  %n.addr.0.i = phi i32 [ %buf_pos.0.lcssa117120, %if.then.i.i.i.copy_to_user.exit_crit_edge ], [ %call.i12.i.i, %if.then2.i.i ], [ %buf_pos.0.lcssa117120, %if.end.i.i.copy_to_user.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i)
  %tobool35.not = icmp eq i32 %n.addr.0.i, 0
  br i1 %tobool35.not, label %if.end37, label %copy_to_user.exit.out_crit_edge

copy_to_user.exit.out_crit_edge:                  ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end37:                                         ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #11
  %conv38 = zext i32 %buf_pos.0.lcssa117120 to i64
  %49 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %ppos, align 8
  %add39 = add i64 %50, %conv38
  store i64 %add39, ptr %ppos, align 8
  br label %out

out:                                              ; preds = %if.end37, %copy_to_user.exit.out_crit_edge, %if.then27.i.i, %land.rhs16.i.i.out_crit_edge
  %ret.0 = phi i32 [ %buf_pos.0.lcssa117120, %if.end37 ], [ -14, %copy_to_user.exit.out_crit_edge ], [ -14, %if.then27.i.i ], [ -14, %land.rhs16.i.i.out_crit_edge ]
  call void @kfree(ptr noundef nonnull %call9.i) #9
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out ], [ -22, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %p) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @regmap_access_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @regmap_access_show, ptr noundef %1) #9
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @regmap_access_show(ptr noundef %s, ptr nocapture noundef readnone %ignored) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %max_register = getelementptr inbounds %struct.regmap, ptr %1, i32 0, i32 25
  %2 = ptrtoint ptr %max_register to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %max_register, align 4
  %call.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.21, i32 noundef %3) #9
  %reg_stride = getelementptr inbounds %struct.regmap, ptr %1, i32 0, i32 45
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.028 = phi i32 [ 0, %entry ], [ %add, %for.inc.for.body_crit_edge ]
  %call2 = tail call zeroext i1 @regmap_readable(ptr noundef %1, i32 noundef %i.028) #9
  br i1 %call2, label %for.body.if.end_crit_edge, label %land.lhs.true

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true:                                    ; preds = %for.body
  %call3 = tail call zeroext i1 @regmap_writeable(ptr noundef %1, i32 noundef %i.028) #9
  br i1 %call3, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %for.body.if.end_crit_edge
  %call4 = tail call zeroext i1 @regmap_readable(ptr noundef %1, i32 noundef %i.028) #9
  %cond = select i1 %call4, i32 121, i32 110
  %call5 = tail call zeroext i1 @regmap_writeable(ptr noundef %1, i32 noundef %i.028) #9
  %cond6 = select i1 %call5, i32 121, i32 110
  %call7 = tail call zeroext i1 @regmap_volatile(ptr noundef %1, i32 noundef %i.028) #9
  %cond8 = select i1 %call7, i32 121, i32 110
  %call9 = tail call zeroext i1 @regmap_precious(ptr noundef %1, i32 noundef %i.028) #9
  %cond10 = select i1 %call9, i32 121, i32 110
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.27, i32 noundef %call.i, i32 noundef %i.028, i32 noundef %cond, i32 noundef %cond6, i32 noundef %cond8, i32 noundef %cond10) #9
  br label %for.inc

for.inc:                                          ; preds = %if.end, %land.lhs.true.for.inc_crit_edge
  %4 = ptrtoint ptr %reg_stride to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %reg_stride, align 4
  %add = add i32 %5, %i.028
  %6 = ptrtoint ptr %max_register to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %max_register, align 4
  %cmp.not = icmp ugt i32 %add, %7
  br i1 %cmp.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @regmap_writeable(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @regmap_volatile(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debugfs_read_file_bool(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @regmap_cache_only_write_file(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  %new_val = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 -520
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %new_val) #9
  %2 = ptrtoint ptr %new_val to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %new_val, align 1, !annotation !115
  %call = call i32 @kstrtobool_from_user(ptr noundef %user_buf, i32 noundef %count, ptr noundef nonnull %new_val) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %dentry = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 1, i32 1
  %3 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dentry, align 4
  %call1 = call i32 @debugfs_file_get(ptr noundef %4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %lock = getelementptr i8, ptr %1, i32 -428
  %5 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %lock, align 4
  %lock_arg = getelementptr i8, ptr %1, i32 -420
  %7 = ptrtoint ptr %lock_arg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %lock_arg, align 4
  call void %6(ptr noundef %8) #9
  %9 = ptrtoint ptr %new_val to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %new_val, align 1, !range !110
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool5.not = icmp eq i8 %10, 0
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %1, align 4, !range !110
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool11.not = icmp eq i8 %12, 0
  br i1 %tobool5.not, label %land.lhs.true9, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end4
  br i1 %tobool11.not, label %do.end, label %if.end34.critedge

do.end:                                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr i8, ptr %1, i32 -412
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %14, ptr noundef nonnull @.str.28) #16
  call void @add_taint(i32 noundef 6, i32 noundef 0) #9
  br label %if.end18

land.lhs.true9:                                   ; preds = %if.end4
  br i1 %tobool11.not, label %land.lhs.true9.if.end18_crit_edge, label %do.end15

land.lhs.true9.if.end18_crit_edge:                ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

do.end15:                                         ; preds = %land.lhs.true9
  %dev16 = getelementptr i8, ptr %1, i32 -412
  %15 = ptrtoint ptr %dev16 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev16, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %16, ptr noundef nonnull @.str.33) #16
  %17 = ptrtoint ptr %new_val to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %new_val, align 1, !range !110
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %18, ptr %1, align 4
  %unlock.c56 = getelementptr i8, ptr %1, i32 -424
  %20 = ptrtoint ptr %unlock.c56 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %unlock.c56, align 4
  %22 = ptrtoint ptr %lock_arg to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %lock_arg, align 4
  call void %21(ptr noundef %23) #9
  %24 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dentry, align 4
  call void @debugfs_file_put(ptr noundef %25) #9
  %call26 = call i32 @regcache_sync(ptr noundef %add.ptr) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %do.end15.cleanup_crit_edge, label %do.end31

do.end15.cleanup_crit_edge:                       ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end18:                                         ; preds = %land.lhs.true9.if.end18_crit_edge, %do.end
  %26 = ptrtoint ptr %new_val to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %new_val, align 1, !range !110
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %27, ptr %1, align 4
  %unlock = getelementptr i8, ptr %1, i32 -424
  %29 = ptrtoint ptr %unlock to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %unlock, align 4
  %31 = ptrtoint ptr %lock_arg to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %lock_arg, align 4
  call void %30(ptr noundef %32) #9
  %33 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dentry, align 4
  call void @debugfs_file_put(ptr noundef %34) #9
  br label %cleanup

do.end31:                                         ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #11
  %35 = ptrtoint ptr %dev16 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev16, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %36, ptr noundef nonnull @.str.36, i32 noundef %call26) #16
  br label %cleanup

if.end34.critedge:                                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %37 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %10, ptr %1, align 4
  %unlock.c = getelementptr i8, ptr %1, i32 -424
  %38 = ptrtoint ptr %unlock.c to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %unlock.c, align 4
  %40 = ptrtoint ptr %lock_arg to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %lock_arg, align 4
  call void %39(ptr noundef %41) #9
  %42 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dentry, align 4
  call void @debugfs_file_put(ptr noundef %43) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end34.critedge, %do.end31, %if.end18, %do.end15.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ], [ %count, %if.end18 ], [ %count, %if.end34.critedge ], [ %count, %do.end15.cleanup_crit_edge ], [ %count, %do.end31 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %new_val) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtobool_from_user(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debugfs_file_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_taint(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_file_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regcache_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @regmap_cache_bypass_write_file(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  %new_val = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %new_val) #9
  %2 = ptrtoint ptr %new_val to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %new_val, align 1, !annotation !115
  %call = call i32 @kstrtobool_from_user(ptr noundef %user_buf, i32 noundef %count, ptr noundef nonnull %new_val) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %dentry = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 1, i32 1
  %3 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dentry, align 4
  %call1 = call i32 @debugfs_file_get(ptr noundef %4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %lock = getelementptr i8, ptr %1, i32 -429
  %5 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %lock, align 4
  %lock_arg = getelementptr i8, ptr %1, i32 -421
  %7 = ptrtoint ptr %lock_arg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %lock_arg, align 4
  call void %6(ptr noundef %8) #9
  %9 = ptrtoint ptr %new_val to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %new_val, align 1, !range !110
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool5.not = icmp eq i8 %10, 0
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %1, align 1, !range !110
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool11.not = icmp eq i8 %12, 0
  br i1 %tobool5.not, label %land.lhs.true9, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end4
  br i1 %tobool11.not, label %do.end, label %land.lhs.true.if.end18_crit_edge

land.lhs.true.if.end18_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

do.end:                                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr i8, ptr %1, i32 -413
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %14, ptr noundef nonnull @.str.39) #16
  call void @add_taint(i32 noundef 6, i32 noundef 0) #9
  br label %if.end18

land.lhs.true9:                                   ; preds = %if.end4
  br i1 %tobool11.not, label %land.lhs.true9.if.end18_crit_edge, label %do.end15

land.lhs.true9.if.end18_crit_edge:                ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

do.end15:                                         ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #11
  %dev16 = getelementptr i8, ptr %1, i32 -413
  %15 = ptrtoint ptr %dev16 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev16, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %16, ptr noundef nonnull @.str.42) #16
  br label %if.end18

if.end18:                                         ; preds = %do.end15, %land.lhs.true9.if.end18_crit_edge, %do.end, %land.lhs.true.if.end18_crit_edge
  %17 = ptrtoint ptr %new_val to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %new_val, align 1, !range !110
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %18, ptr %1, align 1
  %unlock = getelementptr i8, ptr %1, i32 -425
  %20 = ptrtoint ptr %unlock to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %unlock, align 4
  %22 = ptrtoint ptr %lock_arg to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %lock_arg, align 4
  call void %21(ptr noundef %23) #9
  %24 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dentry, align 4
  call void @debugfs_file_put(ptr noundef %25) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end18 ], [ %count, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %new_val) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @regmap_range_read_file(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr nocapture noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %map1 = getelementptr inbounds %struct.regmap_range_node, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %map1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %map1, align 4
  %range_min = getelementptr inbounds %struct.regmap_range_node, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %range_min to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %range_min, align 4
  %range_max = getelementptr inbounds %struct.regmap_range_node, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %range_max to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %range_max, align 4
  %call = tail call fastcc i32 @regmap_read_debugfs(ptr noundef %3, i32 noundef %5, i32 noundef %7, ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos)
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

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
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 55)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 55)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { nobuiltin }
attributes #14 = { nounwind allocsize(0) }
attributes #15 = { nounwind readnone }
attributes #16 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !38, !39, !41, !43, !45, !47, !49, !51, !53, !55, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !75, !76, !77, !78, !79, !81, !82, !83, !85, !86, !87, !88, !90, !92, !93, !94, !95, !97, !98, !99}
!llvm.module.flags = !{!101, !102, !103, !104, !105, !106, !107, !108}
!llvm.ident = !{!109}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/base/regmap/regmap-debugfs.c", i32 550, i32 24}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/base/regmap/regmap-debugfs.c", i32 561, i32 3}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @regmap_debugfs_init.__UNIQUE_ID_ddebug223, !3, !"__UNIQUE_ID_ddebug223", i1 false, i1 false}
!8 = !{ptr @regmap_debugfs_init.__key, !9, !"__key", i1 false, i1 false}
!9 = !{!"../drivers/base/regmap/regmap-debugfs.c", i32 579, i32 2}
!10 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/base/regmap/regmap-debugfs.c", i32 586, i32 46}
!13 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/base/regmap/regmap-debugfs.c", i32 598, i32 45}
!15 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/base/regmap/regmap-debugfs.c", i32 608, i32 22}
!17 = !{ptr @.str.9, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/base/regmap/regmap-debugfs.c", i32 611, i32 22}
!19 = !{ptr @.str.10, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/base/regmap/regmap-debugfs.c", i32 623, i32 23}
!21 = !{ptr @.str.11, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/base/regmap/regmap-debugfs.c", i32 625, i32 23}
!23 = !{ptr @.str.12, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/base/regmap/regmap-debugfs.c", i32 630, i32 23}
!25 = !{ptr @.str.13, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/base/regmap/regmap-debugfs.c", i32 632, i32 23}
!27 = !{ptr @.str.14, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/base/regmap/regmap-debugfs.c", i32 634, i32 23}
!29 = !{ptr @.str.15, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/base/regmap/regmap-debugfs.c", i32 683, i32 43}
!31 = !{ptr @dummy_index, !32, !"dummy_index", i1 false, i1 false}
!32 = !{!"../drivers/base/regmap/regmap-debugfs.c", i32 23, i32 21}
!33 = !{ptr @regmap_debugfs_root, !34, !"regmap_debugfs_root", i1 false, i1 false}
!34 = !{!"../drivers/base/regmap/regmap-debugfs.c", i32 24, i32 23}
!35 = !{ptr @.str.16, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/base/regmap/regmap-debugfs.c", i32 26, i32 8}
!37 = !{ptr @.str.17, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @regmap_debugfs_early_lock, !36, !"regmap_debugfs_early_lock", i1 false, i1 false}
!39 = !{ptr @regmap_debugfs_early_list, !40, !"regmap_debugfs_early_list", i1 false, i1 false}
!40 = !{!"../drivers/base/regmap/regmap-debugfs.c", i32 25, i32 8}
!41 = !{ptr @regmap_name_fops, !42, !"regmap_name_fops", i1 false, i1 false}
!42 = !{!"../drivers/base/regmap/regmap-debugfs.c", i32 61, i32 37}
!43 = !{ptr @.str.18, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/base/regmap/regmap-debugfs.c", i32 39, i32 21}
!45 = !{ptr @.str.19, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/base/regmap/regmap-debugfs.c", i32 50, i32 33}
!47 = !{ptr @regmap_reg_ranges_fops, !48, !"regmap_reg_ranges_fops", i1 false, i1 false}
!48 = !{!"../drivers/base/regmap/regmap-debugfs.c", i32 428, i32 37}
!49 = !{ptr @.str.20, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/base/regmap/regmap-debugfs.c", i32 402, i32 42}
!51 = !{ptr @.str.21, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/base/regmap/regmap-debugfs.c", i32 31, i32 27}
!53 = distinct !{null, !54, !"__already_done", i1 false, i1 false}
!54 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!55 = !{ptr @.str.22, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @.str.23, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!58 = !{ptr @.str.24, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!60 = !{ptr @regmap_map_fops, !61, !"regmap_map_fops", i1 false, i1 false}
!61 = !{!"../drivers/base/regmap/regmap-debugfs.c", i32 337, i32 37}
!62 = !{ptr @.str.25, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/base/regmap/regmap-debugfs.c", i32 251, i32 45}
!64 = !{ptr @.str.26, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/base/regmap/regmap-debugfs.c", i32 259, i32 7}
!66 = !{ptr @regmap_access_fops, !67, !"regmap_access_fops", i1 false, i1 false}
!67 = !{!"../drivers/base/regmap/regmap-debugfs.c", i32 457, i32 1}
!68 = !{ptr @.str.27, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/base/regmap/regmap-debugfs.c", i32 447, i32 17}
!70 = !{ptr @regmap_cache_only_fops, !71, !"regmap_cache_only_fops", i1 false, i1 false}
!71 = !{!"../drivers/base/regmap/regmap-debugfs.c", i32 500, i32 37}
!72 = !{ptr @.str.28, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/base/regmap/regmap-debugfs.c", i32 480, i32 3}
!74 = !{ptr @.str.29, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @.str.30, !73, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @.str.31, !73, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @regmap_cache_only_write_file._entry, !73, !"_entry", i1 false, i1 false}
!78 = !{ptr @regmap_cache_only_write_file._entry_ptr, !73, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.33, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/base/regmap/regmap-debugfs.c", i32 483, i32 3}
!81 = !{ptr @regmap_cache_only_write_file._entry.32, !80, !"_entry", i1 false, i1 false}
!82 = !{ptr @regmap_cache_only_write_file._entry_ptr.34, !80, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.36, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/base/regmap/regmap-debugfs.c", i32 494, i32 4}
!85 = !{ptr @.str.37, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @regmap_cache_only_write_file._entry.35, !84, !"_entry", i1 false, i1 false}
!87 = !{ptr @regmap_cache_only_write_file._entry_ptr.38, !84, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @regmap_cache_bypass_fops, !89, !"regmap_cache_bypass_fops", i1 false, i1 false}
!89 = !{!"../drivers/base/regmap/regmap-debugfs.c", i32 540, i32 37}
!90 = !{ptr @.str.39, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/base/regmap/regmap-debugfs.c", i32 527, i32 3}
!92 = !{ptr @.str.40, !91, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @regmap_cache_bypass_write_file._entry, !91, !"_entry", i1 false, i1 false}
!94 = !{ptr @regmap_cache_bypass_write_file._entry_ptr, !91, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.42, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/base/regmap/regmap-debugfs.c", i32 530, i32 3}
!97 = !{ptr @regmap_cache_bypass_write_file._entry.41, !96, !"_entry", i1 false, i1 false}
!98 = !{ptr @regmap_cache_bypass_write_file._entry_ptr.43, !96, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @regmap_range_fops, !100, !"regmap_range_fops", i1 false, i1 false}
!100 = !{!"../drivers/base/regmap/regmap-debugfs.c", i32 354, i32 37}
!101 = !{i32 1, !"wchar_size", i32 2}
!102 = !{i32 1, !"min_enum_size", i32 4}
!103 = !{i32 8, !"branch-target-enforcement", i32 0}
!104 = !{i32 8, !"sign-return-address", i32 0}
!105 = !{i32 8, !"sign-return-address-all", i32 0}
!106 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!107 = !{i32 7, !"uwtable", i32 1}
!108 = !{i32 7, !"frame-pointer", i32 2}
!109 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!110 = !{i8 0, i8 2}
!111 = !{i64 2148216404, i64 2148216409, i64 2148216422, i64 2148216466, i64 2148216500, i64 2148216521}
!112 = !{!"branch_weights", i32 2000, i32 1}
!113 = !{i64 2152592892, i64 2152592917}
!114 = !{!"branch_weights", i32 1, i32 2000}
!115 = !{!"auto-init"}
