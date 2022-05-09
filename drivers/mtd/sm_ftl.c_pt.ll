; ModuleID = '/llk/IR_all_yes/drivers/mtd/sm_ftl.c_pt.bc'
source_filename = "../drivers/mtd/sm_ftl.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.68 }
%union.anon.68 = type { ptr }
%struct.mtd_blktrans_ops = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.chs_entry = type { i32, i16, i8, i8 }
%struct.mtd_blktrans_dev = type { ptr, %struct.list_head, ptr, %struct.mutex, i32, i8, i32, i32, i32, %struct.kref, ptr, ptr, ptr, %struct.list_head, ptr, %struct.spinlock, ptr, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.sm_ftl = type { ptr, %struct.mutex, ptr, i32, i32, i32, i32, i32, i8, i8, i32, i32, i32, ptr, i32, i32, ptr, i32, i8, %struct.work_struct, %struct.timer_list, i32, i32, i32, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ftl_zone = type { i8, ptr, %struct.kfifo }
%struct.kfifo = type { %union.anon.75, [0 x i8] }
%union.anon.75 = type { %struct.__kfifo }
%struct.__kfifo = type { i32, i32, i32, i32, ptr }
%struct.hd_geometry = type { i8, i8, i16, i32 }
%struct.sm_oob = type { i32, i8, i8, [2 x i8], [3 x i8], [2 x i8], [3 x i8] }
%struct.mtd_info = type { i8, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, %struct.notifier_block, %struct.mtd_ecc_stats, i32, ptr, ptr, %struct.device, i32, %struct.mtd_debug_info, ptr, ptr, ptr, ptr, %struct.list_head, %union.anon.74 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.mtd_ecc_stats = type { i32, i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.mtd_debug_info = type { ptr, ptr, ptr }
%union.anon.74 = type { %struct.mtd_part, [160 x i8] }
%struct.mtd_part = type { %struct.list_head, i64, i64, i32 }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.sm_sysfs_attribute = type { %struct.device_attribute, ptr, i32 }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.mtd_oob_ops = type { i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.erase_info = type { i64, i64, i64 }

@__param_str_cache_timeout = internal constant [21 x i8] c"sm_ftl.cache_timeout\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@cache_timeout = internal global { i32, [28 x i8] } { i32 1000, [28 x i8] zeroinitializer }, align 32
@__param_cache_timeout = internal constant %struct.kernel_param { ptr @__param_str_cache_timeout, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.68 { ptr @cache_timeout } }, section "__param", align 4
@__UNIQUE_ID_cache_timeouttype238 = internal constant [34 x i8] c"sm_ftl.parmtype=cache_timeout:int\00", section ".modinfo", align 1
@__UNIQUE_ID_cache_timeout239 = internal constant [75 x i8] c"sm_ftl.parm=cache_timeout:Timeout (in ms) for cache flush (1000 ms default\00", section ".modinfo", align 1
@__param_str_debug = internal constant [13 x i8] c"sm_ftl.debug\00", align 1
@debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.68 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype240 = internal constant [26 x i8] c"sm_ftl.parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug241 = internal constant [36 x i8] c"sm_ftl.parm=debug:Debug level (0-2)\00", section ".modinfo", align 1
@cache_flush_workqueue = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@sm_ftl_ops = internal global { %struct.mtd_blktrans_ops, [48 x i8] } { %struct.mtd_blktrans_ops { ptr @.str, i32 0, i32 3, i32 512, i32 0, ptr @sm_read, ptr @sm_write, ptr null, ptr null, ptr @sm_getgeo, ptr @sm_flush, ptr null, ptr @sm_release, ptr @sm_add_mtd, ptr @sm_remove_dev, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr null }, [48 x i8] zeroinitializer }, align 32
@__initcall__kmod_sm_ftl__242_1294_sm_module_init6 = internal global ptr @sm_module_init, section ".initcall6.init", align 4
@__exitcall_sm_module_exit = internal global ptr @sm_module_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file243 = internal constant [31 x i8] c"sm_ftl.file=drivers/mtd/sm_ftl\00", section ".modinfo", align 1
@__UNIQUE_ID_license244 = internal constant [19 x i8] c"sm_ftl.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author245 = internal constant [55 x i8] c"sm_ftl.author=Maxim Levitsky <maximlevitsky@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description246 = internal constant [55 x i8] c"sm_ftl.description=Smartmedia/xD mtd translation layer\00", section ".modinfo", align 1
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"smblk\00", [26 x i8] zeroinitializer }, align 32
@sm_init_zone._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 761, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\017sm_ftl: initializing zone %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sm_init_zone\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"drivers/mtd/sm_ftl.c\00", [43 x i8] zeroinitializer }, align 32
@sm_init_zone._entry_ptr = internal global ptr @sm_init_zone._entry, section ".printk_index", align 4
@sm_init_zone._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.2, ptr @.str.3, i32 806, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\017sm_ftl: PH %04d <-> <marked bad>\0A\00", [60 x i8] zeroinitializer }, align 32
@sm_init_zone._entry_ptr.6 = internal global ptr @sm_init_zone._entry.4, section ".printk_index", align 4
@sm_init_zone._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 818, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\017sm_ftl: PH %04d <-> LBA %04d(bad)\0A\00", [59 x i8] zeroinitializer }, align 32
@sm_init_zone._entry_ptr.9 = internal global ptr @sm_init_zone._entry.7, section ".printk_index", align 4
@sm_init_zone._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 827, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\017sm_ftl: PH %04d <-> LBA %04d\0A\00", [32 x i8] zeroinitializer }, align 32
@sm_init_zone._entry_ptr.12 = internal global ptr @sm_init_zone._entry.10, section ".printk_index", align 4
@sm_init_zone._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.2, ptr @.str.3, i32 834, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"\014sm_ftl: collision of LBA %d between blocks %d and %d in zone %d\0A\00", [61 x i8] zeroinitializer }, align 32
@sm_init_zone._entry_ptr.15 = internal global ptr @sm_init_zone._entry.13, section ".printk_index", align 4
@sm_init_zone._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.2, ptr @.str.3, i32 851, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\014sm_ftl: both blocks are valid, erasing the later\0A\00", [44 x i8] zeroinitializer }, align 32
@sm_init_zone._entry_ptr.18 = internal global ptr @sm_init_zone._entry.16, section ".printk_index", align 4
@sm_init_zone._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.2, ptr @.str.3, i32 855, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\017sm_ftl: zone initialized\0A\00", [36 x i8] zeroinitializer }, align 32
@sm_init_zone._entry_ptr.21 = internal global ptr @sm_init_zone._entry.19, section ".printk_index", align 4
@sm_init_zone._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.2, ptr @.str.3, i32 862, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\014sm_ftl: no free blocks in zone %d\0A\00", [59 x i8] zeroinitializer }, align 32
@sm_init_zone._entry_ptr.24 = internal global ptr @sm_init_zone._entry.22, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@sm_block_erased.erased_pattern = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 -1, i32 -1, i32 -1, i32 -1], [16 x i8] zeroinitializer }, align 32
@sm_read_lba.erased_pattern = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 -1, i32 -1, i32 -1, i32 -1], [16 x i8] zeroinitializer }, align 32
@__const.sm_check_block.lbas = private unnamed_addr constant [4 x i32] [i32 -3, i32 0, i32 0, i32 0], align 4
@sm_erase_block._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.3, i32 480, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\014sm_ftl: attempted to erase the CIS!\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sm_erase_block\00", [17 x i8] zeroinitializer }, align 32
@sm_erase_block._entry_ptr = internal global ptr @sm_erase_block._entry, section ".printk_index", align 4
@sm_erase_block._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.26, ptr @.str.3, i32 486, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\014sm_ftl: erase of block %d in zone %d failed\0A\00", [49 x i8] zeroinitializer }, align 32
@sm_erase_block._entry_ptr.29 = internal global ptr @sm_erase_block._entry.27, section ".printk_index", align 4
@sm_mark_block_bad._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.3, i32 450, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\014sm_ftl: marking block %d of zone %d as bad\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sm_mark_block_bad\00", [46 x i8] zeroinitializer }, align 32
@sm_mark_block_bad._entry_ptr = internal global ptr @sm_mark_block_bad._entry, section ".printk_index", align 4
@sm_recheck_media._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.3, i32 743, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\014sm_ftl: media unstable, not allowing writes\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sm_recheck_media\00", [47 x i8] zeroinitializer }, align 32
@sm_recheck_media._entry_ptr = internal global ptr @sm_recheck_media._entry, section ".printk_index", align 4
@cis_signature = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"\01\03\D9\01\FF\18\02\DF\01 ", [22 x i8] zeroinitializer }, align 32
@sm_write_sector._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.3, i32 333, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\017sm_ftl: attempted to write the CIS!\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sm_write_sector\00", [16 x i8] zeroinitializer }, align 32
@sm_write_sector._entry_ptr = internal global ptr @sm_write_sector._entry, section ".printk_index", align 4
@sm_write_sector._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.35, ptr @.str.3, i32 353, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\017sm_ftl: write to block %d at zone %d, failed with error %d\0A\00", [34 x i8] zeroinitializer }, align 32
@sm_write_sector._entry_ptr.38 = internal global ptr @sm_write_sector._entry.36, section ".printk_index", align 4
@sm_read_sector._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.3, i32 287, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\017sm_ftl: read of block %d at zone %d, failed due to error (%d)\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sm_read_sector\00", [17 x i8] zeroinitializer }, align 32
@sm_read_sector._entry_ptr = internal global ptr @sm_read_sector._entry, section ".printk_index", align 4
@sm_read_sector._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.40, ptr @.str.3, i32 305, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"\017sm_ftl: read of block %d at zone %d, failed because it is marked as bad\0A\00", [53 x i8] zeroinitializer }, align 32
@sm_read_sector._entry_ptr.43 = internal global ptr @sm_read_sector._entry.41, section ".printk_index", align 4
@sm_read_sector._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.40, ptr @.str.3, i32 314, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\017sm_ftl: read of block %d at zone %d, failed due to ECC error\0A\00", [32 x i8] zeroinitializer }, align 32
@sm_read_sector._entry_ptr.46 = internal global ptr @sm_read_sector._entry.44, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@sm_cache_flush._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str.3, i32 972, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\017sm_ftl: no free sectors for write!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sm_cache_flush\00", [17 x i8] zeroinitializer }, align 32
@sm_cache_flush._entry_ptr = internal global ptr @sm_cache_flush._entry, section ".printk_index", align 4
@sm_write_block._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.50, ptr @.str.3, i32 394, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [91 x i8], [37 x i8] } { [91 x i8] c"\014sm_ftl: sector %d of block at LBA %d of zone %d couldn't be read, marking it as invalid\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sm_write_block\00", [17 x i8] zeroinitializer }, align 32
@sm_write_block._entry_ptr = internal global ptr @sm_write_block._entry, section ".printk_index", align 4
@sm_add_mtd.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.51 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&ftl->mutex\00", [20 x i8] zeroinitializer }, align 32
@sm_add_mtd.__key.52 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.53 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"(&ftl->timer)\00", [18 x i8] zeroinitializer }, align 32
@sm_add_mtd.__key.54 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.55 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"(work_completion)(&ftl->flush_work)\00", [60 x i8] zeroinitializer }, align 32
@sm_add_mtd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.57, ptr @.str.3, i32 1149, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\017sm_ftl: found unsupported mtd device, aborting\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sm_add_mtd\00", [21 x i8] zeroinitializer }, align 32
@sm_add_mtd._entry_ptr = internal global ptr @sm_add_mtd._entry, section ".printk_index", align 4
@sm_add_mtd._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.57, ptr @.str.3, i32 1189, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\017sm_ftl: CIS not found on mtd device, aborting\0A\00", [47 x i8] zeroinitializer }, align 32
@sm_add_mtd._entry_ptr.60 = internal global ptr @sm_add_mtd._entry.58, section ".printk_index", align 4
@sm_add_mtd._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.57, ptr @.str.3, i32 1199, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\014sm_ftl: Found %d MiB xD/SmartMedia FTL on mtd%d\0A\00", [45 x i8] zeroinitializer }, align 32
@sm_add_mtd._entry_ptr.63 = internal global ptr @sm_add_mtd._entry.61, section ".printk_index", align 4
@sm_add_mtd._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.57, ptr @.str.3, i32 1201, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\017sm_ftl: FTL layout:\0A\00", [41 x i8] zeroinitializer }, align 32
@sm_add_mtd._entry_ptr.66 = internal global ptr @sm_add_mtd._entry.64, section ".printk_index", align 4
@sm_add_mtd._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.57, ptr @.str.3, i32 1204, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\017sm_ftl: %d zone(s), each consists of %d blocks (+%d spares)\0A\00", [33 x i8] zeroinitializer }, align 32
@sm_add_mtd._entry_ptr.69 = internal global ptr @sm_add_mtd._entry.67, section ".printk_index", align 4
@sm_add_mtd._entry.70 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.57, ptr @.str.3, i32 1206, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\017sm_ftl: each block consists of %d bytes\0A\00", [53 x i8] zeroinitializer }, align 32
@sm_add_mtd._entry_ptr.72 = internal global ptr @sm_add_mtd._entry.70, section ".printk_index", align 4
@sm_add_mtd._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.57, ptr @.str.3, i32 1211, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\017sm_ftl: error in mtdblktrans layer\0A\00", [58 x i8] zeroinitializer }, align 32
@sm_add_mtd._entry_ptr.75 = internal global ptr @sm_add_mtd._entry.73, section ".printk_index", align 4
@chs_table = internal constant { [13 x %struct.chs_entry], [56 x i8] } { [13 x %struct.chs_entry] [%struct.chs_entry { i32 1, i16 125, i8 4, i8 4 }, %struct.chs_entry { i32 2, i16 125, i8 4, i8 8 }, %struct.chs_entry { i32 4, i16 250, i8 4, i8 8 }, %struct.chs_entry { i32 8, i16 250, i8 4, i8 16 }, %struct.chs_entry { i32 16, i16 500, i8 4, i8 16 }, %struct.chs_entry { i32 32, i16 500, i8 8, i8 16 }, %struct.chs_entry { i32 64, i16 500, i8 8, i8 32 }, %struct.chs_entry { i32 128, i16 500, i8 16, i8 32 }, %struct.chs_entry { i32 256, i16 1000, i8 16, i8 32 }, %struct.chs_entry { i32 512, i16 1015, i8 32, i8 63 }, %struct.chs_entry { i32 1024, i16 985, i8 33, i8 63 }, %struct.chs_entry { i32 2048, i16 985, i8 33, i8 63 }, %struct.chs_entry zeroinitializer], [56 x i8] zeroinitializer }, align 32
@sm_get_media_info._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.77, ptr @.str.3, i32 652, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\014sm_ftl: media has unknown size : %dMiB\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sm_get_media_info\00", [46 x i8] zeroinitializer }, align 32
@sm_get_media_info._entry_ptr = internal global ptr @sm_get_media_info._entry, section ".printk_index", align 4
@sm_find_cis._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.79, ptr @.str.3, i32 731, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\017sm_ftl: CIS block found at offset %x\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sm_find_cis\00", [20 x i8] zeroinitializer }, align 32
@sm_find_cis._entry_ptr = internal global ptr @sm_find_cis._entry, section ".printk_index", align 4
@sm_create_sysfs_attributes.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.80 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"vendor\00", [25 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"smflush\00", [24 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 4, i64 8]
@__sancov_gen_cov_switch_values.83 = internal global [15 x i64] [i64 13, i64 32, i64 0, i64 1, i64 2, i64 4, i64 8, i64 16, i64 32, i64 64, i64 128, i64 256, i64 512, i64 1024, i64 2048]
@__sancov_gen_cov_switch_values.84 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967179, i64 4294967222]
@___asan_gen_.85 = private unnamed_addr constant [14 x i8] c"cache_timeout\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 24, i32 12 }
@___asan_gen_.88 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 29, i32 12 }
@___asan_gen_.91 = private unnamed_addr constant [22 x i8] c"cache_flush_workqueue\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 22, i32 33 }
@___asan_gen_.94 = private unnamed_addr constant [11 x i8] c"sm_ftl_ops\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 1254, i32 32 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 1255, i32 11 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 761, i32 2 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 806, i32 4 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 818, i32 4 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 827, i32 4 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 832, i32 3 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 851, i32 3 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 855, i32 2 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 862, i32 3 }
@___asan_gen_.155 = private unnamed_addr constant [36 x i8] c"../drivers/mtd/nand/raw/sm_common.h\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 51, i32 24 }
@___asan_gen_.157 = private unnamed_addr constant [15 x i8] c"erased_pattern\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 150, i32 24 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 480, i32 3 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 485, i32 3 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 450, i32 2 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 743, i32 4 }
@___asan_gen_.193 = private unnamed_addr constant [14 x i8] c"cis_signature\00", align 1
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 558, i32 22 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 333, i32 3 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 352, i32 3 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 286, i32 3 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 304, i32 3 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 313, i32 3 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 972, i32 3 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 392, i32 4 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 1143, i32 2 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 1144, i32 2 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 1145, i32 2 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 1149, i32 3 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 1189, i32 3 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 1198, i32 2 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 1201, i32 2 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 1202, i32 2 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 1205, i32 2 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 1211, i32 3 }
@___asan_gen_.313 = private unnamed_addr constant [10 x i8] c"chs_table\00", align 1
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 541, i32 31 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 652, i32 2 }
@___asan_gen_.325 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 729, i32 3 }
@___asan_gen_.334 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 72, i32 2 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 76, i32 41 }
@___asan_gen_.343 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.344 = private constant [24 x i8] c"../drivers/mtd/sm_ftl.c\00", align 1
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 1277, i32 26 }
@llvm.compiler.used = appending global [128 x ptr] [ptr @__UNIQUE_ID_author245, ptr @__UNIQUE_ID_cache_timeout239, ptr @__UNIQUE_ID_cache_timeouttype238, ptr @__UNIQUE_ID_debug241, ptr @__UNIQUE_ID_debugtype240, ptr @__UNIQUE_ID_description246, ptr @__UNIQUE_ID_file243, ptr @__UNIQUE_ID_license244, ptr @__exitcall_sm_module_exit, ptr @__initcall__kmod_sm_ftl__242_1294_sm_module_init6, ptr @__param_cache_timeout, ptr @__param_debug, ptr @sm_add_mtd._entry, ptr @sm_add_mtd._entry.58, ptr @sm_add_mtd._entry.61, ptr @sm_add_mtd._entry.64, ptr @sm_add_mtd._entry.67, ptr @sm_add_mtd._entry.70, ptr @sm_add_mtd._entry.73, ptr @sm_add_mtd._entry_ptr, ptr @sm_add_mtd._entry_ptr.60, ptr @sm_add_mtd._entry_ptr.63, ptr @sm_add_mtd._entry_ptr.66, ptr @sm_add_mtd._entry_ptr.69, ptr @sm_add_mtd._entry_ptr.72, ptr @sm_add_mtd._entry_ptr.75, ptr @sm_cache_flush._entry, ptr @sm_cache_flush._entry_ptr, ptr @sm_erase_block._entry, ptr @sm_erase_block._entry.27, ptr @sm_erase_block._entry_ptr, ptr @sm_erase_block._entry_ptr.29, ptr @sm_find_cis._entry, ptr @sm_find_cis._entry_ptr, ptr @sm_get_media_info._entry, ptr @sm_get_media_info._entry_ptr, ptr @sm_init_zone._entry, ptr @sm_init_zone._entry.10, ptr @sm_init_zone._entry.13, ptr @sm_init_zone._entry.16, ptr @sm_init_zone._entry.19, ptr @sm_init_zone._entry.22, ptr @sm_init_zone._entry.4, ptr @sm_init_zone._entry.7, ptr @sm_init_zone._entry_ptr, ptr @sm_init_zone._entry_ptr.12, ptr @sm_init_zone._entry_ptr.15, ptr @sm_init_zone._entry_ptr.18, ptr @sm_init_zone._entry_ptr.21, ptr @sm_init_zone._entry_ptr.24, ptr @sm_init_zone._entry_ptr.6, ptr @sm_init_zone._entry_ptr.9, ptr @sm_mark_block_bad._entry, ptr @sm_mark_block_bad._entry_ptr, ptr @sm_module_exit, ptr @sm_read_sector._entry, ptr @sm_read_sector._entry.41, ptr @sm_read_sector._entry.44, ptr @sm_read_sector._entry_ptr, ptr @sm_read_sector._entry_ptr.43, ptr @sm_read_sector._entry_ptr.46, ptr @sm_recheck_media._entry, ptr @sm_recheck_media._entry_ptr, ptr @sm_write_block._entry, ptr @sm_write_block._entry_ptr, ptr @sm_write_sector._entry, ptr @sm_write_sector._entry.36, ptr @sm_write_sector._entry_ptr, ptr @sm_write_sector._entry_ptr.38, ptr @cache_timeout, ptr @debug, ptr @cache_flush_workqueue, ptr @sm_ftl_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @.str.8, ptr @.str.11, ptr @.str.14, ptr @.str.17, ptr @.str.20, ptr @.str.23, ptr @sm_block_erased.erased_pattern, ptr @sm_read_lba.erased_pattern, ptr @.str.25, ptr @.str.26, ptr @.str.28, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @cis_signature, ptr @.str.34, ptr @.str.35, ptr @.str.37, ptr @.str.39, ptr @.str.40, ptr @.str.42, ptr @.str.45, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @sm_add_mtd.__key, ptr @.str.51, ptr @sm_add_mtd.__key.52, ptr @.str.53, ptr @sm_add_mtd.__key.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.59, ptr @.str.62, ptr @.str.65, ptr @.str.68, ptr @.str.71, ptr @.str.74, ptr @chs_table, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @sm_create_sysfs_attributes.__key, ptr @.str.80, ptr @.str.81, ptr @.str.82], section "llvm.metadata"
@0 = internal global [87 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cache_timeout to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cache_flush_workqueue to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm_ftl_ops to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm_init_zone._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm_init_zone._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm_init_zone._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm_init_zone._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm_init_zone._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm_init_zone._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm_init_zone._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm_init_zone._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm_block_erased.erased_pattern to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm_read_lba.erased_pattern to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm_erase_block._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm_erase_block._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm_mark_block_bad._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm_recheck_media._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cis_signature to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm_write_sector._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm_write_sector._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm_read_sector._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm_read_sector._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm_read_sector._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm_cache_flush._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm_write_block._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 91, i32 128, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm_add_mtd.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm_add_mtd.__key.52 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm_add_mtd.__key.54 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm_add_mtd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm_add_mtd._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm_add_mtd._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm_add_mtd._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm_add_mtd._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm_add_mtd._entry.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm_add_mtd._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @chs_table to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm_get_media_info._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm_find_cis._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm_create_sysfs_attributes.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sm_module_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %0 = load ptr, ptr @cache_flush_workqueue, align 4
  tail call void @destroy_workqueue(ptr noundef %0) #13
  %call = tail call i32 @deregister_mtd_blktrans(ptr noundef nonnull @sm_ftl_ops) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @deregister_mtd_blktrans(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sm_module_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.81, i32 noundef 262158, i32 noundef 1, ptr noundef nonnull @.str.82) #13
  store ptr %call, ptr @cache_flush_workqueue, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @register_mtd_blktrans(ptr noundef nonnull @sm_ftl_ops) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %0 = load ptr, ptr @cache_flush_workqueue, align 4
  tail call void @destroy_workqueue(ptr noundef %0) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %call1, %if.then3 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sm_read(ptr nocapture noundef readonly %dev, i32 noundef %sect_no, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.mtd_blktrans_dev, ptr %dev, i32 0, i32 16
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %block_size.i = getelementptr inbounds %struct.sm_ftl, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %block_size.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %block_size.i, align 4
  %shl = shl i32 %sect_no, 9
  %.frozen = freeze i32 %3
  %div172.i = udiv i32 %shl, %.frozen
  %4 = mul i32 %div172.i, %.frozen
  %rem170.i.decomposed = sub i32 %shl, %4
  %max_lba.i = getelementptr inbounds %struct.sm_ftl, ptr %1, i32 0, i32 6
  %5 = ptrtoint ptr %max_lba.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %max_lba.i, align 4
  %.frozen53 = freeze i32 %6
  %div393.i = udiv i32 %div172.i, %.frozen53
  %7 = mul i32 %div393.i, %.frozen53
  %rem391.i.decomposed = sub i32 %div172.i, %7
  %conv394.i = zext i32 %div393.i to i64
  %zone_count.i = getelementptr inbounds %struct.sm_ftl, ptr %1, i32 0, i32 5
  %8 = ptrtoint ptr %zone_count.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %zone_count.i, align 4
  %conv401.i = sext i32 %9 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %conv394.i, i64 %conv401.i)
  %cmp402.not.i = icmp ult i64 %conv394.i, %conv401.i
  %spec.select.i = select i1 %cmp402.not.i, i32 %div393.i, i32 -1
  %mutex = getelementptr inbounds %struct.sm_ftl, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #13
  %call = tail call fastcc ptr @sm_get_zone(ptr noundef %1, i32 noundef %spec.select.i)
  %cmp.i37 = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i37, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %10 = ptrtoint ptr %call to i32
  br label %unlock

if.end:                                           ; preds = %entry
  %cache_zone = getelementptr inbounds %struct.sm_ftl, ptr %1, i32 0, i32 15
  %11 = ptrtoint ptr %cache_zone to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cache_zone, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %spec.select.i)
  %cmp = icmp eq i32 %12, %spec.select.i
  br i1 %cmp, label %land.lhs.true, label %if.end.if.end10_crit_edge

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end10

