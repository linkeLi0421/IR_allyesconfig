; ModuleID = '/llk/IR_all_yes/drivers/mtd/mtdswap.c_pt.bc'
source_filename = "../drivers/mtd/mtdswap.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kparam_string = type { i32, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.mtd_blktrans_ops = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.mtdswap_dev = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, [7 x %struct.mtdswap_tree], i64, i64, i64, i64, i64, i64, i32, ptr, ptr, ptr }
%struct.mtdswap_tree = type { %struct.rb_root, i32 }
%struct.rb_root = type { ptr }
%struct.anon.86 = type { [1024 x i8], i32, i32, i32, [16 x i8], [16 x i8], [117 x i32], [1 x i32] }
%struct.swap_eb = type { %struct.rb_node, ptr, i32, i32, i32, i32 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.mtd_info = type { i8, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, %struct.notifier_block, %struct.mtd_ecc_stats, i32, ptr, ptr, %struct.device, i32, %struct.mtd_debug_info, ptr, ptr, ptr, ptr, %struct.list_head, %union.anon.84 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.mtd_ecc_stats = type { i32, i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.mtd_debug_info = type { ptr, ptr, ptr }
%union.anon.84 = type { %struct.mtd_part, [160 x i8] }
%struct.mtd_part = type { %struct.list_head, i64, i64, i32 }
%struct.gendisk = type { i32, i32, i32, [32 x i8], i16, i16, %struct.xarray, ptr, ptr, ptr, ptr, i32, i32, %struct.mutex, i32, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, ptr, %struct.kobject, ptr, i32, ptr, %struct.lockdep_map, i64 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.block_device = type { i64, i64, ptr, i32, i8, i32, i32, ptr, ptr, ptr, %struct.device, ptr, i32, i8, ptr, i8, %struct.spinlock, ptr, ptr, i32, %struct.mutex, ptr, ptr, i8 }
%struct.erase_info = type { i64, i64, i64 }
%struct.mtd_oob_ops = type { i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.mtdswap_oobdata = type <{ i16, i32 }>
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.78, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.79, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.80, ptr, %struct.address_space, %struct.list_head, %union.anon.81, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.78 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.79 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.80 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%union.anon.81 = type { ptr }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }

@__param_str_partitions = internal constant [19 x i8] c"mtdswap.partitions\00", align 1
@param_ops_string = external dso_local constant %struct.kernel_param_ops, align 4
@__param_string_partitions = internal constant %struct.kparam_string { i32 128, ptr @partitions }, align 4
@__param_partitions = internal constant %struct.kernel_param { ptr @__param_str_partitions, ptr null, ptr @param_ops_string, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @__param_string_partitions } }, section "__param", align 4
@__UNIQUE_ID_partitionstype288 = internal constant [35 x i8] c"mtdswap.parmtype=partitions:string\00", section ".modinfo", align 1
@__UNIQUE_ID_partitions289 = internal constant [80 x i8] c"mtdswap.parm=partitions:MTD partition numbers to use as swap partitions=\221,3,5\22\00", section ".modinfo", align 1
@__param_str_spare_eblocks = internal constant [22 x i8] c"mtdswap.spare_eblocks\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@spare_eblocks = internal global { i32, [28 x i8] } { i32 10, [28 x i8] zeroinitializer }, align 32
@__param_spare_eblocks = internal constant %struct.kernel_param { ptr @__param_str_spare_eblocks, ptr null, ptr @param_ops_uint, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @spare_eblocks } }, section "__param", align 4
@__UNIQUE_ID_spare_eblockstype290 = internal constant [36 x i8] c"mtdswap.parmtype=spare_eblocks:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_spare_eblocks291 = internal constant [97 x i8] c"mtdswap.parm=spare_eblocks:Percentage of spare erase blocks for garbage collection (default 10%)\00", section ".modinfo", align 1
@__param_str_header = internal constant [15 x i8] c"mtdswap.header\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@header = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_header = internal constant %struct.kernel_param { ptr @__param_str_header, ptr null, ptr @param_ops_bool, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @header } }, section "__param", align 4
@__UNIQUE_ID_headertype292 = internal constant [29 x i8] c"mtdswap.parmtype=header:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_header293 = internal constant [76 x i8] c"mtdswap.parm=header:Include builtin swap header (default 0, without header)\00", section ".modinfo", align 1
@__initcall__kmod_mtdswap__294_1486_mtdswap_ops_init6 = internal global ptr @mtdswap_ops_init, section ".initcall6.init", align 4
@mtdswap_ops = internal global { %struct.mtd_blktrans_ops, [48 x i8] } { %struct.mtd_blktrans_ops { ptr @.str, i32 0, i32 0, i32 4096, i32 0, ptr @mtdswap_readsect, ptr @mtdswap_writesect, ptr @mtdswap_discard, ptr @mtdswap_background, ptr null, ptr @mtdswap_flush, ptr null, ptr null, ptr @mtdswap_add_mtd, ptr @mtdswap_remove_dev, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr null }, [48 x i8] zeroinitializer }, align 32
@__exitcall_mtdswap_ops_exit = internal global ptr @mtdswap_ops_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file295 = internal constant [33 x i8] c"mtdswap.file=drivers/mtd/mtdswap\00", section ".modinfo", align 1
@__UNIQUE_ID_license296 = internal constant [20 x i8] c"mtdswap.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author297 = internal constant [57 x i8] c"mtdswap.author=Jarkko Lavinen <jarkko.lavinen@nokia.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description298 = internal constant [83 x i8] c"mtdswap.description=Block device access to an MTD suitable for using as swap space\00", section ".modinfo", align 1
@partitions = internal global { [128 x i8], [32 x i8] } zeroinitializer, align 32
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mtdswap\00", [24 x i8] zeroinitializer }, align 32
@mtdswap_readsect._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 1122, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Read error %d\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mtdswap_readsect\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"drivers/mtd/mtdswap.c\00", [42 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mtdswap_readsect._entry_ptr = internal global ptr @mtdswap_readsect._entry, section ".printk_index", align 4
@mtdswap_readsect._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 1133, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Short read %zd\0A\00", [16 x i8] zeroinitializer }, align 32
@mtdswap_readsect._entry_ptr.8 = internal global ptr @mtdswap_readsect._entry.6, section ".printk_index", align 4
@.str.9 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"SWAPSPACE2\00", [21 x i8] zeroinitializer }, align 32
@mtdswap_write_block._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.3, i32 654, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Write to MTD device failed: %d (%zd written)\00", [51 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mtdswap_write_block\00", [44 x i8] zeroinitializer }, align 32
@mtdswap_write_block._entry_ptr = internal global ptr @mtdswap_write_block._entry, section ".printk_index", align 4
@mtdswap_write_block._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.11, ptr @.str.3, i32 660, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Short write to MTD device: %zd written\00", [57 x i8] zeroinitializer }, align 32
@mtdswap_write_block._entry_ptr.14 = internal global ptr @mtdswap_write_block._entry.12, section ".printk_index", align 4
@mtdswap_choose_wl_tree.pick_cnt = internal global { i32, [28 x i8] } zeroinitializer, align 32
@mtdswap_move_block._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.3, i32 697, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Read Error: %d (block %u)\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mtdswap_move_block\00", [45 x i8] zeroinitializer }, align 32
@mtdswap_move_block._entry_ptr = internal global ptr @mtdswap_move_block._entry, section ".printk_index", align 4
@mtdswap_move_block._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.16, ptr @.str.3, i32 707, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Short read: %zd (block %u)\0A\00", [36 x i8] zeroinitializer }, align 32
@mtdswap_move_block._entry_ptr.19 = internal global ptr @mtdswap_move_block._entry.17, section ".printk_index", align 4
@mtdswap_move_block._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.16, ptr @.str.3, i32 715, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Write error: %d\0A\00", [47 x i8] zeroinitializer }, align 32
@mtdswap_move_block._entry_ptr.22 = internal global ptr @mtdswap_move_block._entry.20, section ".printk_index", align 4
@mtdswap_handle_badblock._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.3, i32 266, ptr @.str.25, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Marking bad block at %08llx\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mtdswap_handle_badblock\00", [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@mtdswap_handle_badblock._entry_ptr = internal global ptr @mtdswap_handle_badblock._entry, section ".printk_index", align 4
@mtdswap_handle_badblock._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.24, ptr @.str.3, i32 271, ptr @.str.25, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"Mark block bad failed for block at %08llx error %d\0A\00", [44 x i8] zeroinitializer }, align 32
@mtdswap_handle_badblock._entry_ptr.28 = internal global ptr @mtdswap_handle_badblock._entry.26, section ".printk_index", align 4
@mtdswap_erase_block._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.3, i32 547, ptr @.str.25, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"erase of erase block %#llx on %s failed\00", [56 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mtdswap_erase_block\00", [44 x i8] zeroinitializer }, align 32
@mtdswap_erase_block._entry_ptr = internal global ptr @mtdswap_erase_block._entry, section ".printk_index", align 4
@mtdswap_erase_block._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.30, ptr @.str.3, i32 553, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Cannot erase erase block %#llx on %s\0A\00", [58 x i8] zeroinitializer }, align 32
@mtdswap_erase_block._entry_ptr.33 = internal global ptr @mtdswap_erase_block._entry.31, section ".printk_index", align 4
@mtdswap_write_marker._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.3, i32 395, ptr @.str.25, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Write OOB failed for block at %08llx error %d\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mtdswap_write_marker\00", [43 x i8] zeroinitializer }, align 32
@mtdswap_write_marker._entry_ptr = internal global ptr @mtdswap_write_marker._entry, section ".printk_index", align 4
@mtdswap_write_marker._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.35, ptr @.str.3, i32 404, ptr @.str.25, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Short OOB write for block at %08llx: %zd not %zd\0A\00", [46 x i8] zeroinitializer }, align 32
@mtdswap_write_marker._entry_ptr.38 = internal global ptr @mtdswap_write_marker._entry.36, section ".printk_index", align 4
@.str.39 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c",\00", [30 x i8] zeroinitializer }, align 32
@mtdswap_add_mtd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.3, i32 1360, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013%s: Erase size %u not multiple of PAGE_SIZE %lu\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mtdswap_add_mtd\00", [16 x i8] zeroinitializer }, align 32
@mtdswap_add_mtd._entry_ptr = internal global ptr @mtdswap_add_mtd._entry, section ".printk_index", align 4
@mtdswap_add_mtd._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.41, ptr @.str.3, i32 1366, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013%s: PAGE_SIZE %lu not multiple of write size %u\0A\00", [45 x i8] zeroinitializer }, align 32
@mtdswap_add_mtd._entry_ptr.44 = internal global ptr @mtdswap_add_mtd._entry.42, section ".printk_index", align 4
@mtdswap_add_mtd._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.41, ptr @.str.3, i32 1373, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\013%s: Not enough free bytes in OOB, %d available, %zu needed.\0A\00", [33 x i8] zeroinitializer }, align 32
@mtdswap_add_mtd._entry_ptr.47 = internal global ptr @mtdswap_add_mtd._entry.45, section ".printk_index", align 4
@mtdswap_add_mtd._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.41, ptr @.str.3, i32 1385, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\014%s: Device too large. Limiting size to %llu bytes\0A\00", [43 x i8] zeroinitializer }, align 32
@mtdswap_add_mtd._entry_ptr.50 = internal global ptr @mtdswap_add_mtd._entry.48, section ".printk_index", align 4
@mtdswap_add_mtd._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.41, ptr @.str.3, i32 1397, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\013%s: Not enough erase blocks. %u available, %d needed\0A\00", [40 x i8] zeroinitializer }, align 32
@mtdswap_add_mtd._entry_ptr.53 = internal global ptr @mtdswap_add_mtd._entry.51, section ".printk_index", align 4
@mtdswap_add_mtd._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.41, ptr @.str.3, i32 1414, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"\016%s: Enabling MTD swap on device %lu, size %llu KB, %u spare, %u bad blocks\0A\00", [50 x i8] zeroinitializer }, align 32
@mtdswap_add_mtd._entry_ptr.56 = internal global ptr @mtdswap_add_mtd._entry.54, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@mtdswap_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.58, ptr @.str.3, i32 1328, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\013%s: init failed (%d)\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mtdswap_init\00", [19 x i8] zeroinitializer }, align 32
@mtdswap_init._entry_ptr = internal global ptr @mtdswap_init._entry, section ".printk_index", align 4
@mtdswap_read_oob._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.60, ptr @.str.3, i32 307, ptr @.str.25, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Read OOB failed %d for block at %08llx\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mtdswap_read_oob\00", [47 x i8] zeroinitializer }, align 32
@mtdswap_read_oob._entry_ptr = internal global ptr @mtdswap_read_oob._entry, section ".printk_index", align 4
@mtdswap_read_oob._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.60, ptr @.str.3, i32 314, ptr @.str.25, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"Read OOB return short read (%zd bytes not %zd) for block at %08llx\0A\00", [60 x i8] zeroinitializer }, align 32
@mtdswap_read_oob._entry_ptr.63 = internal global ptr @mtdswap_read_oob._entry.61, section ".printk_index", align 4
@.str.64 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mtdswap_stats\00", [18 x i8] zeroinitializer }, align 32
@mtdswap_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @mtdswap_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"clean\00", [26 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"used\00", [27 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"low\00", [28 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"high\00", [27 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"dirty\00", [26 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"bitflip\00", [24 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"failing\00", [24 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"%s:\09%5d erase blocks, erased min %d, max %d times\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s:\09%5d erase blocks, all erased %d times\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"bad:\09%5u erase blocks\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"current erase block: %u pages used, %u free, erased %u times\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"total erasures: %lu\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"mtdswap_readsect count: %llu\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"mtdswap_writesect count: %llu\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"mtdswap_discard count: %llu\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mtd read count: %llu\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mtd write count: %llu\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"discarded pages count: %llu\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"total pages: %u\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"pages mapped: %u\0A\00", [46 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967222, i64 4294967291]
@__sancov_gen_cov_switch_values.86 = internal global [4 x i64] [i64 2, i64 32, i64 4294967222, i64 4294967291]
@__sancov_gen_cov_switch_values.87 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967222, i64 4294967291]
@__sancov_gen_cov_switch_values.88 = internal global [4 x i64] [i64 2, i64 32, i64 4294967222, i64 4294967291]
@__sancov_gen_cov_switch_values.89 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967179]
@__sancov_gen_cov_switch_values.90 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@___asan_gen_.91 = private unnamed_addr constant [14 x i8] c"spare_eblocks\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 172, i32 21 }
@___asan_gen_.94 = private unnamed_addr constant [7 x i8] c"header\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 177, i32 13 }
@___asan_gen_.97 = private unnamed_addr constant [12 x i8] c"mtdswap_ops\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 1471, i32 32 }
@___asan_gen_.100 = private unnamed_addr constant [11 x i8] c"partitions\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 167, i32 13 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 1472, i32 11 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 1122, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 1133, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 1071, i32 31 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 653, i32 3 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 659, i32 3 }
@___asan_gen_.148 = private unnamed_addr constant [9 x i8] c"pick_cnt\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 802, i32 22 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 696, i32 3 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 706, i32 3 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 715, i32 3 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 266, i32 2 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 270, i32 3 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 545, i32 4 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 552, i32 3 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 394, i32 3 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 402, i32 3 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 1347, i32 36 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 1359, i32 3 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 1365, i32 3 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 1371, i32 3 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 1384, i32 3 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 1395, i32 3 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 1412, i32 2 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 1328, i32 2 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 306, i32 3 }
@___asan_gen_.280 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 312, i32 3 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 1265, i32 22 }
@___asan_gen_.289 = private unnamed_addr constant [13 x i8] c"mtdswap_fops\00", align 1
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 1253, i32 1 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 1178, i32 3 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 1178, i32 12 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 1178, i32 20 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 1178, i32 27 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 1178, i32 35 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 1178, i32 44 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 1178, i32 55 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 1220, i32 18 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 1224, i32 18 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 1229, i32 17 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 1232, i32 17 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 1236, i32 16 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 1238, i32 14 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 1240, i32 16 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 1241, i32 16 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 1242, i32 16 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 1243, i32 16 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 1244, i32 16 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 1245, i32 16 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 1248, i32 16 }
@___asan_gen_.352 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.353 = private constant [25 x i8] c"../drivers/mtd/mtdswap.c\00", align 1
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 1249, i32 16 }
@llvm.compiler.used = appending global [126 x ptr] [ptr @__UNIQUE_ID_author297, ptr @__UNIQUE_ID_description298, ptr @__UNIQUE_ID_file295, ptr @__UNIQUE_ID_header293, ptr @__UNIQUE_ID_headertype292, ptr @__UNIQUE_ID_license296, ptr @__UNIQUE_ID_partitions289, ptr @__UNIQUE_ID_partitionstype288, ptr @__UNIQUE_ID_spare_eblocks291, ptr @__UNIQUE_ID_spare_eblockstype290, ptr @__exitcall_mtdswap_ops_exit, ptr @__initcall__kmod_mtdswap__294_1486_mtdswap_ops_init6, ptr @__param_header, ptr @__param_partitions, ptr @__param_spare_eblocks, ptr @mtdswap_add_mtd._entry, ptr @mtdswap_add_mtd._entry.42, ptr @mtdswap_add_mtd._entry.45, ptr @mtdswap_add_mtd._entry.48, ptr @mtdswap_add_mtd._entry.51, ptr @mtdswap_add_mtd._entry.54, ptr @mtdswap_add_mtd._entry_ptr, ptr @mtdswap_add_mtd._entry_ptr.44, ptr @mtdswap_add_mtd._entry_ptr.47, ptr @mtdswap_add_mtd._entry_ptr.50, ptr @mtdswap_add_mtd._entry_ptr.53, ptr @mtdswap_add_mtd._entry_ptr.56, ptr @mtdswap_erase_block._entry, ptr @mtdswap_erase_block._entry.31, ptr @mtdswap_erase_block._entry_ptr, ptr @mtdswap_erase_block._entry_ptr.33, ptr @mtdswap_handle_badblock._entry, ptr @mtdswap_handle_badblock._entry.26, ptr @mtdswap_handle_badblock._entry_ptr, ptr @mtdswap_handle_badblock._entry_ptr.28, ptr @mtdswap_init._entry, ptr @mtdswap_init._entry_ptr, ptr @mtdswap_move_block._entry, ptr @mtdswap_move_block._entry.17, ptr @mtdswap_move_block._entry.20, ptr @mtdswap_move_block._entry_ptr, ptr @mtdswap_move_block._entry_ptr.19, ptr @mtdswap_move_block._entry_ptr.22, ptr @mtdswap_ops_exit, ptr @mtdswap_read_oob._entry, ptr @mtdswap_read_oob._entry.61, ptr @mtdswap_read_oob._entry_ptr, ptr @mtdswap_read_oob._entry_ptr.63, ptr @mtdswap_readsect._entry, ptr @mtdswap_readsect._entry.6, ptr @mtdswap_readsect._entry_ptr, ptr @mtdswap_readsect._entry_ptr.8, ptr @mtdswap_write_block._entry, ptr @mtdswap_write_block._entry.12, ptr @mtdswap_write_block._entry_ptr, ptr @mtdswap_write_block._entry_ptr.14, ptr @mtdswap_write_marker._entry, ptr @mtdswap_write_marker._entry.36, ptr @mtdswap_write_marker._entry_ptr, ptr @mtdswap_write_marker._entry_ptr.38, ptr @spare_eblocks, ptr @header, ptr @mtdswap_ops, ptr @partitions, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @mtdswap_choose_wl_tree.pick_cnt, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.21, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.27, ptr @.str.29, ptr @.str.30, ptr @.str.32, ptr @.str.34, ptr @.str.35, ptr @.str.37, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.43, ptr @.str.46, ptr @.str.49, ptr @.str.52, ptr @.str.55, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.62, ptr @.str.64, ptr @mtdswap_fops, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85], section "llvm.metadata"
@0 = internal global [88 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spare_eblocks to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @header to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtdswap_ops to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @partitions to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtdswap_readsect._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtdswap_readsect._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtdswap_write_block._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtdswap_write_block._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtdswap_choose_wl_tree.pick_cnt to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtdswap_move_block._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtdswap_move_block._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtdswap_move_block._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtdswap_handle_badblock._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtdswap_handle_badblock._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtdswap_erase_block._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtdswap_erase_block._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtdswap_write_marker._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtdswap_write_marker._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtdswap_add_mtd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtdswap_add_mtd._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtdswap_add_mtd._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtdswap_add_mtd._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtdswap_add_mtd._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtdswap_add_mtd._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtdswap_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtdswap_read_oob._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtdswap_read_oob._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtdswap_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mtdswap_ops_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @register_mtd_blktrans(ptr noundef nonnull @mtdswap_ops) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mtdswap_ops_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 @deregister_mtd_blktrans(ptr noundef nonnull @mtdswap_ops) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @deregister_mtd_blktrans(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_mtd_blktrans(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtdswap_readsect(ptr nocapture noundef readonly %dev, i32 noundef %page, ptr noundef %buf) #2 align 64 {
entry:
  %retlen = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.mtd_blktrans_dev, ptr %dev, i32 0, i32 16
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %mtd1 = getelementptr inbounds %struct.mtdswap_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %mtd1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mtd1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retlen) #8
  %4 = ptrtoint ptr %retlen to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %retlen, align 4, !annotation !203
  %sect_read_count = getelementptr inbounds %struct.mtdswap_dev, ptr %1, i32 0, i32 11
  %5 = ptrtoint ptr %sect_read_count to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %sect_read_count, align 8
  %inc = add i64 %6, 1
  store i64 %inc, ptr %sect_read_count, align 8
  %7 = load i8, ptr @header, align 1, !range !204
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %entry.if.end5_crit_edge, label %if.then

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %page)
  %cmp = icmp eq i32 %page, 0
  br i1 %cmp, label %if.then4, label %if.end, !prof !205

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %8 = call ptr @memset(ptr %buf, i32 0, i32 4086)
  %version.i = getelementptr inbounds %struct.anon.86, ptr %buf, i32 0, i32 1
  %9 = ptrtoint ptr %version.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %version.i, align 4
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 8
  %size.i = getelementptr inbounds %struct.mtd_blktrans_dev, ptr %11, i32 0, i32 6
  %12 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %size.i, align 4
  %sub.i = add i32 %13, -1
  %last_page.i = getelementptr inbounds %struct.anon.86, ptr %buf, i32 0, i32 2
  %14 = ptrtoint ptr %last_page.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %sub.i, ptr %last_page.i, align 4
  %nr_badpages.i = getelementptr inbounds %struct.anon.86, ptr %buf, i32 0, i32 3
  %15 = ptrtoint ptr %nr_badpages.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %nr_badpages.i, align 4
  %add.ptr1.i = getelementptr i8, ptr %buf, i32 4086
  %16 = call ptr @memcpy(ptr %add.ptr1.i, ptr @.str.9, i32 10)
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %dec = add i32 %page, -1
  br label %if.end5

if.end5:                                          ; preds = %if.end, %entry.if.end5_crit_edge
  %page.addr.0 = phi i32 [ %dec, %if.end ], [ %page, %entry.if.end5_crit_edge ]
  %page_data = getelementptr inbounds %struct.mtdswap_dev, ptr %1, i32 0, i32 3
  %17 = ptrtoint ptr %page_data to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %page_data, align 4
  %arrayidx = getelementptr i32, ptr %18, i32 %page.addr.0
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -3, i32 %20)
  %cmp6 = icmp ugt i32 %20, -3
  br i1 %cmp6, label %if.then7, label %if.end10

if.then7:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  %21 = call ptr @memset(ptr %buf, i32 0, i32 4096)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %20)
  %cmp8 = icmp eq i32 %20, -1
  %. = select i1 %cmp8, i32 0, i32 -5
  br label %cleanup

if.end10:                                         ; preds = %if.end5
  %eb_data = getelementptr inbounds %struct.mtdswap_dev, ptr %1, i32 0, i32 9
  %22 = ptrtoint ptr %eb_data to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %eb_data, align 4
  %pages_per_eblk = getelementptr inbounds %struct.mtdswap_dev, ptr %1, i32 0, i32 7
  %24 = ptrtoint ptr %pages_per_eblk to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %pages_per_eblk, align 4
  %div = udiv i32 %20, %25
  %add.ptr = getelementptr %struct.swap_eb, ptr %23, i32 %div
  %revmap = getelementptr inbounds %struct.mtdswap_dev, ptr %1, i32 0, i32 4
  %26 = ptrtoint ptr %revmap to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %revmap, align 8
  %arrayidx11 = getelementptr i32, ptr %27, i32 %20
  %28 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx11, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %29)
  %cmp12 = icmp eq i32 %29, -1
  br i1 %cmp12, label %do.body20, label %do.end26, !prof !205

do.body20:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/mtd/mtdswap.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1106, 0\0A.popsection", ""() #8, !srcloc !206
  unreachable

do.end26:                                         ; preds = %if.end10
  %conv = zext i32 %20 to i64
  %shl = shl nuw nsw i64 %conv, 12
  %mtd_read_count = getelementptr inbounds %struct.mtdswap_dev, ptr %1, i32 0, i32 14
  %dev39 = getelementptr inbounds %struct.mtdswap_dev, ptr %1, i32 0, i32 2
  %flags40 = getelementptr %struct.swap_eb, ptr %23, i32 %div, i32 2
  %root1.i91 = getelementptr %struct.swap_eb, ptr %23, i32 %div, i32 1
  %arrayidx.i92 = getelementptr %struct.mtdswap_dev, ptr %1, i32 0, i32 10, i32 6
  %trees.i.i96 = getelementptr inbounds %struct.mtdswap_dev, ptr %1, i32 0, i32 10
  %sub.ptr.rhs.cast.i.i98 = ptrtoint ptr %trees.i.i96 to i32
  %erase_count.i.i106 = getelementptr %struct.swap_eb, ptr %23, i32 %div, i32 4
  %rb_right.i.i.i119 = getelementptr inbounds %struct.rb_node, ptr %add.ptr, i32 0, i32 1
  %rb_left.i.i.i120 = getelementptr inbounds %struct.rb_node, ptr %add.ptr, i32 0, i32 2
  %count.i121 = getelementptr %struct.mtdswap_dev, ptr %1, i32 0, i32 10, i32 6, i32 1
  br label %retry

retry:                                            ; preds = %mtdswap_rb_add.exit124.retry_crit_edge, %do.end26
  %retries.0 = phi i32 [ 0, %do.end26 ], [ %inc42, %mtdswap_rb_add.exit124.retry_crit_edge ]
  %call27 = call i32 @mtd_read(ptr noundef %3, i64 noundef %shl, i32 noundef 4096, ptr noundef nonnull %retlen, ptr noundef %buf) #8
  %30 = ptrtoint ptr %mtd_read_count to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %mtd_read_count, align 8
  %inc28 = add i64 %31, 1
  store i64 %inc28, ptr %mtd_read_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -117, i32 %call27)
  %cmp.i.not = icmp eq i32 %call27, -117
  br i1 %cmp.i.not, label %if.then31, label %if.end32

if.then31:                                        ; preds = %retry
  %32 = ptrtoint ptr %flags40 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %flags40, align 4
  %or = or i32 %33, 4
  store i32 %or, ptr %flags40, align 4
  %34 = ptrtoint ptr %root1.i91 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %root1.i91, align 4
  %arrayidx.i = getelementptr %struct.mtdswap_dev, ptr %1, i32 0, i32 10, i32 5
  %cmp.i90 = icmp eq ptr %35, %arrayidx.i
  br i1 %cmp.i90, label %if.then31.if.end47_crit_edge, label %if.end.i

if.then31.if.end47_crit_edge:                     ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end47

if.end.i:                                         ; preds = %if.then31
  %tobool.not.i.i = icmp eq ptr %35, null
  br i1 %tobool.not.i.i, label %if.end.i.mtdswap_eb_detach.exit.i_crit_edge, label %if.then.i.i

if.end.i.mtdswap_eb_detach.exit.i_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mtdswap_eb_detach.exit.i

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %35 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i98
  %sub.ptr.div.i.i = ashr exact i32 %sub.ptr.sub.i.i, 3
  %count.i.i = getelementptr %struct.mtdswap_dev, ptr %1, i32 0, i32 10, i32 %sub.ptr.div.i.i, i32 1
  %36 = ptrtoint ptr %count.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %count.i.i, align 4
  %dec.i.i = add i32 %37, -1
  store i32 %dec.i.i, ptr %count.i.i, align 4
  %38 = ptrtoint ptr %root1.i91 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %root1.i91, align 4
  call void @rb_erase(ptr noundef %add.ptr, ptr noundef %39) #8
  br label %mtdswap_eb_detach.exit.i

mtdswap_eb_detach.exit.i:                         ; preds = %if.then.i.i, %if.end.i.mtdswap_eb_detach.exit.i_crit_edge
  %40 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not11.i.i = icmp eq ptr %41, null
  br i1 %tobool.not11.i.i, label %mtdswap_eb_detach.exit.i.__mtdswap_rb_add.exit.i_crit_edge, label %while.body.lr.ph.i.i

mtdswap_eb_detach.exit.i.__mtdswap_rb_add.exit.i_crit_edge: ; preds = %mtdswap_eb_detach.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__mtdswap_rb_add.exit.i

while.body.lr.ph.i.i:                             ; preds = %mtdswap_eb_detach.exit.i
  %42 = ptrtoint ptr %erase_count.i.i106 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %erase_count.i.i106, align 4
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %while.body.lr.ph.i.i
  %44 = phi ptr [ %41, %while.body.lr.ph.i.i ], [ %48, %while.body.i.i.while.body.i.i_crit_edge ]
  %erase_count1.i.i = getelementptr inbounds %struct.swap_eb, ptr %44, i32 0, i32 4
  %45 = ptrtoint ptr %erase_count1.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %erase_count1.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %43, i32 %46)
  %cmp.i.i = icmp ugt i32 %43, %46
  %rb_right.i.i = getelementptr inbounds %struct.rb_node, ptr %44, i32 0, i32 1
  %rb_left.i.i = getelementptr inbounds %struct.rb_node, ptr %44, i32 0, i32 2
  %p.1.i.i = select i1 %cmp.i.i, ptr %rb_right.i.i, ptr %rb_left.i.i
  %47 = ptrtoint ptr %p.1.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %p.1.i.i, align 4
  %tobool.not.i18.i = icmp eq ptr %48, null
  br i1 %tobool.not.i18.i, label %while.cond.while.end_crit_edge.i.i, label %while.body.i.i.while.body.i.i_crit_edge

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i.i

while.cond.while.end_crit_edge.i.i:               ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %phi.cast.le.i.i = ptrtoint ptr %44 to i32
  br label %__mtdswap_rb_add.exit.i

__mtdswap_rb_add.exit.i:                          ; preds = %while.cond.while.end_crit_edge.i.i, %mtdswap_eb_detach.exit.i.__mtdswap_rb_add.exit.i_crit_edge
  %parent.0.lcssa.i.i = phi i32 [ %phi.cast.le.i.i, %while.cond.while.end_crit_edge.i.i ], [ 0, %mtdswap_eb_detach.exit.i.__mtdswap_rb_add.exit.i_crit_edge ]
  %p.0.lcssa.i.i = phi ptr [ %p.1.i.i, %while.cond.while.end_crit_edge.i.i ], [ %arrayidx.i, %mtdswap_eb_detach.exit.i.__mtdswap_rb_add.exit.i_crit_edge ]
  %49 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %parent.0.lcssa.i.i, ptr %add.ptr, align 4
  %50 = ptrtoint ptr %rb_right.i.i.i119 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr null, ptr %rb_right.i.i.i119, align 4
  %51 = ptrtoint ptr %rb_left.i.i.i120 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr null, ptr %rb_left.i.i.i120, align 4
  %52 = ptrtoint ptr %p.0.lcssa.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %add.ptr, ptr %p.0.lcssa.i.i, align 4
  call void @rb_insert_color(ptr noundef %add.ptr, ptr noundef %arrayidx.i) #8
  %53 = ptrtoint ptr %root1.i91 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %arrayidx.i, ptr %root1.i91, align 4
  %count.i = getelementptr %struct.mtdswap_dev, ptr %1, i32 0, i32 10, i32 5, i32 1
  %54 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %count.i, align 4
  %inc.i = add i32 %55, 1
  store i32 %inc.i, ptr %count.i, align 4
  br label %if.end47

if.end32:                                         ; preds = %retry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %cmp33 = icmp slt i32 %call27, 0
  br i1 %cmp33, label %do.end38, label %if.end32.if.end47_crit_edge

if.end32.if.end47_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end47

do.end38:                                         ; preds = %if.end32
  %56 = ptrtoint ptr %dev39 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dev39, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %57, ptr noundef nonnull @.str.1, i32 noundef %call27) #11
  %58 = ptrtoint ptr %flags40 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %flags40, align 4
  %or41 = or i32 %59, 16
  store i32 %or41, ptr %flags40, align 4
  %60 = ptrtoint ptr %root1.i91 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %root1.i91, align 4
  %cmp.i93 = icmp eq ptr %61, %arrayidx.i92
  br i1 %cmp.i93, label %do.end38.mtdswap_rb_add.exit124_crit_edge, label %if.end.i95

do.end38.mtdswap_rb_add.exit124_crit_edge:        ; preds = %do.end38
  call void @__sanitizer_cov_trace_pc() #10
  br label %mtdswap_rb_add.exit124

if.end.i95:                                       ; preds = %do.end38
  %tobool.not.i.i94 = icmp eq ptr %61, null
  br i1 %tobool.not.i.i94, label %if.end.i95.mtdswap_eb_detach.exit.i105_crit_edge, label %if.then.i.i103

if.end.i95.mtdswap_eb_detach.exit.i105_crit_edge: ; preds = %if.end.i95
  call void @__sanitizer_cov_trace_pc() #10
  br label %mtdswap_eb_detach.exit.i105

if.then.i.i103:                                   ; preds = %if.end.i95
  call void @__sanitizer_cov_trace_pc() #10
  %sub.ptr.lhs.cast.i.i97 = ptrtoint ptr %61 to i32
  %sub.ptr.sub.i.i99 = sub i32 %sub.ptr.lhs.cast.i.i97, %sub.ptr.rhs.cast.i.i98
  %sub.ptr.div.i.i100 = ashr exact i32 %sub.ptr.sub.i.i99, 3
  %count.i.i101 = getelementptr %struct.mtdswap_dev, ptr %1, i32 0, i32 10, i32 %sub.ptr.div.i.i100, i32 1
  %62 = ptrtoint ptr %count.i.i101 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %count.i.i101, align 4
  %dec.i.i102 = add i32 %63, -1
  store i32 %dec.i.i102, ptr %count.i.i101, align 4
  %64 = ptrtoint ptr %root1.i91 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %root1.i91, align 4
  call void @rb_erase(ptr noundef %add.ptr, ptr noundef %65) #8
  br label %mtdswap_eb_detach.exit.i105

mtdswap_eb_detach.exit.i105:                      ; preds = %if.then.i.i103, %if.end.i95.mtdswap_eb_detach.exit.i105_crit_edge
  %66 = ptrtoint ptr %arrayidx.i92 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %arrayidx.i92, align 4
  %tobool.not11.i.i104 = icmp eq ptr %67, null
  br i1 %tobool.not11.i.i104, label %mtdswap_eb_detach.exit.i105.__mtdswap_rb_add.exit.i123_crit_edge, label %while.body.lr.ph.i.i107

mtdswap_eb_detach.exit.i105.__mtdswap_rb_add.exit.i123_crit_edge: ; preds = %mtdswap_eb_detach.exit.i105
  call void @__sanitizer_cov_trace_pc() #10
  br label %__mtdswap_rb_add.exit.i123

while.body.lr.ph.i.i107:                          ; preds = %mtdswap_eb_detach.exit.i105
  %68 = ptrtoint ptr %erase_count.i.i106 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %erase_count.i.i106, align 4
  br label %while.body.i.i114

while.body.i.i114:                                ; preds = %while.body.i.i114.while.body.i.i114_crit_edge, %while.body.lr.ph.i.i107
  %70 = phi ptr [ %67, %while.body.lr.ph.i.i107 ], [ %74, %while.body.i.i114.while.body.i.i114_crit_edge ]
  %erase_count1.i.i108 = getelementptr inbounds %struct.swap_eb, ptr %70, i32 0, i32 4
  %71 = ptrtoint ptr %erase_count1.i.i108 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %erase_count1.i.i108, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %69, i32 %72)
  %cmp.i.i109 = icmp ugt i32 %69, %72
  %rb_right.i.i110 = getelementptr inbounds %struct.rb_node, ptr %70, i32 0, i32 1
  %rb_left.i.i111 = getelementptr inbounds %struct.rb_node, ptr %70, i32 0, i32 2
  %p.1.i.i112 = select i1 %cmp.i.i109, ptr %rb_right.i.i110, ptr %rb_left.i.i111
  %73 = ptrtoint ptr %p.1.i.i112 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %p.1.i.i112, align 4
  %tobool.not.i18.i113 = icmp eq ptr %74, null
  br i1 %tobool.not.i18.i113, label %while.cond.while.end_crit_edge.i.i116, label %while.body.i.i114.while.body.i.i114_crit_edge

while.body.i.i114.while.body.i.i114_crit_edge:    ; preds = %while.body.i.i114
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i.i114

while.cond.while.end_crit_edge.i.i116:            ; preds = %while.body.i.i114
  call void @__sanitizer_cov_trace_pc() #10
  %phi.cast.le.i.i115 = ptrtoint ptr %70 to i32
  br label %__mtdswap_rb_add.exit.i123

__mtdswap_rb_add.exit.i123:                       ; preds = %while.cond.while.end_crit_edge.i.i116, %mtdswap_eb_detach.exit.i105.__mtdswap_rb_add.exit.i123_crit_edge
  %parent.0.lcssa.i.i117 = phi i32 [ %phi.cast.le.i.i115, %while.cond.while.end_crit_edge.i.i116 ], [ 0, %mtdswap_eb_detach.exit.i105.__mtdswap_rb_add.exit.i123_crit_edge ]
  %p.0.lcssa.i.i118 = phi ptr [ %p.1.i.i112, %while.cond.while.end_crit_edge.i.i116 ], [ %arrayidx.i92, %mtdswap_eb_detach.exit.i105.__mtdswap_rb_add.exit.i123_crit_edge ]
  %75 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %parent.0.lcssa.i.i117, ptr %add.ptr, align 4
  %76 = ptrtoint ptr %rb_right.i.i.i119 to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr null, ptr %rb_right.i.i.i119, align 4
  %77 = ptrtoint ptr %rb_left.i.i.i120 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr null, ptr %rb_left.i.i.i120, align 4
  %78 = ptrtoint ptr %p.0.lcssa.i.i118 to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %add.ptr, ptr %p.0.lcssa.i.i118, align 4
  call void @rb_insert_color(ptr noundef %add.ptr, ptr noundef %arrayidx.i92) #8
  %79 = ptrtoint ptr %root1.i91 to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %arrayidx.i92, ptr %root1.i91, align 4
  %80 = ptrtoint ptr %count.i121 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %count.i121, align 4
  %inc.i122 = add i32 %81, 1
  store i32 %inc.i122, ptr %count.i121, align 4
  br label %mtdswap_rb_add.exit124

mtdswap_rb_add.exit124:                           ; preds = %__mtdswap_rb_add.exit.i123, %do.end38.mtdswap_rb_add.exit124_crit_edge
  %inc42 = add nuw nsw i32 %retries.0, 1
  %exitcond.not = icmp eq i32 %inc42, 3
  br i1 %exitcond.not, label %mtdswap_rb_add.exit124.cleanup_crit_edge, label %mtdswap_rb_add.exit124.retry_crit_edge

mtdswap_rb_add.exit124.retry_crit_edge:           ; preds = %mtdswap_rb_add.exit124
  call void @__sanitizer_cov_trace_pc() #10
  br label %retry

mtdswap_rb_add.exit124.cleanup_crit_edge:         ; preds = %mtdswap_rb_add.exit124
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end47:                                         ; preds = %if.end32.if.end47_crit_edge, %__mtdswap_rb_add.exit.i, %if.then31.if.end47_crit_edge
  %82 = ptrtoint ptr %retlen to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %retlen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %83)
  %cmp48.not = icmp eq i32 %83, 4096
  br i1 %cmp48.not, label %if.end47.cleanup_crit_edge, label %do.end53

if.end47.cleanup_crit_edge:                       ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end53:                                         ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #10
  %84 = ptrtoint ptr %dev39 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %dev39, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %85, ptr noundef nonnull @.str.7, i32 noundef %83) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end53, %if.end47.cleanup_crit_edge, %mtdswap_rb_add.exit124.cleanup_crit_edge, %if.then7, %if.then4
  %retval.0 = phi i32 [ 0, %if.then4 ], [ -5, %do.end53 ], [ %., %if.then7 ], [ 0, %if.end47.cleanup_crit_edge ], [ %call27, %mtdswap_rb_add.exit124.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retlen) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtdswap_writesect(ptr nocapture noundef readonly %dev, i32 noundef %page, ptr noundef %buf) #2 align 64 {
entry:
  %newblock = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.mtd_blktrans_dev, ptr %dev, i32 0, i32 16
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %newblock) #8
  %2 = ptrtoint ptr %newblock to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %newblock, align 4, !annotation !203
  %sect_write_count = getelementptr inbounds %struct.mtdswap_dev, ptr %1, i32 0, i32 12
  %3 = ptrtoint ptr %sect_write_count to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %sect_write_count, align 8
  %inc = add i64 %4, 1
  store i64 %inc, ptr %sect_write_count, align 8
  %spare_eblks = getelementptr inbounds %struct.mtdswap_dev, ptr %1, i32 0, i32 6
  %5 = ptrtoint ptr %spare_eblks to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %spare_eblks, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %6)
  %cmp = icmp ult i32 %6, 2
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = load i8, ptr @header, align 1, !range !204
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %if.end.if.end7_crit_edge, label %if.then1

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %page)
  %cmp2 = icmp eq i32 %page, 0
  br i1 %cmp2, label %if.then1.cleanup_crit_edge, label %if.end6, !prof !205

if.then1.cleanup_crit_edge:                       ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end6:                                          ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #10
  %dec = add i32 %page, -1
  br label %if.end7

if.end7:                                          ; preds = %if.end6, %if.end.if.end7_crit_edge
  %page.addr.0 = phi i32 [ %dec, %if.end6 ], [ %page, %if.end.if.end7_crit_edge ]
  %page_data = getelementptr inbounds %struct.mtdswap_dev, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %page_data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %page_data, align 4
  %arrayidx = getelementptr i32, ptr %9, i32 %page.addr.0
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %11)
  %cmp8 = icmp ult i32 %11, -2
  br i1 %cmp8, label %if.then9, label %if.end7.if.end14_crit_edge

if.end7.if.end14_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

if.then9:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  %eb_data = getelementptr inbounds %struct.mtdswap_dev, ptr %1, i32 0, i32 9
  %12 = ptrtoint ptr %eb_data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %eb_data, align 4
  %pages_per_eblk = getelementptr inbounds %struct.mtdswap_dev, ptr %1, i32 0, i32 7
  %14 = ptrtoint ptr %pages_per_eblk to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pages_per_eblk, align 4
  %div = udiv i32 %11, %15
  %add.ptr = getelementptr %struct.swap_eb, ptr %13, i32 %div
  %active_count = getelementptr %struct.swap_eb, ptr %13, i32 %div, i32 3
  %16 = ptrtoint ptr %active_count to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %active_count, align 4
  %dec10 = add i32 %17, -1
  store i32 %dec10, ptr %active_count, align 4
  tail call fastcc void @mtdswap_store_eb(ptr noundef %1, ptr noundef %add.ptr)
  %18 = ptrtoint ptr %page_data to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %page_data, align 4
  %arrayidx12 = getelementptr i32, ptr %19, i32 %page.addr.0
  %20 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 -1, ptr %arrayidx12, align 4
  %revmap = getelementptr inbounds %struct.mtdswap_dev, ptr %1, i32 0, i32 4
  %21 = ptrtoint ptr %revmap to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %revmap, align 8
  %arrayidx13 = getelementptr i32, ptr %22, i32 %11
  %23 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 -1, ptr %arrayidx13, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.then9, %if.end7.if.end14_crit_edge
  %call = call fastcc i32 @mtdswap_write_block(ptr noundef %1, ptr noundef %buf, i32 noundef %page.addr.0, ptr noundef nonnull %newblock, i32 noundef 0)
  %mtd_write_count = getelementptr inbounds %struct.mtdswap_dev, ptr %1, i32 0, i32 13
  %24 = ptrtoint ptr %mtd_write_count to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %mtd_write_count, align 8
  %inc15 = add i64 %25, 1
  store i64 %inc15, ptr %mtd_write_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp16 = icmp slt i32 %call, 0
  br i1 %cmp16, label %if.end14.cleanup_crit_edge, label %if.end18

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end18:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  %26 = ptrtoint ptr %newblock to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %newblock, align 4
  %28 = ptrtoint ptr %page_data to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %page_data, align 4
  %arrayidx20 = getelementptr i32, ptr %29, i32 %page.addr.0
  %30 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %27, ptr %arrayidx20, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %if.end14.cleanup_crit_edge, %if.then1.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end18 ], [ -28, %entry.cleanup_crit_edge ], [ 0, %if.then1.cleanup_crit_edge ], [ %call, %if.end14.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %newblock) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtdswap_discard(ptr nocapture noundef readonly %dev, i32 noundef %first, i32 noundef %nr_pages) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.mtd_blktrans_dev, ptr %dev, i32 0, i32 16
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %discard_count = getelementptr inbounds %struct.mtdswap_dev, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %discard_count to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %discard_count, align 8
  %inc = add i64 %3, 1
  store i64 %inc, ptr %discard_count, align 8
  %add = add i32 %nr_pages, %first
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %first)
  %cmp32 = icmp ugt i32 %add, %first
  br i1 %cmp32, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %page_data = getelementptr inbounds %struct.mtdswap_dev, ptr %1, i32 0, i32 3
  %discard_page_count10 = getelementptr inbounds %struct.mtdswap_dev, ptr %1, i32 0, i32 16
  %eb_data = getelementptr inbounds %struct.mtdswap_dev, ptr %1, i32 0, i32 9
  %pages_per_eblk = getelementptr inbounds %struct.mtdswap_dev, ptr %1, i32 0, i32 7
  %revmap = getelementptr inbounds %struct.mtdswap_dev, ptr %1, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %page.033 = phi i32 [ %first, %for.body.lr.ph ], [ %inc13, %for.inc.for.body_crit_edge ]
  %4 = ptrtoint ptr %page_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %page_data, align 4
  %arrayidx = getelementptr i32, ptr %5, i32 %page.033
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %7)
  %cmp1 = icmp ult i32 %7, -2
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %eb_data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %eb_data, align 4
  %10 = ptrtoint ptr %pages_per_eblk to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pages_per_eblk, align 4
  %div = udiv i32 %7, %11
  %add.ptr = getelementptr %struct.swap_eb, ptr %9, i32 %div
  %active_count = getelementptr %struct.swap_eb, ptr %9, i32 %div, i32 3
  %12 = ptrtoint ptr %active_count to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %active_count, align 4
  %dec = add i32 %13, -1
  store i32 %dec, ptr %active_count, align 4
  tail call fastcc void @mtdswap_store_eb(ptr noundef %1, ptr noundef %add.ptr)
  %14 = ptrtoint ptr %page_data to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %page_data, align 4
  %arrayidx3 = getelementptr i32, ptr %15, i32 %page.033
  %16 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -1, ptr %arrayidx3, align 4
  %17 = ptrtoint ptr %revmap to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %revmap, align 8
  %arrayidx4 = getelementptr i32, ptr %18, i32 %7
  br label %for.inc.sink.split

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %7)
  %cmp6 = icmp eq i32 %7, -2
  br i1 %cmp6, label %if.else.for.inc.sink.split_crit_edge, label %if.else.for.inc_crit_edge

if.else.for.inc_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.else.for.inc.sink.split_crit_edge:             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.sink.split

for.inc.sink.split:                               ; preds = %if.else.for.inc.sink.split_crit_edge, %if.then
  %arrayidx4.sink = phi ptr [ %arrayidx4, %if.then ], [ %arrayidx, %if.else.for.inc.sink.split_crit_edge ]
  %19 = ptrtoint ptr %arrayidx4.sink to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -1, ptr %arrayidx4.sink, align 4
  %20 = ptrtoint ptr %discard_page_count10 to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %discard_page_count10, align 8
  %inc5 = add i64 %21, 1
  store i64 %inc5, ptr %discard_page_count10, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.inc.sink.split, %if.else.for.inc_crit_edge
  %inc13 = add i32 %page.033, 1
  %exitcond.not = icmp eq i32 %inc13, %add
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mtdswap_background(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.mtd_blktrans_dev, ptr %dev, i32 0, i32 16
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  br label %while.cond

while.cond:                                       ; preds = %lor.lhs.false.while.cond_crit_edge, %entry
  %call = tail call fastcc i32 @mtdswap_gc(ptr noundef %1, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %lor.lhs.false, label %while.cond.if.then_crit_edge

while.cond.if.then_crit_edge:                     ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

lor.lhs.false:                                    ; preds = %while.cond
  %call1 = tail call i32 @mtd_blktrans_cease_background(ptr noundef %dev) #8
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %lor.lhs.false.while.cond_crit_edge, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

lor.lhs.false.while.cond_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %while.cond.if.then_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtdswap_flush(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.mtd_blktrans_dev, ptr %dev, i32 0, i32 16
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %mtd = getelementptr inbounds %struct.mtdswap_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %mtd to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mtd, align 4
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %while.cond.i.i.while.cond.i.i_crit_edge, %entry
  %mtd.addr.0.i.i = phi ptr [ %3, %entry ], [ %5, %while.cond.i.i.while.cond.i.i_crit_edge ]
  %parent.i.i = getelementptr inbounds %struct.mtd_info, ptr %mtd.addr.0.i.i, i32 0, i32 62
  %4 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %5, null
  br i1 %tobool.not.i.i, label %mtd_get_master.exit.i, label %while.cond.i.i.while.cond.i.i_crit_edge

while.cond.i.i.while.cond.i.i_crit_edge:          ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.i.i

mtd_get_master.exit.i:                            ; preds = %while.cond.i.i
  %_sync.i = getelementptr inbounds %struct.mtd_info, ptr %mtd.addr.0.i.i, i32 0, i32 37
  %6 = ptrtoint ptr %_sync.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %_sync.i, align 8
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %mtd_get_master.exit.i.mtd_sync.exit_crit_edge, label %if.then.i

mtd_get_master.exit.i.mtd_sync.exit_crit_edge:    ; preds = %mtd_get_master.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mtd_sync.exit

if.then.i:                                        ; preds = %mtd_get_master.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %7(ptr noundef %mtd.addr.0.i.i) #8
  br label %mtd_sync.exit

mtd_sync.exit:                                    ; preds = %if.then.i, %mtd_get_master.exit.i.mtd_sync.exit_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mtdswap_add_mtd(ptr noundef %tr, ptr noundef %mtd) #2 align 64 {
entry:
  %parts = alloca ptr, align 4
  %part = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %parts) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %part) #8
  %0 = ptrtoint ptr %part to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %part, align 4, !annotation !203
  %1 = ptrtoint ptr %parts to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @partitions, ptr %parts, align 4
  %2 = load i8, ptr @partitions, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %entry.cleanup129_crit_edge, label %while.cond.preheader

entry.cleanup129_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup129

while.cond.preheader:                             ; preds = %entry
  %index = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 14
  br label %while.cond

while.cond:                                       ; preds = %if.end4.while.cond_crit_edge, %while.cond.preheader
  %call = call ptr @strsep(ptr noundef nonnull %parts, ptr noundef nonnull @.str.39) #8
  %cmp.not = icmp eq ptr %call, null
  br i1 %cmp.not, label %while.cond.while.end_crit_edge, label %while.body

while.cond.while.end_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body:                                       ; preds = %while.cond
  %call.i = call i32 @_kstrtoul(ptr noundef nonnull %call, i32 noundef 0, ptr noundef nonnull %part) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp2 = icmp slt i32 %call.i, 0
  br i1 %cmp2, label %while.body.cleanup129_crit_edge, label %if.end4

while.body.cleanup129_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup129

if.end4:                                          ; preds = %while.body
  %3 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %index, align 4
  %5 = ptrtoint ptr %part to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %part, align 4
  %cmp5 = icmp eq i32 %4, %6
  br i1 %cmp5, label %if.end4.while.end_crit_edge, label %if.end4.while.cond_crit_edge

if.end4.while.cond_crit_edge:                     ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond

if.end4.while.end_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.end:                                        ; preds = %if.end4.while.end_crit_edge, %while.cond.while.end_crit_edge
  %7 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %index, align 4
  %9 = ptrtoint ptr %part to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %part, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %10)
  %cmp9.not = icmp eq i32 %8, %10
  br i1 %cmp9.not, label %if.end11, label %while.end.cleanup129_crit_edge

while.end.cleanup129_crit_edge:                   ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup129

if.end11:                                         ; preds = %while.end
  %erasesize = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 3
  %11 = ptrtoint ptr %erasesize to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %erasesize, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095, i32 %12)
  %cmp12 = icmp ugt i32 %12, 4095
  %rem = and i32 %12, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool14.not = icmp eq i32 %rem, 0
  %or.cond = and i1 %cmp12, %tobool14.not
  br i1 %or.cond, label %if.end18, label %do.end

do.end:                                           ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  %call17 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef nonnull @.str, i32 noundef %12, i32 noundef 4096) #11
  br label %cleanup129

if.end18:                                         ; preds = %if.end11
  %writesize = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 4
  %13 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %writesize, align 4
  %rem19 = urem i32 4096, %14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem19)
  %tobool20.not = icmp ne i32 %rem19, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %14)
  %cmp23 = icmp ugt i32 %14, 4096
  %or.cond198 = or i1 %cmp23, %tobool20.not
  br i1 %or.cond198, label %do.end27, label %if.end31

do.end27:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  %call30 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, ptr noundef nonnull @.str, i32 noundef 4096, i32 noundef %14) #11
  br label %cleanup129

if.end31:                                         ; preds = %if.end18
  %oobsize = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 6
  %15 = ptrtoint ptr %oobsize to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %oobsize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool32.not = icmp eq i32 %16, 0
  br i1 %tobool32.not, label %if.end31.do.end38_crit_edge, label %lor.lhs.false33

if.end31.do.end38_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end38

lor.lhs.false33:                                  ; preds = %if.end31
  %oobavail = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 7
  %17 = ptrtoint ptr %oobavail to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %oobavail, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %18)
  %cmp34 = icmp ult i32 %18, 6
  br i1 %cmp34, label %lor.lhs.false33.do.end38_crit_edge, label %if.end42

lor.lhs.false33.do.end38_crit_edge:               ; preds = %lor.lhs.false33
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end38

do.end38:                                         ; preds = %lor.lhs.false33.do.end38_crit_edge, %if.end31.do.end38_crit_edge
  %oobavail40 = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 7
  %19 = ptrtoint ptr %oobavail40 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %oobavail40, align 8
  %call41 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, ptr noundef nonnull @.str, i32 noundef %20, i32 noundef 6) #11
  br label %cleanup129

if.end42:                                         ; preds = %lor.lhs.false33
  %21 = load i32, ptr @spare_eblocks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %21)
  %cmp43 = icmp ugt i32 %21, 100
  br i1 %cmp43, label %if.then44, label %if.end42.if.end45_crit_edge

if.end42.if.end45_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end45

if.then44:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #10
  store i32 100, ptr @spare_eblocks, align 4
  br label %if.end45

if.end45:                                         ; preds = %if.then44, %if.end42.if.end45_crit_edge
  %size = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 2
  %22 = ptrtoint ptr %size to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %size, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 17592186032128, i64 %23)
  %cmp47 = icmp ugt i64 %23, 17592186032128
  br i1 %cmp47, label %do.end51, label %if.end45.if.end54_crit_edge

if.end45.if.end54_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end54

do.end51:                                         ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #10
  %call53 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, ptr noundef nonnull @.str, i64 noundef 17592186032128) #11
  br label %if.end54

if.end54:                                         ; preds = %do.end51, %if.end45.if.end54_crit_edge
  %use_size.0 = phi i64 [ 17592186032128, %do.end51 ], [ %23, %if.end45.if.end54_crit_edge ]
  %erasesize_shift.i = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 8
  %24 = ptrtoint ptr %erasesize_shift.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %erasesize_shift.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.not.i = icmp eq i32 %25, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #10
  %sh_prom.i = zext i32 %25 to i64
  %shr.i = lshr i64 %use_size.0, %sh_prom.i
  %conv.i = trunc i64 %shr.i to i32
  br label %mtd_div_by_eb.exit

if.end.i:                                         ; preds = %if.end54
  %26 = ptrtoint ptr %erasesize to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %erasesize, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %use_size.0)
  %cmp172.i = icmp ult i64 %use_size.0, 4294967296
  br i1 %cmp172.i, label %if.then176.i, label %if.else182.i, !prof !207

if.then176.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv177.i = trunc i64 %use_size.0 to i32
  %div180.i = udiv i32 %conv177.i, %27
  br label %mtd_div_by_eb.exit

if.else182.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %28 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %27, i64 %use_size.0) #12, !srcloc !208
  %asmresult1.i.i = extractvalue { i64, i64 } %28, 1
  %extract.t296.i = trunc i64 %asmresult1.i.i to i32
  br label %mtd_div_by_eb.exit

mtd_div_by_eb.exit:                               ; preds = %if.else182.i, %if.then176.i, %if.then.i
  %retval.0.i = phi i32 [ %conv.i, %if.then.i ], [ %div180.i, %if.then176.i ], [ %extract.t296.i, %if.else182.i ]
  %conv = zext i32 %retval.0.i to i64
  %29 = ptrtoint ptr %erasesize to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %erasesize, align 8
  %conv57 = zext i32 %30 to i64
  %mul = mul nuw i64 %conv57, %conv
  %call58 = call fastcc i32 @mtdswap_badblocks(ptr noundef %mtd, i64 noundef %mul)
  %sub = sub i32 %retval.0.i, %call58
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub)
  %cmp59 = icmp ult i32 %sub, 3
  br i1 %cmp59, label %do.end64, label %if.end67

do.end64:                                         ; preds = %mtd_div_by_eb.exit
  call void @__sanitizer_cov_trace_pc() #10
  %call66 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef nonnull @.str, i32 noundef %sub, i32 noundef 3) #11
  br label %cleanup129

if.end67:                                         ; preds = %mtd_div_by_eb.exit
  %conv68 = zext i32 %sub to i64
  %31 = load i32, ptr @spare_eblocks, align 4
  %conv69 = zext i32 %31 to i64
  %mul70 = mul nuw i64 %conv69, %conv68
  %32 = call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -6640827866535438582, i64 %mul70, i32 0) #12, !srcloc !209
  %asmresult.i.i.i = extractvalue { i64, i32 } %32, 0
  %asmresult4.i.i.i = extractvalue { i64, i32 } %32, 1
  %33 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -6640827866535438582, i64 %mul70, i64 %asmresult.i.i.i, i32 %asmresult4.i.i.i) #12, !srcloc !210
  %asmresult10.i.i.i = extractvalue { i64, i32 } %33, 0
  %div1581.i.i = lshr i64 %asmresult10.i.i.i, 6
  %conv72 = trunc i64 %div1581.i.i to i32
  %34 = call i32 @llvm.umax.i32(i32 %conv72, i32 2)
  %sub77 = add i32 %sub, -1
  %35 = call i32 @llvm.umin.i32(i32 %34, i32 %sub77)
  %sub83 = sub i32 %sub, %35
  %conv84 = zext i32 %sub83 to i64
  %36 = ptrtoint ptr %erasesize to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %erasesize, align 8
  %conv86 = zext i32 %37 to i64
  %mul87 = mul nuw i64 %conv84, %conv86
  %38 = load i8, ptr @header, align 1, !range !204
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool88.not = icmp eq i8 %38, 0
  %conv90 = select i1 %tobool88.not, i64 0, i64 4096
  %add = add nuw i64 %mul87, %conv90
  %39 = ptrtoint ptr %part to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %part, align 4
  %div197 = lshr i64 %add, 10
  %call95 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55, ptr noundef nonnull @.str, i32 noundef %40, i64 noundef %div197, i32 noundef %35, i32 noundef %call58) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %41 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %41, i32 noundef 3520, i32 noundef 160) #13
  %tobool97.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool97.not, label %if.end67.cleanup129_crit_edge, label %if.end99

if.end67.cleanup129_crit_edge:                    ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup129

if.end99:                                         ; preds = %if.end67
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %42 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i199 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %42, i32 noundef 3520, i32 noundef 208) #13
  %tobool101.not = icmp eq ptr %call7.i.i199, null
  br i1 %tobool101.not, label %if.then102, label %if.end103

if.then102:                                       ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #10
  call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup129

if.end103:                                        ; preds = %if.end99
  %43 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call7.i.i199, ptr %call7.i.i, align 8
  %priv = getelementptr inbounds %struct.mtd_blktrans_dev, ptr %call7.i.i199, i32 0, i32 16
  %44 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call7.i.i, ptr %priv, align 8
  %mtd105 = getelementptr inbounds %struct.mtd_blktrans_dev, ptr %call7.i.i199, i32 0, i32 2
  %45 = ptrtoint ptr %mtd105 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %mtd, ptr %mtd105, align 4
  %46 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %index, align 4
  %devnum = getelementptr inbounds %struct.mtd_blktrans_dev, ptr %call7.i.i199, i32 0, i32 4
  %48 = ptrtoint ptr %devnum to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %devnum, align 4
  %shr = lshr i64 %add, 12
  %conv107 = trunc i64 %shr to i32
  %size108 = getelementptr inbounds %struct.mtd_blktrans_dev, ptr %call7.i.i199, i32 0, i32 6
  %49 = ptrtoint ptr %size108 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %conv107, ptr %size108, align 4
  %50 = ptrtoint ptr %call7.i.i199 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %tr, ptr %call7.i.i199, align 8
  %flags = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 1
  %51 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %flags, align 4
  %and = and i32 %52, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool110.not = icmp eq i32 %and, 0
  br i1 %tobool110.not, label %if.then111, label %if.end103.if.end112_crit_edge

if.end103.if.end112_crit_edge:                    ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end112

if.then111:                                       ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #10
  %readonly = getelementptr inbounds %struct.mtd_blktrans_dev, ptr %call7.i.i199, i32 0, i32 7
  %53 = ptrtoint ptr %readonly to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 1, ptr %readonly, align 8
  br label %if.end112

if.end112:                                        ; preds = %if.then111, %if.end103.if.end112_crit_edge
  %call113 = call fastcc i32 @mtdswap_init(ptr noundef nonnull %call7.i.i, i32 noundef %retval.0.i, i32 noundef %35)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call113)
  %cmp114 = icmp slt i32 %call113, 0
  br i1 %cmp114, label %if.end112.init_failed_crit_edge, label %if.end117

if.end112.init_failed_crit_edge:                  ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #10
  br label %init_failed

if.end117:                                        ; preds = %if.end112
  %call118 = call i32 @add_mtd_blktrans_dev(ptr noundef nonnull %call7.i.i199) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call118)
  %cmp119 = icmp slt i32 %call118, 0
  br i1 %cmp119, label %if.end117.cleanup_crit_edge, label %if.end122

if.end117.cleanup_crit_edge:                      ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end122:                                        ; preds = %if.end117
  %disk = getelementptr inbounds %struct.mtd_blktrans_dev, ptr %call7.i.i199, i32 0, i32 10
  %54 = ptrtoint ptr %disk to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %disk, align 4
  %part0 = getelementptr inbounds %struct.gendisk, ptr %55, i32 0, i32 7
  %56 = ptrtoint ptr %part0 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %part0, align 4
  %bd_device = getelementptr inbounds %struct.block_device, ptr %57, i32 0, i32 10
  %dev = getelementptr inbounds %struct.mtdswap_dev, ptr %call7.i.i, i32 0, i32 2
  %58 = ptrtoint ptr %dev to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %bd_device, ptr %dev, align 8
  %call123 = call fastcc i32 @mtdswap_add_debugfs(ptr noundef nonnull %call7.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call123)
  %cmp124 = icmp slt i32 %call123, 0
  br i1 %cmp124, label %debugfs_failed, label %if.end122.cleanup129_crit_edge

if.end122.cleanup129_crit_edge:                   ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup129

debugfs_failed:                                   ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #10
  %call128 = call i32 @del_mtd_blktrans_dev(ptr noundef nonnull %call7.i.i199) #8
  br label %cleanup

cleanup:                                          ; preds = %debugfs_failed, %if.end117.cleanup_crit_edge
  call fastcc void @mtdswap_cleanup(ptr noundef nonnull %call7.i.i)
  br label %init_failed

init_failed:                                      ; preds = %cleanup, %if.end112.init_failed_crit_edge
  call void @kfree(ptr noundef nonnull %call7.i.i199) #8
  call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup129

cleanup129:                                       ; preds = %init_failed, %if.end122.cleanup129_crit_edge, %if.then102, %if.end67.cleanup129_crit_edge, %do.end64, %do.end38, %do.end27, %do.end, %while.end.cleanup129_crit_edge, %while.body.cleanup129_crit_edge, %entry.cleanup129_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %part) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %parts) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mtdswap_remove_dev(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.mtd_blktrans_dev, ptr %dev, i32 0, i32 16
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %call = tail call i32 @del_mtd_blktrans_dev(ptr noundef %dev) #8
  %eb_data.i = getelementptr inbounds %struct.mtdswap_dev, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %eb_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %eb_data.i, align 4
  tail call void @vfree(ptr noundef %3) #8
  %revmap.i = getelementptr inbounds %struct.mtdswap_dev, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %revmap.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %revmap.i, align 8
  tail call void @vfree(ptr noundef %5) #8
  %page_data.i = getelementptr inbounds %struct.mtdswap_dev, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %page_data.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %page_data.i, align 4
  tail call void @vfree(ptr noundef %7) #8
  %oob_buf.i = getelementptr inbounds %struct.mtdswap_dev, ptr %1, i32 0, i32 20
  %8 = ptrtoint ptr %oob_buf.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %oob_buf.i, align 4
  tail call void @kfree(ptr noundef %9) #8
  %page_buf.i = getelementptr inbounds %struct.mtdswap_dev, ptr %1, i32 0, i32 19
  %10 = ptrtoint ptr %page_buf.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %page_buf.i, align 8
  tail call void @kfree(ptr noundef %11) #8
  tail call void @kfree(ptr noundef %1) #8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_read(ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mtdswap_rb_add(ptr noundef %d, ptr noundef %eb, i32 noundef %idx) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %root1 = getelementptr inbounds %struct.swap_eb, ptr %eb, i32 0, i32 1
  %0 = ptrtoint ptr %root1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %root1, align 4
  %arrayidx = getelementptr %struct.mtdswap_dev, ptr %d, i32 0, i32 10, i32 %idx
  %cmp = icmp eq ptr %1, %arrayidx
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.end.mtdswap_eb_detach.exit_crit_edge, label %if.then.i

if.end.mtdswap_eb_detach.exit_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %mtdswap_eb_detach.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %trees.i = getelementptr inbounds %struct.mtdswap_dev, ptr %d, i32 0, i32 10
  %sub.ptr.lhs.cast.i = ptrtoint ptr %1 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %trees.i to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %sub.ptr.div.i = ashr exact i32 %sub.ptr.sub.i, 3
  %count.i = getelementptr %struct.mtdswap_dev, ptr %d, i32 0, i32 10, i32 %sub.ptr.div.i, i32 1
  %2 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %count.i, align 4
  %dec.i = add i32 %3, -1
  store i32 %dec.i, ptr %count.i, align 4
  %4 = ptrtoint ptr %root1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %root1, align 4
  tail call void @rb_erase(ptr noundef %eb, ptr noundef %5) #8
  br label %mtdswap_eb_detach.exit

mtdswap_eb_detach.exit:                           ; preds = %if.then.i, %if.end.mtdswap_eb_detach.exit_crit_edge
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %tobool.not11.i = icmp eq ptr %7, null
  br i1 %tobool.not11.i, label %mtdswap_eb_detach.exit.__mtdswap_rb_add.exit_crit_edge, label %while.body.lr.ph.i

mtdswap_eb_detach.exit.__mtdswap_rb_add.exit_crit_edge: ; preds = %mtdswap_eb_detach.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %__mtdswap_rb_add.exit

while.body.lr.ph.i:                               ; preds = %mtdswap_eb_detach.exit
  %erase_count.i = getelementptr inbounds %struct.swap_eb, ptr %eb, i32 0, i32 4
  %8 = ptrtoint ptr %erase_count.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %erase_count.i, align 4
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %10 = phi ptr [ %7, %while.body.lr.ph.i ], [ %14, %while.body.i.while.body.i_crit_edge ]
  %erase_count1.i = getelementptr inbounds %struct.swap_eb, ptr %10, i32 0, i32 4
  %11 = ptrtoint ptr %erase_count1.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %erase_count1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %12)
  %cmp.i = icmp ugt i32 %9, %12
  %rb_right.i = getelementptr inbounds %struct.rb_node, ptr %10, i32 0, i32 1
  %rb_left.i = getelementptr inbounds %struct.rb_node, ptr %10, i32 0, i32 2
  %p.1.i = select i1 %cmp.i, ptr %rb_right.i, ptr %rb_left.i
  %13 = ptrtoint ptr %p.1.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %p.1.i, align 4
  %tobool.not.i18 = icmp eq ptr %14, null
  br i1 %tobool.not.i18, label %while.cond.while.end_crit_edge.i, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

while.cond.while.end_crit_edge.i:                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %phi.cast.le.i = ptrtoint ptr %10 to i32
  br label %__mtdswap_rb_add.exit

__mtdswap_rb_add.exit:                            ; preds = %while.cond.while.end_crit_edge.i, %mtdswap_eb_detach.exit.__mtdswap_rb_add.exit_crit_edge
  %parent.0.lcssa.i = phi i32 [ %phi.cast.le.i, %while.cond.while.end_crit_edge.i ], [ 0, %mtdswap_eb_detach.exit.__mtdswap_rb_add.exit_crit_edge ]
  %p.0.lcssa.i = phi ptr [ %p.1.i, %while.cond.while.end_crit_edge.i ], [ %arrayidx, %mtdswap_eb_detach.exit.__mtdswap_rb_add.exit_crit_edge ]
  %15 = ptrtoint ptr %eb to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %parent.0.lcssa.i, ptr %eb, align 4
  %rb_right.i.i = getelementptr inbounds %struct.rb_node, ptr %eb, i32 0, i32 1
  %16 = ptrtoint ptr %rb_right.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %rb_right.i.i, align 4
  %rb_left.i.i = getelementptr inbounds %struct.rb_node, ptr %eb, i32 0, i32 2
  %17 = ptrtoint ptr %rb_left.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %rb_left.i.i, align 4
  %18 = ptrtoint ptr %p.0.lcssa.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %eb, ptr %p.0.lcssa.i, align 4
  tail call void @rb_insert_color(ptr noundef %eb, ptr noundef %arrayidx) #8
  %19 = ptrtoint ptr %root1 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %arrayidx, ptr %root1, align 4
  %count = getelementptr %struct.mtdswap_dev, ptr %d, i32 0, i32 10, i32 %idx, i32 1
  %20 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %count, align 4
  %inc = add i32 %21, 1
  store i32 %inc, ptr %count, align 4
  br label %cleanup

cleanup:                                          ; preds = %__mtdswap_rb_add.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_erase(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_insert_color(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mtdswap_store_eb(ptr noundef %d, ptr noundef %eb) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %active_count = getelementptr inbounds %struct.swap_eb, ptr %eb, i32 0, i32 3
  %0 = ptrtoint ptr %active_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %active_count, align 4
  %pages_per_eblk = getelementptr inbounds %struct.mtdswap_dev, ptr %d, i32 0, i32 7
  %2 = ptrtoint ptr %pages_per_eblk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pages_per_eblk, align 4
  %curr_write = getelementptr inbounds %struct.mtdswap_dev, ptr %d, i32 0, i32 18
  %4 = ptrtoint ptr %curr_write to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %curr_write, align 4
  %cmp = icmp eq ptr %5, %eb
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %flags = getelementptr inbounds %struct.swap_eb, ptr %eb, i32 0, i32 2
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags, align 4
  %and = and i32 %7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then1

if.then1:                                         ; preds = %if.end
  %root1.i = getelementptr inbounds %struct.swap_eb, ptr %eb, i32 0, i32 1
  %8 = ptrtoint ptr %root1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %root1.i, align 4
  %arrayidx.i = getelementptr %struct.mtdswap_dev, ptr %d, i32 0, i32 10, i32 5
  %cmp.i = icmp eq ptr %9, %arrayidx.i
  br i1 %cmp.i, label %if.then1.if.end7_crit_edge, label %if.end.i

if.then1.if.end7_crit_edge:                       ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

if.end.i:                                         ; preds = %if.then1
  %tobool.not.i.i = icmp eq ptr %9, null
  br i1 %tobool.not.i.i, label %if.end.i.mtdswap_eb_detach.exit.i_crit_edge, label %if.then.i.i

if.end.i.mtdswap_eb_detach.exit.i_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mtdswap_eb_detach.exit.i

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %trees.i.i = getelementptr inbounds %struct.mtdswap_dev, ptr %d, i32 0, i32 10
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %9 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %trees.i.i to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %sub.ptr.div.i.i = ashr exact i32 %sub.ptr.sub.i.i, 3
  %count.i.i = getelementptr %struct.mtdswap_dev, ptr %d, i32 0, i32 10, i32 %sub.ptr.div.i.i, i32 1
  %10 = ptrtoint ptr %count.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %count.i.i, align 4
  %dec.i.i = add i32 %11, -1
  store i32 %dec.i.i, ptr %count.i.i, align 4
  %12 = ptrtoint ptr %root1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %root1.i, align 4
  tail call void @rb_erase(ptr noundef %eb, ptr noundef %13) #8
  br label %mtdswap_eb_detach.exit.i

mtdswap_eb_detach.exit.i:                         ; preds = %if.then.i.i, %if.end.i.mtdswap_eb_detach.exit.i_crit_edge
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not11.i.i = icmp eq ptr %15, null
  br i1 %tobool.not11.i.i, label %mtdswap_eb_detach.exit.i.__mtdswap_rb_add.exit.i_crit_edge, label %while.body.lr.ph.i.i

mtdswap_eb_detach.exit.i.__mtdswap_rb_add.exit.i_crit_edge: ; preds = %mtdswap_eb_detach.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__mtdswap_rb_add.exit.i

while.body.lr.ph.i.i:                             ; preds = %mtdswap_eb_detach.exit.i
  %erase_count.i.i = getelementptr inbounds %struct.swap_eb, ptr %eb, i32 0, i32 4
  %16 = ptrtoint ptr %erase_count.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %erase_count.i.i, align 4
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %while.body.lr.ph.i.i
  %18 = phi ptr [ %15, %while.body.lr.ph.i.i ], [ %22, %while.body.i.i.while.body.i.i_crit_edge ]
  %erase_count1.i.i = getelementptr inbounds %struct.swap_eb, ptr %18, i32 0, i32 4
  %19 = ptrtoint ptr %erase_count1.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %erase_count1.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %20)
  %cmp.i.i = icmp ugt i32 %17, %20
  %rb_right.i.i = getelementptr inbounds %struct.rb_node, ptr %18, i32 0, i32 1
  %rb_left.i.i = getelementptr inbounds %struct.rb_node, ptr %18, i32 0, i32 2
  %p.1.i.i = select i1 %cmp.i.i, ptr %rb_right.i.i, ptr %rb_left.i.i
  %21 = ptrtoint ptr %p.1.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %p.1.i.i, align 4
  %tobool.not.i18.i = icmp eq ptr %22, null
  br i1 %tobool.not.i18.i, label %while.cond.while.end_crit_edge.i.i, label %while.body.i.i.while.body.i.i_crit_edge

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i.i

while.cond.while.end_crit_edge.i.i:               ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %phi.cast.le.i.i = ptrtoint ptr %18 to i32
  br label %__mtdswap_rb_add.exit.i

__mtdswap_rb_add.exit.i:                          ; preds = %while.cond.while.end_crit_edge.i.i, %mtdswap_eb_detach.exit.i.__mtdswap_rb_add.exit.i_crit_edge
  %parent.0.lcssa.i.i = phi i32 [ %phi.cast.le.i.i, %while.cond.while.end_crit_edge.i.i ], [ 0, %mtdswap_eb_detach.exit.i.__mtdswap_rb_add.exit.i_crit_edge ]
  %p.0.lcssa.i.i = phi ptr [ %p.1.i.i, %while.cond.while.end_crit_edge.i.i ], [ %arrayidx.i, %mtdswap_eb_detach.exit.i.__mtdswap_rb_add.exit.i_crit_edge ]
  %23 = ptrtoint ptr %eb to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %parent.0.lcssa.i.i, ptr %eb, align 4
  %rb_right.i.i.i = getelementptr inbounds %struct.rb_node, ptr %eb, i32 0, i32 1
  %24 = ptrtoint ptr %rb_right.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %rb_right.i.i.i, align 4
  %rb_left.i.i.i = getelementptr inbounds %struct.rb_node, ptr %eb, i32 0, i32 2
  %25 = ptrtoint ptr %rb_left.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %rb_left.i.i.i, align 4
  %26 = ptrtoint ptr %p.0.lcssa.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %eb, ptr %p.0.lcssa.i.i, align 4
  tail call void @rb_insert_color(ptr noundef %eb, ptr noundef %arrayidx.i) #8
  %27 = ptrtoint ptr %root1.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %arrayidx.i, ptr %root1.i, align 4
  %count.i = getelementptr %struct.mtdswap_dev, ptr %d, i32 0, i32 10, i32 5, i32 1
  br label %if.end7.sink.split

if.else:                                          ; preds = %if.end
  %and3 = and i32 %7, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %if.else.if.end7_crit_edge, label %if.then5

if.else.if.end7_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

if.then5:                                         ; preds = %if.else
  %root1.i42 = getelementptr inbounds %struct.swap_eb, ptr %eb, i32 0, i32 1
  %28 = ptrtoint ptr %root1.i42 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %root1.i42, align 4
  %arrayidx.i43 = getelementptr %struct.mtdswap_dev, ptr %d, i32 0, i32 10, i32 6
  %cmp.i44 = icmp eq ptr %29, %arrayidx.i43
  br i1 %cmp.i44, label %if.then5.if.end7_crit_edge, label %if.end.i46

if.then5.if.end7_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

if.end.i46:                                       ; preds = %if.then5
  %tobool.not.i.i45 = icmp eq ptr %29, null
  br i1 %tobool.not.i.i45, label %if.end.i46.mtdswap_eb_detach.exit.i56_crit_edge, label %if.then.i.i54

if.end.i46.mtdswap_eb_detach.exit.i56_crit_edge:  ; preds = %if.end.i46
  call void @__sanitizer_cov_trace_pc() #10
  br label %mtdswap_eb_detach.exit.i56

if.then.i.i54:                                    ; preds = %if.end.i46
  call void @__sanitizer_cov_trace_pc() #10
  %trees.i.i47 = getelementptr inbounds %struct.mtdswap_dev, ptr %d, i32 0, i32 10
  %sub.ptr.lhs.cast.i.i48 = ptrtoint ptr %29 to i32
  %sub.ptr.rhs.cast.i.i49 = ptrtoint ptr %trees.i.i47 to i32
  %sub.ptr.sub.i.i50 = sub i32 %sub.ptr.lhs.cast.i.i48, %sub.ptr.rhs.cast.i.i49
  %sub.ptr.div.i.i51 = ashr exact i32 %sub.ptr.sub.i.i50, 3
  %count.i.i52 = getelementptr %struct.mtdswap_dev, ptr %d, i32 0, i32 10, i32 %sub.ptr.div.i.i51, i32 1
  %30 = ptrtoint ptr %count.i.i52 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %count.i.i52, align 4
  %dec.i.i53 = add i32 %31, -1
  store i32 %dec.i.i53, ptr %count.i.i52, align 4
  %32 = ptrtoint ptr %root1.i42 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %root1.i42, align 4
  tail call void @rb_erase(ptr noundef %eb, ptr noundef %33) #8
  br label %mtdswap_eb_detach.exit.i56

mtdswap_eb_detach.exit.i56:                       ; preds = %if.then.i.i54, %if.end.i46.mtdswap_eb_detach.exit.i56_crit_edge
  %34 = ptrtoint ptr %arrayidx.i43 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx.i43, align 4
  %tobool.not11.i.i55 = icmp eq ptr %35, null
  br i1 %tobool.not11.i.i55, label %mtdswap_eb_detach.exit.i56.__mtdswap_rb_add.exit.i74_crit_edge, label %while.body.lr.ph.i.i58

mtdswap_eb_detach.exit.i56.__mtdswap_rb_add.exit.i74_crit_edge: ; preds = %mtdswap_eb_detach.exit.i56
  call void @__sanitizer_cov_trace_pc() #10
  br label %__mtdswap_rb_add.exit.i74

while.body.lr.ph.i.i58:                           ; preds = %mtdswap_eb_detach.exit.i56
  %erase_count.i.i57 = getelementptr inbounds %struct.swap_eb, ptr %eb, i32 0, i32 4
  %36 = ptrtoint ptr %erase_count.i.i57 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %erase_count.i.i57, align 4
  br label %while.body.i.i65

while.body.i.i65:                                 ; preds = %while.body.i.i65.while.body.i.i65_crit_edge, %while.body.lr.ph.i.i58
  %38 = phi ptr [ %35, %while.body.lr.ph.i.i58 ], [ %42, %while.body.i.i65.while.body.i.i65_crit_edge ]
  %erase_count1.i.i59 = getelementptr inbounds %struct.swap_eb, ptr %38, i32 0, i32 4
  %39 = ptrtoint ptr %erase_count1.i.i59 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %erase_count1.i.i59, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %40)
  %cmp.i.i60 = icmp ugt i32 %37, %40
  %rb_right.i.i61 = getelementptr inbounds %struct.rb_node, ptr %38, i32 0, i32 1
  %rb_left.i.i62 = getelementptr inbounds %struct.rb_node, ptr %38, i32 0, i32 2
  %p.1.i.i63 = select i1 %cmp.i.i60, ptr %rb_right.i.i61, ptr %rb_left.i.i62
  %41 = ptrtoint ptr %p.1.i.i63 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %p.1.i.i63, align 4
  %tobool.not.i18.i64 = icmp eq ptr %42, null
  br i1 %tobool.not.i18.i64, label %while.cond.while.end_crit_edge.i.i67, label %while.body.i.i65.while.body.i.i65_crit_edge

while.body.i.i65.while.body.i.i65_crit_edge:      ; preds = %while.body.i.i65
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i.i65

while.cond.while.end_crit_edge.i.i67:             ; preds = %while.body.i.i65
  call void @__sanitizer_cov_trace_pc() #10
  %phi.cast.le.i.i66 = ptrtoint ptr %38 to i32
  br label %__mtdswap_rb_add.exit.i74

__mtdswap_rb_add.exit.i74:                        ; preds = %while.cond.while.end_crit_edge.i.i67, %mtdswap_eb_detach.exit.i56.__mtdswap_rb_add.exit.i74_crit_edge
  %parent.0.lcssa.i.i68 = phi i32 [ %phi.cast.le.i.i66, %while.cond.while.end_crit_edge.i.i67 ], [ 0, %mtdswap_eb_detach.exit.i56.__mtdswap_rb_add.exit.i74_crit_edge ]
  %p.0.lcssa.i.i69 = phi ptr [ %p.1.i.i63, %while.cond.while.end_crit_edge.i.i67 ], [ %arrayidx.i43, %mtdswap_eb_detach.exit.i56.__mtdswap_rb_add.exit.i74_crit_edge ]
  %43 = ptrtoint ptr %eb to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %parent.0.lcssa.i.i68, ptr %eb, align 4
  %rb_right.i.i.i70 = getelementptr inbounds %struct.rb_node, ptr %eb, i32 0, i32 1
  %44 = ptrtoint ptr %rb_right.i.i.i70 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr null, ptr %rb_right.i.i.i70, align 4
  %rb_left.i.i.i71 = getelementptr inbounds %struct.rb_node, ptr %eb, i32 0, i32 2
  %45 = ptrtoint ptr %rb_left.i.i.i71 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr null, ptr %rb_left.i.i.i71, align 4
  %46 = ptrtoint ptr %p.0.lcssa.i.i69 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %eb, ptr %p.0.lcssa.i.i69, align 4
  tail call void @rb_insert_color(ptr noundef %eb, ptr noundef %arrayidx.i43) #8
  %47 = ptrtoint ptr %root1.i42 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %arrayidx.i43, ptr %root1.i42, align 4
  %count.i72 = getelementptr %struct.mtdswap_dev, ptr %d, i32 0, i32 10, i32 6, i32 1
  br label %if.end7.sink.split

if.end7.sink.split:                               ; preds = %__mtdswap_rb_add.exit.i74, %__mtdswap_rb_add.exit.i
  %count.i72.sink227 = phi ptr [ %count.i72, %__mtdswap_rb_add.exit.i74 ], [ %count.i, %__mtdswap_rb_add.exit.i ]
  %48 = ptrtoint ptr %count.i72.sink227 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %count.i72.sink227, align 4
  %inc.i73 = add i32 %49, 1
  store i32 %inc.i73, ptr %count.i72.sink227, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.end7.sink.split, %if.then5.if.end7_crit_edge, %if.else.if.end7_crit_edge, %if.then1.if.end7_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp8 = icmp eq i32 %1, %3
  br i1 %cmp8, label %if.then9, label %if.else10

if.then9:                                         ; preds = %if.end7
  %root1.i76 = getelementptr inbounds %struct.swap_eb, ptr %eb, i32 0, i32 1
  %50 = ptrtoint ptr %root1.i76 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %root1.i76, align 4
  %arrayidx.i77 = getelementptr %struct.mtdswap_dev, ptr %d, i32 0, i32 10, i32 1
  %cmp.i78 = icmp eq ptr %51, %arrayidx.i77
  br i1 %cmp.i78, label %if.then9.cleanup_crit_edge, label %if.end.i80

if.then9.cleanup_crit_edge:                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i80:                                       ; preds = %if.then9
  %tobool.not.i.i79 = icmp eq ptr %51, null
  br i1 %tobool.not.i.i79, label %if.end.i80.mtdswap_eb_detach.exit.i90_crit_edge, label %if.then.i.i88

if.end.i80.mtdswap_eb_detach.exit.i90_crit_edge:  ; preds = %if.end.i80
  call void @__sanitizer_cov_trace_pc() #10
  br label %mtdswap_eb_detach.exit.i90

if.then.i.i88:                                    ; preds = %if.end.i80
  call void @__sanitizer_cov_trace_pc() #10
  %trees.i.i81 = getelementptr inbounds %struct.mtdswap_dev, ptr %d, i32 0, i32 10
  %sub.ptr.lhs.cast.i.i82 = ptrtoint ptr %51 to i32
  %sub.ptr.rhs.cast.i.i83 = ptrtoint ptr %trees.i.i81 to i32
  %sub.ptr.sub.i.i84 = sub i32 %sub.ptr.lhs.cast.i.i82, %sub.ptr.rhs.cast.i.i83
  %sub.ptr.div.i.i85 = ashr exact i32 %sub.ptr.sub.i.i84, 3
  %count.i.i86 = getelementptr %struct.mtdswap_dev, ptr %d, i32 0, i32 10, i32 %sub.ptr.div.i.i85, i32 1
  %52 = ptrtoint ptr %count.i.i86 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %count.i.i86, align 4
  %dec.i.i87 = add i32 %53, -1
  store i32 %dec.i.i87, ptr %count.i.i86, align 4
  %54 = ptrtoint ptr %root1.i76 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %root1.i76, align 4
  tail call void @rb_erase(ptr noundef %eb, ptr noundef %55) #8
  br label %mtdswap_eb_detach.exit.i90

mtdswap_eb_detach.exit.i90:                       ; preds = %if.then.i.i88, %if.end.i80.mtdswap_eb_detach.exit.i90_crit_edge
  %56 = ptrtoint ptr %arrayidx.i77 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %arrayidx.i77, align 4
  %tobool.not11.i.i89 = icmp eq ptr %57, null
  br i1 %tobool.not11.i.i89, label %mtdswap_eb_detach.exit.i90.__mtdswap_rb_add.exit.i108_crit_edge, label %while.body.lr.ph.i.i92

mtdswap_eb_detach.exit.i90.__mtdswap_rb_add.exit.i108_crit_edge: ; preds = %mtdswap_eb_detach.exit.i90
  call void @__sanitizer_cov_trace_pc() #10
  br label %__mtdswap_rb_add.exit.i108

while.body.lr.ph.i.i92:                           ; preds = %mtdswap_eb_detach.exit.i90
  %erase_count.i.i91 = getelementptr inbounds %struct.swap_eb, ptr %eb, i32 0, i32 4
  %58 = ptrtoint ptr %erase_count.i.i91 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %erase_count.i.i91, align 4
  br label %while.body.i.i99

while.body.i.i99:                                 ; preds = %while.body.i.i99.while.body.i.i99_crit_edge, %while.body.lr.ph.i.i92
  %60 = phi ptr [ %57, %while.body.lr.ph.i.i92 ], [ %64, %while.body.i.i99.while.body.i.i99_crit_edge ]
  %erase_count1.i.i93 = getelementptr inbounds %struct.swap_eb, ptr %60, i32 0, i32 4
  %61 = ptrtoint ptr %erase_count1.i.i93 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %erase_count1.i.i93, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %59, i32 %62)
  %cmp.i.i94 = icmp ugt i32 %59, %62
  %rb_right.i.i95 = getelementptr inbounds %struct.rb_node, ptr %60, i32 0, i32 1
  %rb_left.i.i96 = getelementptr inbounds %struct.rb_node, ptr %60, i32 0, i32 2
  %p.1.i.i97 = select i1 %cmp.i.i94, ptr %rb_right.i.i95, ptr %rb_left.i.i96
  %63 = ptrtoint ptr %p.1.i.i97 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %p.1.i.i97, align 4
  %tobool.not.i18.i98 = icmp eq ptr %64, null
  br i1 %tobool.not.i18.i98, label %while.cond.while.end_crit_edge.i.i101, label %while.body.i.i99.while.body.i.i99_crit_edge

while.body.i.i99.while.body.i.i99_crit_edge:      ; preds = %while.body.i.i99
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i.i99

while.cond.while.end_crit_edge.i.i101:            ; preds = %while.body.i.i99
  call void @__sanitizer_cov_trace_pc() #10
  %phi.cast.le.i.i100 = ptrtoint ptr %60 to i32
  br label %__mtdswap_rb_add.exit.i108

__mtdswap_rb_add.exit.i108:                       ; preds = %while.cond.while.end_crit_edge.i.i101, %mtdswap_eb_detach.exit.i90.__mtdswap_rb_add.exit.i108_crit_edge
  %parent.0.lcssa.i.i102 = phi i32 [ %phi.cast.le.i.i100, %while.cond.while.end_crit_edge.i.i101 ], [ 0, %mtdswap_eb_detach.exit.i90.__mtdswap_rb_add.exit.i108_crit_edge ]
  %p.0.lcssa.i.i103 = phi ptr [ %p.1.i.i97, %while.cond.while.end_crit_edge.i.i101 ], [ %arrayidx.i77, %mtdswap_eb_detach.exit.i90.__mtdswap_rb_add.exit.i108_crit_edge ]
  %65 = ptrtoint ptr %eb to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %parent.0.lcssa.i.i102, ptr %eb, align 4
  %rb_right.i.i.i104 = getelementptr inbounds %struct.rb_node, ptr %eb, i32 0, i32 1
  %66 = ptrtoint ptr %rb_right.i.i.i104 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr null, ptr %rb_right.i.i.i104, align 4
  %rb_left.i.i.i105 = getelementptr inbounds %struct.rb_node, ptr %eb, i32 0, i32 2
  %67 = ptrtoint ptr %rb_left.i.i.i105 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr null, ptr %rb_left.i.i.i105, align 4
  %68 = ptrtoint ptr %p.0.lcssa.i.i103 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %eb, ptr %p.0.lcssa.i.i103, align 4
  tail call void @rb_insert_color(ptr noundef %eb, ptr noundef %arrayidx.i77) #8
  %69 = ptrtoint ptr %root1.i76 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %arrayidx.i77, ptr %root1.i76, align 4
  %count.i106 = getelementptr %struct.mtdswap_dev, ptr %d, i32 0, i32 10, i32 1, i32 1
  br label %cleanup.sink.split

if.else10:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp11 = icmp eq i32 %1, 0
  br i1 %cmp11, label %if.then12, label %if.else13

if.then12:                                        ; preds = %if.else10
  %root1.i110 = getelementptr inbounds %struct.swap_eb, ptr %eb, i32 0, i32 1
  %70 = ptrtoint ptr %root1.i110 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %root1.i110, align 4
  %arrayidx.i111 = getelementptr %struct.mtdswap_dev, ptr %d, i32 0, i32 10, i32 4
  %cmp.i112 = icmp eq ptr %71, %arrayidx.i111
  br i1 %cmp.i112, label %if.then12.cleanup_crit_edge, label %if.end.i114

if.then12.cleanup_crit_edge:                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i114:                                      ; preds = %if.then12
  %tobool.not.i.i113 = icmp eq ptr %71, null
  br i1 %tobool.not.i.i113, label %if.end.i114.mtdswap_eb_detach.exit.i124_crit_edge, label %if.then.i.i122

if.end.i114.mtdswap_eb_detach.exit.i124_crit_edge: ; preds = %if.end.i114
  call void @__sanitizer_cov_trace_pc() #10
  br label %mtdswap_eb_detach.exit.i124

if.then.i.i122:                                   ; preds = %if.end.i114
  call void @__sanitizer_cov_trace_pc() #10
  %trees.i.i115 = getelementptr inbounds %struct.mtdswap_dev, ptr %d, i32 0, i32 10
  %sub.ptr.lhs.cast.i.i116 = ptrtoint ptr %71 to i32
  %sub.ptr.rhs.cast.i.i117 = ptrtoint ptr %trees.i.i115 to i32
  %sub.ptr.sub.i.i118 = sub i32 %sub.ptr.lhs.cast.i.i116, %sub.ptr.rhs.cast.i.i117
  %sub.ptr.div.i.i119 = ashr exact i32 %sub.ptr.sub.i.i118, 3
  %count.i.i120 = getelementptr %struct.mtdswap_dev, ptr %d, i32 0, i32 10, i32 %sub.ptr.div.i.i119, i32 1
  %72 = ptrtoint ptr %count.i.i120 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %count.i.i120, align 4
  %dec.i.i121 = add i32 %73, -1
  store i32 %dec.i.i121, ptr %count.i.i120, align 4
  %74 = ptrtoint ptr %root1.i110 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %root1.i110, align 4
  tail call void @rb_erase(ptr noundef %eb, ptr noundef %75) #8
  br label %mtdswap_eb_detach.exit.i124

mtdswap_eb_detach.exit.i124:                      ; preds = %if.then.i.i122, %if.end.i114.mtdswap_eb_detach.exit.i124_crit_edge
  %76 = ptrtoint ptr %arrayidx.i111 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %arrayidx.i111, align 4
  %tobool.not11.i.i123 = icmp eq ptr %77, null
  br i1 %tobool.not11.i.i123, label %mtdswap_eb_detach.exit.i124.__mtdswap_rb_add.exit.i142_crit_edge, label %while.body.lr.ph.i.i126

mtdswap_eb_detach.exit.i124.__mtdswap_rb_add.exit.i142_crit_edge: ; preds = %mtdswap_eb_detach.exit.i124
  call void @__sanitizer_cov_trace_pc() #10
  br label %__mtdswap_rb_add.exit.i142

while.body.lr.ph.i.i126:                          ; preds = %mtdswap_eb_detach.exit.i124
  %erase_count.i.i125 = getelementptr inbounds %struct.swap_eb, ptr %eb, i32 0, i32 4
  %78 = ptrtoint ptr %erase_count.i.i125 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %erase_count.i.i125, align 4
  br label %while.body.i.i133

while.body.i.i133:                                ; preds = %while.body.i.i133.while.body.i.i133_crit_edge, %while.body.lr.ph.i.i126
  %80 = phi ptr [ %77, %while.body.lr.ph.i.i126 ], [ %84, %while.body.i.i133.while.body.i.i133_crit_edge ]
  %erase_count1.i.i127 = getelementptr inbounds %struct.swap_eb, ptr %80, i32 0, i32 4
  %81 = ptrtoint ptr %erase_count1.i.i127 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %erase_count1.i.i127, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %79, i32 %82)
  %cmp.i.i128 = icmp ugt i32 %79, %82
  %rb_right.i.i129 = getelementptr inbounds %struct.rb_node, ptr %80, i32 0, i32 1
  %rb_left.i.i130 = getelementptr inbounds %struct.rb_node, ptr %80, i32 0, i32 2
  %p.1.i.i131 = select i1 %cmp.i.i128, ptr %rb_right.i.i129, ptr %rb_left.i.i130
  %83 = ptrtoint ptr %p.1.i.i131 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %p.1.i.i131, align 4
  %tobool.not.i18.i132 = icmp eq ptr %84, null
  br i1 %tobool.not.i18.i132, label %while.cond.while.end_crit_edge.i.i135, label %while.body.i.i133.while.body.i.i133_crit_edge

while.body.i.i133.while.body.i.i133_crit_edge:    ; preds = %while.body.i.i133
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i.i133

while.cond.while.end_crit_edge.i.i135:            ; preds = %while.body.i.i133
  call void @__sanitizer_cov_trace_pc() #10
  %phi.cast.le.i.i134 = ptrtoint ptr %80 to i32
  br label %__mtdswap_rb_add.exit.i142

__mtdswap_rb_add.exit.i142:                       ; preds = %while.cond.while.end_crit_edge.i.i135, %mtdswap_eb_detach.exit.i124.__mtdswap_rb_add.exit.i142_crit_edge
  %parent.0.lcssa.i.i136 = phi i32 [ %phi.cast.le.i.i134, %while.cond.while.end_crit_edge.i.i135 ], [ 0, %mtdswap_eb_detach.exit.i124.__mtdswap_rb_add.exit.i142_crit_edge ]
  %p.0.lcssa.i.i137 = phi ptr [ %p.1.i.i131, %while.cond.while.end_crit_edge.i.i135 ], [ %arrayidx.i111, %mtdswap_eb_detach.exit.i124.__mtdswap_rb_add.exit.i142_crit_edge ]
  %85 = ptrtoint ptr %eb to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %parent.0.lcssa.i.i136, ptr %eb, align 4
  %rb_right.i.i.i138 = getelementptr inbounds %struct.rb_node, ptr %eb, i32 0, i32 1
  %86 = ptrtoint ptr %rb_right.i.i.i138 to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr null, ptr %rb_right.i.i.i138, align 4
  %rb_left.i.i.i139 = getelementptr inbounds %struct.rb_node, ptr %eb, i32 0, i32 2
  %87 = ptrtoint ptr %rb_left.i.i.i139 to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr null, ptr %rb_left.i.i.i139, align 4
  %88 = ptrtoint ptr %p.0.lcssa.i.i137 to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %eb, ptr %p.0.lcssa.i.i137, align 4
  tail call void @rb_insert_color(ptr noundef %eb, ptr noundef %arrayidx.i111) #8
  %89 = ptrtoint ptr %root1.i110 to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %arrayidx.i111, ptr %root1.i110, align 4
  %count.i140 = getelementptr %struct.mtdswap_dev, ptr %d, i32 0, i32 10, i32 4, i32 1
  br label %cleanup.sink.split

if.else13:                                        ; preds = %if.else10
  %div41 = lshr i32 %3, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %div41)
  %cmp14 = icmp ugt i32 %1, %div41
  %root1.i144 = getelementptr inbounds %struct.swap_eb, ptr %eb, i32 0, i32 1
  %90 = ptrtoint ptr %root1.i144 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %root1.i144, align 4
  br i1 %cmp14, label %if.then15, label %if.else16

if.then15:                                        ; preds = %if.else13
  %arrayidx.i145 = getelementptr %struct.mtdswap_dev, ptr %d, i32 0, i32 10, i32 2
  %cmp.i146 = icmp eq ptr %91, %arrayidx.i145
  br i1 %cmp.i146, label %if.then15.cleanup_crit_edge, label %if.end.i148

if.then15.cleanup_crit_edge:                      ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i148:                                      ; preds = %if.then15
  %tobool.not.i.i147 = icmp eq ptr %91, null
  br i1 %tobool.not.i.i147, label %if.end.i148.mtdswap_eb_detach.exit.i158_crit_edge, label %if.then.i.i156

if.end.i148.mtdswap_eb_detach.exit.i158_crit_edge: ; preds = %if.end.i148
  call void @__sanitizer_cov_trace_pc() #10
  br label %mtdswap_eb_detach.exit.i158

if.then.i.i156:                                   ; preds = %if.end.i148
  call void @__sanitizer_cov_trace_pc() #10
  %trees.i.i149 = getelementptr inbounds %struct.mtdswap_dev, ptr %d, i32 0, i32 10
  %sub.ptr.lhs.cast.i.i150 = ptrtoint ptr %91 to i32
  %sub.ptr.rhs.cast.i.i151 = ptrtoint ptr %trees.i.i149 to i32
  %sub.ptr.sub.i.i152 = sub i32 %sub.ptr.lhs.cast.i.i150, %sub.ptr.rhs.cast.i.i151
  %sub.ptr.div.i.i153 = ashr exact i32 %sub.ptr.sub.i.i152, 3
  %count.i.i154 = getelementptr %struct.mtdswap_dev, ptr %d, i32 0, i32 10, i32 %sub.ptr.div.i.i153, i32 1
  %92 = ptrtoint ptr %count.i.i154 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %count.i.i154, align 4
  %dec.i.i155 = add i32 %93, -1
  store i32 %dec.i.i155, ptr %count.i.i154, align 4
  %94 = ptrtoint ptr %root1.i144 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %root1.i144, align 4
  tail call void @rb_erase(ptr noundef %eb, ptr noundef %95) #8
  br label %mtdswap_eb_detach.exit.i158

mtdswap_eb_detach.exit.i158:                      ; preds = %if.then.i.i156, %if.end.i148.mtdswap_eb_detach.exit.i158_crit_edge
  %96 = ptrtoint ptr %arrayidx.i145 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %arrayidx.i145, align 4
  %tobool.not11.i.i157 = icmp eq ptr %97, null
  br i1 %tobool.not11.i.i157, label %mtdswap_eb_detach.exit.i158.__mtdswap_rb_add.exit.i176_crit_edge, label %while.body.lr.ph.i.i160

mtdswap_eb_detach.exit.i158.__mtdswap_rb_add.exit.i176_crit_edge: ; preds = %mtdswap_eb_detach.exit.i158
  call void @__sanitizer_cov_trace_pc() #10
  br label %__mtdswap_rb_add.exit.i176

while.body.lr.ph.i.i160:                          ; preds = %mtdswap_eb_detach.exit.i158
  %erase_count.i.i159 = getelementptr inbounds %struct.swap_eb, ptr %eb, i32 0, i32 4
  %98 = ptrtoint ptr %erase_count.i.i159 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %erase_count.i.i159, align 4
  br label %while.body.i.i167

while.body.i.i167:                                ; preds = %while.body.i.i167.while.body.i.i167_crit_edge, %while.body.lr.ph.i.i160
  %100 = phi ptr [ %97, %while.body.lr.ph.i.i160 ], [ %104, %while.body.i.i167.while.body.i.i167_crit_edge ]
  %erase_count1.i.i161 = getelementptr inbounds %struct.swap_eb, ptr %100, i32 0, i32 4
  %101 = ptrtoint ptr %erase_count1.i.i161 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %erase_count1.i.i161, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %99, i32 %102)
  %cmp.i.i162 = icmp ugt i32 %99, %102
  %rb_right.i.i163 = getelementptr inbounds %struct.rb_node, ptr %100, i32 0, i32 1
  %rb_left.i.i164 = getelementptr inbounds %struct.rb_node, ptr %100, i32 0, i32 2
  %p.1.i.i165 = select i1 %cmp.i.i162, ptr %rb_right.i.i163, ptr %rb_left.i.i164
  %103 = ptrtoint ptr %p.1.i.i165 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %p.1.i.i165, align 4
  %tobool.not.i18.i166 = icmp eq ptr %104, null
  br i1 %tobool.not.i18.i166, label %while.cond.while.end_crit_edge.i.i169, label %while.body.i.i167.while.body.i.i167_crit_edge

while.body.i.i167.while.body.i.i167_crit_edge:    ; preds = %while.body.i.i167
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i.i167

while.cond.while.end_crit_edge.i.i169:            ; preds = %while.body.i.i167
  call void @__sanitizer_cov_trace_pc() #10
  %phi.cast.le.i.i168 = ptrtoint ptr %100 to i32
  br label %__mtdswap_rb_add.exit.i176

__mtdswap_rb_add.exit.i176:                       ; preds = %while.cond.while.end_crit_edge.i.i169, %mtdswap_eb_detach.exit.i158.__mtdswap_rb_add.exit.i176_crit_edge
  %parent.0.lcssa.i.i170 = phi i32 [ %phi.cast.le.i.i168, %while.cond.while.end_crit_edge.i.i169 ], [ 0, %mtdswap_eb_detach.exit.i158.__mtdswap_rb_add.exit.i176_crit_edge ]
  %p.0.lcssa.i.i171 = phi ptr [ %p.1.i.i165, %while.cond.while.end_crit_edge.i.i169 ], [ %arrayidx.i145, %mtdswap_eb_detach.exit.i158.__mtdswap_rb_add.exit.i176_crit_edge ]
  %105 = ptrtoint ptr %eb to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %parent.0.lcssa.i.i170, ptr %eb, align 4
  %rb_right.i.i.i172 = getelementptr inbounds %struct.rb_node, ptr %eb, i32 0, i32 1
  %106 = ptrtoint ptr %rb_right.i.i.i172 to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr null, ptr %rb_right.i.i.i172, align 4
  %rb_left.i.i.i173 = getelementptr inbounds %struct.rb_node, ptr %eb, i32 0, i32 2
  %107 = ptrtoint ptr %rb_left.i.i.i173 to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr null, ptr %rb_left.i.i.i173, align 4
  %108 = ptrtoint ptr %p.0.lcssa.i.i171 to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr %eb, ptr %p.0.lcssa.i.i171, align 4
  tail call void @rb_insert_color(ptr noundef %eb, ptr noundef %arrayidx.i145) #8
  %109 = ptrtoint ptr %root1.i144 to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr %arrayidx.i145, ptr %root1.i144, align 4
  %count.i174 = getelementptr %struct.mtdswap_dev, ptr %d, i32 0, i32 10, i32 2, i32 1
  br label %cleanup.sink.split

if.else16:                                        ; preds = %if.else13
  %arrayidx.i179 = getelementptr %struct.mtdswap_dev, ptr %d, i32 0, i32 10, i32 3
  %cmp.i180 = icmp eq ptr %91, %arrayidx.i179
  br i1 %cmp.i180, label %if.else16.cleanup_crit_edge, label %if.end.i182

if.else16.cleanup_crit_edge:                      ; preds = %if.else16
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i182:                                      ; preds = %if.else16
  %tobool.not.i.i181 = icmp eq ptr %91, null
  br i1 %tobool.not.i.i181, label %if.end.i182.mtdswap_eb_detach.exit.i192_crit_edge, label %if.then.i.i190

if.end.i182.mtdswap_eb_detach.exit.i192_crit_edge: ; preds = %if.end.i182
  call void @__sanitizer_cov_trace_pc() #10
  br label %mtdswap_eb_detach.exit.i192

if.then.i.i190:                                   ; preds = %if.end.i182
  call void @__sanitizer_cov_trace_pc() #10
  %trees.i.i183 = getelementptr inbounds %struct.mtdswap_dev, ptr %d, i32 0, i32 10
  %sub.ptr.lhs.cast.i.i184 = ptrtoint ptr %91 to i32
  %sub.ptr.rhs.cast.i.i185 = ptrtoint ptr %trees.i.i183 to i32
  %sub.ptr.sub.i.i186 = sub i32 %sub.ptr.lhs.cast.i.i184, %sub.ptr.rhs.cast.i.i185
  %sub.ptr.div.i.i187 = ashr exact i32 %sub.ptr.sub.i.i186, 3
  %count.i.i188 = getelementptr %struct.mtdswap_dev, ptr %d, i32 0, i32 10, i32 %sub.ptr.div.i.i187, i32 1
  %110 = ptrtoint ptr %count.i.i188 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %count.i.i188, align 4
  %dec.i.i189 = add i32 %111, -1
  store i32 %dec.i.i189, ptr %count.i.i188, align 4
  %112 = ptrtoint ptr %root1.i144 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %root1.i144, align 4
  tail call void @rb_erase(ptr noundef %eb, ptr noundef %113) #8
  br label %mtdswap_eb_detach.exit.i192

mtdswap_eb_detach.exit.i192:                      ; preds = %if.then.i.i190, %if.end.i182.mtdswap_eb_detach.exit.i192_crit_edge
  %114 = ptrtoint ptr %arrayidx.i179 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %arrayidx.i179, align 4
  %tobool.not11.i.i191 = icmp eq ptr %115, null
  br i1 %tobool.not11.i.i191, label %mtdswap_eb_detach.exit.i192.__mtdswap_rb_add.exit.i210_crit_edge, label %while.body.lr.ph.i.i194

mtdswap_eb_detach.exit.i192.__mtdswap_rb_add.exit.i210_crit_edge: ; preds = %mtdswap_eb_detach.exit.i192
  call void @__sanitizer_cov_trace_pc() #10
  br label %__mtdswap_rb_add.exit.i210

while.body.lr.ph.i.i194:                          ; preds = %mtdswap_eb_detach.exit.i192
  %erase_count.i.i193 = getelementptr inbounds %struct.swap_eb, ptr %eb, i32 0, i32 4
  %116 = ptrtoint ptr %erase_count.i.i193 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %erase_count.i.i193, align 4
  br label %while.body.i.i201

while.body.i.i201:                                ; preds = %while.body.i.i201.while.body.i.i201_crit_edge, %while.body.lr.ph.i.i194
  %118 = phi ptr [ %115, %while.body.lr.ph.i.i194 ], [ %122, %while.body.i.i201.while.body.i.i201_crit_edge ]
  %erase_count1.i.i195 = getelementptr inbounds %struct.swap_eb, ptr %118, i32 0, i32 4
  %119 = ptrtoint ptr %erase_count1.i.i195 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %erase_count1.i.i195, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %117, i32 %120)
  %cmp.i.i196 = icmp ugt i32 %117, %120
  %rb_right.i.i197 = getelementptr inbounds %struct.rb_node, ptr %118, i32 0, i32 1
  %rb_left.i.i198 = getelementptr inbounds %struct.rb_node, ptr %118, i32 0, i32 2
  %p.1.i.i199 = select i1 %cmp.i.i196, ptr %rb_right.i.i197, ptr %rb_left.i.i198
  %121 = ptrtoint ptr %p.1.i.i199 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %p.1.i.i199, align 4
  %tobool.not.i18.i200 = icmp eq ptr %122, null
  br i1 %tobool.not.i18.i200, label %while.cond.while.end_crit_edge.i.i203, label %while.body.i.i201.while.body.i.i201_crit_edge

while.body.i.i201.while.body.i.i201_crit_edge:    ; preds = %while.body.i.i201
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i.i201

while.cond.while.end_crit_edge.i.i203:            ; preds = %while.body.i.i201
  call void @__sanitizer_cov_trace_pc() #10
  %phi.cast.le.i.i202 = ptrtoint ptr %118 to i32
  br label %__mtdswap_rb_add.exit.i210

__mtdswap_rb_add.exit.i210:                       ; preds = %while.cond.while.end_crit_edge.i.i203, %mtdswap_eb_detach.exit.i192.__mtdswap_rb_add.exit.i210_crit_edge
  %parent.0.lcssa.i.i204 = phi i32 [ %phi.cast.le.i.i202, %while.cond.while.end_crit_edge.i.i203 ], [ 0, %mtdswap_eb_detach.exit.i192.__mtdswap_rb_add.exit.i210_crit_edge ]
  %p.0.lcssa.i.i205 = phi ptr [ %p.1.i.i199, %while.cond.while.end_crit_edge.i.i203 ], [ %arrayidx.i179, %mtdswap_eb_detach.exit.i192.__mtdswap_rb_add.exit.i210_crit_edge ]
  %123 = ptrtoint ptr %eb to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 %parent.0.lcssa.i.i204, ptr %eb, align 4
  %rb_right.i.i.i206 = getelementptr inbounds %struct.rb_node, ptr %eb, i32 0, i32 1
  %124 = ptrtoint ptr %rb_right.i.i.i206 to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr null, ptr %rb_right.i.i.i206, align 4
  %rb_left.i.i.i207 = getelementptr inbounds %struct.rb_node, ptr %eb, i32 0, i32 2
  %125 = ptrtoint ptr %rb_left.i.i.i207 to i32
  call void @__asan_store4_noabort(i32 %125)
  store ptr null, ptr %rb_left.i.i.i207, align 4
  %126 = ptrtoint ptr %p.0.lcssa.i.i205 to i32
  call void @__asan_store4_noabort(i32 %126)
  store ptr %eb, ptr %p.0.lcssa.i.i205, align 4
  tail call void @rb_insert_color(ptr noundef %eb, ptr noundef %arrayidx.i179) #8
  %127 = ptrtoint ptr %root1.i144 to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr %arrayidx.i179, ptr %root1.i144, align 4
  %count.i208 = getelementptr %struct.mtdswap_dev, ptr %d, i32 0, i32 10, i32 3, i32 1
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %__mtdswap_rb_add.exit.i210, %__mtdswap_rb_add.exit.i176, %__mtdswap_rb_add.exit.i142, %__mtdswap_rb_add.exit.i108
  %count.i208.sink228 = phi ptr [ %count.i208, %__mtdswap_rb_add.exit.i210 ], [ %count.i174, %__mtdswap_rb_add.exit.i176 ], [ %count.i140, %__mtdswap_rb_add.exit.i142 ], [ %count.i106, %__mtdswap_rb_add.exit.i108 ]
  %128 = ptrtoint ptr %count.i208.sink228 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %count.i208.sink228, align 4
  %inc.i209 = add i32 %129, 1
  store i32 %inc.i209, ptr %count.i208.sink228, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.else16.cleanup_crit_edge, %if.then15.cleanup_crit_edge, %if.then12.cleanup_crit_edge, %if.then9.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mtdswap_write_block(ptr noundef %d, ptr noundef %buf, i32 noundef %page, ptr nocapture noundef %bp, i32 noundef %gc_context) unnamed_addr #2 align 64 {
entry:
  %retlen = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mtd1 = getelementptr inbounds %struct.mtdswap_dev, ptr %d, i32 0, i32 1
  %0 = ptrtoint ptr %mtd1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mtd1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retlen) #8
  %2 = ptrtoint ptr %retlen to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %retlen, align 4, !annotation !203
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %gc_context)
  %tobool.not = icmp eq i32 %gc_context, 0
  %count.i.i = getelementptr inbounds %struct.mtdswap_dev, ptr %d, i32 0, i32 10, i32 0, i32 1
  %pages_per_eblk.i.i = getelementptr inbounds %struct.mtdswap_dev, ptr %d, i32 0, i32 7
  %curr_write_pos.i.i = getelementptr inbounds %struct.mtdswap_dev, ptr %d, i32 0, i32 17
  %curr_write.i = getelementptr inbounds %struct.mtdswap_dev, ptr %d, i32 0, i32 18
  %trees.i = getelementptr inbounds %struct.mtdswap_dev, ptr %d, i32 0, i32 10
  %eb_data.i = getelementptr inbounds %struct.mtdswap_dev, ptr %d, i32 0, i32 9
  %revmap.i = getelementptr inbounds %struct.mtdswap_dev, ptr %d, i32 0, i32 4
  br label %retry

retry:                                            ; preds = %if.then21, %entry
  br i1 %tobool.not, label %retry.while.cond_crit_edge, label %retry.if.end5_crit_edge

retry.if.end5_crit_edge:                          ; preds = %retry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

retry.while.cond_crit_edge:                       ; preds = %retry
  br label %while.cond

while.cond:                                       ; preds = %while.body.while.cond_crit_edge, %retry.while.cond_crit_edge
  %3 = ptrtoint ptr %count.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %count.i.i, align 4
  %5 = ptrtoint ptr %pages_per_eblk.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %pages_per_eblk.i.i, align 4
  %mul.i.i = mul i32 %6, %4
  %add.i.i = add i32 %mul.i.i, %6
  %7 = ptrtoint ptr %curr_write_pos.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %curr_write_pos.i.i, align 8
  %sub.i.i = sub i32 %add.i.i, %8
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i, i32 %6)
  %cmp.i.not = icmp ugt i32 %sub.i.i, %6
  br i1 %cmp.i.not, label %while.cond.if.end5_crit_edge, label %while.body

while.cond.if.end5_crit_edge:                     ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

while.body:                                       ; preds = %while.cond
  %call3 = call fastcc i32 @mtdswap_gc(ptr noundef %d, i32 noundef 0)
  %cmp = icmp sgt i32 %call3, 0
  br i1 %cmp, label %while.body.cleanup_crit_edge, label %while.body.while.cond_crit_edge

while.body.while.cond_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %while.cond.if.end5_crit_edge, %retry.if.end5_crit_edge
  %9 = ptrtoint ptr %curr_write.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %curr_write.i, align 4
  %cmp.i82 = icmp eq ptr %10, null
  br i1 %cmp.i82, label %if.end5.if.then.i_crit_edge, label %lor.lhs.false.i

if.end5.if.then.i_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %if.end5
  %11 = ptrtoint ptr %curr_write_pos.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %curr_write_pos.i.i, align 8
  %13 = ptrtoint ptr %pages_per_eblk.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %pages_per_eblk.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %14)
  %cmp1.not.i = icmp ult i32 %12, %14
  br i1 %cmp1.not.i, label %lor.lhs.false.i.if.end21.i_crit_edge, label %lor.lhs.false.i.if.then.i_crit_edge

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

lor.lhs.false.i.if.end21.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21.i

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %if.end5.if.then.i_crit_edge
  %15 = ptrtoint ptr %trees.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %trees.i, align 8
  %cmp258.i = icmp eq ptr %16, null
  br i1 %cmp258.i, label %if.then.i.lor.lhs.false.thread_crit_edge, label %if.then.i.if.end.i_crit_edge

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  br label %if.end.i

if.then.i.lor.lhs.false.thread_crit_edge:         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false.thread

if.end.i:                                         ; preds = %do.body.backedge.i.if.end.i_crit_edge, %if.then.i.if.end.i_crit_edge
  %call.i = call ptr @rb_first(ptr noundef %trees.i) #8
  call void @rb_erase(ptr noundef %call.i, ptr noundef %trees.i) #8
  %root7.i = getelementptr inbounds %struct.swap_eb, ptr %call.i, i32 0, i32 1
  %17 = ptrtoint ptr %root7.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %root7.i, align 4
  %18 = ptrtoint ptr %count.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %count.i.i, align 4
  %dec.i = add i32 %19, -1
  store i32 %dec.i, ptr %count.i.i, align 4
  %call10.i = call fastcc i32 @mtdswap_write_marker(ptr noundef %d, ptr noundef %call.i, i16 noundef zeroext 1) #8
  %20 = zext i32 %call10.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call10.i, label %mtdswap_map_free_block.exit [
    i32 -5, label %if.end.i.do.body.backedge.i_crit_edge
    i32 -74, label %if.end.i.do.body.backedge.i_crit_edge178
    i32 0, label %if.end15.i
  ]

if.end.i.do.body.backedge.i_crit_edge178:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.backedge.i

if.end.i.do.body.backedge.i_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.backedge.i

do.body.backedge.i:                               ; preds = %if.end.i.do.body.backedge.i_crit_edge, %if.end.i.do.body.backedge.i_crit_edge178
  %21 = ptrtoint ptr %trees.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %trees.i, align 8
  %cmp2.i = icmp eq ptr %22, null
  br i1 %cmp2.i, label %do.body.backedge.i.lor.lhs.false.thread_crit_edge, label %do.body.backedge.i.if.end.i_crit_edge

do.body.backedge.i.if.end.i_crit_edge:            ; preds = %do.body.backedge.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

do.body.backedge.i.lor.lhs.false.thread_crit_edge: ; preds = %do.body.backedge.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false.thread

if.end15.i:                                       ; preds = %if.end.i
  %23 = ptrtoint ptr %curr_write_pos.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %curr_write_pos.i.i, align 8
  %24 = ptrtoint ptr %curr_write.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call.i, ptr %curr_write.i, align 4
  br i1 %cmp.i82, label %if.end15.i.if.end21.i_crit_edge, label %if.then19.i

if.end15.i.if.end21.i_crit_edge:                  ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21.i

if.then19.i:                                      ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @mtdswap_store_eb(ptr noundef %d, ptr noundef nonnull %10) #8
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.then19.i, %if.end15.i.if.end21.i_crit_edge, %lor.lhs.false.i.if.end21.i_crit_edge
  %25 = ptrtoint ptr %curr_write.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %curr_write.i, align 4
  %27 = ptrtoint ptr %eb_data.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %eb_data.i, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %26 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %28 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %sub.ptr.div.i = ashr exact i32 %sub.ptr.sub.i, 5
  %29 = ptrtoint ptr %pages_per_eblk.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %pages_per_eblk.i.i, align 4
  %mul.i = mul i32 %sub.ptr.div.i, %30
  %31 = ptrtoint ptr %curr_write_pos.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %curr_write_pos.i.i, align 8
  %add.i = add i32 %mul.i, %32
  %33 = ptrtoint ptr %bp to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %add.i, ptr %bp, align 4
  %34 = load ptr, ptr %curr_write.i, align 4
  %active_count.i = getelementptr inbounds %struct.swap_eb, ptr %34, i32 0, i32 3
  %35 = ptrtoint ptr %active_count.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %active_count.i, align 4
  %inc.i = add i32 %36, 1
  store i32 %inc.i, ptr %active_count.i, align 4
  %37 = ptrtoint ptr %revmap.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %revmap.i, align 8
  %39 = load i32, ptr %bp, align 4
  %arrayidx26.i = getelementptr i32, ptr %38, i32 %39
  %40 = ptrtoint ptr %arrayidx26.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %page, ptr %arrayidx26.i, align 4
  %41 = load i32, ptr %curr_write_pos.i.i, align 8
  %inc28.i = add i32 %41, 1
  store i32 %inc28.i, ptr %curr_write_pos.i.i, align 8
  br label %lor.lhs.false.thread

lor.lhs.false.thread:                             ; preds = %if.end21.i, %do.body.backedge.i.lor.lhs.false.thread_crit_edge, %if.then.i.lor.lhs.false.thread_crit_edge
  %retval.0.i.ph = phi i32 [ -28, %if.then.i.lor.lhs.false.thread_crit_edge ], [ 0, %if.end21.i ], [ -28, %do.body.backedge.i.lor.lhs.false.thread_crit_edge ]
  %42 = ptrtoint ptr %eb_data.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %eb_data.i, align 4
  %44 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %bp, align 4
  %46 = ptrtoint ptr %pages_per_eblk.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %pages_per_eblk.i.i, align 4
  %div90 = udiv i32 %45, %47
  %add.ptr91 = getelementptr %struct.swap_eb, ptr %43, i32 %div90
  br label %if.end11

mtdswap_map_free_block.exit:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %48 = ptrtoint ptr %eb_data.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %eb_data.i, align 4
  %50 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %bp, align 4
  %52 = ptrtoint ptr %pages_per_eblk.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %pages_per_eblk.i.i, align 4
  %div = udiv i32 %51, %53
  %add.ptr = getelementptr %struct.swap_eb, ptr %49, i32 %div
  br label %if.end11

if.end11:                                         ; preds = %mtdswap_map_free_block.exit, %lor.lhs.false.thread
  %retval.0.i93106 = phi i32 [ %retval.0.i.ph, %lor.lhs.false.thread ], [ %call10.i, %mtdswap_map_free_block.exit ]
  %54 = phi ptr [ %43, %lor.lhs.false.thread ], [ %49, %mtdswap_map_free_block.exit ]
  %55 = phi i32 [ %45, %lor.lhs.false.thread ], [ %51, %mtdswap_map_free_block.exit ]
  %div94105 = phi i32 [ %div90, %lor.lhs.false.thread ], [ %div, %mtdswap_map_free_block.exit ]
  %add.ptr97104 = phi ptr [ %add.ptr91, %lor.lhs.false.thread ], [ %add.ptr, %mtdswap_map_free_block.exit ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i93106)
  %cmp12 = icmp slt i32 %retval.0.i93106, 0
  br i1 %cmp12, label %if.end11.cleanup_crit_edge, label %if.end14

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end14:                                         ; preds = %if.end11
  %conv = zext i32 %55 to i64
  %shl = shl nuw nsw i64 %conv, 12
  %call15 = call i32 @mtd_write(ptr noundef %1, i64 noundef %shl, i32 noundef 4096, ptr noundef nonnull %retlen, ptr noundef %buf) #8
  %56 = zext i32 %call15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %56, ptr @__sancov_gen_cov_switch_values.86)
  switch i32 %call15, label %if.end28 [
    i32 -5, label %if.end14.if.then21_crit_edge
    i32 -74, label %if.end14.if.then21_crit_edge179
  ]

if.end14.if.then21_crit_edge179:                  ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then21

if.end14.if.then21_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then21

if.then21:                                        ; preds = %if.end14.if.then21_crit_edge, %if.end14.if.then21_crit_edge179
  %57 = ptrtoint ptr %curr_write_pos.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %curr_write_pos.i.i, align 8
  %dec22 = add i32 %58, -1
  store i32 %dec22, ptr %curr_write_pos.i.i, align 8
  %active_count23 = getelementptr %struct.swap_eb, ptr %54, i32 %div94105, i32 3
  %59 = ptrtoint ptr %active_count23 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %active_count23, align 4
  %dec24 = add i32 %60, -1
  store i32 %dec24, ptr %active_count23, align 4
  %61 = ptrtoint ptr %revmap.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %revmap.i, align 8
  %63 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %bp, align 4
  %arrayidx26 = getelementptr i32, ptr %62, i32 %64
  %65 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 -1, ptr %arrayidx26, align 4
  call fastcc void @mtdswap_handle_write_error(ptr noundef %d, ptr noundef %add.ptr97104)
  br label %retry

if.end28:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp29 = icmp slt i32 %call15, 0
  br i1 %cmp29, label %do.end, label %if.end32

do.end:                                           ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.mtdswap_dev, ptr %d, i32 0, i32 2
  %66 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %dev, align 8
  %68 = ptrtoint ptr %retlen to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %retlen, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %67, ptr noundef nonnull @.str.10, i32 noundef %call15, i32 noundef %69) #11
  br label %err

if.end32:                                         ; preds = %if.end28
  %70 = ptrtoint ptr %retlen to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %retlen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %71)
  %cmp33.not = icmp eq i32 %71, 4096
  br i1 %cmp33.not, label %if.end32.cleanup_crit_edge, label %do.end38

if.end32.cleanup_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end38:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  %dev39 = getelementptr inbounds %struct.mtdswap_dev, ptr %d, i32 0, i32 2
  %72 = ptrtoint ptr %dev39 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %dev39, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %73, ptr noundef nonnull @.str.13, i32 noundef %71) #11
  br label %err

err:                                              ; preds = %do.end38, %do.end
  %ret.0 = phi i32 [ %call15, %do.end ], [ -5, %do.end38 ]
  %74 = ptrtoint ptr %curr_write_pos.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %curr_write_pos.i.i, align 8
  %dec42 = add i32 %75, -1
  store i32 %dec42, ptr %curr_write_pos.i.i, align 8
  %active_count43 = getelementptr %struct.swap_eb, ptr %54, i32 %div94105, i32 3
  %76 = ptrtoint ptr %active_count43 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %active_count43, align 4
  %dec44 = add i32 %77, -1
  store i32 %dec44, ptr %active_count43, align 4
  %78 = ptrtoint ptr %revmap.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %revmap.i, align 8
  %80 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %bp, align 4
  %arrayidx46 = getelementptr i32, ptr %79, i32 %81
  %82 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 -1, ptr %arrayidx46, align 4
  br label %cleanup

cleanup:                                          ; preds = %err, %if.end32.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %while.body.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %err ], [ %call15, %if.end32.cleanup_crit_edge ], [ -28, %while.body.cleanup_crit_edge ], [ %retval.0.i93106, %if.end11.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retlen) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mtdswap_gc(ptr noundef %d, i32 noundef %background) unnamed_addr #2 align 64 {
entry:
  %retlen.i = alloca i32, align 4
  %newblock.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %spare_eblks = getelementptr inbounds %struct.mtdswap_dev, ptr %d, i32 0, i32 6
  %0 = ptrtoint ptr %spare_eblks to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %spare_eblks, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp ult i32 %1, 2
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %background)
  %tobool.not.i = icmp eq i32 %background, 0
  br i1 %tobool.not.i, label %if.end.thread.i, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %if.end
  %count.i = getelementptr inbounds %struct.mtdswap_dev, ptr %d, i32 0, i32 10, i32 0, i32 1
  %2 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %3)
  %cmp.i = icmp ugt i32 %3, 20
  br i1 %cmp.i, label %land.lhs.true1.i, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

land.lhs.true1.i:                                 ; preds = %land.lhs.true.i
  %arrayidx3.i = getelementptr %struct.mtdswap_dev, ptr %d, i32 0, i32 10, i32 4
  %4 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx3.i, align 8
  %cmp4.i = icmp eq ptr %5, null
  br i1 %cmp4.i, label %land.lhs.true5.i, label %land.lhs.true1.i.if.end.i_crit_edge

land.lhs.true1.i.if.end.i_crit_edge:              ; preds = %land.lhs.true1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

land.lhs.true5.i:                                 ; preds = %land.lhs.true1.i
  %arrayidx7.i = getelementptr %struct.mtdswap_dev, ptr %d, i32 0, i32 10, i32 6
  %6 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx7.i, align 8
  %cmp10.i = icmp eq ptr %7, null
  br i1 %cmp10.i, label %land.lhs.true5.i.cleanup_crit_edge, label %land.lhs.true5.i.if.end.i_crit_edge

land.lhs.true5.i.if.end.i_crit_edge:              ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

land.lhs.true5.i.cleanup_crit_edge:               ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %land.lhs.true5.i.if.end.i_crit_edge, %land.lhs.true1.i.if.end.i_crit_edge, %land.lhs.true.i.if.end.i_crit_edge
  %trees.i.i = getelementptr %struct.mtdswap_dev, ptr %d, i32 0, i32 10
  %arrayidx.i.i = getelementptr %struct.mtdswap_dev, ptr %d, i32 0, i32 10, i32 6
  %8 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i.i, align 8
  %cmp.i.i = icmp eq ptr %9, null
  br i1 %cmp.i.i, label %if.end.i.if.end.i.i_crit_edge, label %if.end.i.mtdswap_pick_gc_eblk.exit_crit_edge

if.end.i.mtdswap_pick_gc_eblk.exit_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mtdswap_pick_gc_eblk.exit

if.end.i.if.end.i.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i

if.end.thread.i:                                  ; preds = %if.end
  %trees.i35.i = getelementptr %struct.mtdswap_dev, ptr %d, i32 0, i32 10
  %arrayidx.i36.i = getelementptr %struct.mtdswap_dev, ptr %d, i32 0, i32 10, i32 6
  %10 = ptrtoint ptr %arrayidx.i36.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i36.i, align 8
  %cmp.i37.i = icmp eq ptr %11, null
  br i1 %cmp.i37.i, label %if.end.thread.i.if.end.i.i_crit_edge, label %lor.lhs.false.i.i

if.end.thread.i.if.end.i.i_crit_edge:             ; preds = %if.end.thread.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i

lor.lhs.false.i.i:                                ; preds = %if.end.thread.i
  %12 = ptrtoint ptr %trees.i35.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %trees.i35.i, align 8
  %cmp5.i.i = icmp eq ptr %13, null
  br i1 %cmp5.i.i, label %land.lhs.true6.i.i, label %if.end.thread.i.i

if.end.thread.i.i:                                ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %max_erase_count.i26.i.i = getelementptr inbounds %struct.mtdswap_dev, ptr %d, i32 0, i32 8
  br label %if.end.i.i.i

land.lhs.true6.i.i:                               ; preds = %lor.lhs.false.i.i
  %arrayidx8.i.i = getelementptr %struct.mtdswap_dev, ptr %d, i32 0, i32 10, i32 4
  %14 = ptrtoint ptr %arrayidx8.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx8.i.i, align 8
  %cmp11.i.i = icmp eq ptr %15, null
  br i1 %cmp11.i.i, label %land.lhs.true6.i.i.mtdswap_pick_gc_eblk.exit_crit_edge, label %land.lhs.true6.i.i.if.end.i.i_crit_edge

land.lhs.true6.i.i.if.end.i.i_crit_edge:          ; preds = %land.lhs.true6.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i

land.lhs.true6.i.i.mtdswap_pick_gc_eblk.exit_crit_edge: ; preds = %land.lhs.true6.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mtdswap_pick_gc_eblk.exit

if.end.i.i:                                       ; preds = %land.lhs.true6.i.i.if.end.i.i_crit_edge, %if.end.thread.i.if.end.i.i_crit_edge, %if.end.i.if.end.i.i_crit_edge
  %trees.i40.i = phi ptr [ %trees.i35.i, %if.end.thread.i.if.end.i.i_crit_edge ], [ %trees.i35.i, %land.lhs.true6.i.i.if.end.i.i_crit_edge ], [ %trees.i.i, %if.end.i.if.end.i.i_crit_edge ]
  %16 = ptrtoint ptr %trees.i40.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %.pr.i.i = load ptr, ptr %trees.i40.i, align 4
  %max_erase_count.i.i.i = getelementptr inbounds %struct.mtdswap_dev, ptr %d, i32 0, i32 8
  %cmp2.i.i.i = icmp eq ptr %.pr.i.i, null
  br i1 %cmp2.i.i.i, label %if.end.i.i.for.inc.i.i.i_crit_edge, label %if.end.i.i.if.end.i.i.i_crit_edge

if.end.i.i.if.end.i.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i.i

if.end.i.i.for.inc.i.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i.i

if.end.i.i.i:                                     ; preds = %if.end.i.i.if.end.i.i.i_crit_edge, %if.end.thread.i.i
  %trees.i39.i = phi ptr [ %trees.i35.i, %if.end.thread.i.i ], [ %trees.i40.i, %if.end.i.i.if.end.i.i.i_crit_edge ]
  %max_erase_count.i28.i.i = phi ptr [ %max_erase_count.i26.i.i, %if.end.thread.i.i ], [ %max_erase_count.i.i.i, %if.end.i.i.if.end.i.i.i_crit_edge ]
  %17 = ptrtoint ptr %max_erase_count.i28.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %max_erase_count.i28.i.i, align 8
  %call.i.i.i = tail call ptr @rb_first(ptr noundef %trees.i39.i) #8
  %erase_count.i.i.i = getelementptr inbounds %struct.swap_eb, ptr %call.i.i.i, i32 0, i32 4
  %19 = ptrtoint ptr %erase_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %erase_count.i.i.i, align 4
  %sub.i.i.i = sub i32 %18, %20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i.i)
  %cmp3.not.i.i.i = icmp eq i32 %sub.i.i.i, 0
  %spec.select.i.i.i = sext i1 %cmp3.not.i.i.i to i32
  br label %for.inc.i.i.i

for.inc.i.i.i:                                    ; preds = %if.end.i.i.i, %if.end.i.i.for.inc.i.i.i_crit_edge
  %max_erase_count.i29.i.i = phi ptr [ %max_erase_count.i.i.i, %if.end.i.i.for.inc.i.i.i_crit_edge ], [ %max_erase_count.i28.i.i, %if.end.i.i.i ]
  %idx.1.i.i.i = phi i32 [ -1, %if.end.i.i.for.inc.i.i.i_crit_edge ], [ %spec.select.i.i.i, %if.end.i.i.i ]
  %max.1.i.i.i = phi i32 [ 0, %if.end.i.i.for.inc.i.i.i_crit_edge ], [ %sub.i.i.i, %if.end.i.i.i ]
  %arrayidx.1.i.i.i = getelementptr %struct.mtdswap_dev, ptr %d, i32 0, i32 10, i32 1
  %21 = ptrtoint ptr %arrayidx.1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx.1.i.i.i, align 4
  %cmp2.1.i.i.i = icmp eq ptr %22, null
  br i1 %cmp2.1.i.i.i, label %for.inc.i.i.i.for.inc.1.i.i.i_crit_edge, label %if.end.1.i.i.i

for.inc.i.i.i.for.inc.1.i.i.i_crit_edge:          ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.1.i.i.i

if.end.1.i.i.i:                                   ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %23 = ptrtoint ptr %max_erase_count.i29.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %max_erase_count.i29.i.i, align 8
  %call.1.i.i.i = tail call ptr @rb_first(ptr noundef %arrayidx.1.i.i.i) #8
  %erase_count.1.i.i.i = getelementptr inbounds %struct.swap_eb, ptr %call.1.i.i.i, i32 0, i32 4
  %25 = ptrtoint ptr %erase_count.1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %erase_count.1.i.i.i, align 4
  %sub.1.i.i.i = sub i32 %24, %26
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.1.i.i.i, i32 %max.1.i.i.i)
  %cmp3.1.i.i.i = icmp ugt i32 %sub.1.i.i.i, %max.1.i.i.i
  %spec.select.1.i.i.i = select i1 %cmp3.1.i.i.i, i32 1, i32 %idx.1.i.i.i
  %27 = tail call i32 @llvm.umax.i32(i32 %sub.1.i.i.i, i32 %max.1.i.i.i) #8
  br label %for.inc.1.i.i.i

for.inc.1.i.i.i:                                  ; preds = %if.end.1.i.i.i, %for.inc.i.i.i.for.inc.1.i.i.i_crit_edge
  %idx.1.1.i.i.i = phi i32 [ %idx.1.i.i.i, %for.inc.i.i.i.for.inc.1.i.i.i_crit_edge ], [ %spec.select.1.i.i.i, %if.end.1.i.i.i ]
  %max.1.1.i.i.i = phi i32 [ %max.1.i.i.i, %for.inc.i.i.i.for.inc.1.i.i.i_crit_edge ], [ %27, %if.end.1.i.i.i ]
  %arrayidx.2.i.i.i = getelementptr %struct.mtdswap_dev, ptr %d, i32 0, i32 10, i32 2
  %28 = ptrtoint ptr %arrayidx.2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx.2.i.i.i, align 4
  %cmp2.2.i.i.i = icmp eq ptr %29, null
  br i1 %cmp2.2.i.i.i, label %for.inc.1.i.i.i.for.inc.2.i.i.i_crit_edge, label %if.end.2.i.i.i

for.inc.1.i.i.i.for.inc.2.i.i.i_crit_edge:        ; preds = %for.inc.1.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.2.i.i.i

if.end.2.i.i.i:                                   ; preds = %for.inc.1.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %30 = ptrtoint ptr %max_erase_count.i29.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %max_erase_count.i29.i.i, align 8
  %call.2.i.i.i = tail call ptr @rb_first(ptr noundef %arrayidx.2.i.i.i) #8
  %erase_count.2.i.i.i = getelementptr inbounds %struct.swap_eb, ptr %call.2.i.i.i, i32 0, i32 4
  %32 = ptrtoint ptr %erase_count.2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %erase_count.2.i.i.i, align 4
  %sub.2.i.i.i = sub i32 %31, %33
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.2.i.i.i, i32 %max.1.1.i.i.i)
  %cmp3.2.i.i.i = icmp ugt i32 %sub.2.i.i.i, %max.1.1.i.i.i
  %spec.select.2.i.i.i = select i1 %cmp3.2.i.i.i, i32 2, i32 %idx.1.1.i.i.i
  %34 = tail call i32 @llvm.umax.i32(i32 %sub.2.i.i.i, i32 %max.1.1.i.i.i) #8
  br label %for.inc.2.i.i.i

for.inc.2.i.i.i:                                  ; preds = %if.end.2.i.i.i, %for.inc.1.i.i.i.for.inc.2.i.i.i_crit_edge
  %idx.1.2.i.i.i = phi i32 [ %idx.1.1.i.i.i, %for.inc.1.i.i.i.for.inc.2.i.i.i_crit_edge ], [ %spec.select.2.i.i.i, %if.end.2.i.i.i ]
  %max.1.2.i.i.i = phi i32 [ %max.1.1.i.i.i, %for.inc.1.i.i.i.for.inc.2.i.i.i_crit_edge ], [ %34, %if.end.2.i.i.i ]
  %arrayidx.3.i.i.i = getelementptr %struct.mtdswap_dev, ptr %d, i32 0, i32 10, i32 3
  %35 = ptrtoint ptr %arrayidx.3.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx.3.i.i.i, align 4
  %cmp2.3.i.i.i = icmp eq ptr %36, null
  br i1 %cmp2.3.i.i.i, label %for.inc.2.i.i.i.for.inc.3.i.i.i_crit_edge, label %if.end.3.i.i.i

for.inc.2.i.i.i.for.inc.3.i.i.i_crit_edge:        ; preds = %for.inc.2.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.3.i.i.i

if.end.3.i.i.i:                                   ; preds = %for.inc.2.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %37 = ptrtoint ptr %max_erase_count.i29.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %max_erase_count.i29.i.i, align 8
  %call.3.i.i.i = tail call ptr @rb_first(ptr noundef %arrayidx.3.i.i.i) #8
  %erase_count.3.i.i.i = getelementptr inbounds %struct.swap_eb, ptr %call.3.i.i.i, i32 0, i32 4
  %39 = ptrtoint ptr %erase_count.3.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %erase_count.3.i.i.i, align 4
  %sub.3.i.i.i = sub i32 %38, %40
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.3.i.i.i, i32 %max.1.2.i.i.i)
  %cmp3.3.i.i.i = icmp ugt i32 %sub.3.i.i.i, %max.1.2.i.i.i
  %spec.select.3.i.i.i = select i1 %cmp3.3.i.i.i, i32 3, i32 %idx.1.2.i.i.i
  %41 = tail call i32 @llvm.umax.i32(i32 %sub.3.i.i.i, i32 %max.1.2.i.i.i) #8
  br label %for.inc.3.i.i.i

for.inc.3.i.i.i:                                  ; preds = %if.end.3.i.i.i, %for.inc.2.i.i.i.for.inc.3.i.i.i_crit_edge
  %idx.1.3.i.i.i = phi i32 [ %idx.1.2.i.i.i, %for.inc.2.i.i.i.for.inc.3.i.i.i_crit_edge ], [ %spec.select.3.i.i.i, %if.end.3.i.i.i ]
  %max.1.3.i.i.i = phi i32 [ %max.1.2.i.i.i, %for.inc.2.i.i.i.for.inc.3.i.i.i_crit_edge ], [ %41, %if.end.3.i.i.i ]
  %arrayidx.4.i.i.i = getelementptr %struct.mtdswap_dev, ptr %d, i32 0, i32 10, i32 4
  %42 = ptrtoint ptr %arrayidx.4.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx.4.i.i.i, align 4
  %cmp2.4.i.i.i = icmp eq ptr %43, null
  br i1 %cmp2.4.i.i.i, label %for.inc.3.i.i.i.for.inc.4.i.i.i_crit_edge, label %if.end.4.i.i.i

for.inc.3.i.i.i.for.inc.4.i.i.i_crit_edge:        ; preds = %for.inc.3.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.4.i.i.i

if.end.4.i.i.i:                                   ; preds = %for.inc.3.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %44 = ptrtoint ptr %max_erase_count.i29.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %max_erase_count.i29.i.i, align 8
  %call.4.i.i.i = tail call ptr @rb_first(ptr noundef %arrayidx.4.i.i.i) #8
  %erase_count.4.i.i.i = getelementptr inbounds %struct.swap_eb, ptr %call.4.i.i.i, i32 0, i32 4
  %46 = ptrtoint ptr %erase_count.4.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %erase_count.4.i.i.i, align 4
  %sub.4.i.i.i = sub i32 %45, %47
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.4.i.i.i, i32 %max.1.3.i.i.i)
  %cmp3.4.i.i.i = icmp ugt i32 %sub.4.i.i.i, %max.1.3.i.i.i
  %spec.select.4.i.i.i = select i1 %cmp3.4.i.i.i, i32 4, i32 %idx.1.3.i.i.i
  %48 = tail call i32 @llvm.umax.i32(i32 %sub.4.i.i.i, i32 %max.1.3.i.i.i) #8
  br label %for.inc.4.i.i.i

for.inc.4.i.i.i:                                  ; preds = %if.end.4.i.i.i, %for.inc.3.i.i.i.for.inc.4.i.i.i_crit_edge
  %idx.1.4.i.i.i = phi i32 [ %idx.1.3.i.i.i, %for.inc.3.i.i.i.for.inc.4.i.i.i_crit_edge ], [ %spec.select.4.i.i.i, %if.end.4.i.i.i ]
  %max.1.4.i.i.i = phi i32 [ %max.1.3.i.i.i, %for.inc.3.i.i.i.for.inc.4.i.i.i_crit_edge ], [ %48, %if.end.4.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 4000, i32 %max.1.4.i.i.i)
  %cmp6.i.i.i = icmp ugt i32 %max.1.4.i.i.i, 4000
  br i1 %cmp6.i.i.i, label %land.lhs.true.i.i.i, label %for.inc.4.i.i.i.mtdswap_choose_wl_tree.exit.thread.i.i_crit_edge

for.inc.4.i.i.i.mtdswap_choose_wl_tree.exit.thread.i.i_crit_edge: ; preds = %for.inc.4.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mtdswap_choose_wl_tree.exit.thread.i.i

land.lhs.true.i.i.i:                              ; preds = %for.inc.4.i.i.i
  %49 = load i32, ptr @mtdswap_choose_wl_tree.pick_cnt, align 4
  %sub.i.i.i.i = add i32 %max.1.4.i.i.i, -4000
  %50 = tail call i32 @llvm.umin.i32(i32 %sub.i.i.i.i, i32 4000) #8
  %sub1.i.i.i.i = shl nuw nsw i32 %50, 1
  %add.i.i.i.i = add nsw i32 %sub1.i.i.i.i, -6000
  %div2.i.i.i.i = udiv i32 %add.i.i.i.i, 4000
  %sub8.i.i.i = add nuw nsw i32 %div2.i.i.i.i, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %49, i32 %sub8.i.i.i)
  %cmp9.not.i.i.i = icmp ult i32 %49, %sub8.i.i.i
  br i1 %cmp9.not.i.i.i, label %land.lhs.true.i.i.i.mtdswap_choose_wl_tree.exit.thread.i.i_crit_edge, label %mtdswap_choose_wl_tree.exit.i.i

land.lhs.true.i.i.i.mtdswap_choose_wl_tree.exit.thread.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mtdswap_choose_wl_tree.exit.thread.i.i

mtdswap_choose_wl_tree.exit.thread.i.i:           ; preds = %land.lhs.true.i.i.i.mtdswap_choose_wl_tree.exit.thread.i.i_crit_edge, %for.inc.4.i.i.i.mtdswap_choose_wl_tree.exit.thread.i.i_crit_edge
  %51 = load i32, ptr @mtdswap_choose_wl_tree.pick_cnt, align 4
  %inc12.i.i.i = add i32 %51, 1
  store i32 %inc12.i.i.i, ptr @mtdswap_choose_wl_tree.pick_cnt, align 4
  br label %if.end14.i.i

mtdswap_choose_wl_tree.exit.i.i:                  ; preds = %land.lhs.true.i.i.i
  store i32 0, ptr @mtdswap_choose_wl_tree.pick_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %idx.1.4.i.i.i)
  %cmp12.i.i = icmp sgt i32 %idx.1.4.i.i.i, -1
  br i1 %cmp12.i.i, label %mtdswap_choose_wl_tree.exit.i.i.mtdswap_pick_gc_eblk.exit_crit_edge, label %mtdswap_choose_wl_tree.exit.i.i.if.end14.i.i_crit_edge

mtdswap_choose_wl_tree.exit.i.i.if.end14.i.i_crit_edge: ; preds = %mtdswap_choose_wl_tree.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14.i.i

mtdswap_choose_wl_tree.exit.i.i.mtdswap_pick_gc_eblk.exit_crit_edge: ; preds = %mtdswap_choose_wl_tree.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mtdswap_pick_gc_eblk.exit

if.end14.i.i:                                     ; preds = %mtdswap_choose_wl_tree.exit.i.i.if.end14.i.i_crit_edge, %mtdswap_choose_wl_tree.exit.thread.i.i
  %count.i.i.i = getelementptr inbounds %struct.mtdswap_dev, ptr %d, i32 0, i32 10, i32 0, i32 1
  %52 = ptrtoint ptr %count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %count.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %53)
  %cmp.i.i.i = icmp ult i32 %53, 5
  %arrayidx3.i.i.i = getelementptr %struct.mtdswap_dev, ptr %d, i32 0, i32 10, i32 5
  %54 = ptrtoint ptr %arrayidx3.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %arrayidx3.i.i.i, align 8
  %cmp4.not.i.i.i = icmp eq ptr %55, null
  br i1 %cmp4.not.i.i.i, label %for.body.i.i.i.1, label %if.end14.i.i.mtdswap_pick_gc_eblk.exit_crit_edge

if.end14.i.i.mtdswap_pick_gc_eblk.exit_crit_edge: ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mtdswap_pick_gc_eblk.exit

for.body.i.i.i.1:                                 ; preds = %if.end14.i.i
  %arrayidx3.i.i.i.1 = getelementptr %struct.mtdswap_dev, ptr %d, i32 0, i32 10, i32 4
  %56 = ptrtoint ptr %arrayidx3.i.i.i.1 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %arrayidx3.i.i.i.1, align 8
  %cmp4.not.i.i.i.1 = icmp eq ptr %57, null
  br i1 %cmp4.not.i.i.i.1, label %for.body.i.i.i.2, label %for.body.i.i.i.1.mtdswap_pick_gc_eblk.exit_crit_edge

for.body.i.i.i.1.mtdswap_pick_gc_eblk.exit_crit_edge: ; preds = %for.body.i.i.i.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %mtdswap_pick_gc_eblk.exit

for.body.i.i.i.2:                                 ; preds = %for.body.i.i.i.1
  %arrayidx3.i.i.i.2 = getelementptr %struct.mtdswap_dev, ptr %d, i32 0, i32 10, i32 3
  %58 = ptrtoint ptr %arrayidx3.i.i.i.2 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %arrayidx3.i.i.i.2, align 8
  %cmp4.not.i.i.i.2 = icmp eq ptr %59, null
  br i1 %cmp4.not.i.i.i.2, label %for.inc.i21.i.i.2, label %for.body.i.i.i.2.mtdswap_pick_gc_eblk.exit_crit_edge

for.body.i.i.i.2.mtdswap_pick_gc_eblk.exit_crit_edge: ; preds = %for.body.i.i.i.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %mtdswap_pick_gc_eblk.exit

for.inc.i21.i.i.2:                                ; preds = %for.body.i.i.i.2
  br i1 %cmp.i.i.i, label %for.body.i.i.i.3, label %for.inc.i21.i.i.2.cleanup_crit_edge

for.inc.i21.i.i.2.cleanup_crit_edge:              ; preds = %for.inc.i21.i.i.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.i.i.i.3:                                 ; preds = %for.inc.i21.i.i.2
  %arrayidx3.i.i.i.3 = getelementptr %struct.mtdswap_dev, ptr %d, i32 0, i32 10, i32 2
  %60 = ptrtoint ptr %arrayidx3.i.i.i.3 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %arrayidx3.i.i.i.3, align 8
  %cmp4.not.i.i.i.3 = icmp eq ptr %61, null
  br i1 %cmp4.not.i.i.i.3, label %for.body.i.i.i.3.cleanup_crit_edge, label %for.body.i.i.i.3.mtdswap_pick_gc_eblk.exit_crit_edge

for.body.i.i.i.3.mtdswap_pick_gc_eblk.exit_crit_edge: ; preds = %for.body.i.i.i.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %mtdswap_pick_gc_eblk.exit

for.body.i.i.i.3.cleanup_crit_edge:               ; preds = %for.body.i.i.i.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

mtdswap_pick_gc_eblk.exit:                        ; preds = %for.body.i.i.i.3.mtdswap_pick_gc_eblk.exit_crit_edge, %for.body.i.i.i.2.mtdswap_pick_gc_eblk.exit_crit_edge, %for.body.i.i.i.1.mtdswap_pick_gc_eblk.exit_crit_edge, %if.end14.i.i.mtdswap_pick_gc_eblk.exit_crit_edge, %mtdswap_choose_wl_tree.exit.i.i.mtdswap_pick_gc_eblk.exit_crit_edge, %land.lhs.true6.i.i.mtdswap_pick_gc_eblk.exit_crit_edge, %if.end.i.mtdswap_pick_gc_eblk.exit_crit_edge
  %retval.0.i45.i = phi i32 [ %idx.1.4.i.i.i, %mtdswap_choose_wl_tree.exit.i.i.mtdswap_pick_gc_eblk.exit_crit_edge ], [ 6, %land.lhs.true6.i.i.mtdswap_pick_gc_eblk.exit_crit_edge ], [ 6, %if.end.i.mtdswap_pick_gc_eblk.exit_crit_edge ], [ 5, %if.end14.i.i.mtdswap_pick_gc_eblk.exit_crit_edge ], [ 4, %for.body.i.i.i.1.mtdswap_pick_gc_eblk.exit_crit_edge ], [ 3, %for.body.i.i.i.2.mtdswap_pick_gc_eblk.exit_crit_edge ], [ 2, %for.body.i.i.i.3.mtdswap_pick_gc_eblk.exit_crit_edge ]
  %arrayidx15.i = getelementptr %struct.mtdswap_dev, ptr %d, i32 0, i32 10, i32 %retval.0.i45.i
  %call17.i = tail call ptr @rb_first(ptr noundef %arrayidx15.i) #8
  tail call void @rb_erase(ptr noundef %call17.i, ptr noundef %arrayidx15.i) #8
  %root18.i = getelementptr inbounds %struct.swap_eb, ptr %call17.i, i32 0, i32 1
  %62 = ptrtoint ptr %root18.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr null, ptr %root18.i, align 4
  %count21.i = getelementptr %struct.mtdswap_dev, ptr %d, i32 0, i32 10, i32 %retval.0.i45.i, i32 1
  %63 = ptrtoint ptr %count21.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %count21.i, align 4
  %dec.i = add i32 %64, -1
  store i32 %dec.i, ptr %count21.i, align 4
  %tobool.not = icmp eq ptr %call17.i, null
  br i1 %tobool.not, label %mtdswap_pick_gc_eblk.exit.cleanup_crit_edge, label %if.end2

mtdswap_pick_gc_eblk.exit.cleanup_crit_edge:      ; preds = %mtdswap_pick_gc_eblk.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end2:                                          ; preds = %mtdswap_pick_gc_eblk.exit
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %newblock.i) #8
  %65 = ptrtoint ptr %newblock.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 -1, ptr %newblock.i, align 4, !annotation !203
  %eb_data.i = getelementptr inbounds %struct.mtdswap_dev, ptr %d, i32 0, i32 9
  %66 = ptrtoint ptr %eb_data.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %eb_data.i, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %call17.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %67 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %sub.ptr.div.i = ashr exact i32 %sub.ptr.sub.i, 5
  %pages_per_eblk.i = getelementptr inbounds %struct.mtdswap_dev, ptr %d, i32 0, i32 7
  %68 = ptrtoint ptr %pages_per_eblk.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %pages_per_eblk.i, align 4
  %mul.i = mul i32 %sub.ptr.div.i, %69
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %cmp.i5992.not = icmp eq i32 %69, 0
  br i1 %cmp.i5992.not, label %mtdswap_gc_eblock.exit.thread97, label %for.body.i.lr.ph

mtdswap_gc_eblock.exit.thread97:                  ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %newblock.i) #8
  br label %if.end6

for.body.i.lr.ph:                                 ; preds = %if.end2
  %revmap.i = getelementptr inbounds %struct.mtdswap_dev, ptr %d, i32 0, i32 4
  %mtd1.i = getelementptr inbounds %struct.mtdswap_dev, ptr %d, i32 0, i32 1
  %page_buf.i = getelementptr inbounds %struct.mtdswap_dev, ptr %d, i32 0, i32 19
  %dev.i = getelementptr inbounds %struct.mtdswap_dev, ptr %d, i32 0, i32 2
  %page_data35.i = getelementptr inbounds %struct.mtdswap_dev, ptr %d, i32 0, i32 3
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.i.lr.ph
  %errcode.0.i94 = phi i32 [ 0, %for.body.i.lr.ph ], [ %errcode.1.i, %for.inc.i.for.body.i_crit_edge ]
  %i.0.i93 = phi i32 [ 0, %for.body.i.lr.ph ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %70 = ptrtoint ptr %spare_eblks to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %spare_eblks, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %71)
  %cmp2.i = icmp ult i32 %71, 2
  br i1 %cmp2.i, label %mtdswap_gc_eblock.exit.thread, label %if.end.i60

mtdswap_gc_eblock.exit.thread:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %newblock.i) #8
  br label %cleanup

if.end.i60:                                       ; preds = %for.body.i
  %add.i = add i32 %i.0.i93, %mul.i
  %72 = ptrtoint ptr %revmap.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %revmap.i, align 8
  %arrayidx.i = getelementptr i32, ptr %73, i32 %add.i
  %74 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %75)
  %cmp3.i = icmp eq i32 %75, -1
  br i1 %cmp3.i, label %if.end.i60.for.inc.i_crit_edge, label %if.end5.i

if.end.i60.for.inc.i_crit_edge:                   ; preds = %if.end.i60
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.end5.i:                                        ; preds = %if.end.i60
  %76 = ptrtoint ptr %mtd1.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %mtd1.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retlen.i) #8
  %78 = ptrtoint ptr %retlen.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 -1, ptr %retlen.i, align 4, !annotation !203
  %79 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %arrayidx.i, align 4
  %conv.i66 = zext i32 %add.i to i64
  %shl.i = shl nuw nsw i64 %conv.i66, 12
  %81 = ptrtoint ptr %page_buf.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %page_buf.i, align 8
  %call.i67 = call i32 @mtd_read(ptr noundef %77, i64 noundef %shl.i, i32 noundef 4096, ptr noundef nonnull %retlen.i, ptr noundef %82) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i67)
  %cmp.i68 = icmp sgt i32 %call.i67, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -117, i32 %call.i67)
  %cmp.i.i69.not = icmp eq i32 %call.i67, -117
  %or.cond = or i1 %cmp.i68, %cmp.i.i69.not
  br i1 %or.cond, label %if.end5.i.if.end7.i_crit_edge, label %if.then.i

if.end5.i.if.end7.i_crit_edge:                    ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7.i

if.then.i:                                        ; preds = %if.end5.i
  %83 = ptrtoint ptr %eb_data.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %eb_data.i, align 4
  %85 = ptrtoint ptr %pages_per_eblk.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %pages_per_eblk.i, align 4
  %div.i = udiv i32 %add.i, %86
  %flags.i = getelementptr %struct.swap_eb, ptr %84, i32 %div.i, i32 2
  %87 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %flags.i, align 4
  %or.i = or i32 %88, 16
  store i32 %or.i, ptr %flags.i, align 4
  %89 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %dev.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %90, ptr noundef nonnull @.str.15, i32 noundef %call.i67, i32 noundef %add.i) #11
  %91 = ptrtoint ptr %page_buf.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %page_buf.i, align 8
  %call.i67.1 = call i32 @mtd_read(ptr noundef %77, i64 noundef %shl.i, i32 noundef 4096, ptr noundef nonnull %retlen.i, ptr noundef %92) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i67.1)
  %cmp.i68.1 = icmp sgt i32 %call.i67.1, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -117, i32 %call.i67.1)
  %cmp.i.i69.not.1 = icmp eq i32 %call.i67.1, -117
  %or.cond.1 = or i1 %cmp.i68.1, %cmp.i.i69.not.1
  br i1 %or.cond.1, label %if.then.i.if.end7.i_crit_edge, label %if.then.i.1

if.then.i.if.end7.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7.i

if.then.i.1:                                      ; preds = %if.then.i
  %93 = ptrtoint ptr %eb_data.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %eb_data.i, align 4
  %95 = ptrtoint ptr %pages_per_eblk.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %pages_per_eblk.i, align 4
  %div.i.1 = udiv i32 %add.i, %96
  %flags.i.1 = getelementptr %struct.swap_eb, ptr %94, i32 %div.i.1, i32 2
  %97 = ptrtoint ptr %flags.i.1 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %flags.i.1, align 4
  %or.i.1 = or i32 %98, 16
  store i32 %or.i.1, ptr %flags.i.1, align 4
  %99 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %dev.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %100, ptr noundef nonnull @.str.15, i32 noundef %call.i67.1, i32 noundef %add.i) #11
  %101 = ptrtoint ptr %page_buf.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %page_buf.i, align 8
  %call.i67.2 = call i32 @mtd_read(ptr noundef %77, i64 noundef %shl.i, i32 noundef 4096, ptr noundef nonnull %retlen.i, ptr noundef %102) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i67.2)
  %cmp.i68.2 = icmp sgt i32 %call.i67.2, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -117, i32 %call.i67.2)
  %cmp.i.i69.not.2 = icmp eq i32 %call.i67.2, -117
  %or.cond.2 = or i1 %cmp.i68.2, %cmp.i.i69.not.2
  br i1 %or.cond.2, label %if.then.i.1.if.end7.i_crit_edge, label %if.then.i.2

if.then.i.1.if.end7.i_crit_edge:                  ; preds = %if.then.i.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7.i

if.then.i.2:                                      ; preds = %if.then.i.1
  call void @__sanitizer_cov_trace_pc() #10
  %103 = ptrtoint ptr %eb_data.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %eb_data.i, align 4
  %105 = ptrtoint ptr %pages_per_eblk.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %pages_per_eblk.i, align 4
  %div.i.2 = udiv i32 %add.i, %106
  %flags.i.2 = getelementptr %struct.swap_eb, ptr %104, i32 %div.i.2, i32 2
  %107 = ptrtoint ptr %flags.i.2 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %flags.i.2, align 4
  %or.i.2 = or i32 %108, 16
  store i32 %or.i.2, ptr %flags.i.2, align 4
  %109 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %dev.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %110, ptr noundef nonnull @.str.15, i32 noundef %call.i67.2, i32 noundef %add.i) #11
  br label %read_error.i

if.end7.i:                                        ; preds = %if.then.i.1.if.end7.i_crit_edge, %if.then.i.if.end7.i_crit_edge, %if.end5.i.if.end7.i_crit_edge
  %111 = ptrtoint ptr %retlen.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %retlen.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %112)
  %cmp8.not.i = icmp eq i32 %112, 4096
  br i1 %cmp8.not.i, label %if.end15.i, label %do.end13.i

do.end13.i:                                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  %113 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %dev.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %114, ptr noundef nonnull @.str.18, i32 noundef %112, i32 noundef %add.i) #11
  br label %read_error.i

if.end15.i:                                       ; preds = %if.end7.i
  %115 = ptrtoint ptr %page_buf.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %page_buf.i, align 8
  %call17.i76 = call fastcc i32 @mtdswap_write_block(ptr noundef %d, ptr noundef %116, i32 noundef %80, ptr noundef nonnull %newblock.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i76)
  %cmp18.i = icmp slt i32 %call17.i76, 0
  br i1 %cmp18.i, label %if.then20.i, label %if.end26.i

if.then20.i:                                      ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #10
  %117 = ptrtoint ptr %page_data35.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %page_data35.i, align 4
  %arrayidx21.i = getelementptr i32, ptr %118, i32 %80
  %119 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 -2, ptr %arrayidx21.i, align 4
  %120 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %dev.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %121, ptr noundef nonnull @.str.21, i32 noundef %call17.i76) #11
  br label %mtdswap_move_block.exit

if.end26.i:                                       ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #10
  %122 = ptrtoint ptr %newblock.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %newblock.i, align 4
  %124 = ptrtoint ptr %page_data35.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %page_data35.i, align 4
  %arrayidx28.i = getelementptr i32, ptr %125, i32 %80
  %126 = ptrtoint ptr %arrayidx28.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 %123, ptr %arrayidx28.i, align 4
  %127 = ptrtoint ptr %revmap.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %revmap.i, align 8
  %arrayidx30.i = getelementptr i32, ptr %128, i32 %add.i
  %129 = ptrtoint ptr %arrayidx30.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 -1, ptr %arrayidx30.i, align 4
  %130 = ptrtoint ptr %eb_data.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %eb_data.i, align 4
  %132 = ptrtoint ptr %pages_per_eblk.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %pages_per_eblk.i, align 4
  %div33.i = udiv i32 %add.i, %133
  %active_count.i = getelementptr %struct.swap_eb, ptr %131, i32 %div33.i, i32 3
  %134 = ptrtoint ptr %active_count.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %active_count.i, align 4
  %dec.i77 = add i32 %135, -1
  store i32 %dec.i77, ptr %active_count.i, align 4
  br label %mtdswap_move_block.exit

read_error.i:                                     ; preds = %do.end13.i, %if.then.i.2
  %ret.0.i = phi i32 [ -5, %do.end13.i ], [ %call.i67.2, %if.then.i.2 ]
  %136 = ptrtoint ptr %page_data35.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %page_data35.i, align 4
  %arrayidx36.i = getelementptr i32, ptr %137, i32 %80
  %138 = ptrtoint ptr %arrayidx36.i to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 -2, ptr %arrayidx36.i, align 4
  %139 = ptrtoint ptr %revmap.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %revmap.i, align 8
  %arrayidx38.i = getelementptr i32, ptr %140, i32 %add.i
  %141 = ptrtoint ptr %arrayidx38.i to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 -1, ptr %arrayidx38.i, align 4
  br label %mtdswap_move_block.exit

mtdswap_move_block.exit:                          ; preds = %read_error.i, %if.end26.i, %if.then20.i
  %retval.0.i78 = phi i32 [ %ret.0.i, %read_error.i ], [ %call17.i76, %if.then20.i ], [ 0, %if.end26.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retlen.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i78)
  %cmp6.i = icmp slt i32 %retval.0.i78, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %errcode.0.i94)
  %tobool.not.i61 = icmp eq i32 %errcode.0.i94, 0
  %or.cond.i = select i1 %cmp6.i, i1 %tobool.not.i61, i1 false
  %spec.select.i = select i1 %or.cond.i, i32 %retval.0.i78, i32 %errcode.0.i94
  br label %for.inc.i

for.inc.i:                                        ; preds = %mtdswap_move_block.exit, %if.end.i60.for.inc.i_crit_edge
  %errcode.1.i = phi i32 [ %errcode.0.i94, %if.end.i60.for.inc.i_crit_edge ], [ %spec.select.i, %mtdswap_move_block.exit ]
  %inc.i = add nuw i32 %i.0.i93, 1
  %142 = ptrtoint ptr %pages_per_eblk.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %pages_per_eblk.i, align 4
  %cmp.i59 = icmp ult i32 %inc.i, %143
  br i1 %cmp.i59, label %for.inc.i.for.body.i_crit_edge, label %mtdswap_gc_eblock.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

mtdswap_gc_eblock.exit:                           ; preds = %for.inc.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %newblock.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -28, i32 %errcode.1.i)
  %cmp4 = icmp eq i32 %errcode.1.i, -28
  br i1 %cmp4, label %mtdswap_gc_eblock.exit.cleanup_crit_edge, label %mtdswap_gc_eblock.exit.if.end6_crit_edge

mtdswap_gc_eblock.exit.if.end6_crit_edge:         ; preds = %mtdswap_gc_eblock.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

mtdswap_gc_eblock.exit.cleanup_crit_edge:         ; preds = %mtdswap_gc_eblock.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end6:                                          ; preds = %mtdswap_gc_eblock.exit.if.end6_crit_edge, %mtdswap_gc_eblock.exit.thread97
  %flags = getelementptr inbounds %struct.swap_eb, ptr %call17.i, i32 0, i32 2
  %144 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %flags, align 4
  %and = and i32 %145, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  br i1 %tobool7.not, label %if.end10, label %if.then8

if.then8:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  %call9 = call fastcc i32 @mtdswap_handle_badblock(ptr noundef %d, ptr noundef nonnull %call17.i)
  br label %cleanup

if.end10:                                         ; preds = %if.end6
  %and12 = and i32 %145, -5
  %146 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 %and12, ptr %flags, align 4
  %call13 = call fastcc i32 @mtdswap_erase_block(ptr noundef %d, ptr noundef nonnull %call17.i)
  %147 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %flags, align 4
  %and15 = and i32 %148, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp22 = icmp eq i32 %call13, 0
  br i1 %tobool16.not, label %if.end21, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end10
  br i1 %cmp22, label %lor.lhs.false, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %land.lhs.true
  %call18 = call fastcc i32 @mtdswap_eblk_passes(ptr noundef %d, ptr noundef nonnull %call17.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false.if.then23_crit_edge

lor.lhs.false.if.then23_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then23

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end21:                                         ; preds = %if.end10
  br i1 %cmp22, label %if.end21.if.then23_crit_edge, label %if.end21.if.end25_crit_edge

if.end21.if.end25_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25

if.end21.if.then23_crit_edge:                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then23

if.then23:                                        ; preds = %if.end21.if.then23_crit_edge, %lor.lhs.false.if.then23_crit_edge
  %call24 = call fastcc i32 @mtdswap_write_marker(ptr noundef %d, ptr noundef nonnull %call17.i, i16 noundef zeroext 0)
  br label %if.end25

if.end25:                                         ; preds = %if.then23, %if.end21.if.end25_crit_edge
  %ret.0 = phi i32 [ %call24, %if.then23 ], [ %call13, %if.end21.if.end25_crit_edge ]
  %149 = zext i32 %ret.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %149, ptr @__sancov_gen_cov_switch_values.87)
  switch i32 %ret.0, label %if.then32 [
    i32 0, label %if.then27
    i32 -5, label %if.end25.cleanup_crit_edge
    i32 -74, label %if.end25.cleanup_crit_edge106
  ]

if.end25.cleanup_crit_edge106:                    ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then27:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @mtdswap_rb_add(ptr noundef %d, ptr noundef nonnull %call17.i, i32 noundef 0)
  br label %cleanup

if.then32:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @mtdswap_rb_add(ptr noundef %d, ptr noundef nonnull %call17.i, i32 noundef 4)
  br label %cleanup

cleanup:                                          ; preds = %if.then32, %if.then27, %if.end25.cleanup_crit_edge, %if.end25.cleanup_crit_edge106, %lor.lhs.false.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.then8, %mtdswap_gc_eblock.exit.cleanup_crit_edge, %mtdswap_gc_eblock.exit.thread, %mtdswap_pick_gc_eblk.exit.cleanup_crit_edge, %for.body.i.i.i.3.cleanup_crit_edge, %for.inc.i21.i.i.2.cleanup_crit_edge, %land.lhs.true5.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then8 ], [ 1, %entry.cleanup_crit_edge ], [ 1, %mtdswap_pick_gc_eblk.exit.cleanup_crit_edge ], [ 1, %mtdswap_gc_eblock.exit.cleanup_crit_edge ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.end25.cleanup_crit_edge ], [ 0, %if.then32 ], [ 0, %if.then27 ], [ 1, %mtdswap_gc_eblock.exit.thread ], [ 1, %land.lhs.true5.i.cleanup_crit_edge ], [ 0, %if.end25.cleanup_crit_edge106 ], [ 1, %for.body.i.i.i.3.cleanup_crit_edge ], [ 1, %for.inc.i21.i.i.2.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_write(ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mtdswap_handle_write_error(ptr noundef %d, ptr noundef %eb) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.swap_eb, ptr %eb, i32 0, i32 2
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %curr_write1 = getelementptr inbounds %struct.mtdswap_dev, ptr %d, i32 0, i32 18
  %2 = ptrtoint ptr %curr_write1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %curr_write1, align 4
  %or = or i32 %1, 8
  store i32 %or, ptr %flags, align 4
  %cmp = icmp eq ptr %3, %eb
  br i1 %cmp, label %if.then, label %entry.if.end6_crit_edge

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

if.then:                                          ; preds = %entry
  %and = and i32 %1, 8
  %4 = ptrtoint ptr %curr_write1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %curr_write1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.lhs.true, label %if.then.if.end6_crit_edge

if.then.if.end6_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

land.lhs.true:                                    ; preds = %if.then
  %curr_write_pos = getelementptr inbounds %struct.mtdswap_dev, ptr %d, i32 0, i32 17
  %5 = ptrtoint ptr %curr_write_pos to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %curr_write_pos, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp4.not = icmp eq i32 %6, 0
  br i1 %cmp4.not, label %land.lhs.true.if.end6_crit_edge, label %if.then5

land.lhs.true.if.end6_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

if.then5:                                         ; preds = %land.lhs.true
  %root1.i = getelementptr inbounds %struct.swap_eb, ptr %eb, i32 0, i32 1
  %7 = ptrtoint ptr %root1.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %root1.i, align 4
  %arrayidx.i = getelementptr %struct.mtdswap_dev, ptr %d, i32 0, i32 10, i32 6
  %cmp.i = icmp eq ptr %8, %arrayidx.i
  br i1 %cmp.i, label %if.then5.cleanup_crit_edge, label %if.end.i

if.then5.cleanup_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %if.then5
  %tobool.not.i.i = icmp eq ptr %8, null
  br i1 %tobool.not.i.i, label %if.end.i.mtdswap_eb_detach.exit.i_crit_edge, label %if.then.i.i

if.end.i.mtdswap_eb_detach.exit.i_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mtdswap_eb_detach.exit.i

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %trees.i.i = getelementptr inbounds %struct.mtdswap_dev, ptr %d, i32 0, i32 10
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %8 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %trees.i.i to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %sub.ptr.div.i.i = ashr exact i32 %sub.ptr.sub.i.i, 3
  %count.i.i = getelementptr %struct.mtdswap_dev, ptr %d, i32 0, i32 10, i32 %sub.ptr.div.i.i, i32 1
  %9 = ptrtoint ptr %count.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %count.i.i, align 4
  %dec.i.i = add i32 %10, -1
  store i32 %dec.i.i, ptr %count.i.i, align 4
  %11 = ptrtoint ptr %root1.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %root1.i, align 4
  tail call void @rb_erase(ptr noundef %eb, ptr noundef %12) #8
  br label %mtdswap_eb_detach.exit.i

mtdswap_eb_detach.exit.i:                         ; preds = %if.then.i.i, %if.end.i.mtdswap_eb_detach.exit.i_crit_edge
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not11.i.i = icmp eq ptr %14, null
  br i1 %tobool.not11.i.i, label %mtdswap_eb_detach.exit.i.__mtdswap_rb_add.exit.i_crit_edge, label %while.body.lr.ph.i.i

mtdswap_eb_detach.exit.i.__mtdswap_rb_add.exit.i_crit_edge: ; preds = %mtdswap_eb_detach.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__mtdswap_rb_add.exit.i

while.body.lr.ph.i.i:                             ; preds = %mtdswap_eb_detach.exit.i
  %erase_count.i.i = getelementptr inbounds %struct.swap_eb, ptr %eb, i32 0, i32 4
  %15 = ptrtoint ptr %erase_count.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %erase_count.i.i, align 4
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %while.body.lr.ph.i.i
  %17 = phi ptr [ %14, %while.body.lr.ph.i.i ], [ %21, %while.body.i.i.while.body.i.i_crit_edge ]
  %erase_count1.i.i = getelementptr inbounds %struct.swap_eb, ptr %17, i32 0, i32 4
  %18 = ptrtoint ptr %erase_count1.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %erase_count1.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %19)
  %cmp.i.i = icmp ugt i32 %16, %19
  %rb_right.i.i = getelementptr inbounds %struct.rb_node, ptr %17, i32 0, i32 1
  %rb_left.i.i = getelementptr inbounds %struct.rb_node, ptr %17, i32 0, i32 2
  %p.1.i.i = select i1 %cmp.i.i, ptr %rb_right.i.i, ptr %rb_left.i.i
  %20 = ptrtoint ptr %p.1.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %p.1.i.i, align 4
  %tobool.not.i18.i = icmp eq ptr %21, null
  br i1 %tobool.not.i18.i, label %while.cond.while.end_crit_edge.i.i, label %while.body.i.i.while.body.i.i_crit_edge

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i.i

while.cond.while.end_crit_edge.i.i:               ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %phi.cast.le.i.i = ptrtoint ptr %17 to i32
  br label %__mtdswap_rb_add.exit.i

__mtdswap_rb_add.exit.i:                          ; preds = %while.cond.while.end_crit_edge.i.i, %mtdswap_eb_detach.exit.i.__mtdswap_rb_add.exit.i_crit_edge
  %parent.0.lcssa.i.i = phi i32 [ %phi.cast.le.i.i, %while.cond.while.end_crit_edge.i.i ], [ 0, %mtdswap_eb_detach.exit.i.__mtdswap_rb_add.exit.i_crit_edge ]
  %p.0.lcssa.i.i = phi ptr [ %p.1.i.i, %while.cond.while.end_crit_edge.i.i ], [ %arrayidx.i, %mtdswap_eb_detach.exit.i.__mtdswap_rb_add.exit.i_crit_edge ]
  %22 = ptrtoint ptr %eb to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %parent.0.lcssa.i.i, ptr %eb, align 4
  %rb_right.i.i.i = getelementptr inbounds %struct.rb_node, ptr %eb, i32 0, i32 1
  %23 = ptrtoint ptr %rb_right.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %rb_right.i.i.i, align 4
  %rb_left.i.i.i = getelementptr inbounds %struct.rb_node, ptr %eb, i32 0, i32 2
  %24 = ptrtoint ptr %rb_left.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %rb_left.i.i.i, align 4
  %25 = ptrtoint ptr %p.0.lcssa.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %eb, ptr %p.0.lcssa.i.i, align 4
  tail call void @rb_insert_color(ptr noundef %eb, ptr noundef %arrayidx.i) #8
  %26 = ptrtoint ptr %root1.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %arrayidx.i, ptr %root1.i, align 4
  %count.i = getelementptr %struct.mtdswap_dev, ptr %d, i32 0, i32 10, i32 6, i32 1
  %27 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %count.i, align 4
  %inc.i = add i32 %28, 1
  store i32 %inc.i, ptr %count.i, align 4
  br label %cleanup

if.end6:                                          ; preds = %land.lhs.true.if.end6_crit_edge, %if.then.if.end6_crit_edge, %entry.if.end6_crit_edge
  %call = tail call fastcc i32 @mtdswap_handle_badblock(ptr noundef %d, ptr noundef %eb)
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %__mtdswap_rb_add.exit.i, %if.then5.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mtdswap_handle_badblock(ptr noundef %d, ptr noundef %eb) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %spare_eblks = getelementptr inbounds %struct.mtdswap_dev, ptr %d, i32 0, i32 6
  %0 = ptrtoint ptr %spare_eblks to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %spare_eblks, align 8
  %dec = add i32 %1, -1
  store i32 %dec, ptr %spare_eblks, align 8
  %flags = getelementptr inbounds %struct.swap_eb, ptr %eb, i32 0, i32 2
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 4
  %or = or i32 %3, 1
  store i32 %or, ptr %flags, align 4
  %root.i = getelementptr inbounds %struct.swap_eb, ptr %eb, i32 0, i32 1
  %4 = ptrtoint ptr %root.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %root.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %entry.mtdswap_eb_detach.exit_crit_edge, label %if.then.i

entry.mtdswap_eb_detach.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %mtdswap_eb_detach.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %trees.i = getelementptr inbounds %struct.mtdswap_dev, ptr %d, i32 0, i32 10
  %sub.ptr.lhs.cast.i = ptrtoint ptr %5 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %trees.i to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %sub.ptr.div.i = ashr exact i32 %sub.ptr.sub.i, 3
  %count.i = getelementptr %struct.mtdswap_dev, ptr %d, i32 0, i32 10, i32 %sub.ptr.div.i, i32 1
  %6 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %count.i, align 4
  %dec.i = add i32 %7, -1
  store i32 %dec.i, ptr %count.i, align 4
  %8 = ptrtoint ptr %root.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %root.i, align 4
  tail call void @rb_erase(ptr noundef %eb, ptr noundef %9) #8
  br label %mtdswap_eb_detach.exit

mtdswap_eb_detach.exit:                           ; preds = %if.then.i, %entry.mtdswap_eb_detach.exit_crit_edge
  %10 = ptrtoint ptr %root.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %root.i, align 4
  %mtd = getelementptr inbounds %struct.mtdswap_dev, ptr %d, i32 0, i32 1
  %11 = ptrtoint ptr %mtd to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mtd, align 4
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %while.cond.i.i.while.cond.i.i_crit_edge, %mtdswap_eb_detach.exit
  %mtd.addr.0.i.i = phi ptr [ %12, %mtdswap_eb_detach.exit ], [ %14, %while.cond.i.i.while.cond.i.i_crit_edge ]
  %parent.i.i = getelementptr inbounds %struct.mtd_info, ptr %mtd.addr.0.i.i, i32 0, i32 62
  %13 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %parent.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %14, null
  br i1 %tobool.not.i.i, label %mtd_can_have_bb.exit, label %while.cond.i.i.while.cond.i.i_crit_edge

while.cond.i.i.while.cond.i.i_crit_edge:          ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.i.i

mtd_can_have_bb.exit:                             ; preds = %while.cond.i.i
  %_block_isbad.i = getelementptr inbounds %struct.mtd_info, ptr %mtd.addr.0.i.i, i32 0, i32 42
  %15 = ptrtoint ptr %_block_isbad.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %_block_isbad.i, align 4
  %tobool.i.not = icmp eq ptr %16, null
  br i1 %tobool.i.not, label %mtd_can_have_bb.exit.cleanup_crit_edge, label %if.end

mtd_can_have_bb.exit.cleanup_crit_edge:           ; preds = %mtd_can_have_bb.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %mtd_can_have_bb.exit
  %eb_data.i = getelementptr inbounds %struct.mtdswap_dev, ptr %d, i32 0, i32 9
  %17 = ptrtoint ptr %eb_data.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %eb_data.i, align 4
  %sub.ptr.lhs.cast.i25 = ptrtoint ptr %eb to i32
  %sub.ptr.rhs.cast.i26 = ptrtoint ptr %18 to i32
  %sub.ptr.sub.i27 = sub i32 %sub.ptr.lhs.cast.i25, %sub.ptr.rhs.cast.i26
  %sub.ptr.div.i28 = ashr exact i32 %sub.ptr.sub.i27, 5
  %conv.i = sext i32 %sub.ptr.div.i28 to i64
  %erasesize.i = getelementptr inbounds %struct.mtd_info, ptr %12, i32 0, i32 3
  %19 = ptrtoint ptr %erasesize.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %erasesize.i, align 8
  %conv1.i = zext i32 %20 to i64
  %mul.i = mul nsw i64 %conv.i, %conv1.i
  %dev = getelementptr inbounds %struct.mtdswap_dev, ptr %d, i32 0, i32 2
  %21 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %22, ptr noundef nonnull @.str.23, i64 noundef %mul.i) #11
  %23 = ptrtoint ptr %mtd to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %mtd, align 4
  %call3 = tail call i32 @mtd_block_markbad(ptr noundef %24, i64 noundef %mul.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %do.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %25 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %26, ptr noundef nonnull @.str.27, i64 noundef %mul.i, i32 noundef %call3) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end8, %if.end.cleanup_crit_edge, %mtd_can_have_bb.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %do.end8 ], [ 1, %mtd_can_have_bb.exit.cleanup_crit_edge ], [ 1, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mtdswap_erase_block(ptr noundef %d, ptr noundef %eb) unnamed_addr #2 align 64 {
entry:
  %erase = alloca %struct.erase_info, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mtd1 = getelementptr inbounds %struct.mtdswap_dev, ptr %d, i32 0, i32 1
  %0 = ptrtoint ptr %mtd1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mtd1, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %erase) #8
  %2 = getelementptr inbounds %struct.erase_info, ptr %erase, i32 0, i32 1
  %erase_count = getelementptr inbounds %struct.swap_eb, ptr %eb, i32 0, i32 4
  %3 = ptrtoint ptr %erase_count to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %erase_count, align 4
  %inc = add i32 %4, 1
  store i32 %inc, ptr %erase_count, align 4
  %max_erase_count = getelementptr inbounds %struct.mtdswap_dev, ptr %d, i32 0, i32 8
  %5 = ptrtoint ptr %max_erase_count to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %max_erase_count, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %6)
  %cmp = icmp ugt i32 %inc, %6
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %max_erase_count to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %inc, ptr %max_erase_count, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %eb_data.i = getelementptr inbounds %struct.mtdswap_dev, ptr %d, i32 0, i32 9
  %sub.ptr.lhs.cast.i = ptrtoint ptr %eb to i32
  %erasesize = getelementptr inbounds %struct.mtd_info, ptr %1, i32 0, i32 3
  %dev = getelementptr inbounds %struct.mtdswap_dev, ptr %d, i32 0, i32 2
  %name = getelementptr inbounds %struct.mtd_info, ptr %1, i32 0, i32 13
  %8 = call ptr @memset(ptr %erase, i32 0, i32 24)
  %9 = ptrtoint ptr %eb_data.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %eb_data.i, align 4
  %sub.ptr.rhs.cast.i = ptrtoint ptr %10 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %sub.ptr.div.i = ashr exact i32 %sub.ptr.sub.i, 5
  %conv.i = sext i32 %sub.ptr.div.i to i64
  %11 = ptrtoint ptr %mtd1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mtd1, align 4
  %erasesize.i = getelementptr inbounds %struct.mtd_info, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %erasesize.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %erasesize.i, align 8
  %conv1.i = zext i32 %14 to i64
  %mul.i = mul nsw i64 %conv.i, %conv1.i
  %15 = ptrtoint ptr %erase to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %mul.i, ptr %erase, align 8
  %16 = ptrtoint ptr %erasesize to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %erasesize, align 8
  %conv = zext i32 %17 to i64
  %18 = ptrtoint ptr %2 to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %conv, ptr %2, align 8
  %call5 = call i32 @mtd_erase(ptr noundef %1, ptr noundef nonnull %erase) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.then6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then6:                                         ; preds = %if.end
  %19 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev, align 8
  %21 = ptrtoint ptr %erase to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %erase, align 8
  %23 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %name, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %20, ptr noundef nonnull @.str.29, i64 noundef %22, ptr noundef %24) #11
  call void @yield() #8
  %25 = call ptr @memset(ptr %erase, i32 0, i32 24)
  %26 = ptrtoint ptr %eb_data.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %eb_data.i, align 4
  %sub.ptr.rhs.cast.i.1 = ptrtoint ptr %27 to i32
  %sub.ptr.sub.i.1 = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i.1
  %sub.ptr.div.i.1 = ashr exact i32 %sub.ptr.sub.i.1, 5
  %conv.i.1 = sext i32 %sub.ptr.div.i.1 to i64
  %28 = ptrtoint ptr %mtd1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %mtd1, align 4
  %erasesize.i.1 = getelementptr inbounds %struct.mtd_info, ptr %29, i32 0, i32 3
  %30 = ptrtoint ptr %erasesize.i.1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %erasesize.i.1, align 8
  %conv1.i.1 = zext i32 %31 to i64
  %mul.i.1 = mul nsw i64 %conv.i.1, %conv1.i.1
  %32 = ptrtoint ptr %erase to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 %mul.i.1, ptr %erase, align 8
  %33 = ptrtoint ptr %erasesize to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %erasesize, align 8
  %conv.1 = zext i32 %34 to i64
  %35 = ptrtoint ptr %2 to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 %conv.1, ptr %2, align 8
  %call5.1 = call i32 @mtd_erase(ptr noundef %1, ptr noundef nonnull %erase) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.1)
  %tobool.not.1 = icmp eq i32 %call5.1, 0
  br i1 %tobool.not.1, label %if.then6.cleanup_crit_edge, label %if.then6.1

if.then6.cleanup_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then6.1:                                       ; preds = %if.then6
  %36 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev, align 8
  %38 = ptrtoint ptr %erase to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %erase, align 8
  %40 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %name, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %37, ptr noundef nonnull @.str.29, i64 noundef %39, ptr noundef %41) #11
  call void @yield() #8
  %42 = call ptr @memset(ptr %erase, i32 0, i32 24)
  %43 = ptrtoint ptr %eb_data.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %eb_data.i, align 4
  %sub.ptr.rhs.cast.i.2 = ptrtoint ptr %44 to i32
  %sub.ptr.sub.i.2 = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i.2
  %sub.ptr.div.i.2 = ashr exact i32 %sub.ptr.sub.i.2, 5
  %conv.i.2 = sext i32 %sub.ptr.div.i.2 to i64
  %45 = ptrtoint ptr %mtd1 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %mtd1, align 4
  %erasesize.i.2 = getelementptr inbounds %struct.mtd_info, ptr %46, i32 0, i32 3
  %47 = ptrtoint ptr %erasesize.i.2 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %erasesize.i.2, align 8
  %conv1.i.2 = zext i32 %48 to i64
  %mul.i.2 = mul nsw i64 %conv.i.2, %conv1.i.2
  %49 = ptrtoint ptr %erase to i32
  call void @__asan_store8_noabort(i32 %49)
  store i64 %mul.i.2, ptr %erase, align 8
  %50 = ptrtoint ptr %erasesize to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %erasesize, align 8
  %conv.2 = zext i32 %51 to i64
  %52 = ptrtoint ptr %2 to i32
  call void @__asan_store8_noabort(i32 %52)
  store i64 %conv.2, ptr %2, align 8
  %call5.2 = call i32 @mtd_erase(ptr noundef %1, ptr noundef nonnull %erase) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.2)
  %tobool.not.2 = icmp eq i32 %call5.2, 0
  br i1 %tobool.not.2, label %if.then6.1.cleanup_crit_edge, label %if.then6.2

if.then6.1.cleanup_crit_edge:                     ; preds = %if.then6.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then6.2:                                       ; preds = %if.then6.1
  %53 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dev, align 8
  %55 = ptrtoint ptr %erase to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %erase, align 8
  %57 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %name, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %54, ptr noundef nonnull @.str.29, i64 noundef %56, ptr noundef %58) #11
  call void @yield() #8
  %59 = call ptr @memset(ptr %erase, i32 0, i32 24)
  %60 = ptrtoint ptr %eb_data.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %eb_data.i, align 4
  %sub.ptr.rhs.cast.i.3 = ptrtoint ptr %61 to i32
  %sub.ptr.sub.i.3 = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i.3
  %sub.ptr.div.i.3 = ashr exact i32 %sub.ptr.sub.i.3, 5
  %conv.i.3 = sext i32 %sub.ptr.div.i.3 to i64
  %62 = ptrtoint ptr %mtd1 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %mtd1, align 4
  %erasesize.i.3 = getelementptr inbounds %struct.mtd_info, ptr %63, i32 0, i32 3
  %64 = ptrtoint ptr %erasesize.i.3 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %erasesize.i.3, align 8
  %conv1.i.3 = zext i32 %65 to i64
  %mul.i.3 = mul nsw i64 %conv.i.3, %conv1.i.3
  %66 = ptrtoint ptr %erase to i32
  call void @__asan_store8_noabort(i32 %66)
  store i64 %mul.i.3, ptr %erase, align 8
  %67 = ptrtoint ptr %erasesize to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %erasesize, align 8
  %conv.3 = zext i32 %68 to i64
  %69 = ptrtoint ptr %2 to i32
  call void @__asan_store8_noabort(i32 %69)
  store i64 %conv.3, ptr %2, align 8
  %call5.3 = call i32 @mtd_erase(ptr noundef %1, ptr noundef nonnull %erase) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.3)
  %tobool.not.3 = icmp eq i32 %call5.3, 0
  br i1 %tobool.not.3, label %if.then6.2.cleanup_crit_edge, label %do.end15

if.then6.2.cleanup_crit_edge:                     ; preds = %if.then6.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end15:                                         ; preds = %if.then6.2
  call void @__sanitizer_cov_trace_pc() #10
  %70 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %dev, align 8
  %72 = ptrtoint ptr %erase to i32
  call void @__asan_load8_noabort(i32 %72)
  %73 = load i64, ptr %erase, align 8
  %74 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %name, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %71, ptr noundef nonnull @.str.32, i64 noundef %73, ptr noundef %75) #11
  %call19 = call fastcc i32 @mtdswap_handle_badblock(ptr noundef %d, ptr noundef %eb)
  br label %cleanup

cleanup:                                          ; preds = %do.end15, %if.then6.2.cleanup_crit_edge, %if.then6.1.cleanup_crit_edge, %if.then6.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %do.end15 ], [ 0, %if.then6.2.cleanup_crit_edge ], [ 0, %if.then6.1.cleanup_crit_edge ], [ 0, %if.then6.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %erase) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mtdswap_eblk_passes(ptr noundef %d, ptr noundef %eb) unnamed_addr #2 align 64 {
entry:
  %ops = alloca %struct.mtd_oob_ops, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mtd1 = getelementptr inbounds %struct.mtdswap_dev, ptr %d, i32 0, i32 1
  %0 = ptrtoint ptr %mtd1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mtd1, align 4
  %page_buf = getelementptr inbounds %struct.mtdswap_dev, ptr %d, i32 0, i32 19
  %2 = ptrtoint ptr %page_buf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %page_buf, align 8
  %oob_buf = getelementptr inbounds %struct.mtdswap_dev, ptr %d, i32 0, i32 20
  %4 = ptrtoint ptr %oob_buf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %oob_buf, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %ops) #8
  %6 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops, i32 0, i32 1
  %7 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops, i32 0, i32 3
  %8 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops, i32 0, i32 5
  %9 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops, i32 0, i32 6
  %10 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops, i32 0, i32 7
  %11 = getelementptr inbounds i8, ptr %ops, i32 8
  %12 = call ptr @memset(ptr %11, i32 255, i32 12)
  %13 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %ops, align 4
  %writesize = getelementptr inbounds %struct.mtd_info, ptr %1, i32 0, i32 4
  %14 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %writesize, align 4
  %16 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %6, align 4
  %oobavail = getelementptr inbounds %struct.mtd_info, ptr %1, i32 0, i32 7
  %17 = ptrtoint ptr %oobavail to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %oobavail, align 8
  %19 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %7, align 4
  %20 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %8, align 4
  %21 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %3, ptr %9, align 4
  %22 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %5, ptr %10, align 4
  %eb_data.i = getelementptr inbounds %struct.mtdswap_dev, ptr %d, i32 0, i32 9
  %23 = ptrtoint ptr %eb_data.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %eb_data.i, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %eb to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %24 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %sub.ptr.div.i = ashr exact i32 %sub.ptr.sub.i, 5
  %conv.i = sext i32 %sub.ptr.div.i to i64
  %erasesize.i = getelementptr inbounds %struct.mtd_info, ptr %1, i32 0, i32 3
  %25 = ptrtoint ptr %erasesize.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %erasesize.i, align 8
  %conv1.i = zext i32 %26 to i64
  %mul.i = mul nsw i64 %conv.i, %conv1.i
  %pages_per_eblk = getelementptr inbounds %struct.mtdswap_dev, ptr %d, i32 0, i32 7
  %27 = ptrtoint ptr %pages_per_eblk to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %pages_per_eblk, align 4
  %mul = shl i32 %28, 12
  %29 = load i32, ptr %writesize, align 4
  %div = udiv i32 %mul, %29
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %mul)
  %cmp6135.not = icmp ugt i32 %29, %mul
  %umax = call i32 @llvm.umax.i32(i32 %div, i32 1)
  %umax155 = call i32 @llvm.umax.i32(i32 %div, i32 1)
  br i1 %cmp6135.not, label %entry.for.end60_crit_edge, label %entry.for.body7_crit_edge

entry.for.body7_crit_edge:                        ; preds = %entry
  br label %for.body7

entry.for.end60_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end60

for.cond:                                         ; preds = %for.end60
  br i1 %cmp6135.not, label %for.cond.for.end60.1_crit_edge, label %for.cond.for.body7.1_crit_edge

for.cond.for.body7.1_crit_edge:                   ; preds = %for.cond
  br label %for.body7.1

for.cond.for.end60.1_crit_edge:                   ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end60.1

for.body7.1:                                      ; preds = %if.end.1.for.body7.1_crit_edge, %for.cond.for.body7.1_crit_edge
  %pos.0137.1 = phi i64 [ %add15.1, %if.end.1.for.body7.1_crit_edge ], [ %mul.i, %for.cond.for.body7.1_crit_edge ]
  %i.0136.1 = phi i32 [ %inc.1, %if.end.1.for.body7.1_crit_edge ], [ 0, %for.cond.for.body7.1_crit_edge ]
  %30 = and i32 %i.0136.1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool.not.i.1.not = icmp eq i32 %30, 0
  %31 = ptrtoint ptr %page_buf to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %page_buf, align 8
  %33 = select i1 %tobool.not.i.1.not, i8 85, i8 -86
  %34 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %writesize, align 4
  %36 = zext i8 %33 to i32
  %37 = call ptr @memset(ptr %32, i32 %36, i32 %35)
  %38 = ptrtoint ptr %oob_buf to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %oob_buf, align 4
  %40 = ptrtoint ptr %oobavail to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %oobavail, align 8
  %42 = zext i8 %33 to i32
  %43 = call ptr @memset(ptr %39, i32 %42, i32 %41)
  %call13.1 = call i32 @mtd_write_oob(ptr noundef %1, i64 noundef %pos.0137.1, ptr noundef nonnull %ops) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.1)
  %tobool.not.1 = icmp eq i32 %call13.1, 0
  br i1 %tobool.not.1, label %if.end.1, label %for.body7.1.error_crit_edge

for.body7.1.error_crit_edge:                      ; preds = %for.body7.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %error

if.end.1:                                         ; preds = %for.body7.1
  %44 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %writesize, align 4
  %conv.1 = zext i32 %45 to i64
  %add15.1 = add i64 %pos.0137.1, %conv.1
  %inc.1 = add nuw i32 %i.0136.1, 1
  %exitcond.not.1 = icmp eq i32 %inc.1, %umax
  br i1 %exitcond.not.1, label %for.cond16.preheader.1, label %if.end.1.for.body7.1_crit_edge

if.end.1.for.body7.1_crit_edge:                   ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body7.1

for.cond16.preheader.1:                           ; preds = %if.end.1
  br i1 %cmp6135.not, label %for.cond16.preheader.1.for.end60.1_crit_edge, label %for.cond16.preheader.1.for.body19.1_crit_edge

for.cond16.preheader.1.for.body19.1_crit_edge:    ; preds = %for.cond16.preheader.1
  br label %for.body19.1

for.cond16.preheader.1.for.end60.1_crit_edge:     ; preds = %for.cond16.preheader.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end60.1

for.body19.1:                                     ; preds = %for.end54.1.for.body19.1_crit_edge, %for.cond16.preheader.1.for.body19.1_crit_edge
  %pos.1144.1 = phi i64 [ %add57.1, %for.end54.1.for.body19.1_crit_edge ], [ %mul.i, %for.cond16.preheader.1.for.body19.1_crit_edge ]
  %i.1143.1 = phi i32 [ %inc59.1, %for.end54.1.for.body19.1_crit_edge ], [ 0, %for.cond16.preheader.1.for.body19.1_crit_edge ]
  %call20.1 = call i32 @mtd_read_oob(ptr noundef %1, i64 noundef %pos.1144.1, ptr noundef nonnull %ops) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.1)
  %tobool21.not.1 = icmp eq i32 %call20.1, 0
  br i1 %tobool21.not.1, label %if.end23.1, label %for.body19.1.error_crit_edge

for.body19.1.error_crit_edge:                     ; preds = %for.body19.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %error

if.end23.1:                                       ; preds = %for.body19.1
  %46 = and i32 %i.1143.1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool.not.i128.1.not = icmp eq i32 %46, 0
  %cond.i129.1 = select i1 %tobool.not.i128.1.not, i32 1431655765, i32 -1431655766
  %47 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %writesize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %48)
  %cmp29138.not.1 = icmp ult i32 %48, 4
  br i1 %cmp29138.not.1, label %if.end23.1.for.cond39.preheader.1_crit_edge, label %for.body31.preheader.1

if.end23.1.for.cond39.preheader.1_crit_edge:      ; preds = %if.end23.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond39.preheader.1

for.body31.preheader.1:                           ; preds = %if.end23.1
  %div28126.1 = lshr i32 %48, 2
  br label %for.body31.1

for.body31.1:                                     ; preds = %for.cond26.1.for.body31.1_crit_edge, %for.body31.preheader.1
  %j.0139.1 = phi i32 [ %inc37.1, %for.cond26.1.for.body31.1_crit_edge ], [ 0, %for.body31.preheader.1 ]
  %arrayidx.1 = getelementptr i32, ptr %3, i32 %j.0139.1
  %49 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx.1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %50, i32 %cond.i129.1)
  %cmp32.not.1 = icmp eq i32 %50, %cond.i129.1
  br i1 %cmp32.not.1, label %for.cond26.1, label %for.body31.1.error_crit_edge

for.body31.1.error_crit_edge:                     ; preds = %for.body31.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %error

for.cond26.1:                                     ; preds = %for.body31.1
  %inc37.1 = add nuw nsw i32 %j.0139.1, 1
  %exitcond153.not.1 = icmp eq i32 %inc37.1, %div28126.1
  br i1 %exitcond153.not.1, label %for.cond26.1.for.cond39.preheader.1_crit_edge, label %for.cond26.1.for.body31.1_crit_edge

for.cond26.1.for.body31.1_crit_edge:              ; preds = %for.cond26.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body31.1

for.cond26.1.for.cond39.preheader.1_crit_edge:    ; preds = %for.cond26.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond39.preheader.1

for.cond39.preheader.1:                           ; preds = %for.cond26.1.for.cond39.preheader.1_crit_edge, %if.end23.1.for.cond39.preheader.1_crit_edge
  %51 = ptrtoint ptr %oobavail to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %oobavail, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %cmp41140.not.1 = icmp eq i32 %52, 0
  br i1 %cmp41140.not.1, label %for.cond39.preheader.1.for.end54.1_crit_edge, label %for.body43.lr.ph.1

for.cond39.preheader.1.for.end54.1_crit_edge:     ; preds = %for.cond39.preheader.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end54.1

for.body43.lr.ph.1:                               ; preds = %for.cond39.preheader.1
  %53 = trunc i32 %cond.i129.1 to i8
  br label %for.body43.1

for.body43.1:                                     ; preds = %for.cond39.1.for.body43.1_crit_edge, %for.body43.lr.ph.1
  %j.1141.1 = phi i32 [ 0, %for.body43.lr.ph.1 ], [ %inc53.1, %for.cond39.1.for.body43.1_crit_edge ]
  %arrayidx44.1 = getelementptr i8, ptr %5, i32 %j.1141.1
  %54 = ptrtoint ptr %arrayidx44.1 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx44.1, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %55, i8 %53)
  %cmp48.not.1 = icmp eq i8 %55, %53
  br i1 %cmp48.not.1, label %for.cond39.1, label %for.body43.1.error_crit_edge

for.body43.1.error_crit_edge:                     ; preds = %for.body43.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %error

for.cond39.1:                                     ; preds = %for.body43.1
  %inc53.1 = add nuw i32 %j.1141.1, 1
  %exitcond154.not.1 = icmp eq i32 %inc53.1, %52
  br i1 %exitcond154.not.1, label %for.cond39.1.for.end54.1_crit_edge, label %for.cond39.1.for.body43.1_crit_edge

for.cond39.1.for.body43.1_crit_edge:              ; preds = %for.cond39.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body43.1

for.cond39.1.for.end54.1_crit_edge:               ; preds = %for.cond39.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end54.1

for.end54.1:                                      ; preds = %for.cond39.1.for.end54.1_crit_edge, %for.cond39.preheader.1.for.end54.1_crit_edge
  %conv56.1 = zext i32 %48 to i64
  %add57.1 = add i64 %pos.1144.1, %conv56.1
  %inc59.1 = add nuw i32 %i.1143.1, 1
  %exitcond156.not.1 = icmp eq i32 %inc59.1, %umax155
  br i1 %exitcond156.not.1, label %for.end54.1.for.end60.1_crit_edge, label %for.end54.1.for.body19.1_crit_edge

for.end54.1.for.body19.1_crit_edge:               ; preds = %for.end54.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body19.1

for.end54.1.for.end60.1_crit_edge:                ; preds = %for.end54.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end60.1

for.end60.1:                                      ; preds = %for.end54.1.for.end60.1_crit_edge, %for.cond16.preheader.1.for.end60.1_crit_edge, %for.cond.for.end60.1_crit_edge
  %call61.1 = call fastcc i32 @mtdswap_erase_block(ptr noundef %d, ptr noundef %eb)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61.1)
  %tobool62.not.1 = icmp eq i32 %call61.1, 0
  br i1 %tobool62.not.1, label %for.cond.1, label %for.end60.1.error_crit_edge

for.end60.1.error_crit_edge:                      ; preds = %for.end60.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %error

for.cond.1:                                       ; preds = %for.end60.1
  call void @__sanitizer_cov_trace_pc() #10
  %flags = getelementptr inbounds %struct.swap_eb, ptr %eb, i32 0, i32 2
  %56 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %flags, align 4
  %and = and i32 %57, -17
  store i32 %and, ptr %flags, align 4
  br label %cleanup

for.cond16.preheader:                             ; preds = %if.end
  br i1 %cmp6135.not, label %for.cond16.preheader.for.end60_crit_edge, label %for.cond16.preheader.for.body19_crit_edge

for.cond16.preheader.for.body19_crit_edge:        ; preds = %for.cond16.preheader
  br label %for.body19

for.cond16.preheader.for.end60_crit_edge:         ; preds = %for.cond16.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end60

for.body7:                                        ; preds = %if.end.for.body7_crit_edge, %entry.for.body7_crit_edge
  %pos.0137 = phi i64 [ %add15, %if.end.for.body7_crit_edge ], [ %mul.i, %entry.for.body7_crit_edge ]
  %i.0136 = phi i32 [ %inc, %if.end.for.body7_crit_edge ], [ 0, %entry.for.body7_crit_edge ]
  %rem.i = and i32 %i.0136, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %tobool.not.i = icmp eq i32 %rem.i, 0
  %58 = ptrtoint ptr %page_buf to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %page_buf, align 8
  %60 = select i1 %tobool.not.i, i8 -86, i8 85
  %61 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %writesize, align 4
  %63 = zext i8 %60 to i32
  %64 = call ptr @memset(ptr %59, i32 %63, i32 %62)
  %65 = ptrtoint ptr %oob_buf to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %oob_buf, align 4
  %67 = ptrtoint ptr %oobavail to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %oobavail, align 8
  %69 = zext i8 %60 to i32
  %70 = call ptr @memset(ptr %66, i32 %69, i32 %68)
  %call13 = call i32 @mtd_write_oob(ptr noundef %1, i64 noundef %pos.0137, ptr noundef nonnull %ops) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool.not = icmp eq i32 %call13, 0
  br i1 %tobool.not, label %if.end, label %for.body7.error_crit_edge

for.body7.error_crit_edge:                        ; preds = %for.body7
  call void @__sanitizer_cov_trace_pc() #10
  br label %error

if.end:                                           ; preds = %for.body7
  %71 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %writesize, align 4
  %conv = zext i32 %72 to i64
  %add15 = add i64 %pos.0137, %conv
  %inc = add nuw i32 %i.0136, 1
  %exitcond.not = icmp eq i32 %inc, %umax
  br i1 %exitcond.not, label %for.cond16.preheader, label %if.end.for.body7_crit_edge

if.end.for.body7_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body7

for.body19:                                       ; preds = %for.end54.for.body19_crit_edge, %for.cond16.preheader.for.body19_crit_edge
  %pos.1144 = phi i64 [ %add57, %for.end54.for.body19_crit_edge ], [ %mul.i, %for.cond16.preheader.for.body19_crit_edge ]
  %i.1143 = phi i32 [ %inc59, %for.end54.for.body19_crit_edge ], [ 0, %for.cond16.preheader.for.body19_crit_edge ]
  %call20 = call i32 @mtd_read_oob(ptr noundef %1, i64 noundef %pos.1144, ptr noundef nonnull %ops) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end23, label %for.body19.error_crit_edge

for.body19.error_crit_edge:                       ; preds = %for.body19
  call void @__sanitizer_cov_trace_pc() #10
  br label %error

if.end23:                                         ; preds = %for.body19
  %rem.i127 = and i32 %i.1143, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i127)
  %tobool.not.i128 = icmp eq i32 %rem.i127, 0
  %cond.i129 = select i1 %tobool.not.i128, i32 -1431655766, i32 1431655765
  %73 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %writesize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %74)
  %cmp29138.not = icmp ult i32 %74, 4
  br i1 %cmp29138.not, label %if.end23.for.cond39.preheader_crit_edge, label %for.body31.preheader

if.end23.for.cond39.preheader_crit_edge:          ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond39.preheader

for.body31.preheader:                             ; preds = %if.end23
  %div28126 = lshr i32 %74, 2
  br label %for.body31

for.cond26:                                       ; preds = %for.body31
  %inc37 = add nuw nsw i32 %j.0139, 1
  %exitcond153.not = icmp eq i32 %inc37, %div28126
  br i1 %exitcond153.not, label %for.cond26.for.cond39.preheader_crit_edge, label %for.cond26.for.body31_crit_edge

for.cond26.for.body31_crit_edge:                  ; preds = %for.cond26
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body31

for.cond26.for.cond39.preheader_crit_edge:        ; preds = %for.cond26
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond39.preheader

for.cond39.preheader:                             ; preds = %for.cond26.for.cond39.preheader_crit_edge, %if.end23.for.cond39.preheader_crit_edge
  %75 = ptrtoint ptr %oobavail to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %oobavail, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %cmp41140.not = icmp eq i32 %76, 0
  br i1 %cmp41140.not, label %for.cond39.preheader.for.end54_crit_edge, label %for.body43.lr.ph

for.cond39.preheader.for.end54_crit_edge:         ; preds = %for.cond39.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end54

for.body43.lr.ph:                                 ; preds = %for.cond39.preheader
  %77 = trunc i32 %cond.i129 to i8
  br label %for.body43

for.body31:                                       ; preds = %for.cond26.for.body31_crit_edge, %for.body31.preheader
  %j.0139 = phi i32 [ %inc37, %for.cond26.for.body31_crit_edge ], [ 0, %for.body31.preheader ]
  %arrayidx = getelementptr i32, ptr %3, i32 %j.0139
  %78 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %79, i32 %cond.i129)
  %cmp32.not = icmp eq i32 %79, %cond.i129
  br i1 %cmp32.not, label %for.cond26, label %for.body31.error_crit_edge

for.body31.error_crit_edge:                       ; preds = %for.body31
  call void @__sanitizer_cov_trace_pc() #10
  br label %error

for.cond39:                                       ; preds = %for.body43
  %inc53 = add nuw i32 %j.1141, 1
  %exitcond154.not = icmp eq i32 %inc53, %76
  br i1 %exitcond154.not, label %for.cond39.for.end54_crit_edge, label %for.cond39.for.body43_crit_edge

for.cond39.for.body43_crit_edge:                  ; preds = %for.cond39
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body43

for.cond39.for.end54_crit_edge:                   ; preds = %for.cond39
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end54

for.body43:                                       ; preds = %for.cond39.for.body43_crit_edge, %for.body43.lr.ph
  %j.1141 = phi i32 [ 0, %for.body43.lr.ph ], [ %inc53, %for.cond39.for.body43_crit_edge ]
  %arrayidx44 = getelementptr i8, ptr %5, i32 %j.1141
  %80 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %arrayidx44, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %81, i8 %77)
  %cmp48.not = icmp eq i8 %81, %77
  br i1 %cmp48.not, label %for.cond39, label %for.body43.error_crit_edge

for.body43.error_crit_edge:                       ; preds = %for.body43
  call void @__sanitizer_cov_trace_pc() #10
  br label %error

for.end54:                                        ; preds = %for.cond39.for.end54_crit_edge, %for.cond39.preheader.for.end54_crit_edge
  %conv56 = zext i32 %74 to i64
  %add57 = add i64 %pos.1144, %conv56
  %inc59 = add nuw i32 %i.1143, 1
  %exitcond156.not = icmp eq i32 %inc59, %umax155
  br i1 %exitcond156.not, label %for.end54.for.end60_crit_edge, label %for.end54.for.body19_crit_edge

for.end54.for.body19_crit_edge:                   ; preds = %for.end54
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body19

for.end54.for.end60_crit_edge:                    ; preds = %for.end54
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end60

for.end60:                                        ; preds = %for.end54.for.end60_crit_edge, %for.cond16.preheader.for.end60_crit_edge, %entry.for.end60_crit_edge
  %call61 = call fastcc i32 @mtdswap_erase_block(ptr noundef %d, ptr noundef %eb)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %for.cond, label %for.end60.error_crit_edge

for.end60.error_crit_edge:                        ; preds = %for.end60
  call void @__sanitizer_cov_trace_pc() #10
  br label %error

error:                                            ; preds = %for.end60.error_crit_edge, %for.body43.error_crit_edge, %for.body31.error_crit_edge, %for.body19.error_crit_edge, %for.body7.error_crit_edge, %for.end60.1.error_crit_edge, %for.body43.1.error_crit_edge, %for.body31.1.error_crit_edge, %for.body19.1.error_crit_edge, %for.body7.1.error_crit_edge
  %call68 = call fastcc i32 @mtdswap_handle_badblock(ptr noundef %d, ptr noundef %eb)
  br label %cleanup

cleanup:                                          ; preds = %error, %for.cond.1
  %retval.0 = phi i32 [ 0, %error ], [ 1, %for.cond.1 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %ops) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mtdswap_write_marker(ptr noundef %d, ptr noundef %eb, i16 noundef zeroext %marker) unnamed_addr #2 align 64 {
entry:
  %n = alloca %struct.mtdswap_oobdata, align 2
  %ops = alloca %struct.mtd_oob_ops, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %n) #8
  %0 = getelementptr inbounds %struct.mtdswap_oobdata, ptr %n, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_storeN_noabort(i32 %1, i32 4)
  store i32 -1, ptr %0, align 2, !annotation !203
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %ops) #8
  %2 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops, i32 0, i32 3
  %3 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops, i32 0, i32 4
  %4 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops, i32 0, i32 5
  %5 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops, i32 0, i32 6
  %6 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops, i32 0, i32 7
  %7 = getelementptr inbounds i8, ptr %ops, i32 4
  %8 = call ptr @memset(ptr %7, i32 255, i32 16)
  %9 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %4, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %n, ptr %6, align 4
  %11 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %ops, align 4
  %12 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %marker)
  %cmp = icmp eq i16 %marker, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %n to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 -27360, ptr %n, align 2
  %erase_count = getelementptr inbounds %struct.swap_eb, ptr %eb, i32 0, i32 4
  %14 = ptrtoint ptr %erase_count to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %erase_count, align 4
  %16 = call i32 @llvm.bswap.i32(i32 %15)
  %17 = ptrtoint ptr %0 to i32
  call void @__asan_storeN_noabort(i32 %17, i32 4)
  store i32 %16, ptr %0, align 2
  %18 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 6, ptr %2, align 4
  %eb_data.i = getelementptr inbounds %struct.mtdswap_dev, ptr %d, i32 0, i32 9
  %19 = ptrtoint ptr %eb_data.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %eb_data.i, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %eb to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %20 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %sub.ptr.div.i = ashr exact i32 %sub.ptr.sub.i, 5
  %conv.i = sext i32 %sub.ptr.div.i to i64
  %mtd.i = getelementptr inbounds %struct.mtdswap_dev, ptr %d, i32 0, i32 1
  %21 = ptrtoint ptr %mtd.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %mtd.i, align 4
  %erasesize.i = getelementptr inbounds %struct.mtd_info, ptr %22, i32 0, i32 3
  %23 = ptrtoint ptr %erasesize.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %erasesize.i, align 8
  %conv1.i = zext i32 %24 to i64
  %mul.i = mul nsw i64 %conv.i, %conv1.i
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %25 = ptrtoint ptr %n to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 -27104, ptr %n, align 2
  %26 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 2, ptr %2, align 4
  %eb_data.i48 = getelementptr inbounds %struct.mtdswap_dev, ptr %d, i32 0, i32 9
  %27 = ptrtoint ptr %eb_data.i48 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %eb_data.i48, align 4
  %sub.ptr.lhs.cast.i49 = ptrtoint ptr %eb to i32
  %sub.ptr.rhs.cast.i50 = ptrtoint ptr %28 to i32
  %sub.ptr.sub.i51 = sub i32 %sub.ptr.lhs.cast.i49, %sub.ptr.rhs.cast.i50
  %sub.ptr.div.i52 = ashr exact i32 %sub.ptr.sub.i51, 5
  %conv.i53 = sext i32 %sub.ptr.div.i52 to i64
  %mtd.i54 = getelementptr inbounds %struct.mtdswap_dev, ptr %d, i32 0, i32 1
  %29 = ptrtoint ptr %mtd.i54 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %mtd.i54, align 4
  %erasesize.i55 = getelementptr inbounds %struct.mtd_info, ptr %30, i32 0, i32 3
  %31 = ptrtoint ptr %erasesize.i55 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %erasesize.i55, align 8
  %conv1.i56 = zext i32 %32 to i64
  %mul.i57 = mul nsw i64 %conv.i53, %conv1.i56
  %writesize = getelementptr inbounds %struct.mtd_info, ptr %30, i32 0, i32 4
  %33 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %writesize, align 4
  %conv5 = zext i32 %34 to i64
  %add = add nsw i64 %mul.i57, %conv5
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %offset.0 = phi i64 [ %mul.i, %if.then ], [ %add, %if.else ]
  %mtd6 = getelementptr inbounds %struct.mtdswap_dev, ptr %d, i32 0, i32 1
  %35 = ptrtoint ptr %mtd6 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %mtd6, align 4
  %call7 = call i32 @mtd_write_oob(ptr noundef %36, i64 noundef %offset.0, ptr noundef nonnull %ops) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool.not = icmp eq i32 %call7, 0
  br i1 %tobool.not, label %if.end16, label %do.end

do.end:                                           ; preds = %if.end
  %dev = getelementptr inbounds %struct.mtdswap_dev, ptr %d, i32 0, i32 2
  %37 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %38, ptr noundef nonnull @.str.34, i64 noundef %offset.0, i32 noundef %call7) #11
  %39 = zext i32 %call7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %39, ptr @__sancov_gen_cov_switch_values.88)
  switch i32 %call7, label %do.end.cleanup_crit_edge [
    i32 -5, label %do.end.if.then13_crit_edge
    i32 -74, label %do.end.if.then13_crit_edge59
  ]

do.end.if.then13_crit_edge59:                     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then13

do.end.if.then13_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then13

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then13:                                        ; preds = %do.end.if.then13_crit_edge, %do.end.if.then13_crit_edge59
  call fastcc void @mtdswap_handle_write_error(ptr noundef %d, ptr noundef %eb)
  br label %cleanup

if.end16:                                         ; preds = %if.end
  %40 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %3, align 4
  %42 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %41, i32 %43)
  %cmp18.not = icmp eq i32 %41, %43
  br i1 %cmp18.not, label %if.end16.cleanup_crit_edge, label %do.end23

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end23:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  %dev24 = getelementptr inbounds %struct.mtdswap_dev, ptr %d, i32 0, i32 2
  %44 = ptrtoint ptr %dev24 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev24, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %45, ptr noundef nonnull @.str.37, i64 noundef %offset.0, i32 noundef %41, i32 noundef %43) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end23, %if.end16.cleanup_crit_edge, %if.then13, %do.end.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %ops) #8
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %n) #8
  ret i32 %call7
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_first(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_block_markbad(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_erase(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @yield() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_write_oob(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_read_oob(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_blktrans_cease_background(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strsep(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mtdswap_badblocks(ptr noundef %mtd, i64 noundef %size) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %while.cond.i.i.while.cond.i.i_crit_edge, %entry
  %mtd.addr.0.i.i = phi ptr [ %mtd, %entry ], [ %1, %while.cond.i.i.while.cond.i.i_crit_edge ]
  %parent.i.i = getelementptr inbounds %struct.mtd_info, ptr %mtd.addr.0.i.i, i32 0, i32 62
  %0 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i, label %mtd_can_have_bb.exit, label %while.cond.i.i.while.cond.i.i_crit_edge

while.cond.i.i.while.cond.i.i_crit_edge:          ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.i.i

mtd_can_have_bb.exit:                             ; preds = %while.cond.i.i
  %_block_isbad.i = getelementptr inbounds %struct.mtd_info, ptr %mtd.addr.0.i.i, i32 0, i32 42
  %2 = ptrtoint ptr %_block_isbad.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %_block_isbad.i, align 4
  %tobool.i.not = icmp ne ptr %3, null
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %size)
  %cmp10 = icmp ne i64 %size, 0
  %or.cond = and i1 %tobool.i.not, %cmp10
  br i1 %or.cond, label %for.body.lr.ph, label %mtd_can_have_bb.exit.if.end4_crit_edge

mtd_can_have_bb.exit.if.end4_crit_edge:           ; preds = %mtd_can_have_bb.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

for.body.lr.ph:                                   ; preds = %mtd_can_have_bb.exit
  %erasesize = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %badcnt.012 = phi i32 [ 0, %for.body.lr.ph ], [ %spec.select, %for.body.for.body_crit_edge ]
  %offset.011 = phi i64 [ 0, %for.body.lr.ph ], [ %add, %for.body.for.body_crit_edge ]
  %call1 = tail call i32 @mtd_block_isbad(ptr noundef %mtd, i64 noundef %offset.011) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp ne i32 %call1, 0
  %inc = zext i1 %tobool2.not to i32
  %spec.select = add i32 %badcnt.012, %inc
  %4 = ptrtoint ptr %erasesize to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %erasesize, align 8
  %conv = zext i32 %5 to i64
  %add = add i64 %offset.011, %conv
  %cmp = icmp ult i64 %add, %size
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.if.end4_crit_edge

for.body.if.end4_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

if.end4:                                          ; preds = %for.body.if.end4_crit_edge, %mtd_can_have_bb.exit.if.end4_crit_edge
  %badcnt.2 = phi i32 [ 0, %mtd_can_have_bb.exit.if.end4_crit_edge ], [ %spec.select, %for.body.if.end4_crit_edge ]
  ret i32 %badcnt.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mtdswap_init(ptr noundef %d, i32 noundef %eblocks, i32 noundef %spare_cnt) unnamed_addr #2 align 64 {
entry:
  %hist_root.i.i = alloca %struct.rb_root, align 4
  %ops.i.i = alloca %struct.mtd_oob_ops, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d, align 8
  %mtd1 = getelementptr inbounds %struct.mtd_blktrans_dev, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %mtd1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mtd1, align 4
  %mtd2 = getelementptr inbounds %struct.mtdswap_dev, ptr %d, i32 0, i32 1
  %4 = ptrtoint ptr %mtd2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %mtd2, align 4
  %eblks = getelementptr inbounds %struct.mtdswap_dev, ptr %d, i32 0, i32 5
  %5 = ptrtoint ptr %eblks to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %eblocks, ptr %eblks, align 4
  %spare_eblks = getelementptr inbounds %struct.mtdswap_dev, ptr %d, i32 0, i32 6
  %6 = ptrtoint ptr %spare_eblks to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %spare_cnt, ptr %spare_eblks, align 8
  %erasesize = getelementptr inbounds %struct.mtd_info, ptr %3, i32 0, i32 3
  %7 = ptrtoint ptr %erasesize to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %erasesize, align 8
  %shr = lshr i32 %8, 12
  %pages_per_eblk = getelementptr inbounds %struct.mtdswap_dev, ptr %d, i32 0, i32 7
  %9 = ptrtoint ptr %pages_per_eblk to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %shr, ptr %pages_per_eblk, align 4
  %size = getelementptr inbounds %struct.mtd_blktrans_dev, ptr %1, i32 0, i32 6
  %10 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %size, align 4
  %arrayidx = getelementptr %struct.mtdswap_dev, ptr %d, i32 0, i32 10, i32 0
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %arrayidx, align 8
  %arrayidx.1 = getelementptr %struct.mtdswap_dev, ptr %d, i32 0, i32 10, i32 1
  %13 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %arrayidx.1, align 8
  %arrayidx.2 = getelementptr %struct.mtdswap_dev, ptr %d, i32 0, i32 10, i32 2
  %14 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %arrayidx.2, align 8
  %arrayidx.3 = getelementptr %struct.mtdswap_dev, ptr %d, i32 0, i32 10, i32 3
  %15 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %arrayidx.3, align 8
  %arrayidx.4 = getelementptr %struct.mtdswap_dev, ptr %d, i32 0, i32 10, i32 4
  %16 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %arrayidx.4, align 8
  %arrayidx.5 = getelementptr %struct.mtdswap_dev, ptr %d, i32 0, i32 10, i32 5
  %17 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %arrayidx.5, align 8
  %arrayidx.6 = getelementptr %struct.mtdswap_dev, ptr %d, i32 0, i32 10, i32 6
  %18 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %arrayidx.6, align 8
  %mul = mul i32 %shr, %eblocks
  %19 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %11, i32 4) #8
  %20 = extractvalue { i32, i1 } %19, 1
  %21 = extractvalue { i32, i1 } %19, 0
  %retval.0.i = select i1 %20, i32 -1, i32 %21
  %call5 = tail call noalias ptr @vmalloc(i32 noundef %retval.0.i) #14
  %page_data = getelementptr inbounds %struct.mtdswap_dev, ptr %d, i32 0, i32 3
  %22 = ptrtoint ptr %page_data to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call5, ptr %page_data, align 4
  %tobool.not = icmp eq ptr %call5, null
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %if.end

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.end:                                           ; preds = %entry
  %23 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %mul, i32 4) #8
  %24 = extractvalue { i32, i1 } %23, 1
  %25 = extractvalue { i32, i1 } %23, 0
  %retval.0.i95 = select i1 %24, i32 -1, i32 %25
  %call8 = tail call noalias ptr @vmalloc(i32 noundef %retval.0.i95) #14
  %revmap = getelementptr inbounds %struct.mtdswap_dev, ptr %d, i32 0, i32 4
  %26 = ptrtoint ptr %revmap to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call8, ptr %revmap, align 8
  %tobool10.not = icmp eq ptr %call8, null
  br i1 %tobool10.not, label %if.end.revmap_fail_crit_edge, label %if.end12

if.end.revmap_fail_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %revmap_fail

if.end12:                                         ; preds = %if.end
  %27 = ptrtoint ptr %eblks to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %eblks, align 4
  %mul14 = shl i32 %28, 5
  %call15 = tail call noalias ptr @vzalloc(i32 noundef %mul14) #14
  %eb_data = getelementptr inbounds %struct.mtdswap_dev, ptr %d, i32 0, i32 9
  %29 = ptrtoint ptr %eb_data to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call15, ptr %eb_data, align 4
  %tobool17.not = icmp eq ptr %call15, null
  br i1 %tobool17.not, label %if.end12.eb_data_fail_crit_edge, label %for.cond20.preheader

if.end12.eb_data_fail_crit_edge:                  ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %eb_data_fail

for.cond20.preheader:                             ; preds = %if.end12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp21118.not = icmp eq i32 %11, 0
  br i1 %cmp21118.not, label %for.cond20.preheader.for.cond28.preheader_crit_edge, label %for.cond20.preheader.for.body22_crit_edge

for.cond20.preheader.for.body22_crit_edge:        ; preds = %for.cond20.preheader
  br label %for.body22

for.cond20.preheader.for.cond28.preheader_crit_edge: ; preds = %for.cond20.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond28.preheader

for.cond28.preheader:                             ; preds = %for.body22.for.cond28.preheader_crit_edge, %for.cond20.preheader.for.cond28.preheader_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul)
  %cmp29120.not = icmp eq i32 %mul, 0
  br i1 %cmp29120.not, label %for.cond28.preheader.for.end35_crit_edge, label %for.cond28.preheader.for.body30_crit_edge

for.cond28.preheader.for.body30_crit_edge:        ; preds = %for.cond28.preheader
  br label %for.body30

for.cond28.preheader.for.end35_crit_edge:         ; preds = %for.cond28.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end35

for.body22:                                       ; preds = %for.body22.for.body22_crit_edge, %for.cond20.preheader.for.body22_crit_edge
  %i.1119 = phi i32 [ %inc26, %for.body22.for.body22_crit_edge ], [ 0, %for.cond20.preheader.for.body22_crit_edge ]
  %30 = ptrtoint ptr %page_data to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %page_data, align 4
  %arrayidx24 = getelementptr i32, ptr %31, i32 %i.1119
  %32 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 -1, ptr %arrayidx24, align 4
  %inc26 = add nuw i32 %i.1119, 1
  %exitcond.not = icmp eq i32 %inc26, %11
  br i1 %exitcond.not, label %for.body22.for.cond28.preheader_crit_edge, label %for.body22.for.body22_crit_edge

for.body22.for.body22_crit_edge:                  ; preds = %for.body22
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body22

for.body22.for.cond28.preheader_crit_edge:        ; preds = %for.body22
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond28.preheader

for.body30:                                       ; preds = %for.body30.for.body30_crit_edge, %for.cond28.preheader.for.body30_crit_edge
  %i.2121 = phi i32 [ %inc34, %for.body30.for.body30_crit_edge ], [ 0, %for.cond28.preheader.for.body30_crit_edge ]
  %33 = ptrtoint ptr %revmap to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %revmap, align 8
  %arrayidx32 = getelementptr i32, ptr %34, i32 %i.2121
  %35 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 -1, ptr %arrayidx32, align 4
  %inc34 = add nuw i32 %i.2121, 1
  %exitcond126.not = icmp eq i32 %inc34, %mul
  br i1 %exitcond126.not, label %for.body30.for.end35_crit_edge, label %for.body30.for.body30_crit_edge

for.body30.for.body30_crit_edge:                  ; preds = %for.body30
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body30

for.body30.for.end35_crit_edge:                   ; preds = %for.body30
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end35

for.end35:                                        ; preds = %for.body30.for.end35_crit_edge, %for.cond28.preheader.for.end35_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %36 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %36, i32 noundef 3264, i32 noundef 4096) #13
  %page_buf = getelementptr inbounds %struct.mtdswap_dev, ptr %d, i32 0, i32 19
  %37 = ptrtoint ptr %page_buf to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call7.i, ptr %page_buf, align 8
  %tobool38.not = icmp eq ptr %call7.i, null
  br i1 %tobool38.not, label %for.end35.page_buf_fail_crit_edge, label %if.end40

for.end35.page_buf_fail_crit_edge:                ; preds = %for.end35
  call void @__sanitizer_cov_trace_pc() #10
  br label %page_buf_fail

if.end40:                                         ; preds = %for.end35
  %oobavail = getelementptr inbounds %struct.mtd_info, ptr %3, i32 0, i32 7
  %38 = ptrtoint ptr %oobavail to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %oobavail, align 8
  %40 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %39, i32 2) #8
  %41 = extractvalue { i32, i1 } %40, 1
  br i1 %41, label %kmalloc_array.exit.thread, label %if.end7.i, !prof !205

kmalloc_array.exit.thread:                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  %oob_buf105 = getelementptr inbounds %struct.mtdswap_dev, ptr %d, i32 0, i32 20
  %42 = ptrtoint ptr %oob_buf105 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr null, ptr %oob_buf105, align 4
  br label %oob_buf_fail

if.end7.i:                                        ; preds = %if.end40
  %43 = extractvalue { i32, i1 } %40, 0
  %call8.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %43, i32 noundef 3264) #14
  %oob_buf = getelementptr inbounds %struct.mtdswap_dev, ptr %d, i32 0, i32 20
  %44 = ptrtoint ptr %oob_buf to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call8.i, ptr %oob_buf, align 4
  %tobool43.not = icmp eq ptr %call8.i, null
  br i1 %tobool43.not, label %if.end7.i.oob_buf_fail_crit_edge, label %if.end45

if.end7.i.oob_buf_fail_crit_edge:                 ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %oob_buf_fail

if.end45:                                         ; preds = %if.end7.i
  %45 = ptrtoint ptr %eblks to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %eblks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %cmp87.not.i = icmp eq i32 %46, 0
  br i1 %cmp87.not.i, label %for.end.thread.i, label %for.body.lr.ph.i

for.end.thread.i:                                 ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %hist_root.i.i) #8
  br label %mtdswap_check_counts.exit.thread.i

for.body.lr.ph.i:                                 ; preds = %if.end45
  %47 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops.i.i, i32 0, i32 3
  %48 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops.i.i, i32 0, i32 4
  %49 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops.i.i, i32 0, i32 5
  %50 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops.i.i, i32 0, i32 6
  %51 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops.i.i, i32 0, i32 7
  %52 = getelementptr inbounds i8, ptr %ops.i.i, i32 4
  %dev9.i.i.i = getelementptr inbounds %struct.mtdswap_dev, ptr %d, i32 0, i32 2
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.088.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %53 = ptrtoint ptr %eb_data to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %eb_data, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %ops.i.i) #8
  %55 = call ptr @memset(ptr %52, i32 255, i32 16)
  %56 = ptrtoint ptr %mtd2 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %mtd2, align 4
  %erasesize.i.i.i = getelementptr inbounds %struct.mtd_info, ptr %57, i32 0, i32 3
  %58 = ptrtoint ptr %erasesize.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %erasesize.i.i.i, align 8
  br label %while.cond.i.i.i.i

while.cond.i.i.i.i:                               ; preds = %while.cond.i.i.i.i.while.cond.i.i.i.i_crit_edge, %for.body.i
  %mtd.addr.0.i.i.i.i = phi ptr [ %57, %for.body.i ], [ %61, %while.cond.i.i.i.i.while.cond.i.i.i.i_crit_edge ]
  %parent.i.i.i.i = getelementptr inbounds %struct.mtd_info, ptr %mtd.addr.0.i.i.i.i, i32 0, i32 62
  %60 = ptrtoint ptr %parent.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %parent.i.i.i.i, align 4
  %tobool.not.i.i.i.i = icmp eq ptr %61, null
  br i1 %tobool.not.i.i.i.i, label %mtd_can_have_bb.exit.i.i, label %while.cond.i.i.i.i.while.cond.i.i.i.i_crit_edge

while.cond.i.i.i.i.while.cond.i.i.i.i_crit_edge:  ; preds = %while.cond.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.i.i.i.i

mtd_can_have_bb.exit.i.i:                         ; preds = %while.cond.i.i.i.i
  %add.ptr.idx.i = shl i32 %i.088.i, 5
  %sub.ptr.div.i.i.i = ashr exact i32 %add.ptr.idx.i, 5
  %conv1.i.i.i = zext i32 %59 to i64
  %conv.i.i.i = sext i32 %sub.ptr.div.i.i.i to i64
  %mul.i.i.i = mul nsw i64 %conv1.i.i.i, %conv.i.i.i
  %_block_isbad.i.i.i = getelementptr inbounds %struct.mtd_info, ptr %mtd.addr.0.i.i.i.i, i32 0, i32 42
  %62 = ptrtoint ptr %_block_isbad.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %_block_isbad.i.i.i, align 4
  %tobool.i.not.i.i = icmp eq ptr %63, null
  br i1 %tobool.i.not.i.i, label %mtd_can_have_bb.exit.i.i.if.end.i.i97_crit_edge, label %land.lhs.true.i.i

mtd_can_have_bb.exit.i.i.if.end.i.i97_crit_edge:  ; preds = %mtd_can_have_bb.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i97

land.lhs.true.i.i:                                ; preds = %mtd_can_have_bb.exit.i.i
  %call3.i.i = call i32 @mtd_block_isbad(ptr noundef %57, i64 noundef %mul.i.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %tobool4.not.i.i = icmp eq i32 %call3.i.i, 0
  br i1 %tobool4.not.i.i, label %land.lhs.true.i.i.if.end.i.i97_crit_edge, label %land.lhs.true.i.i.mtdswap_read_markers.exit.thread.i_crit_edge

land.lhs.true.i.i.mtdswap_read_markers.exit.thread.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mtdswap_read_markers.exit.thread.i

land.lhs.true.i.i.if.end.i.i97_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i97

if.end.i.i97:                                     ; preds = %land.lhs.true.i.i.if.end.i.i97_crit_edge, %mtd_can_have_bb.exit.i.i.if.end.i.i97_crit_edge
  %64 = ptrtoint ptr %mtd2 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %mtd2, align 4
  %oobavail.i.i = getelementptr inbounds %struct.mtd_info, ptr %65, i32 0, i32 7
  %66 = ptrtoint ptr %oobavail.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %oobavail.i.i, align 8
  %mul.i.i = shl i32 %67, 1
  %68 = ptrtoint ptr %47 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %mul.i.i, ptr %47, align 4
  %69 = ptrtoint ptr %oob_buf to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %oob_buf, align 4
  %71 = ptrtoint ptr %51 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %70, ptr %51, align 4
  %72 = ptrtoint ptr %49 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 0, ptr %49, align 4
  %73 = ptrtoint ptr %50 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr null, ptr %50, align 4
  %74 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 1, ptr %ops.i.i, align 4
  %call.i.i.i = call i32 @mtd_read_oob(ptr noundef %65, i64 noundef %mul.i.i.i, ptr noundef nonnull %ops.i.i) #8
  %75 = zext i32 %call.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %75, ptr @__sancov_gen_cov_switch_values.89)
  switch i32 %call.i.i.i, label %mtdswap_read_markers.exit.i [
    i32 -117, label %if.end.i.i97.if.end12.i.i_crit_edge
    i32 0, label %if.end4.i.i.i
  ]

if.end.i.i97.if.end12.i.i_crit_edge:              ; preds = %if.end.i.i97
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12.i.i

if.end4.i.i.i:                                    ; preds = %if.end.i.i97
  %76 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %48, align 4
  %78 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %47, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %77, i32 %79)
  %cmp.i.i.i98 = icmp ult i32 %77, %79
  br i1 %cmp.i.i.i98, label %if.then.thread.i, label %if.end4.i.i.i.if.end12.i.i_crit_edge

if.end4.i.i.i.if.end12.i.i_crit_edge:             ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12.i.i

if.then.thread.i:                                 ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %80 = ptrtoint ptr %dev9.i.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %dev9.i.i.i, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %81, ptr noundef nonnull @.str.62, i32 noundef %77, i32 noundef %79, i64 noundef %mul.i.i.i) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %ops.i.i) #8
  br label %sw.default.sink.split.i

if.end12.i.i:                                     ; preds = %if.end4.i.i.i.if.end12.i.i_crit_edge, %if.end.i.i97.if.end12.i.i_crit_edge
  %82 = ptrtoint ptr %oob_buf to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %oob_buf, align 4
  %84 = ptrtoint ptr %mtd2 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %mtd2, align 4
  %oobavail16.i.i = getelementptr inbounds %struct.mtd_info, ptr %85, i32 0, i32 7
  %86 = ptrtoint ptr %oobavail16.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %oobavail16.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %83, i32 %87
  %88 = ptrtoint ptr %83 to i32
  call void @__asan_loadN_noabort(i32 %88, i32 2)
  %89 = load i16, ptr %83, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 -27360, i16 %89)
  %cmp.i.i99 = icmp eq i16 %89, -27360
  br i1 %cmp.i.i99, label %if.then18.i.i, label %if.else30.i.i

if.then18.i.i:                                    ; preds = %if.end12.i.i
  %count.i.i = getelementptr inbounds %struct.mtdswap_oobdata, ptr %83, i32 0, i32 1
  %90 = ptrtoint ptr %count.i.i to i32
  call void @__asan_loadN_noabort(i32 %90, i32 4)
  %91 = load i32, ptr %count.i.i, align 1
  %92 = call i32 @llvm.bswap.i32(i32 %91) #8
  %erase_count.i.i = getelementptr %struct.swap_eb, ptr %54, i32 %i.088.i, i32 4
  %93 = ptrtoint ptr %erase_count.i.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %92, ptr %erase_count.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -117, i32 %call.i.i.i)
  %cmp.i55.not.i.i = icmp eq i32 %call.i.i.i, -117
  br i1 %cmp.i55.not.i.i, label %if.then18.i.i.mtdswap_read_markers.exit.thread.i_crit_edge, label %if.else.i.i

if.then18.i.i.mtdswap_read_markers.exit.thread.i_crit_edge: ; preds = %if.then18.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mtdswap_read_markers.exit.thread.i

if.else.i.i:                                      ; preds = %if.then18.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %94 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_loadN_noabort(i32 %94, i32 2)
  %95 = load i16, ptr %add.ptr.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 -27104, i16 %95)
  %cmp24.i.i = icmp eq i16 %95, -27104
  %..i.i = zext i1 %cmp24.i.i to i32
  br label %mtdswap_read_markers.exit.thread.i

if.else30.i.i:                                    ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %flags.i.i = getelementptr %struct.swap_eb, ptr %54, i32 %i.088.i, i32 2
  %96 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %flags.i.i, align 4
  %or.i.i = or i32 %97, 2
  store i32 %or.i.i, ptr %flags.i.i, align 4
  br label %mtdswap_read_markers.exit.thread.i

mtdswap_read_markers.exit.thread.i:               ; preds = %if.else30.i.i, %if.else.i.i, %if.then18.i.i.mtdswap_read_markers.exit.thread.i_crit_edge, %land.lhs.true.i.i.mtdswap_read_markers.exit.thread.i_crit_edge
  %retval.0.i.ph.i = phi i32 [ %..i.i, %if.else.i.i ], [ 2, %if.then18.i.i.mtdswap_read_markers.exit.thread.i_crit_edge ], [ 1, %if.else30.i.i ], [ 3, %land.lhs.true.i.i.mtdswap_read_markers.exit.thread.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %ops.i.i) #8
  br label %if.else.i

mtdswap_read_markers.exit.i:                      ; preds = %if.end.i.i97
  %98 = ptrtoint ptr %dev9.i.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %dev9.i.i.i, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %99, ptr noundef nonnull @.str.59, i32 noundef %call.i.i.i, i64 noundef %mul.i.i.i) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %ops.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp1.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp1.i, label %mtdswap_read_markers.exit.i.sw.default.sink.split.i_crit_edge, label %mtdswap_read_markers.exit.i.if.else.i_crit_edge

mtdswap_read_markers.exit.i.if.else.i_crit_edge:  ; preds = %mtdswap_read_markers.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i

mtdswap_read_markers.exit.i.sw.default.sink.split.i_crit_edge: ; preds = %mtdswap_read_markers.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.default.sink.split.i

if.else.i:                                        ; preds = %mtdswap_read_markers.exit.i.if.else.i_crit_edge, %mtdswap_read_markers.exit.thread.i
  %retval.0.i77.i = phi i32 [ %retval.0.i.ph.i, %mtdswap_read_markers.exit.thread.i ], [ %call.i.i.i, %mtdswap_read_markers.exit.i.if.else.i_crit_edge ]
  %100 = zext i32 %retval.0.i77.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %100, ptr @__sancov_gen_cov_switch_values.90)
  switch i32 %retval.0.i77.i, label %if.else.i.sw.default.i_crit_edge [
    i32 3, label %if.else.i.for.inc.i_crit_edge
    i32 0, label %if.else.i.sw.epilog.i_crit_edge
    i32 1, label %if.else.i.sw.bb7.i_crit_edge
    i32 2, label %if.else.i.sw.bb7.i_crit_edge143
  ]

if.else.i.sw.bb7.i_crit_edge143:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb7.i

if.else.i.sw.bb7.i_crit_edge:                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb7.i

if.else.i.sw.epilog.i_crit_edge:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i

if.else.i.for.inc.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.else.i.sw.default.i_crit_edge:                 ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.default.i

sw.bb7.i:                                         ; preds = %if.else.i.sw.bb7.i_crit_edge, %if.else.i.sw.bb7.i_crit_edge143
  br label %sw.epilog.i

sw.default.sink.split.i:                          ; preds = %mtdswap_read_markers.exit.i.sw.default.sink.split.i_crit_edge, %if.then.thread.i
  %flags83.i = getelementptr %struct.swap_eb, ptr %54, i32 %i.088.i, i32 2
  %101 = ptrtoint ptr %flags83.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %flags83.i, align 4
  %or.i = or i32 %102, 16
  store i32 %or.i, ptr %flags83.i, align 4
  br label %sw.default.i

sw.default.i:                                     ; preds = %sw.default.sink.split.i, %if.else.i.sw.default.i_crit_edge
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.default.i, %sw.bb7.i, %if.else.i.sw.epilog.i_crit_edge
  %idx.0.i = phi i32 [ 192, %sw.default.i ], [ 128, %sw.bb7.i ], [ %retval.0.i77.i, %if.else.i.sw.epilog.i_crit_edge ]
  br label %for.inc.i

for.inc.i:                                        ; preds = %sw.epilog.i, %if.else.i.for.inc.i_crit_edge
  %idx.0.sink.i = phi i32 [ %idx.0.i, %sw.epilog.i ], [ 1, %if.else.i.for.inc.i_crit_edge ]
  %flags8.i = getelementptr %struct.swap_eb, ptr %54, i32 %i.088.i, i32 2
  %103 = ptrtoint ptr %flags8.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %flags8.i, align 4
  %or9.i = or i32 %104, %idx.0.sink.i
  store i32 %or9.i, ptr %flags8.i, align 4
  %inc.i = add nuw i32 %i.088.i, 1
  %105 = ptrtoint ptr %eblks to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %eblks, align 4
  %cmp.i = icmp ult i32 %inc.i, %106
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.end.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %106)
  %phi.cmp.i = icmp eq i32 %106, 0
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %hist_root.i.i) #8
  %107 = ptrtoint ptr %hist_root.i.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 0, ptr %hist_root.i.i, align 4
  br i1 %phi.cmp.i, label %mtdswap_check_counts.exit.i.thread, label %for.end.i.for.body.i.i_crit_edge

for.end.i.for.body.i.i_crit_edge:                 ; preds = %for.end.i
  br label %for.body.i.i

mtdswap_check_counts.exit.i.thread:               ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %hist_root.i.i) #8
  br label %cleanup

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.end.i.for.body.i.i_crit_edge
  %i.059.i.i = phi i32 [ %inc1.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %for.end.i.for.body.i.i_crit_edge ]
  %cnt.058.i.i = phi i32 [ %cnt.1.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %for.end.i.for.body.i.i_crit_edge ]
  %108 = ptrtoint ptr %eb_data to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %eb_data, align 4
  %flags.i43.i = getelementptr %struct.swap_eb, ptr %109, i32 %i.059.i.i, i32 2
  %110 = ptrtoint ptr %flags.i43.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %flags.i43.i, align 4
  %and.i.i = and i32 %111, 19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i45.i, label %for.body.i.i.for.inc.i.i_crit_edge

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i

if.end.i45.i:                                     ; preds = %for.body.i.i
  %add.ptr.i44.i = getelementptr %struct.swap_eb, ptr %109, i32 %i.059.i.i
  %112 = ptrtoint ptr %hist_root.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %hist_root.i.i, align 4
  %tobool.not11.i.i.i = icmp eq ptr %113, null
  br i1 %tobool.not11.i.i.i, label %if.end.i45.i.__mtdswap_rb_add.exit.i.i_crit_edge, label %while.body.lr.ph.i.i.i

if.end.i45.i.__mtdswap_rb_add.exit.i.i_crit_edge: ; preds = %if.end.i45.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__mtdswap_rb_add.exit.i.i

while.body.lr.ph.i.i.i:                           ; preds = %if.end.i45.i
  %erase_count.i.i.i = getelementptr %struct.swap_eb, ptr %109, i32 %i.059.i.i, i32 4
  %114 = ptrtoint ptr %erase_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %erase_count.i.i.i, align 4
  br label %while.body.i.i.i

while.body.i.i.i:                                 ; preds = %while.body.i.i.i.while.body.i.i.i_crit_edge, %while.body.lr.ph.i.i.i
  %116 = phi ptr [ %113, %while.body.lr.ph.i.i.i ], [ %120, %while.body.i.i.i.while.body.i.i.i_crit_edge ]
  %erase_count1.i.i.i = getelementptr inbounds %struct.swap_eb, ptr %116, i32 0, i32 4
  %117 = ptrtoint ptr %erase_count1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %erase_count1.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %115, i32 %118)
  %cmp.i.i46.i = icmp ugt i32 %115, %118
  %rb_right.i.i.i = getelementptr inbounds %struct.rb_node, ptr %116, i32 0, i32 1
  %rb_left.i.i.i = getelementptr inbounds %struct.rb_node, ptr %116, i32 0, i32 2
  %p.1.i.i.i = select i1 %cmp.i.i46.i, ptr %rb_right.i.i.i, ptr %rb_left.i.i.i
  %119 = ptrtoint ptr %p.1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %p.1.i.i.i, align 4
  %tobool.not.i.i.i100 = icmp eq ptr %120, null
  br i1 %tobool.not.i.i.i100, label %while.cond.while.end_crit_edge.i.i.i, label %while.body.i.i.i.while.body.i.i.i_crit_edge

while.body.i.i.i.while.body.i.i.i_crit_edge:      ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i.i.i

while.cond.while.end_crit_edge.i.i.i:             ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %phi.cast.le.i.i.i = ptrtoint ptr %116 to i32
  br label %__mtdswap_rb_add.exit.i.i

__mtdswap_rb_add.exit.i.i:                        ; preds = %while.cond.while.end_crit_edge.i.i.i, %if.end.i45.i.__mtdswap_rb_add.exit.i.i_crit_edge
  %parent.0.lcssa.i.i.i = phi i32 [ %phi.cast.le.i.i.i, %while.cond.while.end_crit_edge.i.i.i ], [ 0, %if.end.i45.i.__mtdswap_rb_add.exit.i.i_crit_edge ]
  %p.0.lcssa.i.i.i = phi ptr [ %p.1.i.i.i, %while.cond.while.end_crit_edge.i.i.i ], [ %hist_root.i.i, %if.end.i45.i.__mtdswap_rb_add.exit.i.i_crit_edge ]
  %121 = ptrtoint ptr %add.ptr.i44.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 %parent.0.lcssa.i.i.i, ptr %add.ptr.i44.i, align 4
  %rb_right.i.i.i.i = getelementptr inbounds %struct.rb_node, ptr %add.ptr.i44.i, i32 0, i32 1
  %122 = ptrtoint ptr %rb_right.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store ptr null, ptr %rb_right.i.i.i.i, align 4
  %rb_left.i.i.i.i = getelementptr inbounds %struct.rb_node, ptr %add.ptr.i44.i, i32 0, i32 2
  %123 = ptrtoint ptr %rb_left.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr null, ptr %rb_left.i.i.i.i, align 4
  %124 = ptrtoint ptr %p.0.lcssa.i.i.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr %add.ptr.i44.i, ptr %p.0.lcssa.i.i.i, align 4
  call void @rb_insert_color(ptr noundef %add.ptr.i44.i, ptr noundef nonnull %hist_root.i.i) #8
  %inc.i.i = add i32 %cnt.058.i.i, 1
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %__mtdswap_rb_add.exit.i.i, %for.body.i.i.for.inc.i.i_crit_edge
  %cnt.1.i.i = phi i32 [ %cnt.058.i.i, %for.body.i.i.for.inc.i.i_crit_edge ], [ %inc.i.i, %__mtdswap_rb_add.exit.i.i ]
  %inc1.i.i = add nuw i32 %i.059.i.i, 1
  %125 = ptrtoint ptr %eblks to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %eblks, align 4
  %cmp.i47.i = icmp ult i32 %inc1.i.i, %126
  br i1 %cmp.i47.i, label %for.inc.i.i.for.body.i.i_crit_edge, label %for.end.i.i

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

for.end.i.i:                                      ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cnt.1.i.i)
  %cmp2.i.i = icmp eq i32 %cnt.1.i.i, 0
  br i1 %cmp2.i.i, label %for.end.i.i.mtdswap_check_counts.exit.i_crit_edge, label %if.end4.i.i101

for.end.i.i.mtdswap_check_counts.exit.i_crit_edge: ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mtdswap_check_counts.exit.i

if.end4.i.i101:                                   ; preds = %for.end.i.i
  %div52.i.i = lshr i32 %cnt.1.i.i, 1
  %call.i.i48.i = call ptr @rb_first(ptr noundef nonnull %hist_root.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %cnt.1.i.i)
  %cmp5.i.i.i = icmp eq i32 %cnt.1.i.i, 1
  %tobool.not6.i.i.i = icmp eq ptr %call.i.i48.i, null
  %or.cond7.i.i.i = select i1 %cmp5.i.i.i, i1 true, i1 %tobool.not6.i.i.i
  br i1 %or.cond7.i.i.i, label %if.end4.i.i101.mtdswap_rb_index.exit.i.i_crit_edge, label %if.end4.i.i101.while.body.i55.i.i_crit_edge

if.end4.i.i101.while.body.i55.i.i_crit_edge:      ; preds = %if.end4.i.i101
  br label %while.body.i55.i.i

if.end4.i.i101.mtdswap_rb_index.exit.i.i_crit_edge: ; preds = %if.end4.i.i101
  call void @__sanitizer_cov_trace_pc() #10
  br label %mtdswap_rb_index.exit.i.i

while.body.i55.i.i:                               ; preds = %while.body.i55.i.i.while.body.i55.i.i_crit_edge, %if.end4.i.i101.while.body.i55.i.i_crit_edge
  %i.09.i.i.i = phi i32 [ %inc.i.i.i, %while.body.i55.i.i.while.body.i55.i.i_crit_edge ], [ 0, %if.end4.i.i101.while.body.i55.i.i_crit_edge ]
  %p.08.i.i.i = phi ptr [ %call1.i.i.i102, %while.body.i55.i.i.while.body.i55.i.i_crit_edge ], [ %call.i.i48.i, %if.end4.i.i101.while.body.i55.i.i_crit_edge ]
  %call1.i.i.i102 = call ptr @rb_next(ptr noundef nonnull %p.08.i.i.i) #8
  %inc.i.i.i = add nuw nsw i32 %i.09.i.i.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i.i.i, i32 %div52.i.i)
  %cmp.i53.i.i = icmp uge i32 %inc.i.i.i, %div52.i.i
  %tobool.not.i54.i.i = icmp eq ptr %call1.i.i.i102, null
  %or.cond.i.i.i = select i1 %cmp.i53.i.i, i1 true, i1 %tobool.not.i54.i.i
  br i1 %or.cond.i.i.i, label %while.body.i55.i.i.mtdswap_rb_index.exit.i.i_crit_edge, label %while.body.i55.i.i.while.body.i55.i.i_crit_edge

while.body.i55.i.i.while.body.i55.i.i_crit_edge:  ; preds = %while.body.i55.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i55.i.i

while.body.i55.i.i.mtdswap_rb_index.exit.i.i_crit_edge: ; preds = %while.body.i55.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mtdswap_rb_index.exit.i.i

mtdswap_rb_index.exit.i.i:                        ; preds = %while.body.i55.i.i.mtdswap_rb_index.exit.i.i_crit_edge, %if.end4.i.i101.mtdswap_rb_index.exit.i.i_crit_edge
  %p.0.lcssa.i56.i.i = phi ptr [ %call.i.i48.i, %if.end4.i.i101.mtdswap_rb_index.exit.i.i_crit_edge ], [ %call1.i.i.i102, %while.body.i55.i.i.mtdswap_rb_index.exit.i.i_crit_edge ]
  %erase_count.i49.i = getelementptr inbounds %struct.swap_eb, ptr %p.0.lcssa.i56.i.i, i32 0, i32 4
  %127 = ptrtoint ptr %erase_count.i49.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %erase_count.i49.i, align 4
  %call7.i.i103 = call ptr @rb_last(ptr noundef nonnull %hist_root.i.i) #8
  %erase_count10.i.i = getelementptr inbounds %struct.swap_eb, ptr %call7.i.i103, i32 0, i32 4
  %129 = ptrtoint ptr %erase_count10.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %erase_count10.i.i, align 4
  %max_erase_count.i.i = getelementptr inbounds %struct.mtdswap_dev, ptr %d, i32 0, i32 8
  %131 = ptrtoint ptr %max_erase_count.i.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 %130, ptr %max_erase_count.i.i, align 8
  %132 = ptrtoint ptr %eblks to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %eblks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %133)
  %cmp1362.not.i.i = icmp eq i32 %133, 0
  br i1 %cmp1362.not.i.i, label %mtdswap_rb_index.exit.i.i.mtdswap_check_counts.exit.thread.i_crit_edge, label %mtdswap_rb_index.exit.i.i.for.body14.i.i_crit_edge

mtdswap_rb_index.exit.i.i.for.body14.i.i_crit_edge: ; preds = %mtdswap_rb_index.exit.i.i
  br label %for.body14.i.i

mtdswap_rb_index.exit.i.i.mtdswap_check_counts.exit.thread.i_crit_edge: ; preds = %mtdswap_rb_index.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mtdswap_check_counts.exit.thread.i

for.body14.i.i:                                   ; preds = %for.inc28.i.i.for.body14.i.i_crit_edge, %mtdswap_rb_index.exit.i.i.for.body14.i.i_crit_edge
  %i.163.i.i = phi i32 [ %inc29.i.i, %for.inc28.i.i.for.body14.i.i_crit_edge ], [ 0, %mtdswap_rb_index.exit.i.i.for.body14.i.i_crit_edge ]
  %134 = ptrtoint ptr %eb_data to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %eb_data, align 4
  %add.ptr16.i.i = getelementptr %struct.swap_eb, ptr %135, i32 %i.163.i.i
  %flags17.i.i = getelementptr %struct.swap_eb, ptr %135, i32 %i.163.i.i, i32 2
  %136 = ptrtoint ptr %flags17.i.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %flags17.i.i, align 4
  %and18.i.i = and i32 %137, 18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18.i.i)
  %tobool19.not.i.i = icmp eq i32 %and18.i.i, 0
  br i1 %tobool19.not.i.i, label %for.body14.i.i.if.end22.i.i_crit_edge, label %if.then20.i.i

for.body14.i.i.if.end22.i.i_crit_edge:            ; preds = %for.body14.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22.i.i

if.then20.i.i:                                    ; preds = %for.body14.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %erase_count21.i.i = getelementptr %struct.swap_eb, ptr %135, i32 %i.163.i.i, i32 4
  %138 = ptrtoint ptr %erase_count21.i.i to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 %128, ptr %erase_count21.i.i, align 4
  br label %if.end22.i.i

if.end22.i.i:                                     ; preds = %if.then20.i.i, %for.body14.i.i.if.end22.i.i_crit_edge
  %139 = ptrtoint ptr %flags17.i.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %flags17.i.i, align 4
  %and24.i.i = and i32 %140, 19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24.i.i)
  %tobool25.not.i.i = icmp eq i32 %and24.i.i, 0
  br i1 %tobool25.not.i.i, label %if.end27.i.i, label %if.end22.i.i.for.inc28.i.i_crit_edge

if.end22.i.i.for.inc28.i.i_crit_edge:             ; preds = %if.end22.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc28.i.i

if.end27.i.i:                                     ; preds = %if.end22.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @rb_erase(ptr noundef %add.ptr16.i.i, ptr noundef nonnull %hist_root.i.i) #8
  br label %for.inc28.i.i

for.inc28.i.i:                                    ; preds = %if.end27.i.i, %if.end22.i.i.for.inc28.i.i_crit_edge
  %inc29.i.i = add nuw i32 %i.163.i.i, 1
  %141 = ptrtoint ptr %eblks to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %eblks, align 4
  %cmp13.i.i = icmp ult i32 %inc29.i.i, %142
  br i1 %cmp13.i.i, label %for.inc28.i.i.for.body14.i.i_crit_edge, label %for.inc28.i.i.mtdswap_check_counts.exit.i_crit_edge

for.inc28.i.i.mtdswap_check_counts.exit.i_crit_edge: ; preds = %for.inc28.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mtdswap_check_counts.exit.i

for.inc28.i.i.for.body14.i.i_crit_edge:           ; preds = %for.inc28.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body14.i.i

mtdswap_check_counts.exit.thread.i:               ; preds = %mtdswap_rb_index.exit.i.i.mtdswap_check_counts.exit.thread.i_crit_edge, %for.end.thread.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %hist_root.i.i) #8
  br label %cleanup

mtdswap_check_counts.exit.i:                      ; preds = %for.inc28.i.i.mtdswap_check_counts.exit.i_crit_edge, %for.end.i.i.mtdswap_check_counts.exit.i_crit_edge
  %143 = phi i32 [ %126, %for.end.i.i.mtdswap_check_counts.exit.i_crit_edge ], [ %142, %for.inc28.i.i.mtdswap_check_counts.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %hist_root.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %143)
  %cmp1294.not.i = icmp eq i32 %143, 0
  br i1 %cmp1294.not.i, label %mtdswap_check_counts.exit.i.cleanup_crit_edge, label %for.body13.lr.ph.i

mtdswap_check_counts.exit.i.cleanup_crit_edge:    ; preds = %mtdswap_check_counts.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body13.lr.ph.i:                               ; preds = %mtdswap_check_counts.exit.i
  %sub.ptr.rhs.cast.i.i54.i = ptrtoint ptr %arrayidx to i32
  br label %for.body13.i

for.body13.i:                                     ; preds = %for.inc20.i.for.body13.i_crit_edge, %for.body13.lr.ph.i
  %i.195.i = phi i32 [ 0, %for.body13.lr.ph.i ], [ %inc21.i, %for.inc20.i.for.body13.i_crit_edge ]
  %144 = ptrtoint ptr %eb_data to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %eb_data, align 4
  %flags16.i = getelementptr %struct.swap_eb, ptr %145, i32 %i.195.i, i32 2
  %146 = ptrtoint ptr %flags16.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %flags16.i, align 4
  %and.i = and i32 %147, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end18.i, label %for.body13.i.for.inc20.i_crit_edge

for.body13.i.for.inc20.i_crit_edge:               ; preds = %for.body13.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc20.i

if.end18.i:                                       ; preds = %for.body13.i
  %add.ptr15.i = getelementptr %struct.swap_eb, ptr %145, i32 %i.195.i
  %shr.i = lshr i32 %147, 5
  %root1.i.i = getelementptr %struct.swap_eb, ptr %145, i32 %i.195.i, i32 1
  %148 = ptrtoint ptr %root1.i.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %root1.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.mtdswap_dev, ptr %d, i32 0, i32 10, i32 %shr.i
  %cmp.i50.i = icmp eq ptr %149, %arrayidx.i.i
  br i1 %cmp.i50.i, label %if.end18.i.for.inc20.i_crit_edge, label %if.end.i52.i

if.end18.i.for.inc20.i_crit_edge:                 ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc20.i

if.end.i52.i:                                     ; preds = %if.end18.i
  %tobool.not.i.i51.i = icmp eq ptr %149, null
  br i1 %tobool.not.i.i51.i, label %if.end.i52.i.mtdswap_eb_detach.exit.i.i_crit_edge, label %if.then.i.i.i

if.end.i52.i.mtdswap_eb_detach.exit.i.i_crit_edge: ; preds = %if.end.i52.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mtdswap_eb_detach.exit.i.i

if.then.i.i.i:                                    ; preds = %if.end.i52.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.ptr.lhs.cast.i.i53.i = ptrtoint ptr %149 to i32
  %sub.ptr.sub.i.i55.i = sub i32 %sub.ptr.lhs.cast.i.i53.i, %sub.ptr.rhs.cast.i.i54.i
  %sub.ptr.div.i.i56.i = ashr exact i32 %sub.ptr.sub.i.i55.i, 3
  %count.i.i.i = getelementptr %struct.mtdswap_dev, ptr %d, i32 0, i32 10, i32 %sub.ptr.div.i.i56.i, i32 1
  %150 = ptrtoint ptr %count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %count.i.i.i, align 4
  %dec.i.i.i = add i32 %151, -1
  store i32 %dec.i.i.i, ptr %count.i.i.i, align 4
  %152 = ptrtoint ptr %root1.i.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %root1.i.i, align 4
  call void @rb_erase(ptr noundef %add.ptr15.i, ptr noundef %153) #8
  br label %mtdswap_eb_detach.exit.i.i

mtdswap_eb_detach.exit.i.i:                       ; preds = %if.then.i.i.i, %if.end.i52.i.mtdswap_eb_detach.exit.i.i_crit_edge
  %154 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool.not11.i.i57.i = icmp eq ptr %155, null
  br i1 %tobool.not11.i.i57.i, label %mtdswap_eb_detach.exit.i.i.__mtdswap_rb_add.exit.i74.i_crit_edge, label %while.body.lr.ph.i.i59.i

mtdswap_eb_detach.exit.i.i.__mtdswap_rb_add.exit.i74.i_crit_edge: ; preds = %mtdswap_eb_detach.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__mtdswap_rb_add.exit.i74.i

while.body.lr.ph.i.i59.i:                         ; preds = %mtdswap_eb_detach.exit.i.i
  %erase_count.i.i58.i = getelementptr %struct.swap_eb, ptr %145, i32 %i.195.i, i32 4
  %156 = ptrtoint ptr %erase_count.i.i58.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %erase_count.i.i58.i, align 4
  br label %while.body.i.i65.i

while.body.i.i65.i:                               ; preds = %while.body.i.i65.i.while.body.i.i65.i_crit_edge, %while.body.lr.ph.i.i59.i
  %158 = phi ptr [ %155, %while.body.lr.ph.i.i59.i ], [ %162, %while.body.i.i65.i.while.body.i.i65.i_crit_edge ]
  %erase_count1.i.i60.i = getelementptr inbounds %struct.swap_eb, ptr %158, i32 0, i32 4
  %159 = ptrtoint ptr %erase_count1.i.i60.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %erase_count1.i.i60.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %157, i32 %160)
  %cmp.i.i61.i = icmp ugt i32 %157, %160
  %rb_right.i.i62.i = getelementptr inbounds %struct.rb_node, ptr %158, i32 0, i32 1
  %rb_left.i.i63.i = getelementptr inbounds %struct.rb_node, ptr %158, i32 0, i32 2
  %p.1.i.i64.i = select i1 %cmp.i.i61.i, ptr %rb_right.i.i62.i, ptr %rb_left.i.i63.i
  %161 = ptrtoint ptr %p.1.i.i64.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %p.1.i.i64.i, align 4
  %tobool.not.i18.i.i = icmp eq ptr %162, null
  br i1 %tobool.not.i18.i.i, label %while.cond.while.end_crit_edge.i.i67.i, label %while.body.i.i65.i.while.body.i.i65.i_crit_edge

while.body.i.i65.i.while.body.i.i65.i_crit_edge:  ; preds = %while.body.i.i65.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i.i65.i

while.cond.while.end_crit_edge.i.i67.i:           ; preds = %while.body.i.i65.i
  call void @__sanitizer_cov_trace_pc() #10
  %phi.cast.le.i.i66.i = ptrtoint ptr %158 to i32
  br label %__mtdswap_rb_add.exit.i74.i

__mtdswap_rb_add.exit.i74.i:                      ; preds = %while.cond.while.end_crit_edge.i.i67.i, %mtdswap_eb_detach.exit.i.i.__mtdswap_rb_add.exit.i74.i_crit_edge
  %parent.0.lcssa.i.i68.i = phi i32 [ %phi.cast.le.i.i66.i, %while.cond.while.end_crit_edge.i.i67.i ], [ 0, %mtdswap_eb_detach.exit.i.i.__mtdswap_rb_add.exit.i74.i_crit_edge ]
  %p.0.lcssa.i.i69.i = phi ptr [ %p.1.i.i64.i, %while.cond.while.end_crit_edge.i.i67.i ], [ %arrayidx.i.i, %mtdswap_eb_detach.exit.i.i.__mtdswap_rb_add.exit.i74.i_crit_edge ]
  %163 = ptrtoint ptr %add.ptr15.i to i32
  call void @__asan_store4_noabort(i32 %163)
  store i32 %parent.0.lcssa.i.i68.i, ptr %add.ptr15.i, align 4
  %rb_right.i.i.i70.i = getelementptr inbounds %struct.rb_node, ptr %add.ptr15.i, i32 0, i32 1
  %164 = ptrtoint ptr %rb_right.i.i.i70.i to i32
  call void @__asan_store4_noabort(i32 %164)
  store ptr null, ptr %rb_right.i.i.i70.i, align 4
  %rb_left.i.i.i71.i = getelementptr inbounds %struct.rb_node, ptr %add.ptr15.i, i32 0, i32 2
  %165 = ptrtoint ptr %rb_left.i.i.i71.i to i32
  call void @__asan_store4_noabort(i32 %165)
  store ptr null, ptr %rb_left.i.i.i71.i, align 4
  %166 = ptrtoint ptr %p.0.lcssa.i.i69.i to i32
  call void @__asan_store4_noabort(i32 %166)
  store ptr %add.ptr15.i, ptr %p.0.lcssa.i.i69.i, align 4
  call void @rb_insert_color(ptr noundef %add.ptr15.i, ptr noundef %arrayidx.i.i) #8
  %167 = ptrtoint ptr %root1.i.i to i32
  call void @__asan_store4_noabort(i32 %167)
  store ptr %arrayidx.i.i, ptr %root1.i.i, align 4
  %count.i72.i = getelementptr %struct.mtdswap_dev, ptr %d, i32 0, i32 10, i32 %shr.i, i32 1
  %168 = ptrtoint ptr %count.i72.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %count.i72.i, align 4
  %inc.i73.i = add i32 %169, 1
  store i32 %inc.i73.i, ptr %count.i72.i, align 4
  br label %for.inc20.i

for.inc20.i:                                      ; preds = %__mtdswap_rb_add.exit.i74.i, %if.end18.i.for.inc20.i_crit_edge, %for.body13.i.for.inc20.i_crit_edge
  %inc21.i = add nuw i32 %i.195.i, 1
  %170 = ptrtoint ptr %eblks to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %eblks, align 4
  %cmp12.i = icmp ult i32 %inc21.i, %171
  br i1 %cmp12.i, label %for.inc20.i.for.body13.i_crit_edge, label %for.inc20.i.cleanup_crit_edge

for.inc20.i.cleanup_crit_edge:                    ; preds = %for.inc20.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.inc20.i.for.body13.i_crit_edge:               ; preds = %for.inc20.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body13.i

oob_buf_fail:                                     ; preds = %if.end7.i.oob_buf_fail_crit_edge, %kmalloc_array.exit.thread
  %172 = ptrtoint ptr %page_buf to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %page_buf, align 8
  tail call void @kfree(ptr noundef %173) #8
  br label %page_buf_fail

page_buf_fail:                                    ; preds = %oob_buf_fail, %for.end35.page_buf_fail_crit_edge
  %174 = ptrtoint ptr %eb_data to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %eb_data, align 4
  tail call void @vfree(ptr noundef %175) #8
  br label %eb_data_fail

eb_data_fail:                                     ; preds = %page_buf_fail, %if.end12.eb_data_fail_crit_edge
  %176 = ptrtoint ptr %revmap to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %revmap, align 8
  tail call void @vfree(ptr noundef %177) #8
  br label %revmap_fail

revmap_fail:                                      ; preds = %eb_data_fail, %if.end.revmap_fail_crit_edge
  %178 = ptrtoint ptr %page_data to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %page_data, align 4
  tail call void @vfree(ptr noundef %179) #8
  br label %do.end

do.end:                                           ; preds = %revmap_fail, %entry.do.end_crit_edge
  %call50 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57, ptr noundef nonnull @.str, i32 noundef -12) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end, %for.inc20.i.cleanup_crit_edge, %mtdswap_check_counts.exit.i.cleanup_crit_edge, %mtdswap_check_counts.exit.thread.i, %mtdswap_check_counts.exit.i.thread
  %retval.0 = phi i32 [ -12, %do.end ], [ 0, %mtdswap_check_counts.exit.i.thread ], [ 0, %mtdswap_check_counts.exit.thread.i ], [ 0, %mtdswap_check_counts.exit.i.cleanup_crit_edge ], [ 0, %for.inc20.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @add_mtd_blktrans_dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mtdswap_add_debugfs(ptr noundef %d) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mtd = getelementptr inbounds %struct.mtdswap_dev, ptr %d, i32 0, i32 1
  %0 = ptrtoint ptr %mtd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mtd, align 4
  %dbg = getelementptr inbounds %struct.mtd_info, ptr %1, i32 0, i32 58
  %2 = ptrtoint ptr %dbg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dbg, align 4
  %tobool.not.i = icmp eq ptr %3, null
  %cmp.i = icmp ugt ptr %3, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i
  br i1 %spec.select.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call1 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.64, i16 noundef zeroext 256, ptr noundef nonnull %3, ptr noundef %d, ptr noundef nonnull @mtdswap_fops) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_mtd_blktrans_dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mtdswap_cleanup(ptr nocapture noundef readonly %d) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %eb_data = getelementptr inbounds %struct.mtdswap_dev, ptr %d, i32 0, i32 9
  %0 = ptrtoint ptr %eb_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %eb_data, align 4
  tail call void @vfree(ptr noundef %1) #8
  %revmap = getelementptr inbounds %struct.mtdswap_dev, ptr %d, i32 0, i32 4
  %2 = ptrtoint ptr %revmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %revmap, align 8
  tail call void @vfree(ptr noundef %3) #8
  %page_data = getelementptr inbounds %struct.mtdswap_dev, ptr %d, i32 0, i32 3
  %4 = ptrtoint ptr %page_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %page_data, align 4
  tail call void @vfree(ptr noundef %5) #8
  %oob_buf = getelementptr inbounds %struct.mtdswap_dev, ptr %d, i32 0, i32 20
  %6 = ptrtoint ptr %oob_buf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %oob_buf, align 4
  tail call void @kfree(ptr noundef %7) #8
  %page_buf = getelementptr inbounds %struct.mtdswap_dev, ptr %d, i32 0, i32 19
  %8 = ptrtoint ptr %page_buf to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %page_buf, align 8
  tail call void @kfree(ptr noundef %9) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtoul(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_block_isbad(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vmalloc(i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vzalloc(i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_last(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtdswap_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @mtdswap_show, ptr noundef %1) #8
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtdswap_show(ptr noundef %s, ptr nocapture noundef readnone %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %lock = getelementptr inbounds %struct.mtd_blktrans_dev, ptr %3, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %arrayidx = getelementptr %struct.mtdswap_dev, ptr %1, i32 0, i32 10, i32 0
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %count4 = getelementptr %struct.mtdswap_dev, ptr %1, i32 0, i32 10, i32 0, i32 1
  %6 = ptrtoint ptr %count4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %count4, align 4
  %call = tail call ptr @rb_first(ptr noundef %arrayidx) #8
  %erase_count = getelementptr inbounds %struct.swap_eb, ptr %call, i32 0, i32 4
  %8 = ptrtoint ptr %erase_count to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %erase_count, align 4
  %call8 = tail call ptr @rb_last(ptr noundef %arrayidx) #8
  %erase_count11 = getelementptr inbounds %struct.swap_eb, ptr %call8, i32 0, i32 4
  %10 = ptrtoint ptr %erase_count11 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %erase_count11, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %count.sroa.0.0 = phi i32 [ %7, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %min.sroa.0.0 = phi i32 [ %9, %if.then ], [ -1, %entry.if.end_crit_edge ]
  %max.sroa.0.0 = phi i32 [ %11, %if.then ], [ -1, %entry.if.end_crit_edge ]
  %arrayidx.1 = getelementptr %struct.mtdswap_dev, ptr %1, i32 0, i32 10, i32 1
  %12 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.1, align 4
  %tobool.not.1 = icmp eq ptr %13, null
  br i1 %tobool.not.1, label %if.end.if.end.1_crit_edge, label %if.then.1

if.end.if.end.1_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.1

if.then.1:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %count4.1 = getelementptr %struct.mtdswap_dev, ptr %1, i32 0, i32 10, i32 1, i32 1
  %14 = ptrtoint ptr %count4.1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %count4.1, align 4
  %call.1 = tail call ptr @rb_first(ptr noundef %arrayidx.1) #8
  %erase_count.1 = getelementptr inbounds %struct.swap_eb, ptr %call.1, i32 0, i32 4
  %16 = ptrtoint ptr %erase_count.1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %erase_count.1, align 4
  %call8.1 = tail call ptr @rb_last(ptr noundef %arrayidx.1) #8
  %erase_count11.1 = getelementptr inbounds %struct.swap_eb, ptr %call8.1, i32 0, i32 4
  %18 = ptrtoint ptr %erase_count11.1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %erase_count11.1, align 4
  br label %if.end.1

if.end.1:                                         ; preds = %if.then.1, %if.end.if.end.1_crit_edge
  %count.sroa.6.0 = phi i32 [ %15, %if.then.1 ], [ 0, %if.end.if.end.1_crit_edge ]
  %min.sroa.5.0 = phi i32 [ %17, %if.then.1 ], [ -1, %if.end.if.end.1_crit_edge ]
  %max.sroa.5.0 = phi i32 [ %19, %if.then.1 ], [ -1, %if.end.if.end.1_crit_edge ]
  %arrayidx.2 = getelementptr %struct.mtdswap_dev, ptr %1, i32 0, i32 10, i32 2
  %20 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx.2, align 4
  %tobool.not.2 = icmp eq ptr %21, null
  br i1 %tobool.not.2, label %if.end.1.if.end.2_crit_edge, label %if.then.2

if.end.1.if.end.2_crit_edge:                      ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.2

if.then.2:                                        ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #10
  %count4.2 = getelementptr %struct.mtdswap_dev, ptr %1, i32 0, i32 10, i32 2, i32 1
  %22 = ptrtoint ptr %count4.2 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %count4.2, align 4
  %call.2 = tail call ptr @rb_first(ptr noundef %arrayidx.2) #8
  %erase_count.2 = getelementptr inbounds %struct.swap_eb, ptr %call.2, i32 0, i32 4
  %24 = ptrtoint ptr %erase_count.2 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %erase_count.2, align 4
  %call8.2 = tail call ptr @rb_last(ptr noundef %arrayidx.2) #8
  %erase_count11.2 = getelementptr inbounds %struct.swap_eb, ptr %call8.2, i32 0, i32 4
  %26 = ptrtoint ptr %erase_count11.2 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %erase_count11.2, align 4
  br label %if.end.2

if.end.2:                                         ; preds = %if.then.2, %if.end.1.if.end.2_crit_edge
  %count.sroa.10.0 = phi i32 [ %23, %if.then.2 ], [ 0, %if.end.1.if.end.2_crit_edge ]
  %min.sroa.8.0 = phi i32 [ %25, %if.then.2 ], [ -1, %if.end.1.if.end.2_crit_edge ]
  %max.sroa.8.0 = phi i32 [ %27, %if.then.2 ], [ -1, %if.end.1.if.end.2_crit_edge ]
  %arrayidx.3 = getelementptr %struct.mtdswap_dev, ptr %1, i32 0, i32 10, i32 3
  %28 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx.3, align 4
  %tobool.not.3 = icmp eq ptr %29, null
  br i1 %tobool.not.3, label %if.end.2.if.end.3_crit_edge, label %if.then.3

if.end.2.if.end.3_crit_edge:                      ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.3

if.then.3:                                        ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #10
  %count4.3 = getelementptr %struct.mtdswap_dev, ptr %1, i32 0, i32 10, i32 3, i32 1
  %30 = ptrtoint ptr %count4.3 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %count4.3, align 4
  %call.3 = tail call ptr @rb_first(ptr noundef %arrayidx.3) #8
  %erase_count.3 = getelementptr inbounds %struct.swap_eb, ptr %call.3, i32 0, i32 4
  %32 = ptrtoint ptr %erase_count.3 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %erase_count.3, align 4
  %call8.3 = tail call ptr @rb_last(ptr noundef %arrayidx.3) #8
  %erase_count11.3 = getelementptr inbounds %struct.swap_eb, ptr %call8.3, i32 0, i32 4
  %34 = ptrtoint ptr %erase_count11.3 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %erase_count11.3, align 4
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.3, %if.end.2.if.end.3_crit_edge
  %count.sroa.14.0 = phi i32 [ %31, %if.then.3 ], [ 0, %if.end.2.if.end.3_crit_edge ]
  %min.sroa.11.0 = phi i32 [ %33, %if.then.3 ], [ -1, %if.end.2.if.end.3_crit_edge ]
  %max.sroa.11.0 = phi i32 [ %35, %if.then.3 ], [ -1, %if.end.2.if.end.3_crit_edge ]
  %arrayidx.4 = getelementptr %struct.mtdswap_dev, ptr %1, i32 0, i32 10, i32 4
  %36 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx.4, align 4
  %tobool.not.4 = icmp eq ptr %37, null
  br i1 %tobool.not.4, label %if.end.3.if.end.4_crit_edge, label %if.then.4

if.end.3.if.end.4_crit_edge:                      ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.4

if.then.4:                                        ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #10
  %count4.4 = getelementptr %struct.mtdswap_dev, ptr %1, i32 0, i32 10, i32 4, i32 1
  %38 = ptrtoint ptr %count4.4 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %count4.4, align 4
  %call.4 = tail call ptr @rb_first(ptr noundef %arrayidx.4) #8
  %erase_count.4 = getelementptr inbounds %struct.swap_eb, ptr %call.4, i32 0, i32 4
  %40 = ptrtoint ptr %erase_count.4 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %erase_count.4, align 4
  %call8.4 = tail call ptr @rb_last(ptr noundef %arrayidx.4) #8
  %erase_count11.4 = getelementptr inbounds %struct.swap_eb, ptr %call8.4, i32 0, i32 4
  %42 = ptrtoint ptr %erase_count11.4 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %erase_count11.4, align 4
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.4, %if.end.3.if.end.4_crit_edge
  %count.sroa.18.0 = phi i32 [ %39, %if.then.4 ], [ 0, %if.end.3.if.end.4_crit_edge ]
  %min.sroa.14.0 = phi i32 [ %41, %if.then.4 ], [ -1, %if.end.3.if.end.4_crit_edge ]
  %max.sroa.14.0 = phi i32 [ %43, %if.then.4 ], [ -1, %if.end.3.if.end.4_crit_edge ]
  %arrayidx.5 = getelementptr %struct.mtdswap_dev, ptr %1, i32 0, i32 10, i32 5
  %44 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx.5, align 4
  %tobool.not.5 = icmp eq ptr %45, null
  br i1 %tobool.not.5, label %if.end.4.if.end.5_crit_edge, label %if.then.5

if.end.4.if.end.5_crit_edge:                      ; preds = %if.end.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.5

if.then.5:                                        ; preds = %if.end.4
  call void @__sanitizer_cov_trace_pc() #10
  %count4.5 = getelementptr %struct.mtdswap_dev, ptr %1, i32 0, i32 10, i32 5, i32 1
  %46 = ptrtoint ptr %count4.5 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %count4.5, align 4
  %call.5 = tail call ptr @rb_first(ptr noundef %arrayidx.5) #8
  %erase_count.5 = getelementptr inbounds %struct.swap_eb, ptr %call.5, i32 0, i32 4
  %48 = ptrtoint ptr %erase_count.5 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %erase_count.5, align 4
  %call8.5 = tail call ptr @rb_last(ptr noundef %arrayidx.5) #8
  %erase_count11.5 = getelementptr inbounds %struct.swap_eb, ptr %call8.5, i32 0, i32 4
  %50 = ptrtoint ptr %erase_count11.5 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %erase_count11.5, align 4
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.5, %if.end.4.if.end.5_crit_edge
  %count.sroa.22.0 = phi i32 [ %47, %if.then.5 ], [ 0, %if.end.4.if.end.5_crit_edge ]
  %min.sroa.17.0 = phi i32 [ %49, %if.then.5 ], [ -1, %if.end.4.if.end.5_crit_edge ]
  %max.sroa.17.0 = phi i32 [ %51, %if.then.5 ], [ -1, %if.end.4.if.end.5_crit_edge ]
  %arrayidx.6 = getelementptr %struct.mtdswap_dev, ptr %1, i32 0, i32 10, i32 6
  %52 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %arrayidx.6, align 4
  %tobool.not.6 = icmp eq ptr %53, null
  br i1 %tobool.not.6, label %if.end.5.if.end.6_crit_edge, label %if.then.6

if.end.5.if.end.6_crit_edge:                      ; preds = %if.end.5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.6

if.then.6:                                        ; preds = %if.end.5
  call void @__sanitizer_cov_trace_pc() #10
  %count4.6 = getelementptr %struct.mtdswap_dev, ptr %1, i32 0, i32 10, i32 6, i32 1
  %54 = ptrtoint ptr %count4.6 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %count4.6, align 4
  %call.6 = tail call ptr @rb_first(ptr noundef %arrayidx.6) #8
  %erase_count.6 = getelementptr inbounds %struct.swap_eb, ptr %call.6, i32 0, i32 4
  %56 = ptrtoint ptr %erase_count.6 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %erase_count.6, align 4
  %call8.6 = tail call ptr @rb_last(ptr noundef %arrayidx.6) #8
  %erase_count11.6 = getelementptr inbounds %struct.swap_eb, ptr %call8.6, i32 0, i32 4
  %58 = ptrtoint ptr %erase_count11.6 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %erase_count11.6, align 4
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.6, %if.end.5.if.end.6_crit_edge
  %count.sroa.26.0 = phi i32 [ %55, %if.then.6 ], [ 0, %if.end.5.if.end.6_crit_edge ]
  %min.sroa.20.0 = phi i32 [ %57, %if.then.6 ], [ -1, %if.end.5.if.end.6_crit_edge ]
  %max.sroa.20.0 = phi i32 [ %59, %if.then.6 ], [ -1, %if.end.5.if.end.6_crit_edge ]
  %curr_write = getelementptr inbounds %struct.mtdswap_dev, ptr %1, i32 0, i32 18
  %60 = ptrtoint ptr %curr_write to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %curr_write, align 4
  %tobool14.not = icmp eq ptr %61, null
  br i1 %tobool14.not, label %if.end.6.if.end18_crit_edge, label %if.then15

if.end.6.if.end18_crit_edge:                      ; preds = %if.end.6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18

if.then15:                                        ; preds = %if.end.6
  call void @__sanitizer_cov_trace_pc() #10
  %curr_write_pos = getelementptr inbounds %struct.mtdswap_dev, ptr %1, i32 0, i32 17
  %62 = ptrtoint ptr %curr_write_pos to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %curr_write_pos, align 8
  %erase_count17 = getelementptr inbounds %struct.swap_eb, ptr %61, i32 0, i32 4
  %64 = ptrtoint ptr %erase_count17 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %erase_count17, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.then15, %if.end.6.if.end18_crit_edge
  %cwp.0 = phi i32 [ %63, %if.then15 ], [ 0, %if.end.6.if.end18_crit_edge ]
  %cwecount.0 = phi i32 [ %65, %if.then15 ], [ 0, %if.end.6.if.end18_crit_edge ]
  %eblks = getelementptr inbounds %struct.mtdswap_dev, ptr %1, i32 0, i32 5
  %66 = ptrtoint ptr %eblks to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %eblks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %cmp20152.not = icmp eq i32 %67, 0
  br i1 %cmp20152.not, label %if.end18.for.end26_crit_edge, label %for.body21.lr.ph

if.end18.for.end26_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end26

for.body21.lr.ph:                                 ; preds = %if.end18
  %eb_data = getelementptr inbounds %struct.mtdswap_dev, ptr %1, i32 0, i32 9
  %68 = ptrtoint ptr %eb_data to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %eb_data, align 4
  br label %for.body21

for.body21:                                       ; preds = %for.body21.for.body21_crit_edge, %for.body21.lr.ph
  %sum.0154 = phi i32 [ 0, %for.body21.lr.ph ], [ %add, %for.body21.for.body21_crit_edge ]
  %i.1153 = phi i32 [ 0, %for.body21.lr.ph ], [ %inc25, %for.body21.for.body21_crit_edge ]
  %erase_count23 = getelementptr %struct.swap_eb, ptr %69, i32 %i.1153, i32 4
  %70 = ptrtoint ptr %erase_count23 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %erase_count23, align 4
  %add = add i32 %71, %sum.0154
  %inc25 = add nuw i32 %i.1153, 1
  %exitcond.not = icmp eq i32 %inc25, %67
  br i1 %exitcond.not, label %for.body21.for.end26_crit_edge, label %for.body21.for.body21_crit_edge

for.body21.for.body21_crit_edge:                  ; preds = %for.body21
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body21

for.body21.for.end26_crit_edge:                   ; preds = %for.body21
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end26

for.end26:                                        ; preds = %for.body21.for.end26_crit_edge, %if.end18.for.end26_crit_edge
  %sum.0.lcssa = phi i32 [ 0, %if.end18.for.end26_crit_edge ], [ %add, %for.body21.for.end26_crit_edge ]
  %mtd = getelementptr inbounds %struct.mtdswap_dev, ptr %1, i32 0, i32 1
  %72 = ptrtoint ptr %mtd to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %mtd, align 4
  %erasesize = getelementptr inbounds %struct.mtd_info, ptr %73, i32 0, i32 3
  %74 = ptrtoint ptr %erasesize to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %erasesize, align 8
  %conv28 = zext i32 %75 to i64
  br label %while.cond.i.i.i

while.cond.i.i.i:                                 ; preds = %while.cond.i.i.i.while.cond.i.i.i_crit_edge, %for.end26
  %mtd.addr.0.i.i.i = phi ptr [ %73, %for.end26 ], [ %77, %while.cond.i.i.i.while.cond.i.i.i_crit_edge ]
  %parent.i.i.i = getelementptr inbounds %struct.mtd_info, ptr %mtd.addr.0.i.i.i, i32 0, i32 62
  %76 = ptrtoint ptr %parent.i.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %parent.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %77, null
  br i1 %tobool.not.i.i.i, label %mtd_can_have_bb.exit.i, label %while.cond.i.i.i.while.cond.i.i.i_crit_edge

while.cond.i.i.i.while.cond.i.i.i_crit_edge:      ; preds = %while.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.i.i.i

mtd_can_have_bb.exit.i:                           ; preds = %while.cond.i.i.i
  %conv = zext i32 %67 to i64
  %mul = mul nuw i64 %conv28, %conv
  %_block_isbad.i.i = getelementptr inbounds %struct.mtd_info, ptr %mtd.addr.0.i.i.i, i32 0, i32 42
  %78 = ptrtoint ptr %_block_isbad.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %_block_isbad.i.i, align 4
  %tobool.i.not.i = icmp ne ptr %79, null
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %mul)
  %cmp10.i = icmp ne i64 %mul, 0
  %or.cond.i = and i1 %cmp10.i, %tobool.i.not.i
  br i1 %or.cond.i, label %mtd_can_have_bb.exit.i.for.body.i_crit_edge, label %mtd_can_have_bb.exit.i.mtdswap_badblocks.exit_crit_edge

mtd_can_have_bb.exit.i.mtdswap_badblocks.exit_crit_edge: ; preds = %mtd_can_have_bb.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mtdswap_badblocks.exit

mtd_can_have_bb.exit.i.for.body.i_crit_edge:      ; preds = %mtd_can_have_bb.exit.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %mtd_can_have_bb.exit.i.for.body.i_crit_edge
  %badcnt.012.i = phi i32 [ %spec.select.i, %for.body.i.for.body.i_crit_edge ], [ 0, %mtd_can_have_bb.exit.i.for.body.i_crit_edge ]
  %offset.011.i = phi i64 [ %add.i, %for.body.i.for.body.i_crit_edge ], [ 0, %mtd_can_have_bb.exit.i.for.body.i_crit_edge ]
  %call1.i = tail call i32 @mtd_block_isbad(ptr noundef %73, i64 noundef %offset.011.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp ne i32 %call1.i, 0
  %inc.i = zext i1 %tobool2.not.i to i32
  %spec.select.i = add i32 %badcnt.012.i, %inc.i
  %80 = ptrtoint ptr %erasesize to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %erasesize, align 8
  %conv.i = zext i32 %81 to i64
  %add.i = add i64 %offset.011.i, %conv.i
  %cmp.i = icmp ult i64 %add.i, %mul
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.mtdswap_badblocks.exit_crit_edge

for.body.i.mtdswap_badblocks.exit_crit_edge:      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mtdswap_badblocks.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

mtdswap_badblocks.exit:                           ; preds = %for.body.i.mtdswap_badblocks.exit_crit_edge, %mtd_can_have_bb.exit.i.mtdswap_badblocks.exit_crit_edge
  %badcnt.2.i = phi i32 [ 0, %mtd_can_have_bb.exit.i.mtdswap_badblocks.exit_crit_edge ], [ %spec.select.i, %for.body.i.mtdswap_badblocks.exit_crit_edge ]
  %82 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %1, align 8
  %size = getelementptr inbounds %struct.mtd_blktrans_dev, ptr %83, i32 0, i32 6
  %84 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %85)
  %cmp33156.not = icmp eq i32 %85, 0
  br i1 %cmp33156.not, label %mtdswap_badblocks.exit.for.end44_crit_edge, label %for.body35.lr.ph

mtdswap_badblocks.exit.for.end44_crit_edge:       ; preds = %mtdswap_badblocks.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end44

for.body35.lr.ph:                                 ; preds = %mtdswap_badblocks.exit
  %page_data = getelementptr inbounds %struct.mtdswap_dev, ptr %1, i32 0, i32 3
  %86 = ptrtoint ptr %page_data to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %page_data, align 4
  br label %for.body35

for.body35:                                       ; preds = %for.body35.for.body35_crit_edge, %for.body35.lr.ph
  %i.2158 = phi i32 [ 0, %for.body35.lr.ph ], [ %inc43, %for.body35.for.body35_crit_edge ]
  %mapped.0157 = phi i32 [ 0, %for.body35.lr.ph ], [ %spec.select, %for.body35.for.body35_crit_edge ]
  %arrayidx36 = getelementptr i32, ptr %87, i32 %i.2158
  %88 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %arrayidx36, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %89)
  %cmp37.not = icmp ne i32 %89, -1
  %inc40 = zext i1 %cmp37.not to i32
  %spec.select = add i32 %mapped.0157, %inc40
  %inc43 = add nuw i32 %i.2158, 1
  %exitcond162.not = icmp eq i32 %inc43, %85
  br i1 %exitcond162.not, label %for.body35.for.end44_crit_edge, label %for.body35.for.body35_crit_edge

for.body35.for.body35_crit_edge:                  ; preds = %for.body35
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body35

for.body35.for.end44_crit_edge:                   ; preds = %for.body35
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end44

for.end44:                                        ; preds = %for.body35.for.end44_crit_edge, %mtdswap_badblocks.exit.for.end44_crit_edge
  %mapped.0.lcssa = phi i32 [ 0, %mtdswap_badblocks.exit.for.end44_crit_edge ], [ %spec.select, %for.body35.for.end44_crit_edge ]
  %lock46 = getelementptr inbounds %struct.mtd_blktrans_dev, ptr %83, i32 0, i32 3
  tail call void @mutex_unlock(ptr noundef %lock46) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count.sroa.0.0)
  %tobool52.not = icmp eq i32 %count.sroa.0.0, 0
  br i1 %tobool52.not, label %for.end44.for.inc69_crit_edge, label %if.end54

for.end44.for.inc69_crit_edge:                    ; preds = %for.end44
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc69

if.end54:                                         ; preds = %for.end44
  call void @__sanitizer_cov_trace_cmp4(i32 %min.sroa.0.0, i32 %max.sroa.0.0)
  %cmp57.not = icmp eq i32 %min.sroa.0.0, %max.sroa.0.0
  br i1 %cmp57.not, label %if.else64, label %if.then59

if.then59:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.65, i32 noundef %count.sroa.0.0, i32 noundef %min.sroa.0.0, i32 noundef %max.sroa.0.0) #8
  br label %for.inc69

if.else64:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.65, i32 noundef %count.sroa.0.0, i32 noundef %min.sroa.0.0) #8
  br label %for.inc69

for.inc69:                                        ; preds = %if.else64, %if.then59, %for.end44.for.inc69_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count.sroa.6.0)
  %tobool52.not.1 = icmp eq i32 %count.sroa.6.0, 0
  br i1 %tobool52.not.1, label %for.inc69.for.inc69.1_crit_edge, label %if.end54.1

for.inc69.for.inc69.1_crit_edge:                  ; preds = %for.inc69
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc69.1

if.end54.1:                                       ; preds = %for.inc69
  call void @__sanitizer_cov_trace_cmp4(i32 %min.sroa.5.0, i32 %max.sroa.5.0)
  %cmp57.not.1 = icmp eq i32 %min.sroa.5.0, %max.sroa.5.0
  br i1 %cmp57.not.1, label %if.else64.1, label %if.then59.1

if.then59.1:                                      ; preds = %if.end54.1
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.66, i32 noundef %count.sroa.6.0, i32 noundef %min.sroa.5.0, i32 noundef %max.sroa.5.0) #8
  br label %for.inc69.1

if.else64.1:                                      ; preds = %if.end54.1
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.66, i32 noundef %count.sroa.6.0, i32 noundef %min.sroa.5.0) #8
  br label %for.inc69.1

for.inc69.1:                                      ; preds = %if.else64.1, %if.then59.1, %for.inc69.for.inc69.1_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count.sroa.10.0)
  %tobool52.not.2 = icmp eq i32 %count.sroa.10.0, 0
  br i1 %tobool52.not.2, label %for.inc69.1.for.inc69.2_crit_edge, label %if.end54.2

for.inc69.1.for.inc69.2_crit_edge:                ; preds = %for.inc69.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc69.2

if.end54.2:                                       ; preds = %for.inc69.1
  call void @__sanitizer_cov_trace_cmp4(i32 %min.sroa.8.0, i32 %max.sroa.8.0)
  %cmp57.not.2 = icmp eq i32 %min.sroa.8.0, %max.sroa.8.0
  br i1 %cmp57.not.2, label %if.else64.2, label %if.then59.2

if.then59.2:                                      ; preds = %if.end54.2
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.67, i32 noundef %count.sroa.10.0, i32 noundef %min.sroa.8.0, i32 noundef %max.sroa.8.0) #8
  br label %for.inc69.2

if.else64.2:                                      ; preds = %if.end54.2
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.67, i32 noundef %count.sroa.10.0, i32 noundef %min.sroa.8.0) #8
  br label %for.inc69.2

for.inc69.2:                                      ; preds = %if.else64.2, %if.then59.2, %for.inc69.1.for.inc69.2_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count.sroa.14.0)
  %tobool52.not.3 = icmp eq i32 %count.sroa.14.0, 0
  br i1 %tobool52.not.3, label %for.inc69.2.for.inc69.3_crit_edge, label %if.end54.3

for.inc69.2.for.inc69.3_crit_edge:                ; preds = %for.inc69.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc69.3

if.end54.3:                                       ; preds = %for.inc69.2
  call void @__sanitizer_cov_trace_cmp4(i32 %min.sroa.11.0, i32 %max.sroa.11.0)
  %cmp57.not.3 = icmp eq i32 %min.sroa.11.0, %max.sroa.11.0
  br i1 %cmp57.not.3, label %if.else64.3, label %if.then59.3

if.then59.3:                                      ; preds = %if.end54.3
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.68, i32 noundef %count.sroa.14.0, i32 noundef %min.sroa.11.0, i32 noundef %max.sroa.11.0) #8
  br label %for.inc69.3

if.else64.3:                                      ; preds = %if.end54.3
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.68, i32 noundef %count.sroa.14.0, i32 noundef %min.sroa.11.0) #8
  br label %for.inc69.3

for.inc69.3:                                      ; preds = %if.else64.3, %if.then59.3, %for.inc69.2.for.inc69.3_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count.sroa.18.0)
  %tobool52.not.4 = icmp eq i32 %count.sroa.18.0, 0
  br i1 %tobool52.not.4, label %for.inc69.3.for.inc69.4_crit_edge, label %if.end54.4

for.inc69.3.for.inc69.4_crit_edge:                ; preds = %for.inc69.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc69.4

if.end54.4:                                       ; preds = %for.inc69.3
  call void @__sanitizer_cov_trace_cmp4(i32 %min.sroa.14.0, i32 %max.sroa.14.0)
  %cmp57.not.4 = icmp eq i32 %min.sroa.14.0, %max.sroa.14.0
  br i1 %cmp57.not.4, label %if.else64.4, label %if.then59.4

if.then59.4:                                      ; preds = %if.end54.4
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.69, i32 noundef %count.sroa.18.0, i32 noundef %min.sroa.14.0, i32 noundef %max.sroa.14.0) #8
  br label %for.inc69.4

if.else64.4:                                      ; preds = %if.end54.4
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.69, i32 noundef %count.sroa.18.0, i32 noundef %min.sroa.14.0) #8
  br label %for.inc69.4

for.inc69.4:                                      ; preds = %if.else64.4, %if.then59.4, %for.inc69.3.for.inc69.4_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count.sroa.22.0)
  %tobool52.not.5 = icmp eq i32 %count.sroa.22.0, 0
  br i1 %tobool52.not.5, label %for.inc69.4.for.inc69.5_crit_edge, label %if.end54.5

for.inc69.4.for.inc69.5_crit_edge:                ; preds = %for.inc69.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc69.5

if.end54.5:                                       ; preds = %for.inc69.4
  call void @__sanitizer_cov_trace_cmp4(i32 %min.sroa.17.0, i32 %max.sroa.17.0)
  %cmp57.not.5 = icmp eq i32 %min.sroa.17.0, %max.sroa.17.0
  br i1 %cmp57.not.5, label %if.else64.5, label %if.then59.5

if.then59.5:                                      ; preds = %if.end54.5
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.70, i32 noundef %count.sroa.22.0, i32 noundef %min.sroa.17.0, i32 noundef %max.sroa.17.0) #8
  br label %for.inc69.5

if.else64.5:                                      ; preds = %if.end54.5
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.70, i32 noundef %count.sroa.22.0, i32 noundef %min.sroa.17.0) #8
  br label %for.inc69.5

for.inc69.5:                                      ; preds = %if.else64.5, %if.then59.5, %for.inc69.4.for.inc69.5_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count.sroa.26.0)
  %tobool52.not.6 = icmp eq i32 %count.sroa.26.0, 0
  br i1 %tobool52.not.6, label %for.inc69.5.for.inc69.6_crit_edge, label %if.end54.6

for.inc69.5.for.inc69.6_crit_edge:                ; preds = %for.inc69.5
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc69.6

if.end54.6:                                       ; preds = %for.inc69.5
  call void @__sanitizer_cov_trace_cmp4(i32 %min.sroa.20.0, i32 %max.sroa.20.0)
  %cmp57.not.6 = icmp eq i32 %min.sroa.20.0, %max.sroa.20.0
  br i1 %cmp57.not.6, label %if.else64.6, label %if.then59.6

if.then59.6:                                      ; preds = %if.end54.6
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.71, i32 noundef %count.sroa.26.0, i32 noundef %min.sroa.20.0, i32 noundef %max.sroa.20.0) #8
  br label %for.inc69.6

if.else64.6:                                      ; preds = %if.end54.6
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.71, i32 noundef %count.sroa.26.0, i32 noundef %min.sroa.20.0) #8
  br label %for.inc69.6

for.inc69.6:                                      ; preds = %if.else64.6, %if.then59.6, %for.inc69.5.for.inc69.6_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %badcnt.2.i)
  %tobool72.not = icmp eq i32 %badcnt.2.i, 0
  br i1 %tobool72.not, label %for.inc69.6.if.end74_crit_edge, label %if.then73

for.inc69.6.if.end74_crit_edge:                   ; preds = %for.inc69.6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end74

if.then73:                                        ; preds = %for.inc69.6
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.74, i32 noundef %badcnt.2.i) #8
  br label %if.end74

if.end74:                                         ; preds = %if.then73, %for.inc69.6.if.end74_crit_edge
  br i1 %tobool14.not, label %if.end74.if.end77_crit_edge, label %if.then76

if.end74.if.end77_crit_edge:                      ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end77

if.then76:                                        ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #10
  %pages_per_eblk = getelementptr inbounds %struct.mtdswap_dev, ptr %1, i32 0, i32 7
  %90 = ptrtoint ptr %pages_per_eblk to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %pages_per_eblk, align 4
  %sub = sub i32 %91, %cwp.0
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.75, i32 noundef %cwp.0, i32 noundef %sub, i32 noundef %cwecount.0) #8
  br label %if.end77

if.end77:                                         ; preds = %if.then76, %if.end74.if.end77_crit_edge
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.76, i32 noundef %sum.0.lcssa) #8
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.77) #8
  %sect_read_count = getelementptr inbounds %struct.mtdswap_dev, ptr %1, i32 0, i32 11
  %92 = ptrtoint ptr %sect_read_count to i32
  call void @__asan_load8_noabort(i32 %92)
  %93 = load i64, ptr %sect_read_count, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.78, i64 noundef %93) #8
  %sect_write_count = getelementptr inbounds %struct.mtdswap_dev, ptr %1, i32 0, i32 12
  %94 = ptrtoint ptr %sect_write_count to i32
  call void @__asan_load8_noabort(i32 %94)
  %95 = load i64, ptr %sect_write_count, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.79, i64 noundef %95) #8
  %discard_count = getelementptr inbounds %struct.mtdswap_dev, ptr %1, i32 0, i32 15
  %96 = ptrtoint ptr %discard_count to i32
  call void @__asan_load8_noabort(i32 %96)
  %97 = load i64, ptr %discard_count, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.80, i64 noundef %97) #8
  %mtd_read_count = getelementptr inbounds %struct.mtdswap_dev, ptr %1, i32 0, i32 14
  %98 = ptrtoint ptr %mtd_read_count to i32
  call void @__asan_load8_noabort(i32 %98)
  %99 = load i64, ptr %mtd_read_count, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.81, i64 noundef %99) #8
  %mtd_write_count = getelementptr inbounds %struct.mtdswap_dev, ptr %1, i32 0, i32 13
  %100 = ptrtoint ptr %mtd_write_count to i32
  call void @__asan_load8_noabort(i32 %100)
  %101 = load i64, ptr %mtd_write_count, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.82, i64 noundef %101) #8
  %discard_page_count = getelementptr inbounds %struct.mtdswap_dev, ptr %1, i32 0, i32 16
  %102 = ptrtoint ptr %discard_page_count to i32
  call void @__asan_load8_noabort(i32 %102)
  %103 = load i64, ptr %discard_page_count, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.83, i64 noundef %103) #8
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.77) #8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.84, i32 noundef %85) #8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.85, i32 noundef %mapped.0.lcssa) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 88)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 88)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind readnone }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !13, !15, !17, !18, !20, !21, !23, !25, !27, !28, !29, !31, !32, !34, !35, !37, !39, !41, !42, !43, !44, !45, !46, !47, !49, !50, !51, !53, !55, !56, !57, !58, !60, !61, !62, !64, !66, !67, !68, !69, !71, !72, !73, !75, !76, !77, !79, !80, !81, !82, !83, !85, !86, !87, !89, !90, !91, !92, !94, !95, !96, !98, !99, !100, !101, !103, !104, !105, !107, !109, !110, !111, !112, !114, !115, !116, !118, !119, !120, !122, !123, !124, !126, !127, !128, !130, !131, !132, !134, !135, !136, !137, !139, !140, !141, !142, !144, !145, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192}
!llvm.module.flags = !{!194, !195, !196, !197, !198, !199, !200, !201}
!llvm.ident = !{!202}

!0 = !{ptr @__param_partitions, !1, !"__param_partitions", i1 false, i1 false}
!1 = !{!"../drivers/mtd/mtdswap.c", i32 168, i32 1}
!2 = !{ptr @__UNIQUE_ID_partitionstype288, !1, !"__UNIQUE_ID_partitionstype288", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_partitions289, !4, !"__UNIQUE_ID_partitions289", i1 false, i1 false}
!4 = !{!"../drivers/mtd/mtdswap.c", i32 169, i32 1}
!5 = !{ptr @__param_spare_eblocks, !6, !"__param_spare_eblocks", i1 false, i1 false}
!6 = !{!"../drivers/mtd/mtdswap.c", i32 173, i32 1}
!7 = !{ptr @__UNIQUE_ID_spare_eblockstype290, !6, !"__UNIQUE_ID_spare_eblockstype290", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_spare_eblocks291, !9, !"__UNIQUE_ID_spare_eblocks291", i1 false, i1 false}
!9 = !{!"../drivers/mtd/mtdswap.c", i32 174, i32 1}
!10 = !{ptr @__param_header, !11, !"__param_header", i1 false, i1 false}
!11 = !{!"../drivers/mtd/mtdswap.c", i32 178, i32 1}
!12 = !{ptr @__UNIQUE_ID_headertype292, !11, !"__UNIQUE_ID_headertype292", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_header293, !14, !"__UNIQUE_ID_header293", i1 false, i1 false}
!14 = !{!"../drivers/mtd/mtdswap.c", i32 179, i32 1}
!15 = !{ptr @__initcall__kmod_mtdswap__294_1486_mtdswap_ops_init6, !16, !"__initcall__kmod_mtdswap__294_1486_mtdswap_ops_init6", i1 false, i1 false}
!16 = !{!"../drivers/mtd/mtdswap.c", i32 1486, i32 1}
!17 = !{ptr @__exitcall_mtdswap_ops_exit, !16, !"__exitcall_mtdswap_ops_exit", i1 false, i1 false}
!18 = !{ptr @__UNIQUE_ID_file295, !19, !"__UNIQUE_ID_file295", i1 false, i1 false}
!19 = !{!"../drivers/mtd/mtdswap.c", i32 1488, i32 1}
!20 = !{ptr @__UNIQUE_ID_license296, !19, !"__UNIQUE_ID_license296", i1 false, i1 false}
!21 = !{ptr @__UNIQUE_ID_author297, !22, !"__UNIQUE_ID_author297", i1 false, i1 false}
!22 = !{!"../drivers/mtd/mtdswap.c", i32 1489, i32 1}
!23 = !{ptr @__UNIQUE_ID_description298, !24, !"__UNIQUE_ID_description298", i1 false, i1 false}
!24 = !{!"../drivers/mtd/mtdswap.c", i32 1490, i32 1}
!25 = !{ptr @header, !26, !"header", i1 false, i1 false}
!26 = !{!"../drivers/mtd/mtdswap.c", i32 177, i32 13}
!27 = !{ptr @__param_str_partitions, !1, !"__param_str_partitions", i1 false, i1 false}
!28 = !{ptr @__param_string_partitions, !1, !"__param_string_partitions", i1 false, i1 false}
!29 = !{ptr @partitions, !30, !"partitions", i1 false, i1 false}
!30 = !{!"../drivers/mtd/mtdswap.c", i32 167, i32 13}
!31 = !{ptr @__param_str_spare_eblocks, !6, !"__param_str_spare_eblocks", i1 false, i1 false}
!32 = !{ptr @spare_eblocks, !33, !"spare_eblocks", i1 false, i1 false}
!33 = !{!"../drivers/mtd/mtdswap.c", i32 172, i32 21}
!34 = !{ptr @__param_str_header, !11, !"__param_str_header", i1 false, i1 false}
!35 = !{ptr @.str, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/mtd/mtdswap.c", i32 1472, i32 11}
!37 = !{ptr @mtdswap_ops, !38, !"mtdswap_ops", i1 false, i1 false}
!38 = !{!"../drivers/mtd/mtdswap.c", i32 1471, i32 32}
!39 = !{ptr @.str.1, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/mtd/mtdswap.c", i32 1122, i32 3}
!41 = !{ptr @.str.2, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.3, !40, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.4, !40, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.5, !40, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @mtdswap_readsect._entry, !40, !"_entry", i1 false, i1 false}
!46 = !{ptr @mtdswap_readsect._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.7, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/mtd/mtdswap.c", i32 1133, i32 3}
!49 = !{ptr @mtdswap_readsect._entry.6, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @mtdswap_readsect._entry_ptr.8, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.9, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/mtd/mtdswap.c", i32 1071, i32 31}
!53 = !{ptr @.str.10, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/mtd/mtdswap.c", i32 653, i32 3}
!55 = !{ptr @.str.11, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @mtdswap_write_block._entry, !54, !"_entry", i1 false, i1 false}
!57 = !{ptr @mtdswap_write_block._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.13, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/mtd/mtdswap.c", i32 659, i32 3}
!60 = !{ptr @mtdswap_write_block._entry.12, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @mtdswap_write_block._entry_ptr.14, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @mtdswap_choose_wl_tree.pick_cnt, !63, !"pick_cnt", i1 false, i1 false}
!63 = !{!"../drivers/mtd/mtdswap.c", i32 802, i32 22}
!64 = !{ptr @.str.15, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/mtd/mtdswap.c", i32 696, i32 3}
!66 = !{ptr @.str.16, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @mtdswap_move_block._entry, !65, !"_entry", i1 false, i1 false}
!68 = !{ptr @mtdswap_move_block._entry_ptr, !65, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.18, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/mtd/mtdswap.c", i32 706, i32 3}
!71 = !{ptr @mtdswap_move_block._entry.17, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @mtdswap_move_block._entry_ptr.19, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.21, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/mtd/mtdswap.c", i32 715, i32 3}
!75 = !{ptr @mtdswap_move_block._entry.20, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @mtdswap_move_block._entry_ptr.22, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.23, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/mtd/mtdswap.c", i32 266, i32 2}
!79 = !{ptr @.str.24, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @.str.25, !78, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @mtdswap_handle_badblock._entry, !78, !"_entry", i1 false, i1 false}
!82 = !{ptr @mtdswap_handle_badblock._entry_ptr, !78, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.27, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/mtd/mtdswap.c", i32 270, i32 3}
!85 = !{ptr @mtdswap_handle_badblock._entry.26, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @mtdswap_handle_badblock._entry_ptr.28, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.29, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/mtd/mtdswap.c", i32 545, i32 4}
!89 = !{ptr @.str.30, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @mtdswap_erase_block._entry, !88, !"_entry", i1 false, i1 false}
!91 = !{ptr @mtdswap_erase_block._entry_ptr, !88, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.32, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/mtd/mtdswap.c", i32 552, i32 3}
!94 = !{ptr @mtdswap_erase_block._entry.31, !93, !"_entry", i1 false, i1 false}
!95 = !{ptr @mtdswap_erase_block._entry_ptr.33, !93, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.34, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/mtd/mtdswap.c", i32 394, i32 3}
!98 = !{ptr @.str.35, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @mtdswap_write_marker._entry, !97, !"_entry", i1 false, i1 false}
!100 = !{ptr @mtdswap_write_marker._entry_ptr, !97, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.37, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/mtd/mtdswap.c", i32 402, i32 3}
!103 = !{ptr @mtdswap_write_marker._entry.36, !102, !"_entry", i1 false, i1 false}
!104 = !{ptr @mtdswap_write_marker._entry_ptr.38, !102, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.39, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/mtd/mtdswap.c", i32 1347, i32 36}
!107 = !{ptr @.str.40, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/mtd/mtdswap.c", i32 1359, i32 3}
!109 = !{ptr @.str.41, !108, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @mtdswap_add_mtd._entry, !108, !"_entry", i1 false, i1 false}
!111 = !{ptr @mtdswap_add_mtd._entry_ptr, !108, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.43, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/mtd/mtdswap.c", i32 1365, i32 3}
!114 = !{ptr @mtdswap_add_mtd._entry.42, !113, !"_entry", i1 false, i1 false}
!115 = !{ptr @mtdswap_add_mtd._entry_ptr.44, !113, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @.str.46, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/mtd/mtdswap.c", i32 1371, i32 3}
!118 = !{ptr @mtdswap_add_mtd._entry.45, !117, !"_entry", i1 false, i1 false}
!119 = !{ptr @mtdswap_add_mtd._entry_ptr.47, !117, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @.str.49, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/mtd/mtdswap.c", i32 1384, i32 3}
!122 = !{ptr @mtdswap_add_mtd._entry.48, !121, !"_entry", i1 false, i1 false}
!123 = !{ptr @mtdswap_add_mtd._entry_ptr.50, !121, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @.str.52, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/mtd/mtdswap.c", i32 1395, i32 3}
!126 = !{ptr @mtdswap_add_mtd._entry.51, !125, !"_entry", i1 false, i1 false}
!127 = !{ptr @mtdswap_add_mtd._entry_ptr.53, !125, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @.str.55, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/mtd/mtdswap.c", i32 1412, i32 2}
!130 = !{ptr @mtdswap_add_mtd._entry.54, !129, !"_entry", i1 false, i1 false}
!131 = !{ptr @mtdswap_add_mtd._entry_ptr.56, !129, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @.str.57, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/mtd/mtdswap.c", i32 1328, i32 2}
!134 = !{ptr @.str.58, !133, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @mtdswap_init._entry, !133, !"_entry", i1 false, i1 false}
!136 = !{ptr @mtdswap_init._entry_ptr, !133, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @.str.59, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/mtd/mtdswap.c", i32 306, i32 3}
!139 = !{ptr @.str.60, !138, !"<string literal>", i1 false, i1 false}
!140 = !{ptr @mtdswap_read_oob._entry, !138, !"_entry", i1 false, i1 false}
!141 = !{ptr @mtdswap_read_oob._entry_ptr, !138, !"_entry_ptr", i1 false, i1 false}
!142 = !{ptr @.str.62, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/mtd/mtdswap.c", i32 312, i32 3}
!144 = !{ptr @mtdswap_read_oob._entry.61, !143, !"_entry", i1 false, i1 false}
!145 = !{ptr @mtdswap_read_oob._entry_ptr.63, !143, !"_entry_ptr", i1 false, i1 false}
!146 = !{ptr @.str.64, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/mtd/mtdswap.c", i32 1265, i32 22}
!148 = !{ptr @mtdswap_fops, !149, !"mtdswap_fops", i1 false, i1 false}
!149 = !{!"../drivers/mtd/mtdswap.c", i32 1253, i32 1}
!150 = !{ptr @.str.65, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/mtd/mtdswap.c", i32 1178, i32 3}
!152 = !{ptr @.str.66, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/mtd/mtdswap.c", i32 1178, i32 12}
!154 = !{ptr @.str.67, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/mtd/mtdswap.c", i32 1178, i32 20}
!156 = !{ptr @.str.68, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/mtd/mtdswap.c", i32 1178, i32 27}
!158 = !{ptr @.str.69, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/mtd/mtdswap.c", i32 1178, i32 35}
!160 = !{ptr @.str.70, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/mtd/mtdswap.c", i32 1178, i32 44}
!162 = !{ptr @.str.71, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/mtd/mtdswap.c", i32 1178, i32 55}
!164 = distinct !{null, !165, !"name", i1 false, i1 false}
!165 = !{!"../drivers/mtd/mtdswap.c", i32 1177, i32 28}
!166 = !{ptr @.str.72, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/mtd/mtdswap.c", i32 1220, i32 18}
!168 = !{ptr @.str.73, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/mtd/mtdswap.c", i32 1224, i32 18}
!170 = !{ptr @.str.74, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/mtd/mtdswap.c", i32 1229, i32 17}
!172 = !{ptr @.str.75, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/mtd/mtdswap.c", i32 1232, i32 17}
!174 = !{ptr @.str.76, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/mtd/mtdswap.c", i32 1236, i32 16}
!176 = !{ptr @.str.77, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/mtd/mtdswap.c", i32 1238, i32 14}
!178 = !{ptr @.str.78, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/mtd/mtdswap.c", i32 1240, i32 16}
!180 = !{ptr @.str.79, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/mtd/mtdswap.c", i32 1241, i32 16}
!182 = !{ptr @.str.80, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/mtd/mtdswap.c", i32 1242, i32 16}
!184 = !{ptr @.str.81, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/mtd/mtdswap.c", i32 1243, i32 16}
!186 = !{ptr @.str.82, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/mtd/mtdswap.c", i32 1244, i32 16}
!188 = !{ptr @.str.83, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/mtd/mtdswap.c", i32 1245, i32 16}
!190 = !{ptr @.str.84, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/mtd/mtdswap.c", i32 1248, i32 16}
!192 = !{ptr @.str.85, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/mtd/mtdswap.c", i32 1249, i32 16}
!194 = !{i32 1, !"wchar_size", i32 2}
!195 = !{i32 1, !"min_enum_size", i32 4}
!196 = !{i32 8, !"branch-target-enforcement", i32 0}
!197 = !{i32 8, !"sign-return-address", i32 0}
!198 = !{i32 8, !"sign-return-address-all", i32 0}
!199 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!200 = !{i32 7, !"uwtable", i32 1}
!201 = !{i32 7, !"frame-pointer", i32 2}
!202 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!203 = !{!"auto-init"}
!204 = !{i8 0, i8 2}
!205 = !{!"branch_weights", i32 1, i32 2000}
!206 = !{i64 2155085317, i64 2155085804, i64 2155085354, i64 2155085410, i64 2155085444, i64 2155085468, i64 2155085509, i64 2155085530, i64 2155085558, i64 2155085592}
!207 = !{!"branch_weights", i32 2000, i32 1}
!208 = !{i64 2148632104, i64 2148632384, i64 2148632718, i64 2148633052}
!209 = !{i64 1146560, i64 1146587, i64 1146609, i64 1146637}
!210 = !{i64 1146968, i64 1146995, i64 1147028, i64 1147049, i64 1147076, i64 1147102}