land.lhs.true:                                    ; preds = %if.end
  %cache_block = getelementptr inbounds %struct.sm_ftl, ptr %1, i32 0, i32 14
  %13 = ptrtoint ptr %cache_block to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cache_block, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %rem391.i.decomposed)
  %cmp4 = icmp eq i32 %14, %rem391.i.decomposed
  br i1 %cmp4, label %if.then6, label %land.lhs.true.if.end10_crit_edge

land.lhs.true.if.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end10

if.then6:                                         ; preds = %land.lhs.true
  %div.i38 = sdiv i32 %rem170.i.decomposed, 512
  %cache_data_invalid_bitmap.i = getelementptr inbounds %struct.sm_ftl, ptr %1, i32 0, i32 17
  %div3.i.i = lshr i32 %div.i38, 5
  %arrayidx.i.i = getelementptr i32, ptr %cache_data_invalid_bitmap.i, i32 %div3.i.i
  %15 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %arrayidx.i.i, align 4
  %and.i.i39 = and i32 %div.i38, 31
  %17 = shl nuw i32 1, %and.i.i39
  %18 = and i32 %16, %17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not.i40 = icmp eq i32 %18, 0
  br i1 %tobool.not.i40, label %sm_cache_get.exit.thread, label %if.then6.if.end10_crit_edge

if.then6.if.end10_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end10

sm_cache_get.exit.thread:                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #15
  %cache_data.i = getelementptr inbounds %struct.sm_ftl, ptr %1, i32 0, i32 16
  %19 = ptrtoint ptr %cache_data.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %cache_data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %20, i32 %rem170.i.decomposed
  %21 = call ptr @memcpy(ptr %buf, ptr %add.ptr.i, i32 512)
  br label %unlock

if.end10:                                         ; preds = %if.then6.if.end10_crit_edge, %land.lhs.true.if.end10_crit_edge, %if.end.if.end10_crit_edge
  %tobool20.not = phi i1 [ true, %land.lhs.true.if.end10_crit_edge ], [ true, %if.end.if.end10_crit_edge ], [ false, %if.then6.if.end10_crit_edge ]
  %lba_to_phys_table = getelementptr inbounds %struct.ftl_zone, ptr %call, i32 0, i32 1
  %22 = ptrtoint ptr %lba_to_phys_table to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %lba_to_phys_table, align 4
  %arrayidx = getelementptr i16, ptr %23, i32 %rem391.i.decomposed
  %24 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %arrayidx, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %25)
  %cmp12 = icmp eq i16 %25, -1
  br i1 %cmp12, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  %26 = call ptr @memset(ptr %buf, i32 255, i32 512)
  br label %unlock

if.end15:                                         ; preds = %if.end10
  %conv11 = sext i16 %25 to i32
  %call16 = tail call fastcc i32 @sm_read_sector(ptr noundef %1, i32 noundef %spec.select.i, i32 noundef %conv11, i32 noundef %rem170.i.decomposed, ptr noundef %buf, ptr noundef null)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp ne i32 %call16, 0
  %brmerge = or i1 %tobool20.not, %tobool17.not
  %.mux = select i1 %tobool17.not, i32 -5, i32 0
  br i1 %brmerge, label %if.end15.unlock_crit_edge, label %if.then21

if.end15.unlock_crit_edge:                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #15
  br label %unlock

if.then21:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #15
  %cache_data.i41 = getelementptr inbounds %struct.sm_ftl, ptr %1, i32 0, i32 16
  %27 = ptrtoint ptr %cache_data.i41 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %cache_data.i41, align 4
  %add.ptr.i42 = getelementptr i8, ptr %28, i32 %rem170.i.decomposed
  %29 = call ptr @memcpy(ptr %add.ptr.i42, ptr %buf, i32 512)
  %div.i43 = sdiv i32 %rem170.i.decomposed, 512
  %cache_data_invalid_bitmap.i44 = getelementptr inbounds %struct.sm_ftl, ptr %1, i32 0, i32 17
  tail call void @_clear_bit(i32 noundef %div.i43, ptr noundef %cache_data_invalid_bitmap.i44) #13
  %cache_clean.i = getelementptr inbounds %struct.sm_ftl, ptr %1, i32 0, i32 18
  %30 = ptrtoint ptr %cache_clean.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %cache_clean.i, align 4
  br label %unlock

unlock:                                           ; preds = %if.then21, %if.end15.unlock_crit_edge, %if.then14, %sm_cache_get.exit.thread, %if.then
  %error.0 = phi i32 [ %10, %if.then ], [ 0, %if.then14 ], [ 0, %if.then21 ], [ %.mux, %if.end15.unlock_crit_edge ], [ 0, %sm_cache_get.exit.thread ]
  tail call void @mutex_unlock(ptr noundef %mutex) #13
  ret i32 %error.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sm_write(ptr nocapture noundef readonly %dev, i32 noundef %sec_no, ptr nocapture noundef readonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.mtd_blktrans_dev, ptr %dev, i32 0, i32 16
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %readonly = getelementptr inbounds %struct.sm_ftl, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %readonly to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %readonly, align 4, !range !190
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.else162.i, label %do.body3, !prof !191

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/mtd/sm_ftl.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1066, 0\0A.popsection", ""() #13, !srcloc !192
  unreachable

if.else162.i:                                     ; preds = %entry
  %block_size.i = getelementptr inbounds %struct.sm_ftl, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %block_size.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %block_size.i, align 4
  %shl = shl i32 %sec_no, 9
  %.frozen = freeze i32 %5
  %div172.i = udiv i32 %shl, %.frozen
  %6 = mul i32 %div172.i, %.frozen
  %rem170.i.decomposed = sub i32 %shl, %6
  %max_lba.i = getelementptr inbounds %struct.sm_ftl, ptr %1, i32 0, i32 6
  %7 = ptrtoint ptr %max_lba.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %max_lba.i, align 4
  %.frozen51 = freeze i32 %8
  %div393.i = udiv i32 %div172.i, %.frozen51
  %9 = mul i32 %div393.i, %.frozen51
  %rem391.i.decomposed = sub i32 %div172.i, %9
  %conv394.i = zext i32 %div393.i to i64
  %zone_count.i = getelementptr inbounds %struct.sm_ftl, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %zone_count.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %zone_count.i, align 4
  %conv401.i = sext i32 %11 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %conv394.i, i64 %conv401.i)
  %cmp402.not.i = icmp ult i64 %conv394.i, %conv401.i
  %spec.select.i = select i1 %cmp402.not.i, i32 %div393.i, i32 -1
  %timer = getelementptr inbounds %struct.sm_ftl, ptr %1, i32 0, i32 20
  %call = tail call i32 @del_timer(ptr noundef %timer) #13
  %mutex = getelementptr inbounds %struct.sm_ftl, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #13
  %call9 = tail call fastcc ptr @sm_get_zone(ptr noundef %1, i32 noundef %spec.select.i)
  %cmp.i45 = icmp ugt ptr %call9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i45, label %if.then11, label %if.end13

if.then11:                                        ; preds = %if.else162.i
  call void @__sanitizer_cov_trace_pc() #15
  %12 = ptrtoint ptr %call9 to i32
  br label %unlock

if.end13:                                         ; preds = %if.else162.i
  %cache_block = getelementptr inbounds %struct.sm_ftl, ptr %1, i32 0, i32 14
  %13 = ptrtoint ptr %cache_block to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cache_block, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %rem391.i.decomposed)
  %cmp.not = icmp eq i32 %14, %rem391.i.decomposed
  br i1 %cmp.not, label %lor.lhs.false, label %if.end13.if.then17_crit_edge

if.end13.if.then17_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then17

lor.lhs.false:                                    ; preds = %if.end13
  %cache_zone = getelementptr inbounds %struct.sm_ftl, ptr %1, i32 0, i32 15
  %15 = ptrtoint ptr %cache_zone to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %cache_zone, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %spec.select.i)
  %cmp15.not = icmp eq i32 %16, %spec.select.i
  br i1 %cmp15.not, label %lor.lhs.false.if.end24_crit_edge, label %lor.lhs.false.if.then17_crit_edge

lor.lhs.false.if.then17_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then17

lor.lhs.false.if.end24_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end24

if.then17:                                        ; preds = %lor.lhs.false.if.then17_crit_edge, %if.end13.if.then17_crit_edge
  %call18 = tail call fastcc i32 @sm_cache_flush(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end21, label %if.then17.unlock_crit_edge

if.then17.unlock_crit_edge:                       ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #15
  br label %unlock

if.end21:                                         ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #15
  %17 = ptrtoint ptr %cache_block to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %rem391.i.decomposed, ptr %cache_block, align 4
  %cache_zone23 = getelementptr inbounds %struct.sm_ftl, ptr %1, i32 0, i32 15
  %18 = ptrtoint ptr %cache_zone23 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %spec.select.i, ptr %cache_zone23, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.end21, %lor.lhs.false.if.end24_crit_edge
  %cache_data.i = getelementptr inbounds %struct.sm_ftl, ptr %1, i32 0, i32 16
  %19 = ptrtoint ptr %cache_data.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %cache_data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %20, i32 %rem170.i.decomposed
  %21 = call ptr @memcpy(ptr %add.ptr.i, ptr %buf, i32 512)
  %div.i46 = sdiv i32 %rem170.i.decomposed, 512
  %cache_data_invalid_bitmap.i = getelementptr inbounds %struct.sm_ftl, ptr %1, i32 0, i32 17
  tail call void @_clear_bit(i32 noundef %div.i46, ptr noundef %cache_data_invalid_bitmap.i) #13
  %cache_clean.i = getelementptr inbounds %struct.sm_ftl, ptr %1, i32 0, i32 18
  %22 = ptrtoint ptr %cache_clean.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %cache_clean.i, align 4
  br label %unlock

unlock:                                           ; preds = %if.end24, %if.then17.unlock_crit_edge, %if.then11
  %error.1 = phi i32 [ %12, %if.then11 ], [ %call18, %if.then17.unlock_crit_edge ], [ 0, %if.end24 ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %23 = load volatile i32, ptr @jiffies, align 128
  %24 = load i32, ptr @cache_timeout, align 4
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %24) #13
  %add = add i32 %call2.i, %23
  %call27 = tail call i32 @mod_timer(ptr noundef %timer, i32 noundef %add) #13
  tail call void @mutex_unlock(ptr noundef %mutex) #13
  ret i32 %error.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sm_getgeo(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %geo) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.mtd_blktrans_dev, ptr %dev, i32 0, i32 16
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %heads = getelementptr inbounds %struct.sm_ftl, ptr %1, i32 0, i32 21
  %2 = ptrtoint ptr %heads to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %heads, align 4
  %conv = trunc i32 %3 to i8
  %4 = ptrtoint ptr %geo to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv, ptr %geo, align 4
  %sectors = getelementptr inbounds %struct.sm_ftl, ptr %1, i32 0, i32 22
  %5 = ptrtoint ptr %sectors to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %sectors, align 4
  %conv2 = trunc i32 %6 to i8
  %sectors3 = getelementptr inbounds %struct.hd_geometry, ptr %geo, i32 0, i32 1
  %7 = ptrtoint ptr %sectors3 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv2, ptr %sectors3, align 1
  %cylinders = getelementptr inbounds %struct.sm_ftl, ptr %1, i32 0, i32 23
  %8 = ptrtoint ptr %cylinders to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cylinders, align 4
  %conv4 = trunc i32 %9 to i16
  %cylinders5 = getelementptr inbounds %struct.hd_geometry, ptr %geo, i32 0, i32 2
  %10 = ptrtoint ptr %cylinders5 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv4, ptr %cylinders5, align 2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sm_flush(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.mtd_blktrans_dev, ptr %dev, i32 0, i32 16
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %mutex = getelementptr inbounds %struct.sm_ftl, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #13
  %call = tail call fastcc i32 @sm_cache_flush(ptr noundef %1)
  tail call void @mutex_unlock(ptr noundef %mutex) #13
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sm_release(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.mtd_blktrans_dev, ptr %dev, i32 0, i32 16
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %mutex = getelementptr inbounds %struct.sm_ftl, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #13
  %timer = getelementptr inbounds %struct.sm_ftl, ptr %1, i32 0, i32 20
  %call = tail call i32 @del_timer_sync(ptr noundef %timer) #13
  %flush_work = getelementptr inbounds %struct.sm_ftl, ptr %1, i32 0, i32 19
  %call1 = tail call zeroext i1 @cancel_work_sync(ptr noundef %flush_work) #13
  %call2 = tail call fastcc i32 @sm_cache_flush(ptr noundef %1)
  tail call void @mutex_unlock(ptr noundef %mutex) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sm_add_mtd(ptr noundef %tr, ptr noundef %mtd) #2 align 64 {
entry:
  %oob.i = alloca %struct.sm_oob, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 268) #16
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.body:                                          ; preds = %entry
  %mutex = getelementptr inbounds %struct.sm_ftl, ptr %call7.i.i, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %mutex, ptr noundef nonnull @.str.51, ptr noundef nonnull @sm_add_mtd.__key) #13
  %timer = getelementptr inbounds %struct.sm_ftl, ptr %call7.i.i, i32 0, i32 20
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @sm_cache_flush_timer, i32 noundef 0, ptr noundef nonnull @.str.53, ptr noundef nonnull @sm_add_mtd.__key.52) #13
  %flush_work = getelementptr inbounds %struct.sm_ftl, ptr %call7.i.i, i32 0, i32 19
  tail call void @__init_work(ptr noundef %flush_work, i32 noundef 0) #13
  %1 = ptrtoint ptr %flush_work to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -64, ptr %flush_work, align 8
  %lockdep_map = getelementptr inbounds %struct.sm_ftl, ptr %call7.i.i, i32 0, i32 19, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.55, ptr noundef nonnull @sm_add_mtd.__key.54, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #13
  %entry8 = getelementptr inbounds %struct.sm_ftl, ptr %call7.i.i, i32 0, i32 19, i32 1
  %2 = ptrtoint ptr %entry8 to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %entry8, ptr %entry8, align 4
  %prev.i = getelementptr inbounds %struct.sm_ftl, ptr %call7.i.i, i32 0, i32 19, i32 1, i32 1
  %3 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %entry8, ptr %prev.i, align 8
  %func = getelementptr inbounds %struct.sm_ftl, ptr %call7.i.i, i32 0, i32 19, i32 2
  %4 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @sm_cache_flush_work, ptr %func, align 4
  %size.i = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 2
  %5 = ptrtoint ptr %size.i to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %size.i, align 8
  %div128.i = lshr i64 %6, 20
  %conv.i = trunc i64 %div128.i to i32
  %7 = ptrtoint ptr %mtd to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %mtd, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %8)
  %cmp.i = icmp eq i8 %8, 2
  %readonly.i = getelementptr inbounds %struct.sm_ftl, ptr %call7.i.i, i32 0, i32 8
  %frombool.i = zext i1 %cmp.i to i8
  %9 = ptrtoint ptr %readonly.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %frombool.i, ptr %readonly.i, align 8
  %zone_count.i = getelementptr inbounds %struct.sm_ftl, ptr %call7.i.i, i32 0, i32 5
  %10 = ptrtoint ptr %zone_count.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %zone_count.i, align 4
  %smallpagenand.i = getelementptr inbounds %struct.sm_ftl, ptr %call7.i.i, i32 0, i32 7
  %11 = ptrtoint ptr %smallpagenand.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %smallpagenand.i, align 4
  %12 = zext i32 %conv.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values)
  switch i32 %conv.i, label %sw.epilog.i [
    i32 1, label %sw.bb.i
    i32 2, label %sw.bb4.i
    i32 4, label %sw.bb17.i
    i32 8, label %sw.bb21.i
  ]

sw.bb.i:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  %zone_size.i = getelementptr inbounds %struct.sm_ftl, ptr %call7.i.i, i32 0, i32 4
  %13 = ptrtoint ptr %zone_size.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 256, ptr %zone_size.i, align 8
  %max_lba.i = getelementptr inbounds %struct.sm_ftl, ptr %call7.i.i, i32 0, i32 6
  %14 = ptrtoint ptr %max_lba.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 250, ptr %max_lba.i, align 8
  %block_size.i = getelementptr inbounds %struct.sm_ftl, ptr %call7.i.i, i32 0, i32 3
  %15 = ptrtoint ptr %block_size.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 4096, ptr %block_size.i, align 4
  %16 = ptrtoint ptr %smallpagenand.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %smallpagenand.i, align 4
  br label %if.end33.i

sw.bb4.i:                                         ; preds = %do.body
  %writesize.i = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 4
  %17 = ptrtoint ptr %writesize.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %writesize.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %18)
  %cmp5.i = icmp eq i32 %18, 256
  br i1 %cmp5.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %sw.bb4.i
  call void @__sanitizer_cov_trace_pc() #15
  %zone_size7.i = getelementptr inbounds %struct.sm_ftl, ptr %call7.i.i, i32 0, i32 4
  %19 = ptrtoint ptr %zone_size7.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 512, ptr %zone_size7.i, align 8
  %max_lba8.i = getelementptr inbounds %struct.sm_ftl, ptr %call7.i.i, i32 0, i32 6
  %20 = ptrtoint ptr %max_lba8.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 500, ptr %max_lba8.i, align 8
  %block_size9.i = getelementptr inbounds %struct.sm_ftl, ptr %call7.i.i, i32 0, i32 3
  %21 = ptrtoint ptr %block_size9.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 4096, ptr %block_size9.i, align 4
  %22 = ptrtoint ptr %smallpagenand.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 1, ptr %smallpagenand.i, align 4
  br label %if.end33.i

if.else.i:                                        ; preds = %sw.bb4.i
  br i1 %cmp.i, label %if.end.i, label %if.else.i.if.then14_crit_edge

if.else.i.if.then14_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then14

if.end.i:                                         ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  %zone_size13.i = getelementptr inbounds %struct.sm_ftl, ptr %call7.i.i, i32 0, i32 4
  %23 = ptrtoint ptr %zone_size13.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 256, ptr %zone_size13.i, align 8
  %max_lba14.i = getelementptr inbounds %struct.sm_ftl, ptr %call7.i.i, i32 0, i32 6
  %24 = ptrtoint ptr %max_lba14.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 250, ptr %max_lba14.i, align 8
  %block_size15.i = getelementptr inbounds %struct.sm_ftl, ptr %call7.i.i, i32 0, i32 3
  %25 = ptrtoint ptr %block_size15.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 8192, ptr %block_size15.i, align 4
  br label %if.end33.i

sw.bb17.i:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  %zone_size18.i = getelementptr inbounds %struct.sm_ftl, ptr %call7.i.i, i32 0, i32 4
  %26 = ptrtoint ptr %zone_size18.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 512, ptr %zone_size18.i, align 8
  %max_lba19.i = getelementptr inbounds %struct.sm_ftl, ptr %call7.i.i, i32 0, i32 6
  %27 = ptrtoint ptr %max_lba19.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 500, ptr %max_lba19.i, align 8
  %block_size20.i = getelementptr inbounds %struct.sm_ftl, ptr %call7.i.i, i32 0, i32 3
  %28 = ptrtoint ptr %block_size20.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 8192, ptr %block_size20.i, align 4
  br label %if.end33.i

sw.bb21.i:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  %zone_size22.i = getelementptr inbounds %struct.sm_ftl, ptr %call7.i.i, i32 0, i32 4
  %29 = ptrtoint ptr %zone_size22.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 1024, ptr %zone_size22.i, align 8
  %max_lba23.i = getelementptr inbounds %struct.sm_ftl, ptr %call7.i.i, i32 0, i32 6
  %30 = ptrtoint ptr %max_lba23.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 1000, ptr %max_lba23.i, align 8
  %block_size24.i = getelementptr inbounds %struct.sm_ftl, ptr %call7.i.i, i32 0, i32 3
  %31 = ptrtoint ptr %block_size24.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 8192, ptr %block_size24.i, align 4
  br label %if.end33.i

sw.epilog.i:                                      ; preds = %do.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %conv.i)
  %cmp25.i = icmp sgt i32 %conv.i, 15
  br i1 %cmp25.i, label %if.then27.i, label %sw.epilog.i.if.end33.i_crit_edge

sw.epilog.i.if.end33.i_crit_edge:                 ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end33.i

if.then27.i:                                      ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #15
  %div28131132.i = lshr i32 %conv.i, 4
  %32 = ptrtoint ptr %zone_count.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %div28131132.i, ptr %zone_count.i, align 4
  %zone_size30.i = getelementptr inbounds %struct.sm_ftl, ptr %call7.i.i, i32 0, i32 4
  %33 = ptrtoint ptr %zone_size30.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 1024, ptr %zone_size30.i, align 8
  %max_lba31.i = getelementptr inbounds %struct.sm_ftl, ptr %call7.i.i, i32 0, i32 6
  %34 = ptrtoint ptr %max_lba31.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 1000, ptr %max_lba31.i, align 8
  %block_size32.i = getelementptr inbounds %struct.sm_ftl, ptr %call7.i.i, i32 0, i32 3
  %35 = ptrtoint ptr %block_size32.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 16384, ptr %block_size32.i, align 4
  br label %if.end33.i

if.end33.i:                                       ; preds = %if.then27.i, %sw.epilog.i.if.end33.i_crit_edge, %sw.bb21.i, %sw.bb17.i, %if.end.i, %if.then.i, %sw.bb.i
  %erasesize.i = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 3
  %36 = ptrtoint ptr %erasesize.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %erasesize.i, align 8
  %block_size34.i = getelementptr inbounds %struct.sm_ftl, ptr %call7.i.i, i32 0, i32 3
  %38 = ptrtoint ptr %block_size34.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %block_size34.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %39)
  %cmp35.i = icmp ugt i32 %37, %39
  br i1 %cmp35.i, label %if.end33.i.if.then14_crit_edge, label %if.end38.i

if.end33.i.if.then14_crit_edge:                   ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then14

if.end38.i:                                       ; preds = %if.end33.i
  %writesize39.i = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 4
  %40 = ptrtoint ptr %writesize39.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %writesize39.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %41)
  %cmp40.i = icmp ugt i32 %41, 512
  br i1 %cmp40.i, label %if.end38.i.if.then14_crit_edge, label %if.end43.i

if.end38.i.if.then14_crit_edge:                   ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then14

if.end43.i:                                       ; preds = %if.end38.i
  %42 = ptrtoint ptr %smallpagenand.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %smallpagenand.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool45.not.i = icmp eq i32 %43, 0
  %oobsize53.i = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 6
  %44 = ptrtoint ptr %oobsize53.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %oobsize53.i, align 4
  br i1 %tobool45.not.i, label %land.lhs.true52.i, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %45)
  %cmp46.i = icmp ult i32 %45, 8
  br i1 %cmp46.i, label %land.lhs.true.i.if.then14_crit_edge, label %land.lhs.true.i.while.cond.i.i.i.preheader_crit_edge

land.lhs.true.i.while.cond.i.i.i.preheader_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond.i.i.i.preheader

land.lhs.true.i.if.then14_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then14

land.lhs.true52.i:                                ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %45)
  %cmp54.i = icmp ult i32 %45, 16
  br i1 %cmp54.i, label %land.lhs.true52.i.if.then14_crit_edge, label %land.lhs.true52.i.while.cond.i.i.i.preheader_crit_edge

land.lhs.true52.i.while.cond.i.i.i.preheader_crit_edge: ; preds = %land.lhs.true52.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond.i.i.i.preheader

land.lhs.true52.i.if.then14_crit_edge:            ; preds = %land.lhs.true52.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then14

while.cond.i.i.i.preheader:                       ; preds = %land.lhs.true52.i.while.cond.i.i.i.preheader_crit_edge, %land.lhs.true.i.while.cond.i.i.i.preheader_crit_edge
  br label %while.cond.i.i.i

while.cond.i.i.i:                                 ; preds = %while.cond.i.i.i.while.cond.i.i.i_crit_edge, %while.cond.i.i.i.preheader
  %mtd.addr.0.i.i.i = phi ptr [ %47, %while.cond.i.i.i.while.cond.i.i.i_crit_edge ], [ %mtd, %while.cond.i.i.i.preheader ]
  %parent.i.i.i = getelementptr inbounds %struct.mtd_info, ptr %mtd.addr.0.i.i.i, i32 0, i32 62
  %46 = ptrtoint ptr %parent.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %parent.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %47, null
  br i1 %tobool.not.i.i.i, label %mtd_get_master.exit.i.i, label %while.cond.i.i.i.while.cond.i.i.i_crit_edge

while.cond.i.i.i.while.cond.i.i.i_crit_edge:      ; preds = %while.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond.i.i.i

mtd_get_master.exit.i.i:                          ; preds = %while.cond.i.i.i
  %_read_oob.i.i = getelementptr inbounds %struct.mtd_info, ptr %mtd.addr.0.i.i.i, i32 0, i32 27
  %48 = ptrtoint ptr %_read_oob.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %_read_oob.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %49, null
  br i1 %tobool.not.i.i, label %mtd_get_master.exit.i.i.if.then14_crit_edge, label %mtd_has_oob.exit.i

mtd_get_master.exit.i.i.if.then14_crit_edge:      ; preds = %mtd_get_master.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then14

mtd_has_oob.exit.i:                               ; preds = %mtd_get_master.exit.i.i
  %_write_oob.i.i = getelementptr inbounds %struct.mtd_info, ptr %mtd.addr.0.i.i.i, i32 0, i32 28
  %50 = ptrtoint ptr %_write_oob.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %_write_oob.i.i, align 4
  %tobool1.i.not.i = icmp eq ptr %51, null
  br i1 %tobool1.i.not.i, label %mtd_has_oob.exit.i.if.then14_crit_edge, label %for.body.preheader.i

mtd_has_oob.exit.i.if.then14_crit_edge:           ; preds = %mtd_has_oob.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then14

for.body.preheader.i:                             ; preds = %mtd_has_oob.exit.i
  %52 = zext i32 %conv.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %52, ptr @__sancov_gen_cov_switch_values.83)
  switch i32 %conv.i, label %for.inc.12.i [
    i32 1, label %for.body.preheader.i.if.then66.i_crit_edge
    i32 2, label %if.then66.fold.split.i
    i32 4, label %if.then66.fold.split136.i
    i32 8, label %if.then66.fold.split137.i
    i32 16, label %if.then66.fold.split138.i
    i32 32, label %if.then66.fold.split139.i
    i32 64, label %if.then66.fold.split140.i
    i32 128, label %if.then66.fold.split141.i
    i32 256, label %if.then66.fold.split142.i
    i32 512, label %if.then66.fold.split143.i
    i32 1024, label %if.then66.fold.split144.i
    i32 2048, label %if.then66.fold.split145.i
    i32 0, label %if.then66.fold.split146.i
  ]

for.body.preheader.i.if.then66.i_crit_edge:       ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then66.i

if.then66.fold.split.i:                           ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then66.i

if.then66.fold.split136.i:                        ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then66.i

if.then66.fold.split137.i:                        ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then66.i

if.then66.fold.split138.i:                        ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then66.i

if.then66.fold.split139.i:                        ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then66.i

if.then66.fold.split140.i:                        ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then66.i

if.then66.fold.split141.i:                        ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then66.i

if.then66.fold.split142.i:                        ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then66.i

if.then66.fold.split143.i:                        ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then66.i

if.then66.fold.split144.i:                        ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then66.i

if.then66.fold.split145.i:                        ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then66.i

if.then66.fold.split146.i:                        ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then66.i

if.then66.i:                                      ; preds = %if.then66.fold.split146.i, %if.then66.fold.split145.i, %if.then66.fold.split144.i, %if.then66.fold.split143.i, %if.then66.fold.split142.i, %if.then66.fold.split141.i, %if.then66.fold.split140.i, %if.then66.fold.split139.i, %if.then66.fold.split138.i, %if.then66.fold.split137.i, %if.then66.fold.split136.i, %if.then66.fold.split.i, %for.body.preheader.i.if.then66.i_crit_edge
  %i.0134.lcssa.i = phi i32 [ 0, %for.body.preheader.i.if.then66.i_crit_edge ], [ 1, %if.then66.fold.split.i ], [ 2, %if.then66.fold.split136.i ], [ 3, %if.then66.fold.split137.i ], [ 4, %if.then66.fold.split138.i ], [ 5, %if.then66.fold.split139.i ], [ 6, %if.then66.fold.split140.i ], [ 7, %if.then66.fold.split141.i ], [ 8, %if.then66.fold.split142.i ], [ 9, %if.then66.fold.split143.i ], [ 10, %if.then66.fold.split144.i ], [ 11, %if.then66.fold.split145.i ], [ 12, %if.then66.fold.split146.i ]
  %cyl.i = getelementptr [13 x %struct.chs_entry], ptr @chs_table, i32 0, i32 %i.0134.lcssa.i, i32 1
  %53 = ptrtoint ptr %cyl.i to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %cyl.i, align 4
  %conv68.i = zext i16 %54 to i32
  %cylinders.i = getelementptr inbounds %struct.sm_ftl, ptr %call7.i.i, i32 0, i32 23
  %55 = ptrtoint ptr %cylinders.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %conv68.i, ptr %cylinders.i, align 4
  %head.i = getelementptr [13 x %struct.chs_entry], ptr @chs_table, i32 0, i32 %i.0134.lcssa.i, i32 2
  %56 = ptrtoint ptr %head.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %head.i, align 2
  %conv70.i = zext i8 %57 to i32
  %heads.i = getelementptr inbounds %struct.sm_ftl, ptr %call7.i.i, i32 0, i32 21
  %58 = ptrtoint ptr %heads.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %conv70.i, ptr %heads.i, align 4
  %sec.i = getelementptr [13 x %struct.chs_entry], ptr @chs_table, i32 0, i32 %i.0134.lcssa.i, i32 3
  %59 = ptrtoint ptr %sec.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %sec.i, align 1
  %conv72.i = zext i8 %60 to i32
  br label %if.end22

for.inc.12.i:                                     ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #15
  %call74.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.76, i32 noundef %conv.i) #17
  %cylinders75.i = getelementptr inbounds %struct.sm_ftl, ptr %call7.i.i, i32 0, i32 23
  %61 = ptrtoint ptr %cylinders75.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 985, ptr %cylinders75.i, align 4
  %heads76.i = getelementptr inbounds %struct.sm_ftl, ptr %call7.i.i, i32 0, i32 21
  %62 = ptrtoint ptr %heads76.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 33, ptr %heads76.i, align 4
  br label %if.end22

if.then14:                                        ; preds = %mtd_has_oob.exit.i.if.then14_crit_edge, %mtd_get_master.exit.i.i.if.then14_crit_edge, %land.lhs.true52.i.if.then14_crit_edge, %land.lhs.true.i.if.then14_crit_edge, %if.end38.i.if.then14_crit_edge, %if.end33.i.if.then14_crit_edge, %if.else.i.if.then14_crit_edge
  %63 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %tobool15.not = icmp eq i32 %63, 0
  br i1 %tobool15.not, label %if.then14.error2_crit_edge, label %do.end19

if.then14.error2_crit_edge:                       ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #15
  br label %error2

do.end19:                                         ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #15
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56) #17
  br label %error2

if.end22:                                         ; preds = %for.inc.12.i, %if.then66.i
  %.sink.i = phi i32 [ 63, %for.inc.12.i ], [ %conv72.i, %if.then66.i ]
  %sectors77.i = getelementptr inbounds %struct.sm_ftl, ptr %call7.i.i, i32 0, i32 22
  %64 = ptrtoint ptr %sectors77.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %.sink.i, ptr %sectors77.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %65 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i171 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %65, i32 noundef 3520, i32 noundef 512) #16
  %cis_buffer = getelementptr inbounds %struct.sm_ftl, ptr %call7.i.i, i32 0, i32 13
  %66 = ptrtoint ptr %cis_buffer to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %call7.i.i171, ptr %cis_buffer, align 8
  %tobool25.not = icmp eq ptr %call7.i.i171, null
  br i1 %tobool25.not, label %if.end22.error2_crit_edge, label %if.end27

if.end22.error2_crit_edge:                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #15
  br label %error2

if.end27:                                         ; preds = %if.end22
  %67 = ptrtoint ptr %zone_count.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %zone_count.i, align 4
  %69 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %68, i32 28) #13
  %70 = extractvalue { i32, i1 } %69, 1
  br i1 %70, label %kcalloc.exit.thread, label %if.end7.i.i, !prof !193

kcalloc.exit.thread:                              ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #15
  %zones197 = getelementptr inbounds %struct.sm_ftl, ptr %call7.i.i, i32 0, i32 2
  %71 = ptrtoint ptr %zones197 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr null, ptr %zones197, align 8
  br label %error3

if.end7.i.i:                                      ; preds = %if.end27
  %72 = extractvalue { i32, i1 } %69, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %72, i32 noundef 3520) #18
  %zones = getelementptr inbounds %struct.sm_ftl, ptr %call7.i.i, i32 0, i32 2
  %73 = ptrtoint ptr %zones to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %call8.i.i, ptr %zones, align 8
  %tobool30.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool30.not, label %if.end7.i.i.error3_crit_edge, label %if.end8.i.i

if.end7.i.i.error3_crit_edge:                     ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %error3

if.end8.i.i:                                      ; preds = %if.end7.i.i
  %74 = ptrtoint ptr %block_size34.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %block_size34.i, align 4
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %75, i32 noundef 3520) #18
  %cache_data = getelementptr inbounds %struct.sm_ftl, ptr %call7.i.i, i32 0, i32 16
  %76 = ptrtoint ptr %cache_data to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %call9.i.i, ptr %cache_data, align 4
  %tobool35.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool35.not, label %if.end8.i.i.error4_crit_edge, label %if.end37

if.end8.i.i.error4_crit_edge:                     ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %error4

if.end37:                                         ; preds = %if.end8.i.i
  %cache_data_invalid_bitmap.i = getelementptr inbounds %struct.sm_ftl, ptr %call7.i.i, i32 0, i32 17
  %77 = ptrtoint ptr %cache_data_invalid_bitmap.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 -1, ptr %cache_data_invalid_bitmap.i, align 8
  %cache_clean.i = getelementptr inbounds %struct.sm_ftl, ptr %call7.i.i, i32 0, i32 18
  %78 = ptrtoint ptr %cache_clean.i to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 1, ptr %cache_clean.i, align 4
  %cache_zone.i = getelementptr inbounds %struct.sm_ftl, ptr %call7.i.i, i32 0, i32 15
  %79 = ptrtoint ptr %cache_zone.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 -1, ptr %cache_zone.i, align 8
  %cache_block.i = getelementptr inbounds %struct.sm_ftl, ptr %call7.i.i, i32 0, i32 14
  %80 = ptrtoint ptr %cache_block.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 -1, ptr %cache_block.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %81 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i184 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %81, i32 noundef 3520, i32 noundef 208) #16
  %tobool39.not = icmp eq ptr %call7.i.i184, null
  br i1 %tobool39.not, label %if.end37.error5_crit_edge, label %if.end41

if.end37.error5_crit_edge:                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #15
  br label %error5

if.end41:                                         ; preds = %if.end37
  %82 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %call7.i.i184, ptr %call7.i.i, align 8
  %priv = getelementptr inbounds %struct.mtd_blktrans_dev, ptr %call7.i.i184, i32 0, i32 16
  %83 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %call7.i.i, ptr %priv, align 8
  %84 = ptrtoint ptr %call7.i.i184 to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %tr, ptr %call7.i.i184, align 8
  %mtd44 = getelementptr inbounds %struct.mtd_blktrans_dev, ptr %call7.i.i184, i32 0, i32 2
  %85 = ptrtoint ptr %mtd44 to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %mtd, ptr %mtd44, align 4
  %devnum = getelementptr inbounds %struct.mtd_blktrans_dev, ptr %call7.i.i184, i32 0, i32 4
  %86 = ptrtoint ptr %devnum to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 -1, ptr %devnum, align 4
  %87 = ptrtoint ptr %block_size34.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %block_size34.i, align 4
  %max_lba = getelementptr inbounds %struct.sm_ftl, ptr %call7.i.i, i32 0, i32 6
  %89 = ptrtoint ptr %max_lba to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %max_lba, align 8
  %mul = mul i32 %90, %88
  %91 = ptrtoint ptr %zone_count.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %zone_count.i, align 4
  %mul47 = mul i32 %mul, %92
  %shr = ashr i32 %mul47, 9
  %size = getelementptr inbounds %struct.mtd_blktrans_dev, ptr %call7.i.i184, i32 0, i32 6
  %93 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %shr, ptr %size, align 4
  %94 = ptrtoint ptr %readonly.i to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %readonly.i, align 8, !range !190
  %96 = zext i8 %95 to i32
  %readonly49 = getelementptr inbounds %struct.mtd_blktrans_dev, ptr %call7.i.i184, i32 0, i32 7
  %97 = ptrtoint ptr %readonly49 to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %96, ptr %readonly49, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %oob.i) #13
  %98 = getelementptr inbounds %struct.sm_oob, ptr %oob.i, i32 0, i32 1
  %99 = getelementptr inbounds %struct.sm_oob, ptr %oob.i, i32 0, i32 2
  %zone_size.i187 = getelementptr inbounds %struct.sm_ftl, ptr %call7.i.i, i32 0, i32 4
  %100 = call ptr @memset(ptr %oob.i, i32 255, i32 16)
  %101 = ptrtoint ptr %zone_size.i187 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %zone_size.i187, align 8
  %sub92.i = sub i32 %102, %90
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub92.i)
  %cmp93.i = icmp sgt i32 %sub92.i, 0
  br i1 %cmp93.i, label %if.end41.for.body.i_crit_edge, label %if.end41.if.then52_crit_edge

if.end41.if.then52_crit_edge:                     ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then52

if.end41.for.body.i_crit_edge:                    ; preds = %if.end41
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end41.for.body.i_crit_edge
  %block.094.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end41.for.body.i_crit_edge ]
  %call.i = call fastcc i32 @sm_read_sector(ptr noundef %call7.i.i, i32 noundef 0, i32 noundef %block.094.i, i32 noundef 0, ptr noundef null, ptr noundef nonnull %oob.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %cond.false.i.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

cond.false.i.i:                                   ; preds = %for.body.i
  %103 = ptrtoint ptr %99 to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %99, align 1
  %conv153.i.i = zext i8 %104 to i32
  %call.i.i.i = call i32 @__sw_hweight16(i32 noundef %conv153.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %call.i.i.i)
  %cmp.i.i190 = icmp ult i32 %call.i.i.i, 7
  br i1 %cmp.i.i190, label %cond.false.i.i.for.inc.i_crit_edge, label %for.cond8.preheader.i

cond.false.i.i.for.inc.i_crit_edge:               ; preds = %cond.false.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

for.cond8.preheader.i:                            ; preds = %cond.false.i.i
  %105 = ptrtoint ptr %block_size34.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %block_size34.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %106)
  %cmp996.i = icmp sgt i32 %106, 0
  br i1 %cmp996.i, label %for.cond8.preheader.i.for.body10.i_crit_edge, label %for.cond8.preheader.i.for.end20.i_crit_edge

for.cond8.preheader.i.for.end20.i_crit_edge:      ; preds = %for.cond8.preheader.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end20.i

for.cond8.preheader.i.for.body10.i_crit_edge:     ; preds = %for.cond8.preheader.i
  br label %for.body10.i

for.inc.i:                                        ; preds = %cond.false.i.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %block.094.i, 1
  %107 = ptrtoint ptr %zone_size.i187 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %zone_size.i187, align 8
  %109 = ptrtoint ptr %max_lba to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %max_lba, align 8
  %sub.i = sub i32 %108, %110
  %cmp.i192 = icmp slt i32 %inc.i, %sub.i
  br i1 %cmp.i192, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.if.then52_crit_edge

for.inc.i.if.then52_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then52

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.body10.i:                                     ; preds = %for.inc19.i.for.body10.i_crit_edge, %for.cond8.preheader.i.for.body10.i_crit_edge
  %boffset.097.i = phi i32 [ %add.i, %for.inc19.i.for.body10.i_crit_edge ], [ 0, %for.cond8.preheader.i.for.body10.i_crit_edge ]
  %call11.i = call fastcc i32 @sm_read_sector(ptr noundef %call7.i.i, i32 noundef 0, i32 noundef %block.094.i, i32 noundef %boffset.097.i, ptr noundef null, ptr noundef nonnull %oob.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %tobool12.not.i = icmp eq i32 %call11.i, 0
  br i1 %tobool12.not.i, label %cond.false.i86.i, label %for.body10.i.for.inc19.i_crit_edge

for.body10.i.for.inc19.i_crit_edge:               ; preds = %for.body10.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc19.i

cond.false.i86.i:                                 ; preds = %for.body10.i
  %111 = ptrtoint ptr %98 to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %98, align 4
  %conv153.i84.i = zext i8 %112 to i32
  %call.i.i85.i = call i32 @__sw_hweight16(i32 noundef %conv153.i84.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %call.i.i85.i)
  %cmp.i88.i = icmp ult i32 %call.i.i85.i, 5
  br i1 %cmp.i88.i, label %cond.false.i86.i.for.inc19.i_crit_edge, label %cond.false.i86.i.for.end20.i_crit_edge

cond.false.i86.i.for.end20.i_crit_edge:           ; preds = %cond.false.i86.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end20.i

cond.false.i86.i.for.inc19.i_crit_edge:           ; preds = %cond.false.i86.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc19.i

for.inc19.i:                                      ; preds = %cond.false.i86.i.for.inc19.i_crit_edge, %for.body10.i.for.inc19.i_crit_edge
  %add.i = add i32 %boffset.097.i, 512
  %113 = ptrtoint ptr %block_size34.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %block_size34.i, align 4
  %cmp9.i = icmp slt i32 %add.i, %114
  br i1 %cmp9.i, label %for.inc19.i.for.body10.i_crit_edge, label %for.inc19.i.for.end20.i_crit_edge

for.inc19.i.for.end20.i_crit_edge:                ; preds = %for.inc19.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end20.i

for.inc19.i.for.body10.i_crit_edge:               ; preds = %for.inc19.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body10.i

for.end20.i:                                      ; preds = %for.inc19.i.for.end20.i_crit_edge, %cond.false.i86.i.for.end20.i_crit_edge, %for.cond8.preheader.i.for.end20.i_crit_edge
  %boffset.0.lcssa.i = phi i32 [ 0, %for.cond8.preheader.i.for.end20.i_crit_edge ], [ %add.i, %for.inc19.i.for.end20.i_crit_edge ], [ %boffset.097.i, %cond.false.i86.i.for.end20.i_crit_edge ]
  %115 = ptrtoint ptr %block_size34.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %block_size34.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %boffset.0.lcssa.i, i32 %116)
  %cmp22.i = icmp eq i32 %boffset.0.lcssa.i, %116
  br i1 %cmp22.i, label %for.end20.i.if.then52_crit_edge, label %if.end24.i

for.end20.i.if.then52_crit_edge:                  ; preds = %for.end20.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then52

if.end24.i:                                       ; preds = %for.end20.i
  %cis_block.i = getelementptr inbounds %struct.sm_ftl, ptr %call7.i.i, i32 0, i32 10
  %117 = ptrtoint ptr %cis_block.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %block.094.i, ptr %cis_block.i, align 4
  %cis_boffset.i = getelementptr inbounds %struct.sm_ftl, ptr %call7.i.i, i32 0, i32 11
  %118 = ptrtoint ptr %cis_boffset.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 %boffset.0.lcssa.i, ptr %cis_boffset.i, align 8
  %cis_page_offset.i = getelementptr inbounds %struct.sm_ftl, ptr %call7.i.i, i32 0, i32 12
  %119 = ptrtoint ptr %cis_page_offset.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 0, ptr %cis_page_offset.i, align 4
  %call25.i = call fastcc i32 @sm_read_cis(ptr noundef %call7.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i)
  %tobool26.not.i = icmp eq i32 %call25.i, 0
  br i1 %tobool26.not.i, label %if.end24.i.if.then36.i_crit_edge, label %if.end34.i

if.end24.i.if.then36.i_crit_edge:                 ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then36.i

if.end34.i:                                       ; preds = %if.end24.i
  %120 = ptrtoint ptr %cis_page_offset.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 256, ptr %cis_page_offset.i, align 4
  %call30.i = call fastcc i32 @sm_read_cis(ptr noundef %call7.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30.i)
  %tobool31.not.i = icmp eq i32 %call30.i, 0
  br i1 %tobool31.not.i, label %if.end34.i.if.then36.i_crit_edge, label %if.end34.i.if.then52_crit_edge

if.end34.i.if.then52_crit_edge:                   ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then52

if.end34.i.if.then36.i_crit_edge:                 ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then36.i

if.then36.i:                                      ; preds = %if.end34.i.if.then36.i_crit_edge, %if.end24.i.if.then36.i_crit_edge
  %121 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %121)
  %tobool37.not.i = icmp eq i32 %121, 0
  br i1 %tobool37.not.i, label %if.then36.i.if.end61_crit_edge, label %do.end.i

if.then36.i.if.end61_crit_edge:                   ; preds = %if.then36.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end61

do.end.i:                                         ; preds = %if.then36.i
  call void @__sanitizer_cov_trace_pc() #15
  %122 = ptrtoint ptr %block_size34.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %block_size34.i, align 4
  %mul.i = mul i32 %123, %block.094.i
  %add40.i = add i32 %mul.i, %boffset.0.lcssa.i
  %124 = ptrtoint ptr %cis_page_offset.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %cis_page_offset.i, align 4
  %add42.i = add i32 %add40.i, %125
  %call43.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.78, i32 noundef %add42.i) #17
  br label %if.end61

if.then52:                                        ; preds = %if.end34.i.if.then52_crit_edge, %for.end20.i.if.then52_crit_edge, %for.inc.i.if.then52_crit_edge, %if.end41.if.then52_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %oob.i) #13
  %126 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %126)
  %tobool53.not = icmp eq i32 %126, 0
  br i1 %tobool53.not, label %if.then52.error6_crit_edge, label %if.then52.error6.sink.split_crit_edge

if.then52.error6.sink.split_crit_edge:            ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #15
  br label %error6.sink.split

if.then52.error6_crit_edge:                       ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #15
  br label %error6

if.end61:                                         ; preds = %do.end.i, %if.then36.i.if.end61_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %oob.i) #13
  %call62 = call fastcc ptr @sm_create_sysfs_attributes(ptr noundef nonnull %call7.i.i)
  %disk_attributes = getelementptr inbounds %struct.sm_ftl, ptr %call7.i.i, i32 0, i32 24
  %127 = ptrtoint ptr %disk_attributes to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr %call62, ptr %disk_attributes, align 8
  %tobool64.not = icmp eq ptr %call62, null
  br i1 %tobool64.not, label %if.end61.error6_crit_edge, label %if.end66

if.end61.error6_crit_edge:                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #15
  br label %error6

if.end66:                                         ; preds = %if.end61
  %disk_attributes68 = getelementptr inbounds %struct.mtd_blktrans_dev, ptr %call7.i.i184, i32 0, i32 11
  %128 = ptrtoint ptr %disk_attributes68 to i32
  call void @__asan_store4_noabort(i32 %128)
  store ptr %call62, ptr %disk_attributes68, align 8
  %129 = ptrtoint ptr %size.i to i32
  call void @__asan_load8_noabort(i32 %129)
  %130 = load i64, ptr %size.i, align 8
  %div170 = lshr i64 %130, 20
  %conv74 = trunc i64 %div170 to i32
  %index = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 14
  %131 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %index, align 4
  %call75 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62, i32 noundef %conv74, i32 noundef %132) #17
  %133 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %133)
  %tobool76.not = icmp eq i32 %133, 0
  br i1 %tobool76.not, label %if.end66.if.end103_crit_edge, label %if.end83

if.end66.if.end103_crit_edge:                     ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end103

if.end83:                                         ; preds = %if.end66
  %call82 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.65) #17
  %.pr = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool84.not = icmp eq i32 %.pr, 0
  br i1 %tobool84.not, label %if.end83.if.end103_crit_edge, label %if.end94

if.end83.if.end103_crit_edge:                     ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end103

if.end94:                                         ; preds = %if.end83
  %134 = ptrtoint ptr %zone_count.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %zone_count.i, align 4
  %136 = ptrtoint ptr %max_lba to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %max_lba, align 8
  %138 = ptrtoint ptr %zone_size.i187 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %zone_size.i187, align 8
  %sub = sub i32 %139, %137
  %call93 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.68, i32 noundef %135, i32 noundef %137, i32 noundef %sub) #17
  %.pr211 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr211)
  %tobool95.not = icmp eq i32 %.pr211, 0
  br i1 %tobool95.not, label %if.end94.if.end103_crit_edge, label %do.end99

if.end94.if.end103_crit_edge:                     ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end103

do.end99:                                         ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #15
  %140 = ptrtoint ptr %block_size34.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %block_size34.i, align 4
  %call102 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.71, i32 noundef %141) #17
  br label %if.end103

if.end103:                                        ; preds = %do.end99, %if.end94.if.end103_crit_edge, %if.end83.if.end103_crit_edge, %if.end66.if.end103_crit_edge
  %call104 = call i32 @add_mtd_blktrans_dev(ptr noundef nonnull %call7.i.i184) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call104)
  %tobool105.not = icmp eq i32 %call104, 0
  br i1 %tobool105.not, label %if.end103.cleanup_crit_edge, label %if.then106

if.end103.cleanup_crit_edge:                      ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then106:                                       ; preds = %if.end103
  %142 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %142)
  %tobool107.not = icmp eq i32 %142, 0
  br i1 %tobool107.not, label %if.then106.error6_crit_edge, label %if.then106.error6.sink.split_crit_edge

if.then106.error6.sink.split_crit_edge:           ; preds = %if.then106
  call void @__sanitizer_cov_trace_pc() #15
  br label %error6.sink.split

if.then106.error6_crit_edge:                      ; preds = %if.then106
  call void @__sanitizer_cov_trace_pc() #15
  br label %error6

error6.sink.split:                                ; preds = %if.then106.error6.sink.split_crit_edge, %if.then52.error6.sink.split_crit_edge
  %.str.74.sink = phi ptr [ @.str.59, %if.then52.error6.sink.split_crit_edge ], [ @.str.74, %if.then106.error6.sink.split_crit_edge ]
  %call113 = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.74.sink) #17
  br label %error6

error6:                                           ; preds = %error6.sink.split, %if.then106.error6_crit_edge, %if.end61.error6_crit_edge, %if.then52.error6_crit_edge
  call void @kfree(ptr noundef nonnull %call7.i.i184) #13
  br label %error5

error5:                                           ; preds = %error6, %if.end37.error5_crit_edge
  %143 = ptrtoint ptr %cache_data to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %cache_data, align 4
  call void @kfree(ptr noundef %144) #13
  br label %error4

error4:                                           ; preds = %error5, %if.end8.i.i.error4_crit_edge
  %145 = ptrtoint ptr %zones to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %zones, align 8
  call void @kfree(ptr noundef %146) #13
  br label %error3

error3:                                           ; preds = %error4, %if.end7.i.i.error3_crit_edge, %kcalloc.exit.thread
  %147 = ptrtoint ptr %cis_buffer to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %cis_buffer, align 8
  call void @kfree(ptr noundef %148) #13
  br label %error2

error2:                                           ; preds = %error3, %if.end22.error2_crit_edge, %do.end19, %if.then14.error2_crit_edge
  call void @kfree(ptr noundef nonnull %call7.i.i) #13
  br label %cleanup

cleanup:                                          ; preds = %error2, %if.end103.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sm_remove_dev(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.mtd_blktrans_dev, ptr %dev, i32 0, i32 16
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %call = tail call i32 @del_mtd_blktrans_dev(ptr noundef %dev) #13
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %1, align 4
  %zone_count = getelementptr inbounds %struct.sm_ftl, ptr %1, i32 0, i32 5
  %3 = ptrtoint ptr %zone_count to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %zone_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp20 = icmp sgt i32 %4, 0
  br i1 %cmp20, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %zones = getelementptr inbounds %struct.sm_ftl, ptr %1, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.021 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %5 = ptrtoint ptr %zones to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %zones, align 4
  %arrayidx = getelementptr %struct.ftl_zone, ptr %6, i32 %i.021
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx, align 4, !range !190
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  %lba_to_phys_table = getelementptr %struct.ftl_zone, ptr %6, i32 %i.021, i32 1
  %9 = ptrtoint ptr %lba_to_phys_table to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %lba_to_phys_table, align 4
  tail call void @kfree(ptr noundef %10) #13
  %11 = ptrtoint ptr %zones to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %zones, align 4
  %free_sectors = getelementptr %struct.ftl_zone, ptr %12, i32 %i.021, i32 2
  tail call void @__kfifo_free(ptr noundef %free_sectors) #13
  br label %for.inc

for.inc:                                          ; preds = %if.end, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.021, 1
  %13 = ptrtoint ptr %zone_count to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %zone_count, align 4
  %cmp = icmp slt i32 %inc, %14
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %disk_attributes.i = getelementptr inbounds %struct.sm_ftl, ptr %1, i32 0, i32 24
  %15 = ptrtoint ptr %disk_attributes.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %disk_attributes.i, align 4
  %attrs.i = getelementptr inbounds %struct.attribute_group, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %attrs.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %attrs.i, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 4
  %tobool.not14.i = icmp eq ptr %20, null
  br i1 %tobool.not14.i, label %for.end.sm_delete_sysfs_attributes.exit_crit_edge, label %for.end.for.body.i_crit_edge

for.end.for.body.i_crit_edge:                     ; preds = %for.end
  br label %for.body.i

for.end.sm_delete_sysfs_attributes.exit_crit_edge: ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %sm_delete_sysfs_attributes.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.end.for.body.i_crit_edge
  %21 = phi ptr [ %25, %for.body.i.for.body.i_crit_edge ], [ %20, %for.end.for.body.i_crit_edge ]
  %i.015.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.end.for.body.i_crit_edge ]
  %data.i = getelementptr inbounds %struct.sm_sysfs_attribute, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %data.i, align 4
  tail call void @kfree(ptr noundef %23) #13
  tail call void @kfree(ptr noundef nonnull %21) #13
  %inc.i = add i32 %i.015.i, 1
  %arrayidx.i = getelementptr ptr, ptr %18, i32 %inc.i
  %24 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %25, null
  br i1 %tobool.not.i, label %for.body.i.sm_delete_sysfs_attributes.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.body.i.sm_delete_sysfs_attributes.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sm_delete_sysfs_attributes.exit

sm_delete_sysfs_attributes.exit:                  ; preds = %for.body.i.sm_delete_sysfs_attributes.exit_crit_edge, %for.end.sm_delete_sysfs_attributes.exit_crit_edge
  %26 = ptrtoint ptr %disk_attributes.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %disk_attributes.i, align 4
  %attrs6.i = getelementptr inbounds %struct.attribute_group, ptr %27, i32 0, i32 3
  %28 = ptrtoint ptr %attrs6.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %attrs6.i, align 4
  tail call void @kfree(ptr noundef %29) #13
  %30 = ptrtoint ptr %disk_attributes.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %disk_attributes.i, align 4
  tail call void @kfree(ptr noundef %31) #13
  %cis_buffer = getelementptr inbounds %struct.sm_ftl, ptr %1, i32 0, i32 13
  %32 = ptrtoint ptr %cis_buffer to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %cis_buffer, align 4
  tail call void @kfree(ptr noundef %33) #13
  %zones5 = getelementptr inbounds %struct.sm_ftl, ptr %1, i32 0, i32 2
  %34 = ptrtoint ptr %zones5 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %zones5, align 4
  tail call void @kfree(ptr noundef %35) #13
  %cache_data = getelementptr inbounds %struct.sm_ftl, ptr %1, i32 0, i32 16
  %36 = ptrtoint ptr %cache_data to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %cache_data, align 4
  tail call void @kfree(ptr noundef %37) #13
  tail call void @kfree(ptr noundef %1) #13
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @sm_get_zone(ptr nocapture noundef %ftl, i32 noundef %zone_num) unnamed_addr #2 align 64 {
entry:
  %oob.i = alloca %struct.sm_oob, align 4
  %block.i = alloca i16, align 2
  %i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %zone_count = getelementptr inbounds %struct.sm_ftl, ptr %ftl, i32 0, i32 5
  %0 = ptrtoint ptr %zone_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %zone_count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %zone_num)
  %cmp.not = icmp sgt i32 %1, %zone_num
  br i1 %cmp.not, label %do.end7, label %do.body2, !prof !191

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/mtd/sm_ftl.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 885, 0\0A.popsection", ""() #13, !srcloc !194
  unreachable

do.end7:                                          ; preds = %entry
  %zones = getelementptr inbounds %struct.sm_ftl, ptr %ftl, i32 0, i32 2
  %2 = ptrtoint ptr %zones to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %zones, align 4
  %arrayidx = getelementptr %struct.ftl_zone, ptr %3, i32 %zone_num
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 4, !range !190
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool8.not = icmp eq i8 %5, 0
  br i1 %tobool8.not, label %if.then9, label %do.end7.cleanup_crit_edge

do.end7.cleanup_crit_edge:                        ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then9:                                         ; preds = %do.end7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %oob.i) #13
  %6 = getelementptr inbounds %struct.sm_oob, ptr %oob.i, i32 0, i32 2
  %7 = call ptr @memset(ptr %oob.i, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %block.i) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i.i) #13
  %8 = ptrtoint ptr %i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %i.i, align 4
  %9 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i = icmp eq i32 %9, 0
  br i1 %tobool.not.i, label %if.then9.if.end.i_crit_edge, label %do.end.i

if.then9.if.end.i_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

do.end.i:                                         ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #15
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %zone_num) #17
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %if.then9.if.end.i_crit_edge
  %max_lba.i = getelementptr inbounds %struct.sm_ftl, ptr %ftl, i32 0, i32 6
  %10 = ptrtoint ptr %max_lba.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %max_lba.i, align 4
  %12 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %11, i32 2) #13
  %13 = extractvalue { i32, i1 } %12, 1
  br i1 %13, label %kmalloc_array.exit.thread.i, label %if.end7.i.i, !prof !193

kmalloc_array.exit.thread.i:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %lba_to_phys_table244.i = getelementptr %struct.ftl_zone, ptr %3, i32 %zone_num, i32 1
  %14 = ptrtoint ptr %lba_to_phys_table244.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %lba_to_phys_table244.i, align 4
  br label %if.then11

if.end7.i.i:                                      ; preds = %if.end.i
  %15 = extractvalue { i32, i1 } %12, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %15, i32 noundef 3264) #18
  %lba_to_phys_table.i = getelementptr %struct.ftl_zone, ptr %3, i32 %zone_num, i32 1
  %16 = ptrtoint ptr %lba_to_phys_table.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call8.i.i, ptr %lba_to_phys_table.i, align 4
  %tobool3.not.i = icmp eq ptr %call8.i.i, null
  br i1 %tobool3.not.i, label %if.end7.i.i.if.then11_crit_edge, label %if.end5.i

if.end7.i.i.if.then11_crit_edge:                  ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11

if.end5.i:                                        ; preds = %if.end7.i.i
  %17 = ptrtoint ptr %max_lba.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %max_lba.i, align 4
  %mul.i = shl i32 %18, 1
  %19 = call ptr @memset(ptr %call8.i.i, i32 255, i32 %mul.i)
  %free_sectors.i = getelementptr %struct.ftl_zone, ptr %3, i32 %zone_num, i32 2
  %zone_size.i = getelementptr inbounds %struct.sm_ftl, ptr %ftl, i32 0, i32 4
  %20 = ptrtoint ptr %zone_size.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %zone_size.i, align 4
  %mul9.i = shl i32 %21, 1
  %call10.i = tail call i32 @__kfifo_alloc(ptr noundef %free_sectors.i, i32 noundef %mul9.i, i32 noundef 1, i32 noundef 3264) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool12.not.i = icmp eq i32 %call10.i, 0
  br i1 %tobool12.not.i, label %for.cond.preheader.i, label %if.then13.i

for.cond.preheader.i:                             ; preds = %if.end5.i
  %22 = ptrtoint ptr %block.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 0, ptr %block.i, align 2
  %23 = ptrtoint ptr %zone_size.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %zone_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp253.i = icmp sgt i32 %24, 0
  br i1 %cmp253.i, label %for.body.lr.ph.i, label %for.cond.preheader.i.for.end.i_crit_edge

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %zone_num)
  %cmp18.i = icmp eq i32 %zone_num, 0
  %cis_block.i = getelementptr inbounds %struct.sm_ftl, ptr %ftl, i32 0, i32 10
  br label %for.body.i

if.then13.i:                                      ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #15
  %25 = ptrtoint ptr %lba_to_phys_table.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %lba_to_phys_table.i, align 4
  tail call void @kfree(ptr noundef %26) #13
  br label %if.then11

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %conv254.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %conv.i, %for.inc.i.for.body.i_crit_edge ]
  br i1 %cmp18.i, label %land.lhs.true.i, label %for.body.i.if.end24.i_crit_edge

for.body.i.if.end24.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end24.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %27 = ptrtoint ptr %cis_block.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %cis_block.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %conv254.i)
  %cmp21.not.i = icmp slt i32 %28, %conv254.i
  br i1 %cmp21.not.i, label %land.lhs.true.i.if.end24.i_crit_edge, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

land.lhs.true.i.if.end24.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end24.i

if.end24.i:                                       ; preds = %land.lhs.true.i.if.end24.i_crit_edge, %for.body.i.if.end24.i_crit_edge
  %call26.i = call fastcc i32 @sm_read_sector(ptr noundef %ftl, i32 noundef %zone_num, i32 noundef %conv254.i, i32 noundef 0, ptr noundef null, ptr noundef nonnull %oob.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i)
  %tobool27.not.i = icmp eq i32 %call26.i, 0
  br i1 %tobool27.not.i, label %if.end33.i, label %if.then28.i

if.then28.i:                                      ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @__kfifo_free(ptr noundef %free_sectors.i) #13
  %29 = ptrtoint ptr %lba_to_phys_table.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %lba_to_phys_table.i, align 4
  call void @kfree(ptr noundef %30) #13
  br label %if.then11

if.end33.i:                                       ; preds = %if.end24.i
  %bcmp.i.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(16) %oob.i, ptr noundef nonnull dereferenceable(16) @sm_block_erased.erased_pattern, i32 16) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i)
  %tobool.not.i.not.i = icmp eq i32 %bcmp.i.i, 0
  br i1 %tobool.not.i.not.i, label %if.then36.i, label %cond.false.i.i

if.then36.i:                                      ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #15
  %call41.i = call i32 @__kfifo_in(ptr noundef %free_sectors.i, ptr noundef nonnull %block.i, i32 noundef 2) #13
  br label %for.inc.i

cond.false.i.i:                                   ; preds = %if.end33.i
  %31 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %6, align 1
  %conv153.i.i = zext i8 %32 to i32
  %call.i.i.i = call i32 @__sw_hweight16(i32 noundef %conv153.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %call.i.i.i)
  %cmp.i.i = icmp ult i32 %call.i.i.i, 7
  br i1 %cmp.i.i, label %if.then45.i, label %if.end55.i

if.then45.i:                                      ; preds = %cond.false.i.i
  %33 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool46.not.i = icmp eq i32 %33, 0
  br i1 %tobool46.not.i, label %if.then45.i.for.inc.i_crit_edge, label %do.end50.i

if.then45.i.for.inc.i_crit_edge:                  ; preds = %if.then45.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

do.end50.i:                                       ; preds = %if.then45.i
  call void @__sanitizer_cov_trace_pc() #15
  %34 = ptrtoint ptr %block.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %block.i, align 2
  %conv52.i = zext i16 %35 to i32
  %call53.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %conv52.i) #17
  br label %for.inc.i

if.end55.i:                                       ; preds = %cond.false.i.i
  %call56.i = call fastcc i32 @sm_read_lba(ptr noundef nonnull %oob.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %call56.i)
  %cmp57.i = icmp eq i32 %call56.i, -2
  br i1 %cmp57.i, label %if.end55.i.if.then62.i_crit_edge, label %lor.lhs.false.i

if.end55.i.if.then62.i_crit_edge:                 ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then62.i

lor.lhs.false.i:                                  ; preds = %if.end55.i
  %36 = ptrtoint ptr %max_lba.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %max_lba.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call56.i, i32 %37)
  %cmp60.not.i = icmp slt i32 %call56.i, %37
  br i1 %cmp60.not.i, label %if.end72.i, label %lor.lhs.false.i.if.then62.i_crit_edge

lor.lhs.false.i.if.then62.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then62.i

if.then62.i:                                      ; preds = %lor.lhs.false.i.if.then62.i_crit_edge, %if.end55.i.if.then62.i_crit_edge
  %38 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool63.not.i = icmp eq i32 %38, 0
  br i1 %tobool63.not.i, label %if.then62.i.for.inc.i_crit_edge, label %do.end67.i

if.then62.i.for.inc.i_crit_edge:                  ; preds = %if.then62.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

do.end67.i:                                       ; preds = %if.then62.i
  call void @__sanitizer_cov_trace_pc() #15
  %39 = ptrtoint ptr %block.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %block.i, align 2
  %conv69.i = zext i16 %40 to i32
  %call70.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, i32 noundef %conv69.i, i32 noundef %call56.i) #17
  br label %for.inc.i

if.end72.i:                                       ; preds = %lor.lhs.false.i
  %41 = ptrtoint ptr %lba_to_phys_table.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %lba_to_phys_table.i, align 4
  %arrayidx74.i = getelementptr i16, ptr %42, i32 %call56.i
  %43 = ptrtoint ptr %arrayidx74.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %arrayidx74.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %44)
  %cmp76.i = icmp slt i16 %44, 0
  br i1 %cmp76.i, label %if.then78.i, label %do.end94.i

if.then78.i:                                      ; preds = %if.end72.i
  %45 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %45)
  %cmp79.i = icmp sgt i32 %45, 1
  br i1 %cmp79.i, label %do.end84.i, label %if.then78.i.if.end88.i_crit_edge

if.then78.i.if.end88.i_crit_edge:                 ; preds = %if.then78.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end88.i

do.end84.i:                                       ; preds = %if.then78.i
  call void @__sanitizer_cov_trace_pc() #15
  %46 = ptrtoint ptr %block.i to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %block.i, align 2
  %conv86.i = zext i16 %47 to i32
  %call87.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef %conv86.i, i32 noundef %call56.i) #17
  br label %if.end88.i

if.end88.i:                                       ; preds = %do.end84.i, %if.then78.i.if.end88.i_crit_edge
  %48 = ptrtoint ptr %block.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %block.i, align 2
  %50 = ptrtoint ptr %lba_to_phys_table.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %lba_to_phys_table.i, align 4
  %arrayidx90.i = getelementptr i16, ptr %51, i32 %call56.i
  %52 = ptrtoint ptr %arrayidx90.i to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 %49, ptr %arrayidx90.i, align 2
  br label %for.inc.i

do.end94.i:                                       ; preds = %if.end72.i
  %conv75252.i = zext i16 %44 to i32
  %53 = ptrtoint ptr %block.i to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %block.i, align 2
  %conv99.i = zext i16 %54 to i32
  %call100.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, i32 noundef %call56.i, i32 noundef %conv75252.i, i32 noundef %conv99.i, i32 noundef %zone_num) #17
  %55 = ptrtoint ptr %block.i to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %block.i, align 2
  %conv101.i = zext i16 %56 to i32
  %call102.i = call fastcc i32 @sm_check_block(ptr noundef %ftl, i32 noundef %zone_num, i32 noundef %conv101.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call102.i)
  %tobool103.not.i = icmp eq i32 %call102.i, 0
  br i1 %tobool103.not.i, label %if.end105.i, label %do.end94.i.for.inc.i_crit_edge

do.end94.i.for.inc.i_crit_edge:                   ; preds = %do.end94.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

if.end105.i:                                      ; preds = %do.end94.i
  %57 = ptrtoint ptr %lba_to_phys_table.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %lba_to_phys_table.i, align 4
  %arrayidx107.i = getelementptr i16, ptr %58, i32 %call56.i
  %59 = ptrtoint ptr %arrayidx107.i to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %arrayidx107.i, align 2
  %conv108.i = sext i16 %60 to i32
  %call109.i = call fastcc i32 @sm_check_block(ptr noundef %ftl, i32 noundef %zone_num, i32 noundef %conv108.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call109.i)
  %tobool110.not.i = icmp eq i32 %call109.i, 0
  br i1 %tobool110.not.i, label %do.end117.i, label %if.then111.i

if.then111.i:                                     ; preds = %if.end105.i
  call void @__sanitizer_cov_trace_pc() #15
  %61 = ptrtoint ptr %block.i to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %block.i, align 2
  %63 = ptrtoint ptr %lba_to_phys_table.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %lba_to_phys_table.i, align 4
  %arrayidx113.i = getelementptr i16, ptr %64, i32 %call56.i
  %65 = ptrtoint ptr %arrayidx113.i to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 %62, ptr %arrayidx113.i, align 2
  br label %for.inc.i

do.end117.i:                                      ; preds = %if.end105.i
  call void @__sanitizer_cov_trace_pc() #15
  %call119.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17) #17
  %66 = ptrtoint ptr %block.i to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %block.i, align 2
  %call120.i = call fastcc i32 @sm_erase_block(ptr noundef %ftl, i32 noundef %zone_num, i16 noundef zeroext %67, i32 noundef 1) #13
  br label %for.inc.i

for.inc.i:                                        ; preds = %do.end117.i, %if.then111.i, %do.end94.i.for.inc.i_crit_edge, %if.end88.i, %do.end67.i, %if.then62.i.for.inc.i_crit_edge, %do.end50.i, %if.then45.i.for.inc.i_crit_edge, %if.then36.i, %land.lhs.true.i.for.inc.i_crit_edge
  %68 = ptrtoint ptr %block.i to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %block.i, align 2
  %inc.i = add i16 %69, 1
  store i16 %inc.i, ptr %block.i, align 2
  %conv.i = zext i16 %inc.i to i32
  %70 = ptrtoint ptr %zone_size.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %zone_size.i, align 4
  %cmp.i = icmp sgt i32 %71, %conv.i
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.for.end.i_crit_edge

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %72 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %tobool121.not.i = icmp eq i32 %72, 0
  br i1 %tobool121.not.i, label %for.end.i.if.end128.i_crit_edge, label %do.end125.i

for.end.i.if.end128.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end128.i

do.end125.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %call127.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20) #17
  br label %if.end128.i

if.end128.i:                                      ; preds = %do.end125.i, %for.end.i.if.end128.i_crit_edge
  %73 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 1, ptr %arrayidx, align 4
  %74 = ptrtoint ptr %free_sectors.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %free_sectors.i, align 4
  %out.i = getelementptr inbounds %struct.__kfifo, ptr %free_sectors.i, i32 0, i32 1
  %76 = ptrtoint ptr %out.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %out.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %75, i32 %77)
  %tobool131.not.i = icmp eq i32 %75, %77
  br i1 %tobool131.not.i, label %do.end135.i, label %if.end138.i

do.end135.i:                                      ; preds = %if.end128.i
  call void @__sanitizer_cov_trace_pc() #15
  %call137.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, i32 noundef %zone_num) #17
  br label %sm_init_zone.exit

if.end138.i:                                      ; preds = %if.end128.i
  call void @get_random_bytes(ptr noundef nonnull %i.i, i32 noundef 2) #13
  %78 = ptrtoint ptr %free_sectors.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %free_sectors.i, align 4
  %80 = ptrtoint ptr %out.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %out.i, align 4
  %sub144.i = sub i32 %79, %81
  %div242.i = lshr i32 %sub144.i, 1
  %82 = ptrtoint ptr %i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %i.i, align 4
  %rem.i = urem i32 %83, %div242.i
  %dec255.i = add nsw i32 %rem.i, -1
  store i32 %dec255.i, ptr %i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %tobool145.not256.i = icmp eq i32 %rem.i, 0
  br i1 %tobool145.not256.i, label %if.end138.i.sm_init_zone.exit_crit_edge, label %if.end138.i.while.body.i_crit_edge

if.end138.i.while.body.i_crit_edge:               ; preds = %if.end138.i
  br label %while.body.i

if.end138.i.sm_init_zone.exit_crit_edge:          ; preds = %if.end138.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sm_init_zone.exit

while.body.i:                                     ; preds = %if.end174.i.while.body.i_crit_edge, %if.end138.i.while.body.i_crit_edge
  %call153.i = call i32 @__kfifo_out(ptr noundef %free_sectors.i, ptr noundef nonnull %block.i, i32 noundef 2) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call153.i)
  %cmp155.not.i = icmp eq i32 %call153.i, 2
  br i1 %cmp155.not.i, label %while.body.i.if.end174.i_crit_edge, label %do.end168.i, !prof !191

while.body.i.if.end174.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end174.i

do.end168.i:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 873, i32 noundef 9, ptr noundef null) #13
  br label %if.end174.i

if.end174.i:                                      ; preds = %do.end168.i, %while.body.i.if.end174.i_crit_edge
  %call189.i = call i32 @__kfifo_in(ptr noundef %free_sectors.i, ptr noundef nonnull %block.i, i32 noundef 2) #13
  %84 = ptrtoint ptr %i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %.pr.i = load i32, ptr %i.i, align 4
  %dec.i = add i32 %.pr.i, -1
  store i32 %dec.i, ptr %i.i, align 4
  %tobool145.not.i = icmp eq i32 %.pr.i, 0
  br i1 %tobool145.not.i, label %if.end174.i.sm_init_zone.exit_crit_edge, label %if.end174.i.while.body.i_crit_edge

if.end174.i.while.body.i_crit_edge:               ; preds = %if.end174.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i

if.end174.i.sm_init_zone.exit_crit_edge:          ; preds = %if.end174.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sm_init_zone.exit

sm_init_zone.exit:                                ; preds = %if.end174.i.sm_init_zone.exit_crit_edge, %if.end138.i.sm_init_zone.exit_crit_edge, %do.end135.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i.i) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %block.i) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %oob.i) #13
  br label %cleanup

if.then11:                                        ; preds = %if.then28.i, %if.then13.i, %if.end7.i.i.if.then11_crit_edge, %kmalloc_array.exit.thread.i
  %retval.0.i.ph = phi ptr [ inttoptr (i32 -12 to ptr), %kmalloc_array.exit.thread.i ], [ inttoptr (i32 -12 to ptr), %if.end7.i.i.if.then11_crit_edge ], [ inttoptr (i32 -5 to ptr), %if.then28.i ], [ inttoptr (i32 -12 to ptr), %if.then13.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i.i) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %block.i) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %oob.i) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then11, %sm_init_zone.exit, %do.end7.cleanup_crit_edge
  %retval.0 = phi ptr [ %retval.0.i.ph, %if.then11 ], [ %arrayidx, %sm_init_zone.exit ], [ %arrayidx, %do.end7.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sm_read_sector(ptr nocapture noundef %ftl, i32 noundef %zone, i32 noundef %block, i32 noundef %boffset, ptr noundef %buffer, ptr noundef %oob) unnamed_addr #2 align 64 {
entry:
  %ecc.i = alloca [3 x i8], align 1
  %ops = alloca %struct.mtd_oob_ops, align 4
  %tmp_oob = alloca %struct.sm_oob, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ftl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ftl, align 4
  %mtd1 = getelementptr inbounds %struct.mtd_blktrans_dev, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %mtd1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mtd1, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %ops) #13
  %4 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops, i32 0, i32 2
  %5 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops, i32 0, i32 4
  %6 = call ptr @memset(ptr %4, i32 255, i32 12)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp_oob) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %block)
  %cmp = icmp eq i32 %block, -1
  %7 = call ptr @memset(ptr %tmp_oob, i32 255, i32 16)
  br i1 %cmp, label %if.then, label %if.end3

if.then:                                          ; preds = %entry
  %tobool.not = icmp eq ptr %buffer, null
  br i1 %tobool.not, label %if.then.cleanup_crit_edge, label %if.then2

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %8 = call ptr @memset(ptr %buffer, i32 255, i32 512)
  br label %cleanup

if.end3:                                          ; preds = %entry
  %9 = getelementptr inbounds %struct.sm_oob, ptr %tmp_oob, i32 0, i32 6
  %10 = getelementptr inbounds %struct.sm_oob, ptr %tmp_oob, i32 0, i32 4
  %11 = getelementptr inbounds %struct.sm_oob, ptr %tmp_oob, i32 0, i32 1
  %12 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops, i32 0, i32 7
  %13 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops, i32 0, i32 6
  %14 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops, i32 0, i32 5
  %15 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops, i32 0, i32 3
  %16 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops, i32 0, i32 1
  %tobool4.not = icmp eq ptr %oob, null
  %spec.store.select = select i1 %tobool4.not, ptr %tmp_oob, ptr %oob
  %smallpagenand = getelementptr inbounds %struct.sm_ftl, ptr %ftl, i32 0, i32 7
  %17 = ptrtoint ptr %smallpagenand to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %smallpagenand, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool7.not = icmp eq i32 %18, 0
  %cond = select i1 %tobool7.not, i32 0, i32 2
  %19 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %cond, ptr %ops, align 4
  %20 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %14, align 4
  %21 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 16, ptr %15, align 4
  %22 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %spec.store.select, ptr %12, align 4
  %23 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 512, ptr %16, align 4
  %24 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %buffer, ptr %13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %zone)
  %cmp10 = icmp eq i32 %zone, 0
  %cis_block = getelementptr inbounds %struct.sm_ftl, ptr %ftl, i32 0, i32 10
  %cis_boffset = getelementptr inbounds %struct.sm_ftl, ptr %ftl, i32 0, i32 11
  %tobool66.not = icmp eq ptr %buffer, null
  %oob.sroa.gep = getelementptr inbounds %struct.sm_oob, ptr %oob, i32 0, i32 1
  %spec.store.select.sroa.sel = select i1 %tobool4.not, ptr %11, ptr %oob.sroa.gep
  %25 = getelementptr inbounds [3 x i8], ptr %ecc.i, i32 0, i32 1
  %26 = getelementptr inbounds [3 x i8], ptr %ecc.i, i32 0, i32 2
  %oob.sroa.gep175 = getelementptr inbounds %struct.sm_oob, ptr %oob, i32 0, i32 6
  %spec.store.select.sroa.sel176 = select i1 %tobool4.not, ptr %9, ptr %oob.sroa.gep175
  %add.ptr.i = getelementptr i8, ptr %buffer, i32 256
  %oob.sroa.gep178 = getelementptr inbounds %struct.sm_oob, ptr %oob, i32 0, i32 4
  %spec.store.select.sroa.sel179 = select i1 %tobool4.not, ptr %10, ptr %oob.sroa.gep178
  br label %again

again:                                            ; preds = %again.backedge, %if.end3
  %try.0 = phi i32 [ 0, %if.end3 ], [ %inc, %again.backedge ]
  %ret.0 = phi i32 [ -5, %if.end3 ], [ %call22, %again.backedge ]
  %inc = add i32 %try.0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %try.0)
  %tobool8.not = icmp eq i32 %try.0, 0
  br i1 %tobool8.not, label %again.if.end20_crit_edge, label %if.then9

again.if.end20_crit_edge:                         ; preds = %again
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end20

if.then9:                                         ; preds = %again
  br i1 %cmp10, label %land.lhs.true, label %if.then9.if.end15_crit_edge

if.then9.if.end15_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15

land.lhs.true:                                    ; preds = %if.then9
  %27 = ptrtoint ptr %cis_block to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %cis_block, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %block)
  %cmp11 = icmp eq i32 %28, %block
  br i1 %cmp11, label %land.lhs.true12, label %land.lhs.true.if.end15_crit_edge

land.lhs.true.if.end15_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15

land.lhs.true12:                                  ; preds = %land.lhs.true
  %29 = ptrtoint ptr %cis_boffset to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %cis_boffset, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %boffset)
  %cmp13 = icmp eq i32 %30, %boffset
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %inc)
  %cmp16 = icmp eq i32 %inc, 3
  %or.cond = select i1 %cmp13, i1 true, i1 %cmp16
  br i1 %or.cond, label %land.lhs.true12.cleanup_crit_edge, label %land.lhs.true12.lor.lhs.false_crit_edge

land.lhs.true12.lor.lhs.false_crit_edge:          ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #15
  br label %lor.lhs.false

land.lhs.true12.cleanup_crit_edge:                ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end15:                                         ; preds = %land.lhs.true.if.end15_crit_edge, %if.then9.if.end15_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %inc)
  %cmp16.old = icmp eq i32 %inc, 3
  br i1 %cmp16.old, label %if.end15.cleanup_crit_edge, label %if.end15.lor.lhs.false_crit_edge

if.end15.lor.lhs.false_crit_edge:                 ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #15
  br label %lor.lhs.false

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end15.lor.lhs.false_crit_edge, %land.lhs.true12.lor.lhs.false_crit_edge
  %call.i = call fastcc i32 @sm_read_cis(ptr noundef %ftl) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false.if.end20_crit_edge, label %if.then.i

lor.lhs.false.if.end20_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end20

if.then.i:                                        ; preds = %lor.lhs.false
  %unstable.i = getelementptr inbounds %struct.sm_ftl, ptr %ftl, i32 0, i32 9
  %31 = ptrtoint ptr %unstable.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %unstable.i, align 1, !range !190
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool1.not.i = icmp eq i8 %32, 0
  br i1 %tobool1.not.i, label %do.end.i, label %if.then.i.cleanup_crit_edge

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  %call3.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32) #17
  %33 = ptrtoint ptr %unstable.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 1, ptr %unstable.i, align 1
  br label %cleanup

if.end20:                                         ; preds = %lor.lhs.false.if.end20_crit_edge, %again.if.end20_crit_edge
  %call21 = call fastcc i64 @sm_mkoffset(ptr noundef %ftl, i32 noundef %zone, i32 noundef %block, i32 noundef %boffset), !range !195
  %call22 = call i32 @mtd_read_oob(ptr noundef %3, i64 noundef %call21, ptr noundef nonnull %ops) #13
  %34 = zext i32 %call22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values.84)
  switch i32 %call22, label %if.then27 [
    i32 0, label %if.end20.if.end32_crit_edge
    i32 -74, label %if.end20.if.end32_crit_edge203
    i32 -117, label %if.end20.if.end32_crit_edge204
  ]

if.end20.if.end32_crit_edge204:                   ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end32

if.end20.if.end32_crit_edge203:                   ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end32

if.end20.if.end32_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end32

if.then27:                                        ; preds = %if.end20
  %35 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool28.not = icmp eq i32 %35, 0
  br i1 %tobool28.not, label %if.then27.again.backedge_crit_edge, label %do.end

if.then27.again.backedge_crit_edge:               ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #15
  br label %again.backedge

do.end:                                           ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #15
  %call30 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, i32 noundef %block, i32 noundef %zone, i32 noundef %call22) #17
  br label %again.backedge

if.end32:                                         ; preds = %if.end20.if.end32_crit_edge, %if.end20.if.end32_crit_edge203, %if.end20.if.end32_crit_edge204
  %36 = ptrtoint ptr %spec.store.select to i32
  call void @__asan_loadN_noabort(i32 %36, i32 4)
  %37 = load i32, ptr %spec.store.select, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %37)
  %cmp33.not = icmp eq i32 %37, -1
  br i1 %cmp33.not, label %if.end32.if.end38_crit_edge, label %land.lhs.true34

if.end32.if.end38_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end38

land.lhs.true34:                                  ; preds = %if.end32
  %neg = xor i32 %37, -1
  %38 = call i32 @llvm.ctpop.i32(i32 %neg) #13, !range !196
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %38)
  %cmp1.i = icmp ult i32 %38, 2
  br i1 %cmp1.i, label %land.lhs.true34.if.end38_crit_edge, label %land.lhs.true34.again.backedge_crit_edge

land.lhs.true34.again.backedge_crit_edge:         ; preds = %land.lhs.true34
  call void @__sanitizer_cov_trace_pc() #15
  br label %again.backedge

land.lhs.true34.if.end38_crit_edge:               ; preds = %land.lhs.true34
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end38

if.end38:                                         ; preds = %land.lhs.true34.if.end38_crit_edge, %if.end32.if.end38_crit_edge
  %39 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %40)
  %cmp39.not = icmp eq i32 %40, 16
  br i1 %cmp39.not, label %if.end38.if.end57_crit_edge, label %do.end51, !prof !191

if.end38.if.end57_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end57

do.end51:                                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 296, i32 noundef 9, ptr noundef null) #13
  br label %if.end57

if.end57:                                         ; preds = %do.end51, %if.end38.if.end57_crit_edge
  br i1 %tobool66.not, label %if.end57.cleanup_crit_edge, label %land.rhs

if.end57.cleanup_crit_edge:                       ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

land.rhs:                                         ; preds = %if.end57
  %41 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %42)
  %cmp67.not = icmp eq i32 %42, 512
  br i1 %cmp67.not, label %land.rhs.cond.false.i_crit_edge, label %do.end83, !prof !191

land.rhs.cond.false.i_crit_edge:                  ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.false.i

do.end83:                                         ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 297, i32 noundef 9, ptr noundef null) #13
  br label %cond.false.i

cond.false.i:                                     ; preds = %do.end83, %land.rhs.cond.false.i_crit_edge
  %43 = ptrtoint ptr %spec.store.select.sroa.sel to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %spec.store.select.sroa.sel, align 1
  %conv153.i = zext i8 %44 to i32
  %call.i.i = call i32 @__sw_hweight16(i32 noundef %conv153.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %call.i.i)
  %cmp.i = icmp ult i32 %call.i.i, 5
  br i1 %cmp.i, label %if.then102, label %if.end111

if.then102:                                       ; preds = %cond.false.i
  %45 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool103.not = icmp eq i32 %45, 0
  br i1 %tobool103.not, label %if.then102.again.backedge_crit_edge, label %do.end107

if.then102.again.backedge_crit_edge:              ; preds = %if.then102
  call void @__sanitizer_cov_trace_pc() #15
  br label %again.backedge

do.end107:                                        ; preds = %if.then102
  call void @__sanitizer_cov_trace_pc() #15
  %call109 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, i32 noundef %block, i32 noundef %zone) #17
  br label %again.backedge

if.end111:                                        ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -74, i32 %call22)
  %cmp.i170.not = icmp eq i32 %call22, -74
  br i1 %cmp.i170.not, label %if.end111.if.then120_crit_edge, label %lor.lhs.false114

if.end111.if.then120_crit_edge:                   ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then120

lor.lhs.false114:                                 ; preds = %if.end111
  %46 = ptrtoint ptr %smallpagenand to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %smallpagenand, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool116.not = icmp eq i32 %47, 0
  br i1 %tobool116.not, label %lor.lhs.false114.cleanup_crit_edge, label %land.lhs.true117

lor.lhs.false114.cleanup_crit_edge:               ; preds = %lor.lhs.false114
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

land.lhs.true117:                                 ; preds = %lor.lhs.false114
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %ecc.i) #13
  %48 = ptrtoint ptr %ecc.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 -1, ptr %ecc.i, align 1, !annotation !197
  %49 = ptrtoint ptr %25 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 -1, ptr %25, align 1, !annotation !197
  %50 = ptrtoint ptr %26 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 -1, ptr %26, align 1, !annotation !197
  %call.i171 = call i32 @ecc_sw_hamming_calculate(ptr noundef nonnull %buffer, i32 noundef 256, ptr noundef nonnull %ecc.i, i1 noundef zeroext true) #13
  %call4.i = call i32 @ecc_sw_hamming_correct(ptr noundef nonnull %buffer, ptr noundef nonnull %ecc.i, ptr noundef %spec.store.select.sroa.sel176, i32 noundef 256, i1 noundef zeroext true) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp.i172 = icmp slt i32 %call4.i, 0
  br i1 %cmp.i172, label %land.lhs.true117.sm_correct_sector.exit.thread_crit_edge, label %if.end.i

land.lhs.true117.sm_correct_sector.exit.thread_crit_edge: ; preds = %land.lhs.true117
  call void @__sanitizer_cov_trace_pc() #15
  br label %sm_correct_sector.exit.thread

if.end.i:                                         ; preds = %land.lhs.true117
  %call7.i = call i32 @ecc_sw_hamming_calculate(ptr noundef %add.ptr.i, i32 noundef 256, ptr noundef nonnull %ecc.i, i1 noundef zeroext true) #13
  %call11.i = call i32 @ecc_sw_hamming_correct(ptr noundef %add.ptr.i, ptr noundef nonnull %ecc.i, ptr noundef %spec.store.select.sroa.sel179, i32 noundef 256, i1 noundef zeroext true) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %cmp12.i = icmp slt i32 %call11.i, 0
  br i1 %cmp12.i, label %if.end.i.sm_correct_sector.exit.thread_crit_edge, label %sm_correct_sector.exit

if.end.i.sm_correct_sector.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sm_correct_sector.exit.thread

sm_correct_sector.exit.thread:                    ; preds = %if.end.i.sm_correct_sector.exit.thread_crit_edge, %land.lhs.true117.sm_correct_sector.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %ecc.i) #13
  br label %if.then120

sm_correct_sector.exit:                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %ecc.i) #13
  br label %cleanup

if.then120:                                       ; preds = %sm_correct_sector.exit.thread, %if.end111.if.then120_crit_edge
  %51 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool121.not = icmp eq i32 %51, 0
  br i1 %tobool121.not, label %if.then120.again.backedge_crit_edge, label %do.end125

if.then120.again.backedge_crit_edge:              ; preds = %if.then120
  call void @__sanitizer_cov_trace_pc() #15
  br label %again.backedge

again.backedge:                                   ; preds = %do.end125, %if.then120.again.backedge_crit_edge, %do.end107, %if.then102.again.backedge_crit_edge, %land.lhs.true34.again.backedge_crit_edge, %do.end, %if.then27.again.backedge_crit_edge
  br label %again

do.end125:                                        ; preds = %if.then120
  call void @__sanitizer_cov_trace_pc() #15
  %call127 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, i32 noundef %block, i32 noundef %zone) #17
  br label %again.backedge

cleanup:                                          ; preds = %sm_correct_sector.exit, %lor.lhs.false114.cleanup_crit_edge, %if.end57.cleanup_crit_edge, %do.end.i, %if.then.i.cleanup_crit_edge, %if.end15.cleanup_crit_edge, %land.lhs.true12.cleanup_crit_edge, %if.then2, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then2 ], [ 0, %if.then.cleanup_crit_edge ], [ 0, %sm_correct_sector.exit ], [ %ret.0, %do.end.i ], [ %ret.0, %if.then.i.cleanup_crit_edge ], [ %ret.0, %land.lhs.true12.cleanup_crit_edge ], [ %ret.0, %if.end15.cleanup_crit_edge ], [ 0, %lor.lhs.false114.cleanup_crit_edge ], [ 0, %if.end57.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp_oob) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %ops) #13
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__kfifo_alloc(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__kfifo_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__kfifo_in(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sm_read_lba(ptr nocapture noundef readonly %oob) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(16) %oob, ptr noundef nonnull dereferenceable(16) @sm_read_lba.erased_pattern, i32 16) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool.not = icmp eq i32 %bcmp, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %lba_copy1 = getelementptr inbounds %struct.sm_oob, ptr %oob, i32 0, i32 3
  %0 = ptrtoint ptr %lba_copy1 to i32
  call void @__asan_loadN_noabort(i32 %0, i32 2)
  %1 = load i16, ptr %lba_copy1, align 1
  %lba_copy2 = getelementptr inbounds %struct.sm_oob, ptr %oob, i32 0, i32 5
  %2 = ptrtoint ptr %lba_copy2 to i32
  call void @__asan_loadN_noabort(i32 %2, i32 2)
  %3 = load i16, ptr %lba_copy2, align 1
  %xor26 = xor i16 %3, %1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %xor26)
  %tobool5.not = icmp eq i16 %xor26, 0
  %4 = tail call i16 @llvm.ctpop.i16(i16 %xor26), !range !198
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %4)
  %cmp1.i = icmp ult i16 %4, 2
  %or.cond = or i1 %tobool5.not, %cmp1.i
  br i1 %or.cond, label %if.end9, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %5 = ptrtoint ptr %lba_copy1 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %lba_copy1, align 1
  %7 = and i8 %6, -8
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %7)
  %cmp.not.i27 = icmp eq i8 %7, 16
  br i1 %cmp.not.i27, label %cond.false.i, label %if.end9.if.then14_crit_edge

if.end9.if.then14_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then14

cond.false.i:                                     ; preds = %if.end9
  %8 = ptrtoint ptr %lba_copy1 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %lba_copy1, align 2
  %conv139.i = zext i16 %9 to i32
  %call.i.i = tail call i32 @__sw_hweight16(i32 noundef %conv139.i) #13
  %and140.i = and i32 %call.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and140.i)
  %tobool141.not.i = icmp eq i32 %and140.i, 0
  br i1 %tobool141.not.i, label %sm_get_lba.exit, label %cond.false.i.if.then14_crit_edge

cond.false.i.if.then14_crit_edge:                 ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then14

sm_get_lba.exit:                                  ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx144.i = getelementptr %struct.sm_oob, ptr %oob, i32 0, i32 3, i32 1
  br label %cleanup.sink.split

if.then14:                                        ; preds = %cond.false.i.if.then14_crit_edge, %if.end9.if.then14_crit_edge
  %10 = ptrtoint ptr %lba_copy2 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %lba_copy2, align 1
  %12 = and i8 %11, -8
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %12)
  %cmp.not.i28 = icmp eq i8 %12, 16
  br i1 %cmp.not.i28, label %cond.false.i53, label %if.then14.cleanup_crit_edge

if.then14.cleanup_crit_edge:                      ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

cond.false.i53:                                   ; preds = %if.then14
  %13 = ptrtoint ptr %lba_copy2 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %lba_copy2, align 2
  %conv139.i51 = zext i16 %14 to i32
  %call.i.i52 = tail call i32 @__sw_hweight16(i32 noundef %conv139.i51) #13
  %and140.i55 = and i32 %call.i.i52, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and140.i55)
  %tobool141.not.i56 = icmp eq i32 %and140.i55, 0
  br i1 %tobool141.not.i56, label %if.end143.i62, label %cond.false.i53.cleanup_crit_edge

cond.false.i53.cleanup_crit_edge:                 ; preds = %cond.false.i53
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end143.i62:                                    ; preds = %cond.false.i53
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx144.i58 = getelementptr %struct.sm_oob, ptr %oob, i32 0, i32 5, i32 1
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end143.i62, %sm_get_lba.exit
  %arrayidx144.i.sink = phi ptr [ %arrayidx144.i, %sm_get_lba.exit ], [ %arrayidx144.i58, %if.end143.i62 ]
  %lba_copy1.sink = phi ptr [ %lba_copy1, %sm_get_lba.exit ], [ %lba_copy2, %if.end143.i62 ]
  %15 = ptrtoint ptr %arrayidx144.i.sink to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx144.i.sink, align 1
  %17 = lshr i8 %16, 1
  %18 = zext i8 %17 to i32
  %19 = ptrtoint ptr %lba_copy1.sink to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %lba_copy1.sink, align 1
  %21 = and i8 %20, 7
  %and149.i = zext i8 %21 to i32
  %shl.i = shl nuw nsw i32 %and149.i, 7
  %or.i = or i32 %shl.i, %18
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %cond.false.i53.cleanup_crit_edge, %if.then14.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %entry.cleanup_crit_edge ], [ -2, %if.then14.cleanup_crit_edge ], [ -2, %cond.false.i53.cleanup_crit_edge ], [ -2, %if.end.cleanup_crit_edge ], [ %or.i, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sm_check_block(ptr nocapture noundef %ftl, i32 noundef %zone, i32 noundef %block) unnamed_addr #2 align 64 {
entry:
  %oob = alloca %struct.sm_oob, align 4
  %lbas = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %oob) #13
  %0 = call ptr @memset(ptr %oob, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %lbas) #13
  %1 = call ptr @memcpy(ptr %lbas, ptr @__const.sm_check_block.lbas, i32 16)
  %block_size = getelementptr inbounds %struct.sm_ftl, ptr %ftl, i32 0, i32 3
  %2 = ptrtoint ptr %block_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %block_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp31 = icmp sgt i32 %3, 0
  br i1 %cmp31, label %entry.for.body_crit_edge, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.033 = phi i32 [ %i.129, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %boffset.032 = phi i32 [ %add, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %call = call fastcc i32 @sm_read_sector(ptr noundef %ftl, i32 noundef %zone, i32 noundef %block, i32 noundef %boffset.032, ptr noundef null, ptr noundef nonnull %oob)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %for.body
  %call1 = call fastcc i32 @sm_read_lba(ptr noundef nonnull %oob)
  %arrayidx = getelementptr [4 x i32], ptr %lbas, i32 0, i32 %i.033
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %call1)
  %cmp2.not = icmp eq i32 %5, %call1
  br i1 %cmp2.not, label %if.end.for.inc_crit_edge, label %if.end5

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.end5:                                          ; preds = %if.end
  %inc = add i32 %i.033, 1
  %arrayidx4 = getelementptr [4 x i32], ptr %lbas, i32 0, i32 %inc
  %6 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %call1, ptr %arrayidx4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %inc)
  %cmp6 = icmp eq i32 %inc, 3
  br i1 %cmp6, label %if.end5.cleanup_crit_edge, label %if.end5.for.inc_crit_edge

if.end5.for.inc_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.inc:                                          ; preds = %if.end5.for.inc_crit_edge, %if.end.for.inc_crit_edge
  %i.129 = phi i32 [ %inc, %if.end5.for.inc_crit_edge ], [ %i.033, %if.end.for.inc_crit_edge ]
  %add = add i32 %boffset.032, 512
  %7 = ptrtoint ptr %block_size to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %block_size, align 4
  %cmp = icmp slt i32 %add, %8
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %i.129)
  %cmp9 = icmp eq i32 %i.129, 2
  br i1 %cmp9, label %if.then10, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then10:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  %conv = trunc i32 %block to i16
  %call11 = call fastcc i32 @sm_erase_block(ptr noundef %ftl, i32 noundef %zone, i16 noundef zeroext %conv, i32 noundef 1)
  br label %cleanup

cleanup:                                          ; preds = %if.then10, %for.end.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %for.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.then10 ], [ 0, %for.end.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ -5, %if.end5.cleanup_crit_edge ], [ -2, %for.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %lbas) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %oob) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sm_erase_block(ptr nocapture noundef %ftl, i32 noundef %zone_num, i16 noundef zeroext %block, i32 noundef %put_free) unnamed_addr #2 align 64 {
entry:
  %block.addr = alloca i16, align 2
  %erase = alloca %struct.erase_info, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %block.addr to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 %block, ptr %block.addr, align 2
  %zones = getelementptr inbounds %struct.sm_ftl, ptr %ftl, i32 0, i32 2
  %1 = ptrtoint ptr %zones to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %zones, align 4
  %3 = ptrtoint ptr %ftl to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ftl, align 4
  %mtd1 = getelementptr inbounds %struct.mtd_blktrans_dev, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %mtd1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mtd1, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %erase) #13
  %7 = getelementptr inbounds %struct.erase_info, ptr %erase, i32 0, i32 1
  %conv = zext i16 %block to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %zone_num)
  %cmp.i = icmp slt i32 %zone_num, 0
  %8 = getelementptr inbounds i8, ptr %erase, i32 16
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 -1, ptr %8, align 8
  br i1 %cmp.i, label %entry.do.end37.i_crit_edge, label %lor.rhs.i

entry.do.end37.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end37.i

lor.rhs.i:                                        ; preds = %entry
  %zone_count.i = getelementptr inbounds %struct.sm_ftl, ptr %ftl, i32 0, i32 5
  %10 = ptrtoint ptr %zone_count.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %zone_count.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %zone_num)
  %cmp21.not.i = icmp sgt i32 %11, %zone_num
  br i1 %cmp21.not.i, label %lor.rhs.i.if.end43.i_crit_edge, label %lor.rhs.i.do.end37.i_crit_edge, !prof !191

lor.rhs.i.do.end37.i_crit_edge:                   ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end37.i

lor.rhs.i.if.end43.i_crit_edge:                   ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end43.i

do.end37.i:                                       ; preds = %lor.rhs.i.do.end37.i_crit_edge, %entry.do.end37.i_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 195, i32 noundef 9, ptr noundef null) #13
  br label %if.end43.i

if.end43.i:                                       ; preds = %do.end37.i, %lor.rhs.i.if.end43.i_crit_edge
  %zone_size.i = getelementptr inbounds %struct.sm_ftl, ptr %ftl, i32 0, i32 4
  %12 = ptrtoint ptr %zone_size.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %zone_size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %conv)
  %cmp52.not.i = icmp sgt i32 %13, %conv
  br i1 %cmp52.not.i, label %if.end43.i.if.end74.i_crit_edge, label %do.end68.i, !prof !191

if.end43.i.if.end74.i_crit_edge:                  ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end74.i

do.end68.i:                                       ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 196, i32 noundef 9, ptr noundef null) #13
  br label %if.end74.i

if.end74.i:                                       ; preds = %do.end68.i, %if.end43.i.if.end74.i_crit_edge
  %block_size.i = getelementptr inbounds %struct.sm_ftl, ptr %ftl, i32 0, i32 3
  %14 = ptrtoint ptr %block_size.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %block_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp83.not.i = icmp sgt i32 %15, 0
  br i1 %cmp83.not.i, label %if.end74.i.sm_mkoffset.exit_crit_edge, label %do.end99.i, !prof !191

if.end74.i.sm_mkoffset.exit_crit_edge:            ; preds = %if.end74.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sm_mkoffset.exit

do.end99.i:                                       ; preds = %if.end74.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 197, i32 noundef 9, ptr noundef null) #13
  br label %sm_mkoffset.exit

sm_mkoffset.exit:                                 ; preds = %do.end99.i, %if.end74.i.sm_mkoffset.exit_crit_edge
  %mul.i = shl i32 %zone_num, 10
  %add.i = add i32 %mul.i, %conv
  %16 = ptrtoint ptr %block_size.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %block_size.i, align 4
  %mul117.i = mul i32 %17, %add.i
  %conv.i = sext i32 %mul117.i to i64
  %18 = ptrtoint ptr %erase to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %conv.i, ptr %erase, align 8
  %conv2 = sext i32 %17 to i64
  %19 = ptrtoint ptr %7 to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %conv2, ptr %7, align 8
  %unstable = getelementptr inbounds %struct.sm_ftl, ptr %ftl, i32 0, i32 9
  %20 = ptrtoint ptr %unstable to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %unstable, align 1, !range !190
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool.not = icmp eq i8 %21, 0
  br i1 %tobool.not, label %do.body, label %sm_mkoffset.exit.cleanup_crit_edge

sm_mkoffset.exit.cleanup_crit_edge:               ; preds = %sm_mkoffset.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.body:                                          ; preds = %sm_mkoffset.exit
  %readonly = getelementptr inbounds %struct.sm_ftl, ptr %ftl, i32 0, i32 8
  %22 = ptrtoint ptr %readonly to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %readonly, align 4, !range !190
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool3.not = icmp eq i8 %23, 0
  br i1 %tobool3.not, label %do.end13, label %do.body7, !prof !191

do.body7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/mtd/sm_ftl.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 477, 0\0A.popsection", ""() #13, !srcloc !199
  unreachable

do.end13:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %zone_num)
  %cmp = icmp eq i32 %zone_num, 0
  br i1 %cmp, label %land.lhs.true, label %do.end13.if.end26_crit_edge

do.end13.if.end26_crit_edge:                      ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end26

land.lhs.true:                                    ; preds = %do.end13
  %24 = ptrtoint ptr %block.addr to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %block.addr, align 2
  %conv15 = zext i16 %25 to i32
  %cis_block = getelementptr inbounds %struct.sm_ftl, ptr %ftl, i32 0, i32 10
  %26 = ptrtoint ptr %cis_block to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cis_block, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %conv15)
  %cmp16 = icmp eq i32 %27, %conv15
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %25)
  %cmp19 = icmp eq i16 %25, 0
  %or.cond = or i1 %cmp19, %cmp16
  br i1 %or.cond, label %do.end24, label %land.lhs.true.if.end26_crit_edge

land.lhs.true.if.end26_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end26

do.end24:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  %call25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25) #17
  br label %cleanup

if.end26:                                         ; preds = %land.lhs.true.if.end26_crit_edge, %do.end13.if.end26_crit_edge
  %call27 = call i32 @mtd_erase(ptr noundef %6, ptr noundef nonnull %erase) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end36, label %do.end32

do.end32:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #15
  %28 = ptrtoint ptr %block.addr to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %block.addr, align 2
  %conv34 = zext i16 %29 to i32
  %call35 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, i32 noundef %conv34, i32 noundef %zone_num) #17
  call fastcc void @sm_mark_block_bad(ptr noundef %ftl, i32 noundef %zone_num, i32 noundef %conv34)
  br label %cleanup

if.end36:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %put_free)
  %tobool37.not = icmp eq i32 %put_free, 0
  br i1 %tobool37.not, label %if.end36.cleanup_crit_edge, label %if.then38

if.end36.cleanup_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then38:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #15
  %free_sectors = getelementptr %struct.ftl_zone, ptr %2, i32 %zone_num, i32 2
  %call40 = call i32 @__kfifo_in(ptr noundef %free_sectors, ptr noundef nonnull %block.addr, i32 noundef 2) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then38, %if.end36.cleanup_crit_edge, %do.end32, %do.end24, %sm_mkoffset.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %do.end24 ], [ -5, %do.end32 ], [ -5, %sm_mkoffset.exit.cleanup_crit_edge ], [ 0, %if.then38 ], [ 0, %if.end36.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %erase) #13
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__kfifo_out(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight16(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i64 @sm_mkoffset(ptr nocapture noundef readonly %ftl, i32 noundef %zone, i32 noundef %block, i32 noundef %boffset) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %boffset, 511
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end, !prof !191

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 194, i32 noundef 9, ptr noundef null) #13
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %zone)
  %cmp = icmp slt i32 %zone, 0
  br i1 %cmp, label %if.end.do.end37_crit_edge, label %lor.rhs

if.end.do.end37_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end37

lor.rhs:                                          ; preds = %if.end
  %zone_count = getelementptr inbounds %struct.sm_ftl, ptr %ftl, i32 0, i32 5
  %0 = ptrtoint ptr %zone_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %zone_count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %zone)
  %cmp21.not = icmp sgt i32 %1, %zone
  br i1 %cmp21.not, label %lor.rhs.if.end43_crit_edge, label %lor.rhs.do.end37_crit_edge, !prof !191

lor.rhs.do.end37_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end37

lor.rhs.if.end43_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end43

do.end37:                                         ; preds = %lor.rhs.do.end37_crit_edge, %if.end.do.end37_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 195, i32 noundef 9, ptr noundef null) #13
  br label %if.end43

if.end43:                                         ; preds = %do.end37, %lor.rhs.if.end43_crit_edge
  %zone_size = getelementptr inbounds %struct.sm_ftl, ptr %ftl, i32 0, i32 4
  %2 = ptrtoint ptr %zone_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %zone_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %block)
  %cmp52.not = icmp sgt i32 %3, %block
  br i1 %cmp52.not, label %if.end43.if.end74_crit_edge, label %do.end68, !prof !191

if.end43.if.end74_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end74

do.end68:                                         ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 196, i32 noundef 9, ptr noundef null) #13
  br label %if.end74

if.end74:                                         ; preds = %do.end68, %if.end43.if.end74_crit_edge
  %block_size = getelementptr inbounds %struct.sm_ftl, ptr %ftl, i32 0, i32 3
  %4 = ptrtoint ptr %block_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %block_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %boffset)
  %cmp83.not = icmp sgt i32 %5, %boffset
  br i1 %cmp83.not, label %if.end74.if.end105_crit_edge, label %do.end99, !prof !191

if.end74.if.end105_crit_edge:                     ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end105

do.end99:                                         ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 197, i32 noundef 9, ptr noundef null) #13
  br label %if.end105

if.end105:                                        ; preds = %do.end99, %if.end74.if.end105_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %block)
  %cmp113 = icmp eq i32 %block, -1
  br i1 %cmp113, label %if.end105.return_crit_edge, label %if.end115

if.end105.return_crit_edge:                       ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.end115:                                        ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #15
  %mul = shl i32 %zone, 10
  %add = add i32 %mul, %block
  %6 = ptrtoint ptr %block_size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %block_size, align 4
  %mul117 = mul i32 %7, %add
  %add118 = add i32 %mul117, %boffset
  %conv = sext i32 %add118 to i64
  br label %return

return:                                           ; preds = %if.end115, %if.end105.return_crit_edge
  %retval.0 = phi i64 [ %conv, %if.end115 ], [ -1, %if.end105.return_crit_edge ]
  ret i64 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_erase(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sm_mark_block_bad(ptr nocapture noundef %ftl, i32 noundef %zone, i32 noundef %block) unnamed_addr #2 align 64 {
entry:
  %oob = alloca %struct.sm_oob, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %oob) #13
  %0 = getelementptr inbounds %struct.sm_oob, ptr %oob, i32 0, i32 2
  %1 = call ptr @memset(ptr %oob, i32 255, i32 16)
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -16, ptr %0, align 1
  %unstable = getelementptr inbounds %struct.sm_ftl, ptr %ftl, i32 0, i32 9
  %3 = ptrtoint ptr %unstable to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %unstable, align 1, !range !190
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call fastcc i32 @sm_read_cis(ptr noundef %ftl) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %do.end, label %if.then.i

if.then.i:                                        ; preds = %if.end
  %5 = ptrtoint ptr %unstable to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %unstable, align 1, !range !190
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool1.not.i = icmp eq i8 %6, 0
  br i1 %tobool1.not.i, label %do.end.i, label %if.then.i.cleanup_crit_edge

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  %call3.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32) #17
  %7 = ptrtoint ptr %unstable to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %unstable, align 1
  br label %cleanup

do.end:                                           ; preds = %if.end
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, i32 noundef %block, i32 noundef %zone) #17
  %block_size = getelementptr inbounds %struct.sm_ftl, ptr %ftl, i32 0, i32 3
  %8 = ptrtoint ptr %block_size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %block_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp16 = icmp sgt i32 %9, 0
  br i1 %cmp16, label %do.end.for.body_crit_edge, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %do.end.for.body_crit_edge
  %boffset.017 = phi i32 [ %add, %for.body.for.body_crit_edge ], [ 0, %do.end.for.body_crit_edge ]
  %call5 = call fastcc i32 @sm_write_sector(ptr noundef %ftl, i32 noundef %zone, i32 noundef %block, i32 noundef %boffset.017, ptr noundef null, ptr noundef nonnull %oob)
  %add = add i32 %boffset.017, 512
  %10 = ptrtoint ptr %block_size to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %block_size, align 4
  %cmp = icmp slt i32 %add, %11
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %do.end.cleanup_crit_edge, %do.end.i, %if.then.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %oob) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sm_write_sector(ptr nocapture noundef %ftl, i32 noundef %zone, i32 noundef %block, i32 noundef %boffset, ptr noundef %buffer, ptr noundef %oob) unnamed_addr #2 align 64 {
entry:
  %ops = alloca %struct.mtd_oob_ops, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %ops) #13
  %0 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops, i32 0, i32 1
  %1 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops, i32 0, i32 2
  %2 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops, i32 0, i32 3
  %3 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops, i32 0, i32 4
  %4 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops, i32 0, i32 5
  %5 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops, i32 0, i32 6
  %6 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops, i32 0, i32 7
  %7 = getelementptr inbounds i8, ptr %ops, i32 8
  %8 = call ptr @memset(ptr %7, i32 255, i32 12)
  %9 = ptrtoint ptr %ftl to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ftl, align 4
  %mtd1 = getelementptr inbounds %struct.mtd_blktrans_dev, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %mtd1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mtd1, align 4
  %readonly = getelementptr inbounds %struct.sm_ftl, ptr %ftl, i32 0, i32 8
  %13 = ptrtoint ptr %readonly to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %readonly, align 4, !range !190
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not = icmp eq i8 %14, 0
  br i1 %tobool.not, label %do.end9, label %do.body4, !prof !191

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/mtd/sm_ftl.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 330, 0\0A.popsection", ""() #13, !srcloc !200
  unreachable

do.end9:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %zone)
  %cmp = icmp eq i32 %zone, 0
  br i1 %cmp, label %land.lhs.true, label %do.end9.if.end19_crit_edge

do.end9.if.end19_crit_edge:                       ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end19

land.lhs.true:                                    ; preds = %do.end9
  %cis_block = getelementptr inbounds %struct.sm_ftl, ptr %ftl, i32 0, i32 10
  %15 = ptrtoint ptr %cis_block to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %cis_block, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %block)
  %cmp10 = icmp eq i32 %16, %block
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %block)
  %cmp11 = icmp eq i32 %block, 0
  %or.cond = or i1 %cmp11, %cmp10
  br i1 %or.cond, label %if.then12, label %land.lhs.true.if.end19_crit_edge

land.lhs.true.if.end19_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end19

if.then12:                                        ; preds = %land.lhs.true
  %17 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool13.not = icmp eq i32 %17, 0
  br i1 %tobool13.not, label %if.then12.cleanup_crit_edge, label %do.end17

if.then12.cleanup_crit_edge:                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end17:                                         ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #15
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34) #17
  br label %cleanup

if.end19:                                         ; preds = %land.lhs.true.if.end19_crit_edge, %do.end9.if.end19_crit_edge
  %unstable = getelementptr inbounds %struct.sm_ftl, ptr %ftl, i32 0, i32 9
  %18 = ptrtoint ptr %unstable to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %unstable, align 1, !range !190
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool20.not = icmp eq i8 %19, 0
  br i1 %tobool20.not, label %if.end22, label %if.end19.cleanup_crit_edge

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end22:                                         ; preds = %if.end19
  %smallpagenand = getelementptr inbounds %struct.sm_ftl, ptr %ftl, i32 0, i32 7
  %20 = ptrtoint ptr %smallpagenand to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %smallpagenand, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool23.not = icmp eq i32 %21, 0
  %cond = select i1 %tobool23.not, i32 0, i32 2
  %22 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %cond, ptr %ops, align 4
  %23 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 512, ptr %0, align 4
  %24 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %buffer, ptr %5, align 4
  %25 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %4, align 4
  %26 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 16, ptr %2, align 4
  %27 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %oob, ptr %6, align 4
  %call24 = tail call fastcc i64 @sm_mkoffset(ptr noundef %ftl, i32 noundef %zone, i32 noundef %block, i32 noundef %boffset), !range !195
  %call25 = call i32 @mtd_write_oob(ptr noundef %12, i64 noundef %call24, ptr noundef nonnull %ops) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end37, label %if.then27

if.then27:                                        ; preds = %if.end22
  %28 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool28.not = icmp eq i32 %28, 0
  br i1 %tobool28.not, label %if.then27.if.end35_crit_edge, label %do.end32

if.then27.if.end35_crit_edge:                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end35

do.end32:                                         ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #15
  %call34 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, i32 noundef %block, i32 noundef %zone, i32 noundef %call25) #17
  br label %if.end35

if.end35:                                         ; preds = %do.end32, %if.then27.if.end35_crit_edge
  %call.i = call fastcc i32 @sm_read_cis(ptr noundef %ftl) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end35.cleanup_crit_edge, label %if.then.i

if.end35.cleanup_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then.i:                                        ; preds = %if.end35
  %29 = ptrtoint ptr %unstable to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %unstable, align 1, !range !190
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool1.not.i = icmp eq i8 %30, 0
  br i1 %tobool1.not.i, label %do.end.i, label %if.then.i.cleanup_crit_edge

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  %call3.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32) #17
  %31 = ptrtoint ptr %unstable to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 1, ptr %unstable, align 1
  br label %cleanup

if.end37:                                         ; preds = %if.end22
  %32 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %33)
  %cmp38.not = icmp eq i32 %33, 16
  br i1 %cmp38.not, label %if.end37.if.end60_crit_edge, label %do.end54, !prof !191

if.end37.if.end60_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end60

do.end54:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 360, i32 noundef 9, ptr noundef null) #13
  br label %if.end60

if.end60:                                         ; preds = %do.end54, %if.end37.if.end60_crit_edge
  %tobool69.not = icmp eq ptr %buffer, null
  br i1 %tobool69.not, label %if.end60.cleanup_crit_edge, label %land.rhs

if.end60.cleanup_crit_edge:                       ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

land.rhs:                                         ; preds = %if.end60
  %34 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %35)
  %cmp70.not = icmp eq i32 %35, 512
  br i1 %cmp70.not, label %land.rhs.cleanup_crit_edge, label %do.end86, !prof !191

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end86:                                         ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 361, i32 noundef 9, ptr noundef null) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end86, %land.rhs.cleanup_crit_edge, %if.end60.cleanup_crit_edge, %do.end.i, %if.then.i.cleanup_crit_edge, %if.end35.cleanup_crit_edge, %if.end19.cleanup_crit_edge, %do.end17, %if.then12.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %do.end17 ], [ -5, %if.then12.cleanup_crit_edge ], [ -5, %if.end19.cleanup_crit_edge ], [ 0, %if.end60.cleanup_crit_edge ], [ 0, %do.end86 ], [ 0, %land.rhs.cleanup_crit_edge ], [ %call25, %if.end35.cleanup_crit_edge ], [ %call25, %if.then.i.cleanup_crit_edge ], [ %call25, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %ops) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sm_read_cis(ptr nocapture noundef %ftl) unnamed_addr #2 align 64 {
entry:
  %oob = alloca %struct.sm_oob, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %oob) #13
  %0 = getelementptr inbounds %struct.sm_oob, ptr %oob, i32 0, i32 2
  %cis_block = getelementptr inbounds %struct.sm_ftl, ptr %ftl, i32 0, i32 10
  %1 = call ptr @memset(ptr %oob, i32 255, i32 16)
  %2 = ptrtoint ptr %cis_block to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cis_block, align 4
  %cis_boffset = getelementptr inbounds %struct.sm_ftl, ptr %ftl, i32 0, i32 11
  %4 = ptrtoint ptr %cis_boffset to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cis_boffset, align 4
  %cis_buffer = getelementptr inbounds %struct.sm_ftl, ptr %ftl, i32 0, i32 13
  %6 = ptrtoint ptr %cis_buffer to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cis_buffer, align 4
  %call = call fastcc i32 @sm_read_sector(ptr noundef %ftl, i32 noundef 0, i32 noundef %3, i32 noundef %5, ptr noundef %7, ptr noundef nonnull %oob)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cond.false.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

cond.false.i:                                     ; preds = %entry
  %8 = getelementptr inbounds %struct.sm_oob, ptr %oob, i32 0, i32 1
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %8, align 4
  %conv153.i = zext i8 %10 to i32
  %call.i.i = call i32 @__sw_hweight16(i32 noundef %conv153.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %call.i.i)
  %cmp.i = icmp ult i32 %call.i.i, 5
  br i1 %cmp.i, label %cond.false.i.cleanup_crit_edge, label %cond.false.i29

cond.false.i.cleanup_crit_edge:                   ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

cond.false.i29:                                   ; preds = %cond.false.i
  %11 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %0, align 1
  %conv153.i27 = zext i8 %12 to i32
  %call.i.i28 = call i32 @__sw_hweight16(i32 noundef %conv153.i27) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %call.i.i28)
  %cmp.i31 = icmp ult i32 %call.i.i28, 7
  br i1 %cmp.i31, label %cond.false.i29.cleanup_crit_edge, label %if.end6

cond.false.i29.cleanup_crit_edge:                 ; preds = %cond.false.i29
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end6:                                          ; preds = %cond.false.i29
  call void @__sanitizer_cov_trace_pc() #15
  %13 = ptrtoint ptr %cis_buffer to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cis_buffer, align 4
  %cis_page_offset = getelementptr inbounds %struct.sm_ftl, ptr %ftl, i32 0, i32 12
  %15 = ptrtoint ptr %cis_page_offset to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %cis_page_offset, align 4
  %add.ptr = getelementptr i8, ptr %14, i32 %16
  %bcmp = call i32 @bcmp(ptr noundef dereferenceable(10) %add.ptr, ptr noundef nonnull dereferenceable(10) @cis_signature, i32 10) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool9.not = icmp eq i32 %bcmp, 0
  %. = select i1 %tobool9.not, i32 0, i32 -5
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %cond.false.i29.cleanup_crit_edge, %cond.false.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %entry.cleanup_crit_edge ], [ -5, %cond.false.i29.cleanup_crit_edge ], [ -5, %cond.false.i.cleanup_crit_edge ], [ %., %if.end6 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %oob) #13
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_write_oob(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_read_oob(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ecc_sw_hamming_calculate(ptr noundef, i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ecc_sw_hamming_correct(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sm_cache_flush(ptr noundef %ftl) unnamed_addr #2 align 64 {
entry:
  %invalid_bitmap.addr.i = alloca i32, align 4
  %oob.i = alloca %struct.sm_oob, align 4
  %write_sector = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %write_sector) #13
  %0 = ptrtoint ptr %write_sector to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %write_sector, align 2, !annotation !197
  %cache_zone = getelementptr inbounds %struct.sm_ftl, ptr %ftl, i32 0, i32 15
  %1 = ptrtoint ptr %cache_zone to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %cache_zone, align 4
  %cache_clean = getelementptr inbounds %struct.sm_ftl, ptr %ftl, i32 0, i32 18
  %3 = ptrtoint ptr %cache_clean to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %cache_clean, align 4, !range !190
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %unstable = getelementptr inbounds %struct.sm_ftl, ptr %ftl, i32 0, i32 9
  %5 = ptrtoint ptr %unstable to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %unstable, align 1, !range !190
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool1.not = icmp eq i8 %6, 0
  br i1 %tobool1.not, label %do.body, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp = icmp slt i32 %2, 0
  br i1 %cmp, label %do.body7, label %do.end13, !prof !193

do.body7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/mtd/sm_ftl.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 945, 0\0A.popsection", ""() #13, !srcloc !201
  unreachable

do.end13:                                         ; preds = %do.body
  %zones = getelementptr inbounds %struct.sm_ftl, ptr %ftl, i32 0, i32 2
  %7 = ptrtoint ptr %zones to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %zones, align 4
  %lba_to_phys_table = getelementptr %struct.ftl_zone, ptr %8, i32 %2, i32 1
  %9 = ptrtoint ptr %lba_to_phys_table to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %lba_to_phys_table, align 4
  %cache_block = getelementptr inbounds %struct.sm_ftl, ptr %ftl, i32 0, i32 14
  %11 = ptrtoint ptr %cache_block to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cache_block, align 4
  %arrayidx14 = getelementptr i16, ptr %10, i32 %12
  %13 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %arrayidx14, align 2
  %conv = sext i16 %14 to i32
  %cache_data_invalid_bitmap = getelementptr inbounds %struct.sm_ftl, ptr %ftl, i32 0, i32 17
  %block_size = getelementptr inbounds %struct.sm_ftl, ptr %ftl, i32 0, i32 3
  %15 = ptrtoint ptr %block_size to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %block_size, align 4
  %div = sdiv i32 %16, 512
  %call = tail call i32 @_find_next_bit_be(ptr noundef %cache_data_invalid_bitmap, i32 noundef %div, i32 noundef 0) #13
  %17 = ptrtoint ptr %block_size to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %block_size, align 4
  %div16104 = sdiv i32 %18, 512
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %div16104)
  %cmp17105 = icmp slt i32 %call, %div16104
  br i1 %cmp17105, label %for.body.lr.ph, label %do.end13.restart.preheader_crit_edge

do.end13.restart.preheader_crit_edge:             ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #15
  br label %restart.preheader

for.body.lr.ph:                                   ; preds = %do.end13
  %cache_data = getelementptr inbounds %struct.sm_ftl, ptr %ftl, i32 0, i32 16
  br label %for.body

restart.preheader:                                ; preds = %for.inc.restart.preheader_crit_edge, %do.end13.restart.preheader_crit_edge
  %19 = ptrtoint ptr %unstable to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %unstable, align 1, !range !190
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool30.not107 = icmp eq i8 %20, 0
  br i1 %tobool30.not107, label %if.end32.lr.ph, label %restart.preheader.cleanup_crit_edge

restart.preheader.cleanup_crit_edge:              ; preds = %restart.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end32.lr.ph:                                   ; preds = %restart.preheader
  %free_sectors = getelementptr %struct.ftl_zone, ptr %8, i32 %2, i32 2
  %cache_data47 = getelementptr inbounds %struct.sm_ftl, ptr %ftl, i32 0, i32 16
  %21 = getelementptr inbounds %struct.sm_oob, ptr %oob.i, i32 0, i32 1
  %22 = getelementptr inbounds %struct.sm_oob, ptr %oob.i, i32 0, i32 3
  %23 = getelementptr inbounds %struct.sm_oob, ptr %oob.i, i32 0, i32 3, i32 1
  %24 = getelementptr inbounds %struct.sm_oob, ptr %oob.i, i32 0, i32 4
  %25 = getelementptr inbounds %struct.sm_oob, ptr %oob.i, i32 0, i32 5
  %26 = getelementptr inbounds %struct.sm_oob, ptr %oob.i, i32 0, i32 5, i32 1
  %27 = getelementptr inbounds %struct.sm_oob, ptr %oob.i, i32 0, i32 6
  %smallpagenand.i = getelementptr inbounds %struct.sm_ftl, ptr %ftl, i32 0, i32 7
  br label %if.end32

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %sector_num.0106 = phi i32 [ %call, %for.body.lr.ph ], [ %call28, %for.inc.for.body_crit_edge ]
  %mul = shl i32 %sector_num.0106, 9
  %28 = ptrtoint ptr %cache_data to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %cache_data, align 4
  %add.ptr = getelementptr i8, ptr %29, i32 %mul
  %call20 = tail call fastcc i32 @sm_read_sector(ptr noundef %ftl, i32 noundef %2, i32 noundef %conv, i32 noundef %mul, ptr noundef %add.ptr, ptr noundef null)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.then22, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.then22:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @_clear_bit(i32 noundef %sector_num.0106, ptr noundef %cache_data_invalid_bitmap) #13
  br label %for.inc

for.inc:                                          ; preds = %if.then22, %for.body.for.inc_crit_edge
  %30 = ptrtoint ptr %block_size to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %block_size, align 4
  %div27 = sdiv i32 %31, 512
  %add = add nsw i32 %sector_num.0106, 1
  %call28 = tail call i32 @_find_next_bit_be(ptr noundef %cache_data_invalid_bitmap, i32 noundef %div27, i32 noundef %add) #13
  %32 = ptrtoint ptr %block_size to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %block_size, align 4
  %div16 = sdiv i32 %33, 512
  %cmp17 = icmp slt i32 %call28, %div16
  br i1 %cmp17, label %for.inc.for.body_crit_edge, label %for.inc.restart.preheader_crit_edge

for.inc.restart.preheader_crit_edge:              ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %restart.preheader

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

if.end32:                                         ; preds = %sm_write_block.exit.if.end32_crit_edge, %if.end32.lr.ph
  %call33 = call i32 @__kfifo_out(ptr noundef %free_sectors, ptr noundef nonnull %write_sector, i32 noundef 2) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call33)
  %cmp35.not = icmp eq i32 %call33, 2
  br i1 %cmp35.not, label %if.end46, label %if.then37

if.then37:                                        ; preds = %if.end32
  %34 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool38.not = icmp eq i32 %34, 0
  br i1 %tobool38.not, label %if.then37.cleanup_crit_edge, label %do.end42

if.then37.cleanup_crit_edge:                      ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end42:                                         ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #15
  %call44 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47) #17
  br label %cleanup

if.end46:                                         ; preds = %if.end32
  %35 = ptrtoint ptr %cache_data47 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %cache_data47, align 4
  %37 = ptrtoint ptr %write_sector to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %write_sector, align 2
  %conv48 = zext i16 %38 to i32
  %39 = ptrtoint ptr %cache_block to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %cache_block, align 4
  %41 = ptrtoint ptr %cache_data_invalid_bitmap to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %cache_data_invalid_bitmap, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %invalid_bitmap.addr.i)
  %43 = ptrtoint ptr %invalid_bitmap.addr.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %invalid_bitmap.addr.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %oob.i) #13
  %conv.i = trunc i32 %40 to i16
  %conv.i.i = trunc i32 %40 to i8
  call void @__sanitizer_cov_trace_const_cmp2(i16 999, i16 %conv.i)
  %cmp.i.i = icmp ugt i16 %conv.i, 999
  %44 = call ptr @memset(ptr %oob.i, i32 255, i32 16)
  br i1 %cmp.i.i, label %do.end.i.i, label %if.end46.if.end.i.i_crit_edge, !prof !193

if.end46.if.end.i.i_crit_edge:                    ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i.i

do.end.i.i:                                       ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 178, i32 noundef 9, ptr noundef null) #13
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %do.end.i.i, %if.end46.if.end.i.i_crit_edge
  %45 = lshr i32 %40, 7
  %46 = trunc i32 %45 to i8
  %47 = and i8 %46, 7
  %conv22.i.i = or i8 %47, 16
  %shl.i.i = shl i8 %conv.i.i, 1
  %tmp.sroa.0.0.insert.ext.i.i = zext i8 %conv22.i.i to i32
  %tmp.sroa.0.0.insert.shift.i.i = shl nuw nsw i32 %tmp.sroa.0.0.insert.ext.i.i, 8
  %tmp.sroa.23.0.insert.ext.i.i = zext i8 %shl.i.i to i32
  %tmp.sroa.0.0.insert.insert.i.i = or i32 %tmp.sroa.0.0.insert.shift.i.i, %tmp.sroa.23.0.insert.ext.i.i
  %call.i.i.i = call i32 @__sw_hweight16(i32 noundef %tmp.sroa.0.0.insert.insert.i.i) #13
  %48 = trunc i32 %call.i.i.i to i8
  %49 = and i8 %48, 1
  %50 = or i8 %49, %shl.i.i
  %51 = ptrtoint ptr %25 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %conv22.i.i, ptr %25, align 1
  %52 = ptrtoint ptr %22 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %conv22.i.i, ptr %22, align 2
  %53 = ptrtoint ptr %26 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %50, ptr %26, align 4
  %54 = ptrtoint ptr %23 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %50, ptr %23, align 1
  %55 = ptrtoint ptr %unstable to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %unstable, align 1, !range !190
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool.not.i = icmp eq i8 %56, 0
  br i1 %tobool.not.i, label %for.cond.preheader.i, label %if.end.i.i.sm_write_block.exit.thread_crit_edge

if.end.i.i.sm_write_block.exit.thread_crit_edge:  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sm_write_block.exit.thread

for.cond.preheader.i:                             ; preds = %if.end.i.i
  %57 = ptrtoint ptr %block_size to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %block_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %cmp55.i = icmp sgt i32 %58, 0
  br i1 %cmp55.i, label %for.cond.preheader.i.for.body.i_crit_edge, label %for.cond.preheader.i.if.end54_crit_edge

for.cond.preheader.i.if.end54_crit_edge:          ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end54

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.i:                                       ; preds = %if.end17.i
  %add.i = add i32 %boffset.056.i, 512
  %59 = ptrtoint ptr %block_size to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %block_size, align 4
  %cmp.i = icmp slt i32 %add.i, %60
  br i1 %cmp.i, label %for.cond.i.for.body.i_crit_edge, label %for.cond.i.if.end54_crit_edge

for.cond.i.if.end54_crit_edge:                    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end54

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %boffset.056.i = phi i32 [ %add.i, %for.cond.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %61 = ptrtoint ptr %21 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 -1, ptr %21, align 4
  %div.i = sdiv i32 %boffset.056.i, 512
  %62 = ptrtoint ptr %invalid_bitmap.addr.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %invalid_bitmap.addr.i.0.invalid_bitmap.addr.i.0.invalid_bitmap.addr.0..i = load volatile i32, ptr %invalid_bitmap.addr.i, align 4
  %and.i.i = and i32 %div.i, 31
  %63 = shl nuw i32 1, %and.i.i
  %64 = and i32 %63, %invalid_bitmap.addr.i.0.invalid_bitmap.addr.i.0.invalid_bitmap.addr.0..i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %tobool2.not.i = icmp eq i32 %64, 0
  br i1 %tobool2.not.i, label %for.body.i.if.end7.i_crit_edge, label %do.end.i

for.body.i.if.end7.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end7.i

do.end.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  %call5.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, i32 noundef %div.i, i32 noundef %40, i32 noundef %2) #17
  %65 = ptrtoint ptr %21 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 0, ptr %21, align 4
  br label %if.end7.i

if.end7.i:                                        ; preds = %do.end.i, %for.body.i.if.end7.i_crit_edge
  %66 = ptrtoint ptr %smallpagenand.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %smallpagenand.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %tobool8.not.i = icmp eq i32 %67, 0
  br i1 %tobool8.not.i, label %if.end7.i.if.end17.i_crit_edge, label %if.then9.i

if.end7.i.if.end17.i_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end17.i

if.then9.i:                                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr.i = getelementptr i8, ptr %36, i32 %boffset.056.i
  %call11.i = call i32 @ecc_sw_hamming_calculate(ptr noundef %add.ptr.i, i32 noundef 256, ptr noundef %27, i1 noundef zeroext true) #13
  %add.ptr13.i = getelementptr i8, ptr %add.ptr.i, i32 256
  %call16.i = call i32 @ecc_sw_hamming_calculate(ptr noundef %add.ptr13.i, i32 noundef 256, ptr noundef %24, i1 noundef zeroext true) #13
  br label %if.end17.i

if.end17.i:                                       ; preds = %if.then9.i, %if.end7.i.if.end17.i_crit_edge
  %add.ptr18.i = getelementptr i8, ptr %36, i32 %boffset.056.i
  %call19.i = call fastcc i32 @sm_write_sector(ptr noundef %ftl, i32 noundef %2, i32 noundef %conv48, i32 noundef %boffset.056.i, ptr noundef %add.ptr18.i, ptr noundef nonnull %oob.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i)
  %tobool20.not.i = icmp eq i32 %call19.i, 0
  br i1 %tobool20.not.i, label %for.cond.i, label %if.end22.i

if.end22.i:                                       ; preds = %if.end17.i
  %call26.i = call fastcc i32 @sm_erase_block(ptr noundef %ftl, i32 noundef %2, i16 noundef zeroext %38, i32 noundef 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i)
  %tobool27.not.i = icmp eq i32 %call26.i, 0
  br i1 %tobool27.not.i, label %restart.1.i, label %if.end22.i.sm_write_block.exit_crit_edge

if.end22.i.sm_write_block.exit_crit_edge:         ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sm_write_block.exit

restart.1.i:                                      ; preds = %if.end22.i
  %68 = ptrtoint ptr %unstable to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %unstable, align 1, !range !190
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %69)
  %tobool.not.1.i = icmp eq i8 %69, 0
  br i1 %tobool.not.1.i, label %for.cond.preheader.1.i, label %restart.1.i.sm_write_block.exit.thread_crit_edge

restart.1.i.sm_write_block.exit.thread_crit_edge: ; preds = %restart.1.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sm_write_block.exit.thread

for.cond.preheader.1.i:                           ; preds = %restart.1.i
  %70 = ptrtoint ptr %block_size to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %block_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %cmp55.1.i = icmp sgt i32 %71, 0
  br i1 %cmp55.1.i, label %for.cond.preheader.1.i.for.body.1.i_crit_edge, label %for.cond.preheader.1.i.if.end54_crit_edge

for.cond.preheader.1.i.if.end54_crit_edge:        ; preds = %for.cond.preheader.1.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end54

for.cond.preheader.1.i.for.body.1.i_crit_edge:    ; preds = %for.cond.preheader.1.i
  br label %for.body.1.i

for.body.1.i:                                     ; preds = %for.cond.1.i.for.body.1.i_crit_edge, %for.cond.preheader.1.i.for.body.1.i_crit_edge
  %boffset.056.1.i = phi i32 [ %add.1.i, %for.cond.1.i.for.body.1.i_crit_edge ], [ 0, %for.cond.preheader.1.i.for.body.1.i_crit_edge ]
  %72 = ptrtoint ptr %21 to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 -1, ptr %21, align 4
  %div.1.i = sdiv i32 %boffset.056.1.i, 512
  %73 = ptrtoint ptr %invalid_bitmap.addr.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %invalid_bitmap.addr.i.0.invalid_bitmap.addr.i.0.invalid_bitmap.addr.0.60.i = load volatile i32, ptr %invalid_bitmap.addr.i, align 4
  %and.i.1.i = and i32 %div.1.i, 31
  %74 = shl nuw i32 1, %and.i.1.i
  %75 = and i32 %74, %invalid_bitmap.addr.i.0.invalid_bitmap.addr.i.0.invalid_bitmap.addr.0.60.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %tobool2.not.1.i = icmp eq i32 %75, 0
  br i1 %tobool2.not.1.i, label %for.body.1.i.if.end7.1.i_crit_edge, label %do.end.1.i

for.body.1.i.if.end7.1.i_crit_edge:               ; preds = %for.body.1.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end7.1.i

do.end.1.i:                                       ; preds = %for.body.1.i
  call void @__sanitizer_cov_trace_pc() #15
  %call5.1.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, i32 noundef %div.1.i, i32 noundef %40, i32 noundef %2) #17
  %76 = ptrtoint ptr %21 to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 0, ptr %21, align 4
  br label %if.end7.1.i

if.end7.1.i:                                      ; preds = %do.end.1.i, %for.body.1.i.if.end7.1.i_crit_edge
  %77 = ptrtoint ptr %smallpagenand.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %smallpagenand.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %tobool8.not.1.i = icmp eq i32 %78, 0
  br i1 %tobool8.not.1.i, label %if.end7.1.i.if.end17.1.i_crit_edge, label %if.then9.1.i

if.end7.1.i.if.end17.1.i_crit_edge:               ; preds = %if.end7.1.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end17.1.i

if.then9.1.i:                                     ; preds = %if.end7.1.i
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr.1.i = getelementptr i8, ptr %36, i32 %boffset.056.1.i
  %call11.1.i = call i32 @ecc_sw_hamming_calculate(ptr noundef %add.ptr.1.i, i32 noundef 256, ptr noundef %27, i1 noundef zeroext true) #13
  %add.ptr13.1.i = getelementptr i8, ptr %add.ptr.1.i, i32 256
  %call16.1.i = call i32 @ecc_sw_hamming_calculate(ptr noundef %add.ptr13.1.i, i32 noundef 256, ptr noundef %24, i1 noundef zeroext true) #13
  br label %if.end17.1.i

if.end17.1.i:                                     ; preds = %if.then9.1.i, %if.end7.1.i.if.end17.1.i_crit_edge
  %add.ptr18.1.i = getelementptr i8, ptr %36, i32 %boffset.056.1.i
  %call19.1.i = call fastcc i32 @sm_write_sector(ptr noundef %ftl, i32 noundef %2, i32 noundef %conv48, i32 noundef %boffset.056.1.i, ptr noundef %add.ptr18.1.i, ptr noundef nonnull %oob.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.1.i)
  %tobool20.not.1.i = icmp eq i32 %call19.1.i, 0
  br i1 %tobool20.not.1.i, label %for.cond.1.i, label %if.else.i

for.cond.1.i:                                     ; preds = %if.end17.1.i
  %add.1.i = add i32 %boffset.056.1.i, 512
  %79 = ptrtoint ptr %block_size to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %block_size, align 4
  %cmp.1.i = icmp slt i32 %add.1.i, %80
  br i1 %cmp.1.i, label %for.cond.1.i.for.body.1.i_crit_edge, label %for.cond.1.i.if.end54_crit_edge

for.cond.1.i.if.end54_crit_edge:                  ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end54

for.cond.1.i.for.body.1.i_crit_edge:              ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.1.i

if.else.i:                                        ; preds = %if.end17.1.i
  call void @__sanitizer_cov_trace_pc() #15
  call fastcc void @sm_mark_block_bad(ptr noundef %ftl, i32 noundef %2, i32 noundef %conv48) #13
  br label %sm_write_block.exit

sm_write_block.exit.thread:                       ; preds = %restart.1.i.sm_write_block.exit.thread_crit_edge, %if.end.i.i.sm_write_block.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %oob.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %invalid_bitmap.addr.i)
  br label %cleanup

sm_write_block.exit:                              ; preds = %if.else.i, %if.end22.i.sm_write_block.exit_crit_edge
  %81 = ptrtoint ptr %unstable to i32
  call void @__asan_load1_noabort(i32 %81)
  %.pr = load i8, ptr %unstable, align 1
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %oob.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %invalid_bitmap.addr.i)
  %tobool30.not = icmp eq i8 %.pr, 0
  br i1 %tobool30.not, label %sm_write_block.exit.if.end32_crit_edge, label %sm_write_block.exit.cleanup_crit_edge

sm_write_block.exit.cleanup_crit_edge:            ; preds = %sm_write_block.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

sm_write_block.exit.if.end32_crit_edge:           ; preds = %sm_write_block.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end32

if.end54:                                         ; preds = %for.cond.1.i.if.end54_crit_edge, %for.cond.preheader.1.i.if.end54_crit_edge, %for.cond.i.if.end54_crit_edge, %for.cond.preheader.i.if.end54_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %oob.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %invalid_bitmap.addr.i)
  %82 = ptrtoint ptr %write_sector to i32
  call void @__asan_load2_noabort(i32 %82)
  %83 = load i16, ptr %write_sector, align 2
  %84 = ptrtoint ptr %lba_to_phys_table to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %lba_to_phys_table, align 4
  %86 = ptrtoint ptr %cache_block to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %cache_block, align 4
  %arrayidx57 = getelementptr i16, ptr %85, i32 %87
  %88 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_store2_noabort(i32 %88)
  store i16 %83, ptr %arrayidx57, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %cmp58 = icmp sgt i16 %14, 0
  br i1 %cmp58, label %if.then60, label %if.end54.if.end63_crit_edge

if.end54.if.end63_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end63

if.then60:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #15
  %call62 = call fastcc i32 @sm_erase_block(ptr noundef %ftl, i32 noundef %2, i16 noundef zeroext %14, i32 noundef 1)
  br label %if.end63

if.end63:                                         ; preds = %if.then60, %if.end54.if.end63_crit_edge
  %89 = ptrtoint ptr %cache_data_invalid_bitmap to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 -1, ptr %cache_data_invalid_bitmap, align 4
  %90 = ptrtoint ptr %cache_clean to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 1, ptr %cache_clean, align 4
  %91 = ptrtoint ptr %cache_zone to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 -1, ptr %cache_zone, align 4
  %92 = ptrtoint ptr %cache_block to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 -1, ptr %cache_block, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end63, %sm_write_block.exit.cleanup_crit_edge, %sm_write_block.exit.thread, %do.end42, %if.then37.cleanup_crit_edge, %restart.preheader.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end63 ], [ 0, %entry.cleanup_crit_edge ], [ -5, %if.end.cleanup_crit_edge ], [ -5, %do.end42 ], [ -5, %if.then37.cleanup_crit_edge ], [ -5, %restart.preheader.cleanup_crit_edge ], [ -5, %sm_write_block.exit.thread ], [ -5, %sm_write_block.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %write_sector) #13
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sm_cache_flush_timer(ptr noundef %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @cache_flush_workqueue, align 4
  %flush_work = getelementptr i8, ptr %t, i32 -44
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %0, ptr noundef %flush_work) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sm_cache_flush_work(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -160
  %mutex = getelementptr i8, ptr %work, i32 -156
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #13
  %call = tail call fastcc i32 @sm_cache_flush(ptr noundef %add.ptr)
  tail call void @mutex_unlock(ptr noundef %mutex) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc noalias ptr @sm_create_sysfs_attributes(ptr nocapture noundef readonly %ftl) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %cis_buffer = getelementptr inbounds %struct.sm_ftl, ptr %ftl, i32 0, i32 13
  %0 = ptrtoint ptr %cis_buffer to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cis_buffer, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 89
  %call = tail call ptr @kstrndup(ptr noundef %add.ptr, i32 noundef 167, i32 noundef 3264) #13
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 36) #16
  %tobool2.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool2.not, label %if.end.error2_crit_edge, label %do.body

if.end.error2_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %error2

do.body:                                          ; preds = %if.end
  %key = getelementptr inbounds %struct.attribute, ptr %call7.i.i, i32 0, i32 3
  %3 = ptrtoint ptr %key to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @sm_create_sysfs_attributes.__key, ptr %key, align 8
  %data = getelementptr inbounds %struct.sm_sysfs_attribute, ptr %call7.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call, ptr %data, align 4
  %call5 = tail call i32 @strlen(ptr noundef nonnull %call) #20
  %len = getelementptr inbounds %struct.sm_sysfs_attribute, ptr %call7.i.i, i32 0, i32 2
  %5 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %call5, ptr %len, align 8
  %6 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @.str.80, ptr %call7.i.i, align 8
  %mode = getelementptr inbounds %struct.attribute, ptr %call7.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %mode to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 292, ptr %mode, align 4
  %show = getelementptr inbounds %struct.device_attribute, ptr %call7.i.i, i32 0, i32 1
  %8 = ptrtoint ptr %show to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @sm_attr_show, ptr %show, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %9 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3520, i32 noundef 8) #16
  %tobool12.not = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool12.not, label %do.body.error3_crit_edge, label %if.end14

do.body.error3_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %error3

if.end14:                                         ; preds = %do.body
  %10 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call7.i.i, ptr %call7.i.i.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %11 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i40 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %11, i32 noundef 3520, i32 noundef 20) #16
  %tobool18.not = icmp eq ptr %call7.i.i40, null
  br i1 %tobool18.not, label %error4, label %if.end20

if.end20:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #15
  %attrs = getelementptr inbounds %struct.attribute_group, ptr %call7.i.i40, i32 0, i32 3
  %12 = ptrtoint ptr %attrs to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call7.i.i.i, ptr %attrs, align 4
  br label %cleanup

error4:                                           ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #13
  br label %error3

error3:                                           ; preds = %error4, %do.body.error3_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #13
  br label %error2

error2:                                           ; preds = %error3, %if.end.error2_crit_edge
  tail call void @kfree(ptr noundef nonnull %call) #13
  br label %cleanup

cleanup:                                          ; preds = %error2, %if.end20, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call7.i.i40, %if.end20 ], [ null, %entry.cleanup_crit_edge ], [ null, %error2 ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @add_mtd_blktrans_dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kstrndup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sm_attr_show(ptr nocapture noundef readnone %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.sm_sysfs_attribute, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %len = getelementptr inbounds %struct.sm_sysfs_attribute, ptr %attr, i32 0, i32 2
  %2 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len, align 4
  %call = tail call ptr @strncpy(ptr noundef %buf, ptr noundef %1, i32 noundef %3)
  %4 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len, align 4
  ret i32 %5
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_mtd_blktrans_dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_mtd_blktrans(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #6

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.ctpop.i16(i16) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 87)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 87)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { argmemonly nofree nounwind readonly willreturn }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { nounwind allocsize(2) }
attributes #17 = { cold nounwind }
attributes #18 = { nounwind allocsize(0) }
attributes #19 = { nobuiltin nounwind }
attributes #20 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !17, !19, !21, !23, !25, !26, !28, !29, !31, !33, !35, !36, !37, !38, !39, !41, !42, !43, !45, !46, !47, !49, !50, !51, !53, !54, !55, !57, !58, !59, !61, !62, !63, !65, !66, !67, !69, !71, !73, !74, !75, !76, !78, !79, !80, !82, !83, !84, !85, !87, !88, !89, !90, !92, !94, !95, !96, !97, !99, !100, !101, !103, !104, !105, !106, !108, !109, !110, !112, !113, !114, !116, !117, !118, !119, !121, !122, !123, !124, !126, !127, !129, !130, !132, !133, !135, !136, !137, !138, !140, !141, !142, !144, !145, !146, !148, !149, !150, !152, !153, !154, !156, !157, !158, !160, !161, !162, !164, !165, !166, !167, !169, !171, !172, !173, !174, !176, !178, !180}
!llvm.module.flags = !{!181, !182, !183, !184, !185, !186, !187, !188}
!llvm.ident = !{!189}

!0 = !{ptr @__param_cache_timeout, !1, !"__param_cache_timeout", i1 false, i1 false}
!1 = !{!"../drivers/mtd/sm_ftl.c", i32 25, i32 1}
!2 = !{ptr @__UNIQUE_ID_cache_timeouttype238, !1, !"__UNIQUE_ID_cache_timeouttype238", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_cache_timeout239, !4, !"__UNIQUE_ID_cache_timeout239", i1 false, i1 false}
!4 = !{!"../drivers/mtd/sm_ftl.c", i32 26, i32 1}
!5 = !{ptr @__param_debug, !6, !"__param_debug", i1 false, i1 false}
!6 = !{!"../drivers/mtd/sm_ftl.c", i32 30, i32 1}
!7 = !{ptr @__UNIQUE_ID_debugtype240, !6, !"__UNIQUE_ID_debugtype240", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_debug241, !9, !"__UNIQUE_ID_debug241", i1 false, i1 false}
!9 = !{!"../drivers/mtd/sm_ftl.c", i32 31, i32 1}
!10 = !{ptr @__initcall__kmod_sm_ftl__242_1294_sm_module_init6, !11, !"__initcall__kmod_sm_ftl__242_1294_sm_module_init6", i1 false, i1 false}
!11 = !{!"../drivers/mtd/sm_ftl.c", i32 1294, i32 1}
!12 = !{ptr @__exitcall_sm_module_exit, !13, !"__exitcall_sm_module_exit", i1 false, i1 false}
!13 = !{!"../drivers/mtd/sm_ftl.c", i32 1295, i32 1}
!14 = !{ptr @__UNIQUE_ID_file243, !15, !"__UNIQUE_ID_file243", i1 false, i1 false}
!15 = !{!"../drivers/mtd/sm_ftl.c", i32 1297, i32 1}
!16 = !{ptr @__UNIQUE_ID_license244, !15, !"__UNIQUE_ID_license244", i1 false, i1 false}
!17 = !{ptr @__UNIQUE_ID_author245, !18, !"__UNIQUE_ID_author245", i1 false, i1 false}
!18 = !{!"../drivers/mtd/sm_ftl.c", i32 1298, i32 1}
!19 = !{ptr @__UNIQUE_ID_description246, !20, !"__UNIQUE_ID_description246", i1 false, i1 false}
!20 = !{!"../drivers/mtd/sm_ftl.c", i32 1299, i32 1}
!21 = !{ptr @cache_flush_workqueue, !22, !"cache_flush_workqueue", i1 false, i1 false}
!22 = !{!"../drivers/mtd/sm_ftl.c", i32 22, i32 33}
!23 = !{ptr @debug, !24, !"debug", i1 false, i1 false}
!24 = !{!"../drivers/mtd/sm_ftl.c", i32 29, i32 12}
!25 = !{ptr @__param_str_cache_timeout, !1, !"__param_str_cache_timeout", i1 false, i1 false}
!26 = !{ptr @cache_timeout, !27, !"cache_timeout", i1 false, i1 false}
!27 = !{!"../drivers/mtd/sm_ftl.c", i32 24, i32 12}
!28 = !{ptr @__param_str_debug, !6, !"__param_str_debug", i1 false, i1 false}
!29 = !{ptr @.str, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/mtd/sm_ftl.c", i32 1255, i32 11}
!31 = !{ptr @sm_ftl_ops, !32, !"sm_ftl_ops", i1 false, i1 false}
!32 = !{!"../drivers/mtd/sm_ftl.c", i32 1254, i32 32}
!33 = !{ptr @.str.1, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/mtd/sm_ftl.c", i32 761, i32 2}
!35 = !{ptr @.str.2, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.3, !34, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @sm_init_zone._entry, !34, !"_entry", i1 false, i1 false}
!38 = !{ptr @sm_init_zone._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.5, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/mtd/sm_ftl.c", i32 806, i32 4}
!41 = !{ptr @sm_init_zone._entry.4, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @sm_init_zone._entry_ptr.6, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.8, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/mtd/sm_ftl.c", i32 818, i32 4}
!45 = !{ptr @sm_init_zone._entry.7, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @sm_init_zone._entry_ptr.9, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.11, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/mtd/sm_ftl.c", i32 827, i32 4}
!49 = !{ptr @sm_init_zone._entry.10, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @sm_init_zone._entry_ptr.12, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.14, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/mtd/sm_ftl.c", i32 832, i32 3}
!53 = !{ptr @sm_init_zone._entry.13, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @sm_init_zone._entry_ptr.15, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.17, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/mtd/sm_ftl.c", i32 851, i32 3}
!57 = !{ptr @sm_init_zone._entry.16, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @sm_init_zone._entry_ptr.18, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.20, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/mtd/sm_ftl.c", i32 855, i32 2}
!61 = !{ptr @sm_init_zone._entry.19, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @sm_init_zone._entry_ptr.21, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.23, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/mtd/sm_ftl.c", i32 862, i32 3}
!65 = !{ptr @sm_init_zone._entry.22, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @sm_init_zone._entry_ptr.24, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @sm_block_erased.erased_pattern, !68, !"erased_pattern", i1 false, i1 false}
!68 = !{!"../drivers/mtd/nand/raw/sm_common.h", i32 51, i32 24}
!69 = !{ptr @sm_read_lba.erased_pattern, !70, !"erased_pattern", i1 false, i1 false}
!70 = !{!"../drivers/mtd/sm_ftl.c", i32 150, i32 24}
!71 = !{ptr @.str.25, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/mtd/sm_ftl.c", i32 480, i32 3}
!73 = !{ptr @.str.26, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @sm_erase_block._entry, !72, !"_entry", i1 false, i1 false}
!75 = !{ptr @sm_erase_block._entry_ptr, !72, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.28, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/mtd/sm_ftl.c", i32 485, i32 3}
!78 = !{ptr @sm_erase_block._entry.27, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @sm_erase_block._entry_ptr.29, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.30, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/mtd/sm_ftl.c", i32 450, i32 2}
!82 = !{ptr @.str.31, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @sm_mark_block_bad._entry, !81, !"_entry", i1 false, i1 false}
!84 = !{ptr @sm_mark_block_bad._entry_ptr, !81, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.32, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/mtd/sm_ftl.c", i32 743, i32 4}
!87 = !{ptr @.str.33, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @sm_recheck_media._entry, !86, !"_entry", i1 false, i1 false}
!89 = !{ptr @sm_recheck_media._entry_ptr, !86, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @cis_signature, !91, !"cis_signature", i1 false, i1 false}
!91 = !{!"../drivers/mtd/sm_ftl.c", i32 558, i32 22}
!92 = !{ptr @.str.34, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/mtd/sm_ftl.c", i32 333, i32 3}
!94 = !{ptr @.str.35, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @sm_write_sector._entry, !93, !"_entry", i1 false, i1 false}
!96 = !{ptr @sm_write_sector._entry_ptr, !93, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.37, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/mtd/sm_ftl.c", i32 352, i32 3}
!99 = !{ptr @sm_write_sector._entry.36, !98, !"_entry", i1 false, i1 false}
!100 = !{ptr @sm_write_sector._entry_ptr.38, !98, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.39, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/mtd/sm_ftl.c", i32 286, i32 3}
!103 = !{ptr @.str.40, !102, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @sm_read_sector._entry, !102, !"_entry", i1 false, i1 false}
!105 = !{ptr @sm_read_sector._entry_ptr, !102, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.42, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/mtd/sm_ftl.c", i32 304, i32 3}
!108 = !{ptr @sm_read_sector._entry.41, !107, !"_entry", i1 false, i1 false}
!109 = !{ptr @sm_read_sector._entry_ptr.43, !107, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.45, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/mtd/sm_ftl.c", i32 313, i32 3}
!112 = !{ptr @sm_read_sector._entry.44, !111, !"_entry", i1 false, i1 false}
!113 = !{ptr @sm_read_sector._entry_ptr.46, !111, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.47, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/mtd/sm_ftl.c", i32 972, i32 3}
!116 = !{ptr @.str.48, !115, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @sm_cache_flush._entry, !115, !"_entry", i1 false, i1 false}
!118 = !{ptr @sm_cache_flush._entry_ptr, !115, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @.str.49, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/mtd/sm_ftl.c", i32 392, i32 4}
!121 = !{ptr @.str.50, !120, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @sm_write_block._entry, !120, !"_entry", i1 false, i1 false}
!123 = !{ptr @sm_write_block._entry_ptr, !120, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @sm_add_mtd.__key, !125, !"__key", i1 false, i1 false}
!125 = !{!"../drivers/mtd/sm_ftl.c", i32 1143, i32 2}
!126 = !{ptr @.str.51, !125, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @sm_add_mtd.__key.52, !128, !"__key", i1 false, i1 false}
!128 = !{!"../drivers/mtd/sm_ftl.c", i32 1144, i32 2}
!129 = !{ptr @.str.53, !128, !"<string literal>", i1 false, i1 false}
!130 = !{ptr @sm_add_mtd.__key.54, !131, !"__key", i1 false, i1 false}
!131 = !{!"../drivers/mtd/sm_ftl.c", i32 1145, i32 2}
!132 = !{ptr @.str.55, !131, !"<string literal>", i1 false, i1 false}
!133 = !{ptr @.str.56, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/mtd/sm_ftl.c", i32 1149, i32 3}
!135 = !{ptr @.str.57, !134, !"<string literal>", i1 false, i1 false}
!136 = !{ptr @sm_add_mtd._entry, !134, !"_entry", i1 false, i1 false}
!137 = !{ptr @sm_add_mtd._entry_ptr, !134, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @.str.59, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/mtd/sm_ftl.c", i32 1189, i32 3}
!140 = !{ptr @sm_add_mtd._entry.58, !139, !"_entry", i1 false, i1 false}
!141 = !{ptr @sm_add_mtd._entry_ptr.60, !139, !"_entry_ptr", i1 false, i1 false}
!142 = !{ptr @.str.62, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/mtd/sm_ftl.c", i32 1198, i32 2}
!144 = !{ptr @sm_add_mtd._entry.61, !143, !"_entry", i1 false, i1 false}
!145 = !{ptr @sm_add_mtd._entry_ptr.63, !143, !"_entry_ptr", i1 false, i1 false}
!146 = !{ptr @.str.65, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/mtd/sm_ftl.c", i32 1201, i32 2}
!148 = !{ptr @sm_add_mtd._entry.64, !147, !"_entry", i1 false, i1 false}
!149 = !{ptr @sm_add_mtd._entry_ptr.66, !147, !"_entry_ptr", i1 false, i1 false}
!150 = !{ptr @.str.68, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/mtd/sm_ftl.c", i32 1202, i32 2}
!152 = !{ptr @sm_add_mtd._entry.67, !151, !"_entry", i1 false, i1 false}
!153 = !{ptr @sm_add_mtd._entry_ptr.69, !151, !"_entry_ptr", i1 false, i1 false}
!154 = !{ptr @.str.71, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/mtd/sm_ftl.c", i32 1205, i32 2}
!156 = !{ptr @sm_add_mtd._entry.70, !155, !"_entry", i1 false, i1 false}
!157 = !{ptr @sm_add_mtd._entry_ptr.72, !155, !"_entry_ptr", i1 false, i1 false}
!158 = !{ptr @.str.74, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/mtd/sm_ftl.c", i32 1211, i32 3}
!160 = !{ptr @sm_add_mtd._entry.73, !159, !"_entry", i1 false, i1 false}
!161 = !{ptr @sm_add_mtd._entry_ptr.75, !159, !"_entry_ptr", i1 false, i1 false}
!162 = !{ptr @.str.76, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/mtd/sm_ftl.c", i32 652, i32 2}
!164 = !{ptr @.str.77, !163, !"<string literal>", i1 false, i1 false}
!165 = !{ptr @sm_get_media_info._entry, !163, !"_entry", i1 false, i1 false}
!166 = !{ptr @sm_get_media_info._entry_ptr, !163, !"_entry_ptr", i1 false, i1 false}
!167 = !{ptr @chs_table, !168, !"chs_table", i1 false, i1 false}
!168 = !{!"../drivers/mtd/sm_ftl.c", i32 541, i32 31}
!169 = !{ptr @.str.78, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/mtd/sm_ftl.c", i32 729, i32 3}
!171 = !{ptr @.str.79, !170, !"<string literal>", i1 false, i1 false}
!172 = !{ptr @sm_find_cis._entry, !170, !"_entry", i1 false, i1 false}
!173 = !{ptr @sm_find_cis._entry_ptr, !170, !"_entry_ptr", i1 false, i1 false}
!174 = !{ptr @sm_create_sysfs_attributes.__key, !175, !"__key", i1 false, i1 false}
!175 = !{!"../drivers/mtd/sm_ftl.c", i32 72, i32 2}
!176 = !{ptr @.str.80, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/mtd/sm_ftl.c", i32 76, i32 41}
!178 = !{ptr @.str.81, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/mtd/sm_ftl.c", i32 1277, i32 26}
!180 = !{ptr @.str.82, !179, !"<string literal>", i1 false, i1 false}
!181 = !{i32 1, !"wchar_size", i32 2}
!182 = !{i32 1, !"min_enum_size", i32 4}
!183 = !{i32 8, !"branch-target-enforcement", i32 0}
!184 = !{i32 8, !"sign-return-address", i32 0}
!185 = !{i32 8, !"sign-return-address-all", i32 0}
!186 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!187 = !{i32 7, !"uwtable", i32 1}
!188 = !{i32 7, !"frame-pointer", i32 2}
!189 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!190 = !{i8 0, i8 2}
!191 = !{!"branch_weights", i32 2000, i32 1}
!192 = !{i64 2154316973, i64 2154317459, i64 2154317010, i64 2154317066, i64 2154317100, i64 2154317124, i64 2154317165, i64 2154317186, i64 2154317214, i64 2154317248}
!193 = !{!"branch_weights", i32 1, i32 2000}
!194 = !{i64 2154308427, i64 2154308912, i64 2154308464, i64 2154308520, i64 2154308554, i64 2154308578, i64 2154308619, i64 2154308640, i64 2154308668, i64 2154308702}
!195 = !{i64 -2147483648, i64 2147483648}
!196 = !{i32 0, i32 33}
!197 = !{!"auto-init"}
!198 = !{i16 0, i16 17}
!199 = !{i64 2154279754, i64 2154280239, i64 2154279791, i64 2154279847, i64 2154279881, i64 2154279905, i64 2154279946, i64 2154279967, i64 2154279995, i64 2154280029}
!200 = !{i64 2154265104, i64 2154265589, i64 2154265141, i64 2154265197, i64 2154265231, i64 2154265255, i64 2154265296, i64 2154265317, i64 2154265345, i64 2154265379}
!201 = !{i64 2154310198, i64 2154310683, i64 2154310235, i64 2154310291, i64 2154310325, i64 2154310349, i64 2154310390, i64 2154310411, i64 2154310439, i64 2154310473}
