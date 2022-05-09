; ModuleID = '/llk/IR_all_yes/drivers/mtd/rfd_ftl.c_pt.bc'
source_filename = "../drivers/mtd/rfd_ftl.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.41 }
%union.anon.41 = type { ptr }
%struct.mtd_blktrans_ops = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.partition = type { %struct.mtd_blktrans_dev, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, ptr, ptr }
%struct.mtd_blktrans_dev = type { ptr, %struct.list_head, ptr, %struct.mutex, i32, i8, i32, i32, i32, %struct.kref, ptr, ptr, ptr, %struct.list_head, ptr, %struct.spinlock, ptr, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.mtd_info = type { i8, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, %struct.notifier_block, %struct.mtd_ecc_stats, i32, ptr, ptr, %struct.device, i32, %struct.mtd_debug_info, ptr, ptr, ptr, ptr, %struct.list_head, %union.anon.43 }
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
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.mtd_debug_info = type { ptr, ptr, ptr }
%union.anon.43 = type { %struct.mtd_part, [160 x i8] }
%struct.mtd_part = type { %struct.list_head, i64, i64, i32 }
%struct.block = type { i32, i32, i32, i32, i32 }
%struct.hd_geometry = type { i8, i8, i16, i32 }
%struct.erase_info = type { i64, i64, i64 }

@__param_str_block_size = internal constant [19 x i8] c"rfd_ftl.block_size\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@block_size = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_block_size = internal constant %struct.kernel_param { ptr @__param_str_block_size, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.41 { ptr @block_size } }, section "__param", align 4
@__UNIQUE_ID_block_sizetype185 = internal constant [32 x i8] c"rfd_ftl.parmtype=block_size:int\00", section ".modinfo", align 1
@__UNIQUE_ID_block_size186 = internal constant [78 x i8] c"rfd_ftl.parm=block_size:Block size to use by RFD, defaults to erase unit size\00", section ".modinfo", align 1
@__initcall__kmod_rfd_ftl__190_824_rfd_ftl_tr_init6 = internal global ptr @rfd_ftl_tr_init, section ".initcall6.init", align 4
@rfd_ftl_tr = internal global { %struct.mtd_blktrans_ops, [48 x i8] } { %struct.mtd_blktrans_ops { ptr @.str, i32 256, i32 4, i32 512, i32 0, ptr @rfd_ftl_readsect, ptr @rfd_ftl_writesect, ptr @rfd_ftl_discardsect, ptr null, ptr @rfd_ftl_getgeo, ptr null, ptr null, ptr null, ptr @rfd_ftl_add_mtd, ptr @rfd_ftl_remove_dev, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr null }, [48 x i8] zeroinitializer }, align 32
@__exitcall_rfd_ftl_tr_exit = internal global ptr @rfd_ftl_tr_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file191 = internal constant [33 x i8] c"rfd_ftl.file=drivers/mtd/rfd_ftl\00", section ".modinfo", align 1
@__UNIQUE_ID_license192 = internal constant [20 x i8] c"rfd_ftl.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author193 = internal constant [42 x i8] c"rfd_ftl.author=Sean Young <sean@mess.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description194 = internal constant [107 x i8] c"rfd_ftl.description=Support code for RFD Flash Translation Layer, used by General Software's Embedded BIOS\00", section ".modinfo", align 1
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"rfd\00", [28 x i8] zeroinitializer }, align 32
@rfd_ftl_readsect._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 259, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\014rfd_ftl: error reading '%s' at 0x%lx\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rfd_ftl_readsect\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"drivers/mtd/rfd_ftl.c\00", [42 x i8] zeroinitializer }, align 32
@rfd_ftl_readsect._entry_ptr = internal global ptr @rfd_ftl_readsect._entry, section ".printk_index", align 4
@rfd_ftl_writesect.__UNIQUE_ID_ddebug188 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.5, ptr @.str.3, ptr @.str.6, i8 0, i8 -88, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"rfd_ftl\00", [24 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rfd_ftl_writesect\00", [46 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"rfd_ftl_writesect(sector=0x%lx)\0A\00", [63 x i8] zeroinitializer }, align 32
@do_writesect._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.3, i32 638, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013rfd_ftl: error writing '%s' at 0x%lx\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"do_writesect\00", [19 x i8] zeroinitializer }, align 32
@do_writesect._entry_ptr = internal global ptr @do_writesect._entry, section ".printk_index", align 4
@do_writesect._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.3, i32 657, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@do_writesect._entry_ptr.10 = internal global ptr @do_writesect._entry.9, section ".printk_index", align 4
@find_writable_block._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.3, i32 535, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013rfd_ftl: '%s': unable to read header at 0x%lx\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"find_writable_block\00", [44 x i8] zeroinitializer }, align 32
@find_writable_block._entry_ptr = internal global ptr @find_writable_block._entry, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@erase_block._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.3, i32 287, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013rfd_ftl: erase of region %llx,%llx on '%s' failed\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"erase_block\00", [20 x i8] zeroinitializer }, align 32
@erase_block._entry_ptr = internal global ptr @erase_block._entry, section ".printk_index", align 4
@erase_block._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.14, ptr @.str.3, i32 307, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013rfd_ftl: '%s': unable to write RFD header at 0x%lx\0A\00", [42 x i8] zeroinitializer }, align 32
@erase_block._entry_ptr.17 = internal global ptr @erase_block._entry.15, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@reclaim_block.__UNIQUE_ID_ddebug187 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.18, ptr @.str.3, ptr @.str.19, i8 0, i8 116, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"reclaim_block\00", [18 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"reclaim_block: reclaiming block #%d with %d used %d free sectors\0A\00", [62 x i8] zeroinitializer }, align 32
@move_block_contents._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.3, i32 345, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013rfd_ftl: error reading '%s' at 0x%lx\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"move_block_contents\00", [44 x i8] zeroinitializer }, align 32
@move_block_contents._entry_ptr = internal global ptr @move_block_contents._entry, section ".printk_index", align 4
@move_block_contents._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.21, ptr @.str.3, i32 385, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013rfd_ftl: '%s': Unable to read sector for relocation\0A\00", [41 x i8] zeroinitializer }, align 32
@move_block_contents._entry_ptr.24 = internal global ptr @move_block_contents._entry.22, section ".printk_index", align 4
@mark_sector_deleted._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.25, ptr @.str.3, i32 566, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mark_sector_deleted\00", [44 x i8] zeroinitializer }, align 32
@mark_sector_deleted._entry_ptr = internal global ptr @mark_sector_deleted._entry, section ".printk_index", align 4
@rfd_ftl_add_mtd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.3, i32 765, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\014rfd_ftl: please provide block_size\00", [59 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rfd_ftl_add_mtd\00", [16 x i8] zeroinitializer }, align 32
@rfd_ftl_add_mtd._entry_ptr = internal global ptr @rfd_ftl_add_mtd._entry, section ".printk_index", align 4
@rfd_ftl_add_mtd._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.27, ptr @.str.3, i32 779, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\014rfd_ftl: '%s': errors found, setting read-only\0A\00", [46 x i8] zeroinitializer }, align 32
@rfd_ftl_add_mtd._entry_ptr.30 = internal global ptr @rfd_ftl_add_mtd._entry.28, section ".printk_index", align 4
@rfd_ftl_add_mtd._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.27, ptr @.str.3, i32 784, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\016rfd_ftl: name: '%s' type: %d flags %x\0A\00", [55 x i8] zeroinitializer }, align 32
@rfd_ftl_add_mtd._entry_ptr.33 = internal global ptr @rfd_ftl_add_mtd._entry.31, section ".printk_index", align 4
@scan_header._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.3, i32 218, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\015rfd_ftl: no RFD magic found in '%s'\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"scan_header\00", [20 x i8] zeroinitializer }, align 32
@scan_header._entry_ptr = internal global ptr @scan_header._entry, section ".printk_index", align 4
@scan_header._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.35, ptr @.str.3, i32 225, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\014rfd_ftl: '%s': no empty erase unit found\0A\00", [52 x i8] zeroinitializer }, align 32
@scan_header._entry_ptr.38 = internal global ptr @scan_header._entry.36, section ".printk_index", align 4
@build_block_map._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.3, i32 127, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"\014rfd_ftl: '%s': unit #%d: entry %d corrupt, sector %d out of range\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"build_block_map\00", [16 x i8] zeroinitializer }, align 32
@build_block_map._entry_ptr = internal global ptr @build_block_map._entry, section ".printk_index", align 4
@build_block_map._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.40, ptr @.str.3, i32 134, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\014rfd_ftl: '%s': more than one entry for sector %d\0A\00", [44 x i8] zeroinitializer }, align 32
@build_block_map._entry_ptr.43 = internal global ptr @build_block_map._entry.41, section ".printk_index", align 4
@rfd_ftl_remove_dev.__UNIQUE_ID_ddebug189 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.44, ptr @.str.3, ptr @.str.45, i8 0, i8 -56, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rfd_ftl_remove_dev\00", [45 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"rfd_ftl_remove_dev:'%s': erase unit #%02d: %d erases\0A\00", [42 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 3]
@__sancov_gen_cov_switch_values.46 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 65535]
@__sancov_gen_cov_switch_values.47 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 65535]
@___asan_gen_.48 = private unnamed_addr constant [11 x i8] c"block_size\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 26, i32 12 }
@___asan_gen_.51 = private unnamed_addr constant [11 x i8] c"rfd_ftl_tr\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 809, i32 32 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 810, i32 11 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 258, i32 4 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 674, i32 2 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 637, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 656, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 533, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 285, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 306, i32 4 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 461, i32 2 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 343, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 383, i32 4 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 565, i32 3 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 765, i32 4 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 778, i32 4 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 783, i32 3 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 217, i32 3 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 224, i32 3 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 124, i32 4 }
@___asan_gen_.186 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 132, i32 4 }
@___asan_gen_.195 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.196 = private constant [25 x i8] c"../drivers/mtd/rfd_ftl.c\00", align 1
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 799, i32 3 }
@llvm.compiler.used = appending global [76 x ptr] [ptr @__UNIQUE_ID_author193, ptr @__UNIQUE_ID_block_size186, ptr @__UNIQUE_ID_block_sizetype185, ptr @__UNIQUE_ID_description194, ptr @__UNIQUE_ID_file191, ptr @__UNIQUE_ID_license192, ptr @__exitcall_rfd_ftl_tr_exit, ptr @__initcall__kmod_rfd_ftl__190_824_rfd_ftl_tr_init6, ptr @__param_block_size, ptr @build_block_map._entry, ptr @build_block_map._entry.41, ptr @build_block_map._entry_ptr, ptr @build_block_map._entry_ptr.43, ptr @do_writesect._entry, ptr @do_writesect._entry.9, ptr @do_writesect._entry_ptr, ptr @do_writesect._entry_ptr.10, ptr @erase_block._entry, ptr @erase_block._entry.15, ptr @erase_block._entry_ptr, ptr @erase_block._entry_ptr.17, ptr @find_writable_block._entry, ptr @find_writable_block._entry_ptr, ptr @mark_sector_deleted._entry, ptr @mark_sector_deleted._entry_ptr, ptr @move_block_contents._entry, ptr @move_block_contents._entry.22, ptr @move_block_contents._entry_ptr, ptr @move_block_contents._entry_ptr.24, ptr @rfd_ftl_add_mtd._entry, ptr @rfd_ftl_add_mtd._entry.28, ptr @rfd_ftl_add_mtd._entry.31, ptr @rfd_ftl_add_mtd._entry_ptr, ptr @rfd_ftl_add_mtd._entry_ptr.30, ptr @rfd_ftl_add_mtd._entry_ptr.33, ptr @rfd_ftl_readsect._entry, ptr @rfd_ftl_readsect._entry_ptr, ptr @rfd_ftl_tr_exit, ptr @scan_header._entry, ptr @scan_header._entry.36, ptr @scan_header._entry_ptr, ptr @scan_header._entry_ptr.38, ptr @block_size, ptr @rfd_ftl_tr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.29, ptr @.str.32, ptr @.str.34, ptr @.str.35, ptr @.str.37, ptr @.str.39, ptr @.str.40, ptr @.str.42, ptr @.str.44, ptr @.str.45], section "llvm.metadata"
@0 = internal global [50 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @block_size to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rfd_ftl_tr to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rfd_ftl_readsect._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_writesect._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_writesect._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @find_writable_block._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @erase_block._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @erase_block._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @move_block_contents._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @move_block_contents._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mark_sector_deleted._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rfd_ftl_add_mtd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rfd_ftl_add_mtd._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rfd_ftl_add_mtd._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scan_header._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scan_header._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @build_block_map._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @build_block_map._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @rfd_ftl_tr_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @register_mtd_blktrans(ptr noundef nonnull @rfd_ftl_tr) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @rfd_ftl_tr_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 @deregister_mtd_blktrans(ptr noundef nonnull @rfd_ftl_tr) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @deregister_mtd_blktrans(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_mtd_blktrans(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rfd_ftl_readsect(ptr nocapture noundef readonly %dev, i32 noundef %sector, ptr noundef %buf) #2 align 64 {
entry:
  %retlen = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retlen) #9
  %0 = ptrtoint ptr %retlen to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %retlen, align 4, !annotation !116
  %sector_count = getelementptr inbounds %struct.partition, ptr %dev, i32 0, i32 5
  %1 = ptrtoint ptr %sector_count to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %sector_count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %sector)
  %cmp.not = icmp ugt i32 %2, %sector
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %sector_map = getelementptr inbounds %struct.partition, ptr %dev, i32 0, i32 13
  %3 = ptrtoint ptr %sector_map to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %sector_map, align 4
  %arrayidx = getelementptr i32, ptr %4, i32 %sector
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %6)
  %cmp1.not = icmp eq i32 %6, -1
  br i1 %cmp1.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.end
  %mtd = getelementptr inbounds %struct.mtd_blktrans_dev, ptr %dev, i32 0, i32 2
  %7 = ptrtoint ptr %mtd to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mtd, align 4
  %conv = zext i32 %6 to i64
  %call = call i32 @mtd_read(ptr noundef %8, i64 noundef %conv, i32 noundef 512, ptr noundef nonnull %retlen, ptr noundef %buf) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %if.then2.do.end_crit_edge

if.then2.do.end_crit_edge:                        ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

land.lhs.true:                                    ; preds = %if.then2
  %9 = ptrtoint ptr %retlen to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %retlen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %10)
  %cmp3.not = icmp eq i32 %10, 512
  br i1 %cmp3.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.do.end_crit_edge

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end:                                           ; preds = %land.lhs.true.do.end_crit_edge, %if.then2.do.end_crit_edge
  %rc.0.ph = phi i32 [ -5, %land.lhs.true.do.end_crit_edge ], [ %call, %if.then2.do.end_crit_edge ]
  %11 = ptrtoint ptr %mtd to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mtd, align 4
  %name = getelementptr inbounds %struct.mtd_info, ptr %12, i32 0, i32 13
  %13 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %name, align 8
  %call12 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %14, i32 noundef %6) #12
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %15 = call ptr @memset(ptr %buf, i32 0, i32 512)
  br label %cleanup

cleanup:                                          ; preds = %if.else, %do.end, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.0.ph, %do.end ], [ -5, %entry.cleanup_crit_edge ], [ 0, %if.else ], [ 0, %land.lhs.true.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retlen) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rfd_ftl_writesect(ptr noundef %dev, i32 noundef %sector, ptr noundef %buf) #2 align 64 {
entry:
  %retlen.i47 = alloca i32, align 4
  %retlen.i = alloca i32, align 4
  %entry1.i = alloca i16, align 2
  %old_addr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old_addr) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rfd_ftl_writesect.__UNIQUE_ID_ddebug188, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rfd_ftl_writesect, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !117

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rfd_ftl_writesect.__UNIQUE_ID_ddebug188, ptr noundef nonnull @.str.6, i32 noundef %sector) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %reserved_block = getelementptr inbounds %struct.partition, ptr %dev, i32 0, i32 7
  %0 = ptrtoint ptr %reserved_block to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %reserved_block, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %cmp = icmp eq i32 %1, -1
  br i1 %cmp, label %do.end.err_crit_edge, label %if.end5

do.end.err_crit_edge:                             ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %err

if.end5:                                          ; preds = %do.end
  %sector_count = getelementptr inbounds %struct.partition, ptr %dev, i32 0, i32 5
  %2 = ptrtoint ptr %sector_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sector_count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %sector)
  %cmp6.not = icmp ugt i32 %3, %sector
  br i1 %cmp6.not, label %if.end8, label %if.end5.err_crit_edge

if.end5.err_crit_edge:                            ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %err

if.end8:                                          ; preds = %if.end5
  %sector_map = getelementptr inbounds %struct.partition, ptr %dev, i32 0, i32 13
  %4 = ptrtoint ptr %sector_map to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sector_map, align 4
  %arrayidx = getelementptr i32, ptr %5, i32 %sector
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %8 = ptrtoint ptr %old_addr to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %old_addr, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end8
  %i.095 = phi i32 [ 0, %if.end8 ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx10 = getelementptr i8, ptr %buf, i32 %i.095
  %9 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx10, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool11.not = icmp eq i8 %10, 0
  br i1 %tobool11.not, label %for.inc, label %if.end13

if.end13:                                         ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retlen.i) #9
  %11 = ptrtoint ptr %retlen.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %retlen.i, align 4, !annotation !116
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %entry1.i) #9
  %current_block.i = getelementptr inbounds %struct.partition, ptr %dev, i32 0, i32 8
  %12 = ptrtoint ptr %current_block.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %current_block.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %13)
  %cmp.i = icmp eq i32 %13, -1
  br i1 %cmp.i, label %cond.true.i.i, label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %if.end13
  %blocks.i = getelementptr inbounds %struct.partition, ptr %dev, i32 0, i32 14
  %14 = ptrtoint ptr %blocks.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %blocks.i, align 4
  %free_sectors.i = getelementptr %struct.block, ptr %15, i32 %13, i32 1
  %16 = ptrtoint ptr %free_sectors.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %free_sectors.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not.i = icmp eq i32 %17, 0
  br i1 %tobool.not.i, label %if.then.i, label %lor.lhs.false.i.if.end5.i_crit_edge

lor.lhs.false.i.if.end5.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5.i

if.then.i:                                        ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retlen.i47) #9
  %18 = ptrtoint ptr %retlen.i47 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -1, ptr %retlen.i47, align 4, !annotation !116
  br label %cond.end.i.i

cond.true.i.i:                                    ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retlen.i47) #9
  %19 = ptrtoint ptr %retlen.i47 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -1, ptr %retlen.i47, align 4, !annotation !116
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %20 = load volatile i32, ptr @jiffies, align 128
  %total_blocks.i.i = getelementptr inbounds %struct.partition, ptr %dev, i32 0, i32 2
  %21 = ptrtoint ptr %total_blocks.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %total_blocks.i.i, align 4
  %rem.i.i = urem i32 %20, %22
  br label %cond.end.i.i

cond.end.i.i:                                     ; preds = %cond.true.i.i, %if.then.i
  %cond.i.i = phi i32 [ %rem.i.i, %cond.true.i.i ], [ %13, %if.then.i ]
  %blocks.i.i = getelementptr inbounds %struct.partition, ptr %dev, i32 0, i32 14
  %total_blocks8.i.i = getelementptr inbounds %struct.partition, ptr %dev, i32 0, i32 2
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %if.end7.i.i.do.body.i.i_crit_edge, %cond.end.i.i
  %block.0.i.i = phi i32 [ %cond.i.i, %cond.end.i.i ], [ %spec.store.select.i.i, %if.end7.i.i.do.body.i.i_crit_edge ]
  %23 = ptrtoint ptr %blocks.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %blocks.i.i, align 4
  %free_sectors.i.i = getelementptr %struct.block, ptr %24, i32 %block.0.i.i, i32 1
  %25 = ptrtoint ptr %free_sectors.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %free_sectors.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool.not.i.i = icmp eq i32 %26, 0
  br i1 %tobool.not.i.i, label %do.body.i.i.if.end.i.i_crit_edge, label %land.lhs.true.i.i

do.body.i.i.if.end.i.i_crit_edge:                 ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %do.body.i.i
  %27 = ptrtoint ptr %reserved_block to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %reserved_block, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %block.0.i.i, i32 %28)
  %cmp2.not.i.i = icmp eq i32 %block.0.i.i, %28
  br i1 %cmp2.not.i.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, label %land.lhs.true.i.i.if.end10.i_crit_edge

land.lhs.true.i.i.if.end10.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10.i

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i.if.end.i.i_crit_edge, %do.body.i.i.if.end.i.i_crit_edge
  %arrayidx4.i.i = getelementptr %struct.block, ptr %24, i32 %block.0.i.i
  %29 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx4.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %30)
  %cmp5.i.i = icmp eq i32 %30, 3
  br i1 %cmp5.i.i, label %if.then6.i.i, label %if.end.i.i.if.end7.i.i_crit_edge

if.end.i.i.if.end7.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7.i.i

if.then6.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i = tail call fastcc i32 @erase_block(ptr noundef %dev, i32 noundef %block.0.i.i) #9
  br label %if.end7.i.i

if.end7.i.i:                                      ; preds = %if.then6.i.i, %if.end.i.i.if.end7.i.i_crit_edge
  %inc.i.i = add i32 %block.0.i.i, 1
  %31 = ptrtoint ptr %total_blocks8.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %total_blocks8.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i.i, i32 %32)
  %cmp9.not.i.i = icmp ult i32 %inc.i.i, %32
  %spec.store.select.i.i = select i1 %cmp9.not.i.i, i32 %inc.i.i, i32 0
  %cmp12.not.i.i = icmp eq i32 %spec.store.select.i.i, %cond.i.i
  br i1 %cmp12.not.i.i, label %if.then.i50, label %if.end7.i.i.do.body.i.i_crit_edge

if.end7.i.i.do.body.i.i_crit_edge:                ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i.i

if.then.i50:                                      ; preds = %if.end7.i.i
  %is_reclaiming.i = getelementptr inbounds %struct.partition, ptr %dev, i32 0, i32 10
  %33 = ptrtoint ptr %is_reclaiming.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %is_reclaiming.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool.not.i49 = icmp eq i32 %34, 0
  br i1 %tobool.not.i49, label %if.then1.i, label %if.then.i50.find_writable_block.exit.thread_crit_edge

if.then.i50.find_writable_block.exit.thread_crit_edge: ; preds = %if.then.i50
  call void @__sanitizer_cov_trace_pc() #11
  br label %find_writable_block.exit.thread

if.then1.i:                                       ; preds = %if.then.i50
  %call2.i = call fastcc i32 @reclaim_block(ptr noundef %dev, ptr noundef nonnull %old_addr) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i51 = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i51, label %if.end.i52, label %if.then1.i.find_writable_block.exit.thread_crit_edge

if.then1.i.find_writable_block.exit.thread_crit_edge: ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %find_writable_block.exit.thread

if.end.i52:                                       ; preds = %if.then1.i
  %35 = ptrtoint ptr %current_block.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %current_block.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %36)
  %cmp.i46.i = icmp eq i32 %36, -1
  br i1 %cmp.i46.i, label %cond.true.i49.i, label %if.end.i52.cond.end.i54.i_crit_edge

if.end.i52.cond.end.i54.i_crit_edge:              ; preds = %if.end.i52
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end.i54.i

cond.true.i49.i:                                  ; preds = %if.end.i52
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %37 = load volatile i32, ptr @jiffies, align 128
  %38 = ptrtoint ptr %total_blocks8.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %total_blocks8.i.i, align 4
  %rem.i48.i = urem i32 %37, %39
  br label %cond.end.i54.i

cond.end.i54.i:                                   ; preds = %cond.true.i49.i, %if.end.i52.cond.end.i54.i_crit_edge
  %cond.i50.i = phi i32 [ %rem.i48.i, %cond.true.i49.i ], [ %36, %if.end.i52.cond.end.i54.i_crit_edge ]
  br label %do.body.i58.i

do.body.i58.i:                                    ; preds = %if.end7.i70.i.do.body.i58.i_crit_edge, %cond.end.i54.i
  %block.0.i55.i = phi i32 [ %cond.i50.i, %cond.end.i54.i ], [ %spec.store.select.i68.i, %if.end7.i70.i.do.body.i58.i_crit_edge ]
  %40 = ptrtoint ptr %blocks.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %blocks.i.i, align 4
  %free_sectors.i56.i = getelementptr %struct.block, ptr %41, i32 %block.0.i55.i, i32 1
  %42 = ptrtoint ptr %free_sectors.i56.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %free_sectors.i56.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool.not.i57.i = icmp eq i32 %43, 0
  br i1 %tobool.not.i57.i, label %do.body.i58.i.if.end.i63.i_crit_edge, label %land.lhs.true.i60.i

do.body.i58.i.if.end.i63.i_crit_edge:             ; preds = %do.body.i58.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i63.i

land.lhs.true.i60.i:                              ; preds = %do.body.i58.i
  %44 = ptrtoint ptr %reserved_block to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %reserved_block, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %block.0.i55.i, i32 %45)
  %cmp2.not.i59.i = icmp eq i32 %block.0.i55.i, %45
  br i1 %cmp2.not.i59.i, label %land.lhs.true.i60.i.if.end.i63.i_crit_edge, label %land.lhs.true.i60.i.if.end10.i_crit_edge

land.lhs.true.i60.i.if.end10.i_crit_edge:         ; preds = %land.lhs.true.i60.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10.i

land.lhs.true.i60.i.if.end.i63.i_crit_edge:       ; preds = %land.lhs.true.i60.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i63.i

if.end.i63.i:                                     ; preds = %land.lhs.true.i60.i.if.end.i63.i_crit_edge, %do.body.i58.i.if.end.i63.i_crit_edge
  %arrayidx4.i61.i = getelementptr %struct.block, ptr %41, i32 %block.0.i55.i
  %46 = ptrtoint ptr %arrayidx4.i61.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx4.i61.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %47)
  %cmp5.i62.i = icmp eq i32 %47, 3
  br i1 %cmp5.i62.i, label %if.then6.i65.i, label %if.end.i63.i.if.end7.i70.i_crit_edge

if.end.i63.i.if.end7.i70.i_crit_edge:             ; preds = %if.end.i63.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7.i70.i

if.then6.i65.i:                                   ; preds = %if.end.i63.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i64.i = tail call fastcc i32 @erase_block(ptr noundef %dev, i32 noundef %block.0.i55.i) #9
  br label %if.end7.i70.i

if.end7.i70.i:                                    ; preds = %if.then6.i65.i, %if.end.i63.i.if.end7.i70.i_crit_edge
  %inc.i66.i = add i32 %block.0.i55.i, 1
  %48 = ptrtoint ptr %total_blocks8.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %total_blocks8.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i66.i, i32 %49)
  %cmp9.not.i67.i = icmp ult i32 %inc.i66.i, %49
  %spec.store.select.i68.i = select i1 %cmp9.not.i67.i, i32 %inc.i66.i, i32 0
  %cmp12.not.i69.i = icmp eq i32 %spec.store.select.i68.i, %cond.i50.i
  br i1 %cmp12.not.i69.i, label %if.end7.i70.i.find_writable_block.exit.thread_crit_edge, label %if.end7.i70.i.do.body.i58.i_crit_edge

if.end7.i70.i.do.body.i58.i_crit_edge:            ; preds = %if.end7.i70.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i58.i

if.end7.i70.i.find_writable_block.exit.thread_crit_edge: ; preds = %if.end7.i70.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %find_writable_block.exit.thread

if.end10.i:                                       ; preds = %land.lhs.true.i60.i.if.end10.i_crit_edge, %land.lhs.true.i.i.if.end10.i_crit_edge
  %block.1.i = phi i32 [ %block.0.i55.i, %land.lhs.true.i60.i.if.end10.i_crit_edge ], [ %block.0.i.i, %land.lhs.true.i.i.if.end10.i_crit_edge ]
  %mtd.i53 = getelementptr inbounds %struct.mtd_blktrans_dev, ptr %dev, i32 0, i32 2
  %50 = ptrtoint ptr %mtd.i53 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %mtd.i53, align 4
  %52 = ptrtoint ptr %blocks.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %blocks.i.i, align 4
  %offset.i55 = getelementptr %struct.block, ptr %53, i32 %block.1.i, i32 4
  %54 = ptrtoint ptr %offset.i55 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %offset.i55, align 4
  %conv.i56 = zext i32 %55 to i64
  %header_size.i = getelementptr inbounds %struct.partition, ptr %dev, i32 0, i32 6
  %56 = ptrtoint ptr %header_size.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %header_size.i, align 4
  %header_cache.i57 = getelementptr inbounds %struct.partition, ptr %dev, i32 0, i32 9
  %58 = ptrtoint ptr %header_cache.i57 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %header_cache.i57, align 4
  %call11.i = call i32 @mtd_read(ptr noundef %51, i64 noundef %conv.i56, i32 noundef %57, ptr noundef nonnull %retlen.i47, ptr noundef %59) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %tobool12.not.i = icmp eq i32 %call11.i, 0
  br i1 %tobool12.not.i, label %land.lhs.true.i59, label %if.end10.i.do.end.i63_crit_edge

if.end10.i.do.end.i63_crit_edge:                  ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i63

land.lhs.true.i59:                                ; preds = %if.end10.i
  %60 = ptrtoint ptr %retlen.i47 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %retlen.i47, align 4
  %62 = ptrtoint ptr %header_size.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %header_size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %61, i32 %63)
  %cmp14.not.i = icmp eq i32 %61, %63
  br i1 %cmp14.not.i, label %find_writable_block.exit, label %land.lhs.true.i59.do.end.i63_crit_edge

land.lhs.true.i59.do.end.i63_crit_edge:           ; preds = %land.lhs.true.i59
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i63

do.end.i63:                                       ; preds = %land.lhs.true.i59.do.end.i63_crit_edge, %if.end10.i.do.end.i63_crit_edge
  %rc.0.i60.ph = phi i32 [ -5, %land.lhs.true.i59.do.end.i63_crit_edge ], [ %call11.i, %if.end10.i.do.end.i63_crit_edge ]
  %64 = ptrtoint ptr %mtd.i53 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %mtd.i53, align 4
  %name.i61 = getelementptr inbounds %struct.mtd_info, ptr %65, i32 0, i32 13
  %66 = ptrtoint ptr %name.i61 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %name.i61, align 8
  %68 = ptrtoint ptr %blocks.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %blocks.i.i, align 4
  %offset24.i = getelementptr %struct.block, ptr %69, i32 %block.1.i, i32 4
  %70 = ptrtoint ptr %offset24.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %offset24.i, align 4
  %call25.i62 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %67, i32 noundef %71) #12
  br label %find_writable_block.exit.thread

find_writable_block.exit.thread:                  ; preds = %do.end.i63, %if.end7.i70.i.find_writable_block.exit.thread_crit_edge, %if.then1.i.find_writable_block.exit.thread_crit_edge, %if.then.i50.find_writable_block.exit.thread_crit_edge
  %rc.1.i66.ph = phi i32 [ %call2.i, %if.then1.i.find_writable_block.exit.thread_crit_edge ], [ %rc.0.i60.ph, %do.end.i63 ], [ -28, %if.then.i50.find_writable_block.exit.thread_crit_edge ], [ -28, %if.end7.i70.i.find_writable_block.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retlen.i47) #9
  br label %do_writesect.exit.thread

find_writable_block.exit:                         ; preds = %land.lhs.true.i59
  call void @__sanitizer_cov_trace_pc() #11
  %72 = ptrtoint ptr %current_block.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %block.1.i, ptr %current_block.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retlen.i47) #9
  br label %if.end5.i

if.end5.i:                                        ; preds = %find_writable_block.exit, %lor.lhs.false.i.if.end5.i_crit_edge
  %blocks6.i = getelementptr inbounds %struct.partition, ptr %dev, i32 0, i32 14
  %73 = ptrtoint ptr %blocks6.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %blocks6.i, align 4
  %75 = ptrtoint ptr %current_block.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %current_block.i, align 4
  %data_sectors_per_block.i = getelementptr inbounds %struct.partition, ptr %dev, i32 0, i32 4
  %77 = ptrtoint ptr %data_sectors_per_block.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %data_sectors_per_block.i, align 4
  %free_sectors.i41 = getelementptr %struct.block, ptr %74, i32 %76, i32 1
  %79 = ptrtoint ptr %free_sectors.i41 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %free_sectors.i41, align 4
  %sub.i = sub i32 %78, %80
  %header_cache.i42 = getelementptr inbounds %struct.partition, ptr %dev, i32 0, i32 9
  %81 = ptrtoint ptr %header_cache.i42 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %header_cache.i42, align 4
  br label %do.body.i

do.body.i:                                        ; preds = %if.end.i.do.body.i_crit_edge, %if.end5.i
  %i.0.i = phi i32 [ %sub.i, %if.end5.i ], [ %spec.store.select.i, %if.end.i.do.body.i_crit_edge ]
  %add.i43 = add i32 %i.0.i, 3
  %arrayidx.i = getelementptr i16, ptr %82, i32 %add.i43
  %83 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %arrayidx.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %84)
  %cmp.i44 = icmp eq i16 %84, -1
  br i1 %cmp.i44, label %find_free_sector.exit, label %if.end.i

if.end.i:                                         ; preds = %do.body.i
  %inc.i45 = add i32 %i.0.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i45, i32 %78)
  %cmp3.i = icmp eq i32 %inc.i45, %78
  %spec.store.select.i = select i1 %cmp3.i, i32 0, i32 %inc.i45
  %cmp7.not.i = icmp eq i32 %spec.store.select.i, %sub.i
  br i1 %cmp7.not.i, label %if.end.i.do_writesect.exit.thread_crit_edge, label %if.end.i.do.body.i_crit_edge

if.end.i.do.body.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i

if.end.i.do_writesect.exit.thread_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do_writesect.exit.thread

find_free_sector.exit:                            ; preds = %do.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0.i)
  %cmp10.i = icmp slt i32 %i.0.i, 0
  br i1 %cmp10.i, label %find_free_sector.exit.do_writesect.exit.thread_crit_edge, label %if.end12.i

find_free_sector.exit.do_writesect.exit.thread_crit_edge: ; preds = %find_free_sector.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do_writesect.exit.thread

if.end12.i:                                       ; preds = %find_free_sector.exit
  %header_sectors_per_block.i = getelementptr inbounds %struct.partition, ptr %dev, i32 0, i32 3
  %85 = ptrtoint ptr %header_sectors_per_block.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %header_sectors_per_block.i, align 4
  %add.i = add i32 %86, %i.0.i
  %mul.i = shl i32 %add.i, 9
  %offset.i = getelementptr %struct.block, ptr %74, i32 %76, i32 4
  %87 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %offset.i, align 4
  %add13.i = add i32 %mul.i, %88
  %mtd.i = getelementptr inbounds %struct.mtd_blktrans_dev, ptr %dev, i32 0, i32 2
  %89 = ptrtoint ptr %mtd.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %mtd.i, align 4
  %conv.i = zext i32 %add13.i to i64
  %call14.i = call i32 @mtd_write(ptr noundef %90, i64 noundef %conv.i, i32 noundef 512, ptr noundef nonnull %retlen.i, ptr noundef %buf) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %tobool15.not.i = icmp eq i32 %call14.i, 0
  br i1 %tobool15.not.i, label %land.lhs.true.i, label %if.end12.i.do.end.i_crit_edge

if.end12.i.do.end.i_crit_edge:                    ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %if.end12.i
  %91 = ptrtoint ptr %retlen.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %retlen.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %92)
  %cmp16.not.i = icmp eq i32 %92, 512
  br i1 %cmp16.not.i, label %if.end26.i, label %land.lhs.true.i.do.end.i_crit_edge

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

do.end.i:                                         ; preds = %land.lhs.true.i.do.end.i_crit_edge, %if.end12.i.do.end.i_crit_edge
  %rc.0.i.ph = phi i32 [ -5, %land.lhs.true.i.do.end.i_crit_edge ], [ %call14.i, %if.end12.i.do.end.i_crit_edge ]
  %93 = ptrtoint ptr %mtd.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %mtd.i, align 4
  %name.i = getelementptr inbounds %struct.mtd_info, ptr %94, i32 0, i32 13
  %95 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %name.i, align 8
  %call25.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %96, i32 noundef %add13.i) #12
  br label %do_writesect.exit.thread

if.end26.i:                                       ; preds = %land.lhs.true.i
  %97 = ptrtoint ptr %sector_map to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %sector_map, align 4
  %arrayidx27.i = getelementptr i32, ptr %98, i32 %sector
  %99 = ptrtoint ptr %arrayidx27.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %add13.i, ptr %arrayidx27.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sector)
  %cmp28.i = icmp eq i32 %sector, 0
  %phi.cast.i = trunc i32 %sector to i16
  %spec.select90.i = select i1 %cmp28.i, i16 -2, i16 %phi.cast.i
  %100 = call i16 @llvm.bswap.i16(i16 %spec.select90.i) #9
  %101 = ptrtoint ptr %entry1.i to i32
  call void @__asan_store2_noabort(i32 %101)
  store i16 %100, ptr %entry1.i, align 2
  %102 = ptrtoint ptr %header_cache.i42 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %header_cache.i42, align 4
  %arrayidx32.i = getelementptr i16, ptr %103, i32 %add.i43
  %104 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_store2_noabort(i32 %104)
  store i16 %100, ptr %arrayidx32.i, align 2
  %105 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %offset.i, align 4
  %mul35.i = shl i32 %add.i43, 1
  %add36.i = add i32 %106, %mul35.i
  %107 = ptrtoint ptr %mtd.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %mtd.i, align 4
  %conv39.i = zext i32 %add36.i to i64
  %call40.i = call i32 @mtd_write(ptr noundef %108, i64 noundef %conv39.i, i32 noundef 2, ptr noundef nonnull %retlen.i, ptr noundef nonnull %entry1.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40.i)
  %tobool41.not.i = icmp eq i32 %call40.i, 0
  br i1 %tobool41.not.i, label %land.lhs.true42.i, label %if.end26.i.do.end51.i_crit_edge

if.end26.i.do.end51.i_crit_edge:                  ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end51.i

land.lhs.true42.i:                                ; preds = %if.end26.i
  %109 = ptrtoint ptr %retlen.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %retlen.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %110)
  %cmp43.not.i = icmp eq i32 %110, 2
  br i1 %cmp43.not.i, label %for.end, label %land.lhs.true42.i.do.end51.i_crit_edge

land.lhs.true42.i.do.end51.i_crit_edge:           ; preds = %land.lhs.true42.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end51.i

do.end51.i:                                       ; preds = %land.lhs.true42.i.do.end51.i_crit_edge, %if.end26.i.do.end51.i_crit_edge
  %rc.1.i.ph = phi i32 [ -5, %land.lhs.true42.i.do.end51.i_crit_edge ], [ %call40.i, %if.end26.i.do.end51.i_crit_edge ]
  %111 = ptrtoint ptr %mtd.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %mtd.i, align 4
  %name55.i = getelementptr inbounds %struct.mtd_info, ptr %112, i32 0, i32 13
  %113 = ptrtoint ptr %name55.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %name55.i, align 8
  %call56.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %114, i32 noundef %add36.i) #12
  br label %do_writesect.exit.thread

do_writesect.exit.thread:                         ; preds = %do.end51.i, %do.end.i, %find_free_sector.exit.do_writesect.exit.thread_crit_edge, %if.end.i.do_writesect.exit.thread_crit_edge, %find_writable_block.exit.thread
  %rc.2.i.ph = phi i32 [ %rc.1.i66.ph, %find_writable_block.exit.thread ], [ -28, %find_free_sector.exit.do_writesect.exit.thread_crit_edge ], [ %rc.1.i.ph, %do.end51.i ], [ %rc.0.i.ph, %do.end.i ], [ -28, %if.end.i.do_writesect.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %entry1.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retlen.i) #9
  br label %err

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.095, 1
  %exitcond.not = icmp eq i32 %inc, 512
  br i1 %exitcond.not, label %for.inc.if.then19_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.if.then19_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then19

for.end:                                          ; preds = %land.lhs.true42.i
  %used_sectors.i = getelementptr %struct.block, ptr %74, i32 %76, i32 2
  %115 = ptrtoint ptr %used_sectors.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %used_sectors.i, align 4
  %inc.i = add i32 %116, 1
  store i32 %inc.i, ptr %used_sectors.i, align 4
  %117 = ptrtoint ptr %free_sectors.i41 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %free_sectors.i41, align 4
  %dec.i = add i32 %118, -1
  store i32 %dec.i, ptr %free_sectors.i41, align 4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %entry1.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retlen.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %i.095)
  %cmp18 = icmp eq i32 %i.095, 512
  br i1 %cmp18, label %for.end.if.then19_crit_edge, label %for.end.if.end22_crit_edge

for.end.if.end22_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22

for.end.if.then19_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then19

if.then19:                                        ; preds = %for.end.if.then19_crit_edge, %for.inc.if.then19_crit_edge
  %119 = ptrtoint ptr %sector_map to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %sector_map, align 4
  %arrayidx21 = getelementptr i32, ptr %120, i32 %sector
  %121 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 -1, ptr %arrayidx21, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.then19, %for.end.if.end22_crit_edge
  %122 = ptrtoint ptr %old_addr to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %old_addr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %123)
  %cmp23.not = icmp eq i32 %123, -1
  br i1 %cmp23.not, label %if.end22.err_crit_edge, label %if.then24

if.end22.err_crit_edge:                           ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  br label %err

if.then24:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  %call25 = call fastcc i32 @mark_sector_deleted(ptr noundef %dev, i32 noundef %123)
  br label %err

err:                                              ; preds = %if.then24, %if.end22.err_crit_edge, %do_writesect.exit.thread, %if.end5.err_crit_edge, %do.end.err_crit_edge
  %rc.1 = phi i32 [ %call25, %if.then24 ], [ 0, %if.end22.err_crit_edge ], [ -13, %do.end.err_crit_edge ], [ -5, %if.end5.err_crit_edge ], [ %rc.2.i.ph, %do_writesect.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old_addr) #9
  ret i32 %rc.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rfd_ftl_discardsect(ptr nocapture noundef readonly %dev, i32 noundef %sector, i32 noundef %nr_sects) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sector_count = getelementptr inbounds %struct.partition, ptr %dev, i32 0, i32 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr_sects)
  %tobool.not20 = icmp eq i32 %nr_sects, 0
  br i1 %tobool.not20, label %entry.cleanup_crit_edge, label %while.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

while.body.lr.ph:                                 ; preds = %entry
  %sector_map = getelementptr inbounds %struct.partition, ptr %dev, i32 0, i32 13
  br label %while.body

while.body:                                       ; preds = %if.end8.while.body_crit_edge, %while.body.lr.ph
  %sector.addr.022 = phi i32 [ %sector, %while.body.lr.ph ], [ %inc, %if.end8.while.body_crit_edge ]
  %nr_sects.addr.021 = phi i32 [ %nr_sects, %while.body.lr.ph ], [ %dec, %if.end8.while.body_crit_edge ]
  %0 = ptrtoint ptr %sector_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sector_count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sector.addr.022, i32 %1)
  %cmp.not = icmp ult i32 %sector.addr.022, %1
  br i1 %cmp.not, label %if.end, label %while.body.cleanup_crit_edge

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %while.body
  %2 = ptrtoint ptr %sector_map to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sector_map, align 4
  %arrayidx = getelementptr i32, ptr %3, i32 %sector.addr.022
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %cmp1.not = icmp eq i32 %5, -1
  br i1 %cmp1.not, label %if.end.if.end8_crit_edge, label %if.then2

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

if.then2:                                         ; preds = %if.end
  %call = tail call fastcc i32 @mark_sector_deleted(ptr noundef %dev, i32 noundef %5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool3.not = icmp eq i32 %call, 0
  br i1 %tobool3.not, label %if.end5, label %if.then2.cleanup_crit_edge

if.then2.cleanup_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %sector_map to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sector_map, align 4
  %arrayidx7 = getelementptr i32, ptr %7, i32 %sector.addr.022
  %8 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %arrayidx7, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.end5, %if.end.if.end8_crit_edge
  %inc = add nuw i32 %sector.addr.022, 1
  %dec = add i32 %nr_sects.addr.021, -1
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %if.end8.cleanup_crit_edge, label %if.end8.while.body_crit_edge

if.end8.while.body_crit_edge:                     ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %if.end8.cleanup_crit_edge, %if.then2.cleanup_crit_edge, %while.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end8.cleanup_crit_edge ], [ %call, %if.then2.cleanup_crit_edge ], [ -5, %while.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @rfd_ftl_getgeo(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %geo) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %geo to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %geo, align 4
  %sectors = getelementptr inbounds %struct.hd_geometry, ptr %geo, i32 0, i32 1
  %1 = ptrtoint ptr %sectors to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 63, ptr %sectors, align 1
  %cylinders = getelementptr inbounds %struct.partition, ptr %dev, i32 0, i32 11
  %2 = ptrtoint ptr %cylinders to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cylinders, align 4
  %conv = trunc i32 %3 to i16
  %cylinders1 = getelementptr inbounds %struct.hd_geometry, ptr %geo, i32 0, i32 2
  %4 = ptrtoint ptr %cylinders1 to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %conv, ptr %cylinders1, align 2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rfd_ftl_add_mtd(ptr noundef %tr, ptr noundef %mtd) #2 align 64 {
entry:
  %retlen.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mtd to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %mtd, align 8
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i8 %1, label %entry.cleanup_crit_edge [
    i8 3, label %entry.lor.lhs.false_crit_edge
    i8 1, label %entry.lor.lhs.false_crit_edge93
  ]

entry.lor.lhs.false_crit_edge93:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false

entry.lor.lhs.false_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry.lor.lhs.false_crit_edge, %entry.lor.lhs.false_crit_edge93
  %size = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 2
  %3 = ptrtoint ptr %size to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %size, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967295, i64 %4)
  %cmp6 = icmp ugt i64 %4, 4294967295
  br i1 %cmp6, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 264) #13
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end9

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %mtd10 = getelementptr inbounds %struct.mtd_blktrans_dev, ptr %call7.i.i, i32 0, i32 2
  %6 = ptrtoint ptr %mtd10 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %mtd, ptr %mtd10, align 4
  %7 = load i32, ptr @block_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool11.not = icmp eq i32 %7, 0
  br i1 %tobool11.not, label %if.else, label %if.end9.if.end20_crit_edge

if.end9.if.end20_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20

if.else:                                          ; preds = %if.end9
  %erasesize = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 3
  %8 = ptrtoint ptr %erasesize to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %erasesize, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool13.not = icmp eq i32 %9, 0
  br i1 %tobool13.not, label %do.end, label %if.else.if.end20_crit_edge

if.else.if.end20_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20

do.end:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26) #12
  br label %out

if.end20:                                         ; preds = %if.else.if.end20_crit_edge, %if.end9.if.end20_crit_edge
  %.sink = phi i32 [ %7, %if.end9.if.end20_crit_edge ], [ %9, %if.else.if.end20_crit_edge ]
  %block_size18 = getelementptr inbounds %struct.partition, ptr %call7.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %block_size18 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %.sink, ptr %block_size18, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retlen.i) #9
  %11 = ptrtoint ptr %retlen.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %retlen.i, align 4, !annotation !116
  %block_size.i = getelementptr inbounds %struct.partition, ptr %call7.i.i, i32 0, i32 1
  %12 = ptrtoint ptr %mtd10 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mtd10, align 4
  %size.i = getelementptr inbounds %struct.mtd_info, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %size.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %size.i, align 8
  %conv.i = trunc i64 %15 to i32
  %div2.i = udiv i32 %conv.i, %.sink
  %total_blocks.i = getelementptr inbounds %struct.partition, ptr %call7.i.i, i32 0, i32 2
  %16 = ptrtoint ptr %total_blocks.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %div2.i, ptr %total_blocks.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %div2.i)
  %cmp.i = icmp ult i32 %div2.i, 2
  br i1 %cmp.i, label %if.end20.scan_header.exit_crit_edge, label %if.end.i

if.end20.scan_header.exit_crit_edge:              ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  br label %scan_header.exit

if.end.i:                                         ; preds = %if.end20
  %div150.i = lshr i32 %.sink, 9
  %add.i = shl nuw nsw i32 %div150.i, 1
  %sub.i = add nuw nsw i32 %add.i, 517
  %div6151.i = lshr i32 %sub.i, 9
  %header_sectors_per_block.i = getelementptr inbounds %struct.partition, ptr %call7.i.i, i32 0, i32 3
  %17 = ptrtoint ptr %header_sectors_per_block.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %div6151.i, ptr %header_sectors_per_block.i, align 8
  %sub8.i = sub nsw i32 %div150.i, %div6151.i
  %data_sectors_per_block.i = getelementptr inbounds %struct.partition, ptr %call7.i.i, i32 0, i32 4
  %18 = ptrtoint ptr %data_sectors_per_block.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %sub8.i, ptr %data_sectors_per_block.i, align 4
  %add10.i = shl nsw i32 %sub8.i, 1
  %mul11.i = add nsw i32 %add10.i, 6
  %header_size.i = getelementptr inbounds %struct.partition, ptr %call7.i.i, i32 0, i32 6
  %19 = ptrtoint ptr %header_size.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %mul11.i, ptr %header_size.i, align 4
  %sub14.i = add i32 %div2.i, -1
  %mul15.i = mul i32 %sub8.i, %sub14.i
  %sub16.i = add i32 %mul15.i, -1
  %div17.i = udiv i32 %sub16.i, 63
  %cylinders.i = getelementptr inbounds %struct.partition, ptr %call7.i.i, i32 0, i32 11
  %20 = ptrtoint ptr %cylinders.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %div17.i, ptr %cylinders.i, align 8
  %mul19.i = mul nuw i32 %div17.i, 63
  %sector_count.i = getelementptr inbounds %struct.partition, ptr %call7.i.i, i32 0, i32 5
  %21 = ptrtoint ptr %sector_count.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %mul19.i, ptr %sector_count.i, align 8
  %current_block.i = getelementptr inbounds %struct.partition, ptr %call7.i.i, i32 0, i32 8
  %22 = ptrtoint ptr %current_block.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 -1, ptr %current_block.i, align 4
  %reserved_block.i = getelementptr inbounds %struct.partition, ptr %call7.i.i, i32 0, i32 7
  %23 = ptrtoint ptr %reserved_block.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 -1, ptr %reserved_block.i, align 8
  %is_reclaiming.i = getelementptr inbounds %struct.partition, ptr %call7.i.i, i32 0, i32 10
  %24 = ptrtoint ptr %is_reclaiming.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %is_reclaiming.i, align 4
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %mul11.i, i32 noundef 3264) #14
  %header_cache.i = getelementptr inbounds %struct.partition, ptr %call7.i.i, i32 0, i32 9
  %25 = ptrtoint ptr %header_cache.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call9.i.i, ptr %header_cache.i, align 8
  %tobool.not.i = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not.i, label %if.end.i.err.i_crit_edge, label %if.end23.i

if.end.i.err.i_crit_edge:                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %err.i

if.end23.i:                                       ; preds = %if.end.i
  %26 = ptrtoint ptr %total_blocks.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %total_blocks.i, align 4
  %28 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %27, i32 20) #9
  %29 = extractvalue { i32, i1 } %28, 1
  br i1 %29, label %kcalloc.exit.thread.i, label %if.end7.i.i.i, !prof !118

kcalloc.exit.thread.i:                            ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #11
  %blocks163.i = getelementptr inbounds %struct.partition, ptr %call7.i.i, i32 0, i32 14
  %30 = ptrtoint ptr %blocks163.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %blocks163.i, align 4
  br label %err.i

if.end7.i.i.i:                                    ; preds = %if.end23.i
  %31 = extractvalue { i32, i1 } %28, 0
  %call8.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %31, i32 noundef 3520) #14
  %blocks.i = getelementptr inbounds %struct.partition, ptr %call7.i.i, i32 0, i32 14
  %32 = ptrtoint ptr %blocks.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call8.i.i.i, ptr %blocks.i, align 4
  %tobool27.not.i = icmp eq ptr %call8.i.i.i, null
  br i1 %tobool27.not.i, label %if.end7.i.i.i.err.i_crit_edge, label %if.end29.i

if.end7.i.i.i.err.i_crit_edge:                    ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %err.i

if.end29.i:                                       ; preds = %if.end7.i.i.i
  %33 = ptrtoint ptr %sector_count.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %sector_count.i, align 8
  %35 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %34, i32 4) #9
  %36 = extractvalue { i32, i1 } %35, 1
  %37 = extractvalue { i32, i1 } %35, 0
  %retval.0.i.i = select i1 %36, i32 -1, i32 %37
  %call32.i = tail call noalias ptr @vmalloc(i32 noundef %retval.0.i.i) #14
  %sector_map.i = getelementptr inbounds %struct.partition, ptr %call7.i.i, i32 0, i32 13
  %38 = ptrtoint ptr %sector_map.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call32.i, ptr %sector_map.i, align 8
  %tobool34.not.i = icmp eq ptr %call32.i, null
  br i1 %tobool34.not.i, label %if.end29.i.err.i_crit_edge, label %for.cond.preheader.i

if.end29.i.err.i_crit_edge:                       ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %err.i

for.cond.preheader.i:                             ; preds = %if.end29.i
  %39 = ptrtoint ptr %sector_count.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %sector_count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp38177.not.i = icmp eq i32 %40, 0
  br i1 %cmp38177.not.i, label %for.cond.preheader.i.for.cond41.preheader.i_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.for.cond41.preheader.i_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond41.preheader.i

for.cond41.preheader.i:                           ; preds = %for.body.i.for.cond41.preheader.i_crit_edge, %for.cond.preheader.i.for.cond41.preheader.i_crit_edge
  %41 = ptrtoint ptr %total_blocks.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %total_blocks.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %cmp43179.not.i = icmp eq i32 %42, 0
  br i1 %cmp43179.not.i, label %for.cond41.preheader.i.do.end.i_crit_edge, label %for.body45.lr.ph.i

for.cond41.preheader.i.do.end.i_crit_edge:        ; preds = %for.cond41.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

for.body45.lr.ph.i:                               ; preds = %for.cond41.preheader.i
  %errors.i.i = getelementptr inbounds %struct.partition, ptr %call7.i.i, i32 0, i32 12
  br label %for.body45.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.0178.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %43 = ptrtoint ptr %sector_map.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %sector_map.i, align 8
  %arrayidx.i = getelementptr i32, ptr %44, i32 %i.0178.i
  %45 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 -1, ptr %arrayidx.i, align 4
  %inc.i = add nuw i32 %i.0178.i, 1
  %46 = ptrtoint ptr %sector_count.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %sector_count.i, align 8
  %cmp38.i = icmp ult i32 %inc.i, %47
  br i1 %cmp38.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.for.cond41.preheader.i_crit_edge

for.body.i.for.cond41.preheader.i_crit_edge:      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond41.preheader.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.body45.i:                                     ; preds = %for.cond41.i.for.body45.i_crit_edge, %for.body45.lr.ph.i
  %blocks_found.0184.i = phi i32 [ 0, %for.body45.lr.ph.i ], [ %109, %for.cond41.i.for.body45.i_crit_edge ]
  %i.1180.i = phi i32 [ 0, %for.body45.lr.ph.i ], [ %inc69.i, %for.cond41.i.for.body45.i_crit_edge ]
  %48 = ptrtoint ptr %mtd10 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %mtd10, align 4
  %50 = ptrtoint ptr %block_size.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %block_size.i, align 8
  %mul49.i = mul i32 %51, %i.1180.i
  %conv50.i = zext i32 %mul49.i to i64
  %52 = ptrtoint ptr %header_size.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %header_size.i, align 4
  %54 = ptrtoint ptr %header_cache.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %header_cache.i, align 8
  %call53.i = call i32 @mtd_read(ptr noundef %49, i64 noundef %conv50.i, i32 noundef %53, ptr noundef nonnull %retlen.i, ptr noundef %55) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53.i)
  %tobool54.not.i = icmp eq i32 %call53.i, 0
  br i1 %tobool54.not.i, label %land.lhs.true.i, label %for.body45.i.err.i_crit_edge

for.body45.i.err.i_crit_edge:                     ; preds = %for.body45.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %err.i

land.lhs.true.i:                                  ; preds = %for.body45.i
  %56 = ptrtoint ptr %retlen.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %retlen.i, align 4
  %58 = ptrtoint ptr %header_size.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %header_size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %57, i32 %59)
  %cmp56.not.i = icmp eq i32 %57, %59
  br i1 %cmp56.not.i, label %if.end62.i, label %land.lhs.true.i.err.i_crit_edge

land.lhs.true.i.err.i_crit_edge:                  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %err.i

if.end62.i:                                       ; preds = %land.lhs.true.i
  %60 = ptrtoint ptr %blocks.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %blocks.i, align 4
  %arrayidx.i.i = getelementptr %struct.block, ptr %61, i32 %i.1180.i
  %62 = ptrtoint ptr %block_size.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %block_size.i, align 8
  %mul.i.i = mul i32 %63, %i.1180.i
  %offset.i.i = getelementptr %struct.block, ptr %61, i32 %i.1180.i, i32 4
  %64 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %mul.i.i, ptr %offset.i.i, align 4
  %65 = ptrtoint ptr %header_cache.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %header_cache.i, align 8
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %66, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -27759, i16 %68)
  %cmp.not.i.i = icmp eq i16 %68, -27759
  br i1 %cmp.not.i.i, label %if.end.i155.i, label %build_block_map.exit.i

if.end.i155.i:                                    ; preds = %if.end62.i
  %69 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 0, ptr %arrayidx.i.i, align 4
  %70 = ptrtoint ptr %data_sectors_per_block.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %data_sectors_per_block.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %cmp494.not.i.i = icmp eq i32 %71, 0
  br i1 %cmp494.not.i.i, label %if.end.i155.i.for.end.i.i_crit_edge, label %for.body.lr.ph.i.i

if.end.i155.i.for.end.i.i_crit_edge:              ; preds = %if.end.i155.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i.i

for.body.lr.ph.i.i:                               ; preds = %if.end.i155.i
  %free_sectors.i.i = getelementptr %struct.block, ptr %61, i32 %i.1180.i, i32 1
  %used_sectors.i.i = getelementptr %struct.block, ptr %61, i32 %i.1180.i, i32 2
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %cleanup.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.095.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc52.i.i, %cleanup.i.i.for.body.i.i_crit_edge ]
  %72 = ptrtoint ptr %header_cache.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %header_cache.i, align 8
  %add.i.i = add i32 %i.095.i.i, 3
  %arrayidx8.i.i = getelementptr i16, ptr %73, i32 %add.i.i
  %74 = ptrtoint ptr %arrayidx8.i.i to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %arrayidx8.i.i, align 2
  %76 = zext i16 %75 to i64
  call void @__sanitizer_cov_trace_switch(i64 %76, ptr @__sancov_gen_cov_switch_values.46)
  switch i16 %75, label %if.end18.i.i [
    i16 0, label %for.body.i.i.cleanup.i.i_crit_edge
    i16 -1, label %if.then17.i.i
  ]

for.body.i.i.cleanup.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.i.i

if.then17.i.i:                                    ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %77 = ptrtoint ptr %free_sectors.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %free_sectors.i.i, align 4
  %inc.i.i = add i32 %78, 1
  store i32 %inc.i.i, ptr %free_sectors.i.i, align 4
  br label %cleanup.i.i

if.end18.i.i:                                     ; preds = %for.body.i.i
  %79 = call i16 @llvm.bswap.i16(i16 %75) #9
  call void @__sanitizer_cov_trace_const_cmp2(i16 -257, i16 %75)
  %cmp20.i.i = icmp eq i16 %75, -257
  %spec.store.select.i.i = select i1 %cmp20.i.i, i16 0, i16 %79
  %conv24.i.i = zext i16 %spec.store.select.i.i to i32
  %80 = ptrtoint ptr %sector_count.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %sector_count.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %81, i32 %conv24.i.i)
  %cmp25.not.i.i = icmp ugt i32 %81, %conv24.i.i
  br i1 %cmp25.not.i.i, label %if.end29.i.i, label %do.end.i.i

do.end.i.i:                                       ; preds = %if.end18.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %82 = ptrtoint ptr %mtd10 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %mtd10, align 4
  %name.i.i = getelementptr inbounds %struct.mtd_info, ptr %83, i32 0, i32 13
  %84 = ptrtoint ptr %name.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %name.i.i, align 8
  %call.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef %85, i32 noundef %i.1180.i, i32 noundef %i.095.i.i, i32 noundef %conv24.i.i) #12
  br label %cleanup.i.i

if.end29.i.i:                                     ; preds = %if.end18.i.i
  %86 = ptrtoint ptr %sector_map.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %sector_map.i, align 8
  %arrayidx30.i.i = getelementptr i32, ptr %87, i32 %conv24.i.i
  %88 = ptrtoint ptr %arrayidx30.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %arrayidx30.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %89)
  %cmp31.not.i.i = icmp eq i32 %89, -1
  br i1 %cmp31.not.i.i, label %if.end43.i.i, label %do.end36.i.i

do.end36.i.i:                                     ; preds = %if.end29.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %90 = ptrtoint ptr %mtd10 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %mtd10, align 4
  %name40.i.i = getelementptr inbounds %struct.mtd_info, ptr %91, i32 0, i32 13
  %92 = ptrtoint ptr %name40.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %name40.i.i, align 8
  %call42.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef %93, i32 noundef %conv24.i.i) #12
  %94 = ptrtoint ptr %errors.i.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 1, ptr %errors.i.i, align 4
  br label %cleanup.i.i

if.end43.i.i:                                     ; preds = %if.end29.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %95 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %offset.i.i, align 4
  %97 = ptrtoint ptr %header_sectors_per_block.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %header_sectors_per_block.i, align 8
  %add45.i.i = add i32 %98, %i.095.i.i
  %mul46.i.i = shl i32 %add45.i.i, 9
  %add47.i.i = add i32 %mul46.i.i, %96
  %99 = ptrtoint ptr %arrayidx30.i.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %add47.i.i, ptr %arrayidx30.i.i, align 4
  %100 = ptrtoint ptr %used_sectors.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %used_sectors.i.i, align 4
  %inc51.i.i = add i32 %101, 1
  store i32 %inc51.i.i, ptr %used_sectors.i.i, align 4
  br label %cleanup.i.i

cleanup.i.i:                                      ; preds = %if.end43.i.i, %do.end36.i.i, %do.end.i.i, %if.then17.i.i, %for.body.i.i.cleanup.i.i_crit_edge
  %inc52.i.i = add nuw i32 %i.095.i.i, 1
  %102 = ptrtoint ptr %data_sectors_per_block.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %data_sectors_per_block.i, align 4
  %cmp4.i.i = icmp ult i32 %inc52.i.i, %103
  br i1 %cmp4.i.i, label %cleanup.i.i.for.body.i.i_crit_edge, label %cleanup.i.i.for.end.i.i_crit_edge

cleanup.i.i.for.end.i.i_crit_edge:                ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i.i

cleanup.i.i.for.body.i.i_crit_edge:               ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

for.end.i.i:                                      ; preds = %cleanup.i.i.for.end.i.i_crit_edge, %if.end.i155.i.for.end.i.i_crit_edge
  %.lcssa.i.i = phi i32 [ 0, %if.end.i155.i.for.end.i.i_crit_edge ], [ %103, %cleanup.i.i.for.end.i.i_crit_edge ]
  %free_sectors53.i.i = getelementptr %struct.block, ptr %61, i32 %i.1180.i, i32 1
  %104 = ptrtoint ptr %free_sectors53.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %free_sectors53.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %105, i32 %.lcssa.i.i)
  %cmp55.i.i = icmp eq i32 %105, %.lcssa.i.i
  br i1 %cmp55.i.i, label %if.then57.i.i, label %for.end.i.i._crit_edge

for.end.i.i._crit_edge:                           ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %108

if.then57.i.i:                                    ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %106 = ptrtoint ptr %reserved_block.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %i.1180.i, ptr %reserved_block.i, align 8
  br label %108

build_block_map.exit.i:                           ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #11
  %107 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 3, ptr %arrayidx.i.i, align 4
  br label %for.cond41.i

108:                                              ; preds = %if.then57.i.i, %for.end.i.i._crit_edge
  %inc66174.i = add i32 %blocks_found.0184.i, 1
  br label %for.cond41.i

for.cond41.i:                                     ; preds = %108, %build_block_map.exit.i
  %109 = phi i32 [ %inc66174.i, %108 ], [ %blocks_found.0184.i, %build_block_map.exit.i ]
  %inc69.i = add nuw i32 %i.1180.i, 1
  %110 = ptrtoint ptr %total_blocks.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %total_blocks.i, align 4
  %cmp43.i = icmp ult i32 %inc69.i, %111
  br i1 %cmp43.i, label %for.cond41.i.for.body45.i_crit_edge, label %for.end70.i

for.cond41.i.for.body45.i_crit_edge:              ; preds = %for.cond41.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body45.i

for.end70.i:                                      ; preds = %for.cond41.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %109)
  %cmp71.i = icmp eq i32 %109, 0
  br i1 %cmp71.i, label %for.end70.i.do.end.i_crit_edge, label %if.end77.i

for.end70.i.do.end.i_crit_edge:                   ; preds = %for.end70.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

do.end.i:                                         ; preds = %for.end70.i.do.end.i_crit_edge, %for.cond41.preheader.i.do.end.i_crit_edge
  %112 = ptrtoint ptr %mtd10 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %mtd10, align 4
  %name.i = getelementptr inbounds %struct.mtd_info, ptr %113, i32 0, i32 13
  %114 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %name.i, align 8
  %call76.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, ptr noundef %115) #12
  br label %err.i

if.end77.i:                                       ; preds = %for.end70.i
  %116 = ptrtoint ptr %reserved_block.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %reserved_block.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %117)
  %cmp79.i = icmp eq i32 %117, -1
  br i1 %cmp79.i, label %do.end84.i, label %if.end77.i.if.then24_crit_edge

if.end77.i.if.then24_crit_edge:                   ; preds = %if.end77.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then24

do.end84.i:                                       ; preds = %if.end77.i
  call void @__sanitizer_cov_trace_pc() #11
  %118 = ptrtoint ptr %mtd10 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %mtd10, align 4
  %name88.i = getelementptr inbounds %struct.mtd_info, ptr %119, i32 0, i32 13
  %120 = ptrtoint ptr %name88.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %name88.i, align 8
  %call89.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef %121) #12
  %122 = ptrtoint ptr %errors.i.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 1, ptr %errors.i.i, align 4
  br label %if.then24

err.i:                                            ; preds = %do.end.i, %land.lhs.true.i.err.i_crit_edge, %for.body45.i.err.i_crit_edge, %if.end29.i.err.i_crit_edge, %if.end7.i.i.i.err.i_crit_edge, %kcalloc.exit.thread.i, %if.end.i.err.i_crit_edge
  %sector_map91.i = getelementptr inbounds %struct.partition, ptr %call7.i.i, i32 0, i32 13
  %123 = ptrtoint ptr %sector_map91.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %sector_map91.i, align 8
  call void @vfree(ptr noundef %124) #9
  %125 = ptrtoint ptr %header_cache.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %header_cache.i, align 8
  call void @kfree(ptr noundef %126) #9
  %blocks93.i = getelementptr inbounds %struct.partition, ptr %call7.i.i, i32 0, i32 14
  %127 = ptrtoint ptr %blocks93.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %blocks93.i, align 4
  call void @kfree(ptr noundef %128) #9
  br label %scan_header.exit

scan_header.exit:                                 ; preds = %err.i, %if.end20.scan_header.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retlen.i) #9
  br label %out

if.then24:                                        ; preds = %do.end84.i, %if.end77.i.if.then24_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retlen.i) #9
  %129 = ptrtoint ptr %sector_count.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %sector_count.i, align 8
  %size26 = getelementptr inbounds %struct.mtd_blktrans_dev, ptr %call7.i.i, i32 0, i32 6
  %131 = ptrtoint ptr %size26 to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 %130, ptr %size26, align 4
  %132 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store ptr %tr, ptr %call7.i.i, align 8
  %devnum = getelementptr inbounds %struct.mtd_blktrans_dev, ptr %call7.i.i, i32 0, i32 4
  %133 = ptrtoint ptr %devnum to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 -1, ptr %devnum, align 4
  %flags = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 1
  %134 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %flags, align 4
  %and = and i32 %135, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool30.not = icmp eq i32 %and, 0
  br i1 %tobool30.not, label %if.then24.do.end47.sink.split_crit_edge, label %if.else33

if.then24.do.end47.sink.split_crit_edge:          ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end47.sink.split

if.else33:                                        ; preds = %if.then24
  %136 = ptrtoint ptr %errors.i.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %errors.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %137)
  %tobool34.not = icmp eq i32 %137, 0
  br i1 %tobool34.not, label %if.else33.do.end47_crit_edge, label %do.end38

if.else33.do.end47_crit_edge:                     ; preds = %if.else33
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end47

do.end38:                                         ; preds = %if.else33
  call void @__sanitizer_cov_trace_pc() #11
  %name = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 13
  %138 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %name, align 8
  %call40 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef %139) #12
  br label %do.end47.sink.split

do.end47.sink.split:                              ; preds = %do.end38, %if.then24.do.end47.sink.split_crit_edge
  %readonly = getelementptr inbounds %struct.mtd_blktrans_dev, ptr %call7.i.i, i32 0, i32 7
  %140 = ptrtoint ptr %readonly to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 1, ptr %readonly, align 8
  br label %do.end47

do.end47:                                         ; preds = %do.end47.sink.split, %if.else33.do.end47_crit_edge
  %name49 = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 13
  %141 = ptrtoint ptr %name49 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %name49, align 8
  %143 = ptrtoint ptr %mtd to i32
  call void @__asan_load1_noabort(i32 %143)
  %144 = load i8, ptr %mtd, align 8
  %conv51 = zext i8 %144 to i32
  %145 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %flags, align 4
  %call53 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, ptr noundef %142, i32 noundef %conv51, i32 noundef %146) #12
  %call55 = call i32 @add_mtd_blktrans_dev(ptr noundef nonnull %call7.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %do.end47.cleanup_crit_edge, label %do.end47.out_crit_edge

do.end47.out_crit_edge:                           ; preds = %do.end47
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

do.end47.cleanup_crit_edge:                       ; preds = %do.end47
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

out:                                              ; preds = %do.end47.out_crit_edge, %scan_header.exit, %do.end
  call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %out, %do.end47.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rfd_ftl_remove_dev(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %total_blocks = getelementptr inbounds %struct.partition, ptr %dev, i32 0, i32 2
  %0 = ptrtoint ptr %total_blocks to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %total_blocks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp17.not = icmp eq i32 %1, 0
  br i1 %cmp17.not, label %entry.for.end_crit_edge, label %do.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

do.body.lr.ph:                                    ; preds = %entry
  %mtd = getelementptr inbounds %struct.mtd_blktrans_dev, ptr %dev, i32 0, i32 2
  %blocks = getelementptr inbounds %struct.partition, ptr %dev, i32 0, i32 14
  br label %do.body

do.body:                                          ; preds = %for.inc.do.body_crit_edge, %do.body.lr.ph
  %i.018 = phi i32 [ 0, %do.body.lr.ph ], [ %inc, %for.inc.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rfd_ftl_remove_dev.__UNIQUE_ID_ddebug189, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rfd_ftl_remove_dev, %if.then)) #9
          to label %for.inc [label %if.then], !srcloc !117

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %mtd to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mtd, align 4
  %name = getelementptr inbounds %struct.mtd_info, ptr %3, i32 0, i32 13
  %4 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %name, align 8
  %6 = ptrtoint ptr %blocks to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %blocks, align 4
  %erases = getelementptr %struct.block, ptr %7, i32 %i.018, i32 3
  %8 = ptrtoint ptr %erases to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %erases, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rfd_ftl_remove_dev.__UNIQUE_ID_ddebug189, ptr noundef nonnull @.str.45, ptr noundef %5, i32 noundef %i.018, i32 noundef %9) #9
  br label %for.inc

for.inc:                                          ; preds = %if.then, %do.body
  %inc = add nuw i32 %i.018, 1
  %10 = ptrtoint ptr %total_blocks to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %total_blocks, align 4
  %cmp = icmp ult i32 %inc, %11
  br i1 %cmp, label %for.inc.do.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.inc.do.body_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %sector_map = getelementptr inbounds %struct.partition, ptr %dev, i32 0, i32 13
  %12 = ptrtoint ptr %sector_map to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sector_map, align 4
  tail call void @vfree(ptr noundef %13) #9
  %header_cache = getelementptr inbounds %struct.partition, ptr %dev, i32 0, i32 9
  %14 = ptrtoint ptr %header_cache to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %header_cache, align 4
  tail call void @kfree(ptr noundef %15) #9
  %blocks4 = getelementptr inbounds %struct.partition, ptr %dev, i32 0, i32 14
  %16 = ptrtoint ptr %blocks4 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %blocks4, align 4
  tail call void @kfree(ptr noundef %17) #9
  %call6 = tail call i32 @del_mtd_blktrans_dev(ptr noundef %dev) #9
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_read(ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mark_sector_deleted(ptr nocapture noundef readonly %part, i32 noundef %old_addr) unnamed_addr #2 align 64 {
entry:
  %retlen = alloca i32, align 4
  %del = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retlen) #9
  %0 = ptrtoint ptr %retlen to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %retlen, align 4, !annotation !116
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %del) #9
  %1 = ptrtoint ptr %del to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 0, ptr %del, align 2
  %block_size = getelementptr inbounds %struct.partition, ptr %part, i32 0, i32 1
  %2 = ptrtoint ptr %block_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %block_size, align 4
  %.frozen = freeze i32 %3
  %div = udiv i32 %old_addr, %.frozen
  %4 = mul i32 %div, %.frozen
  %rem.decomposed = sub i32 %old_addr, %4
  %div252 = lshr i32 %rem.decomposed, 9
  %header_sectors_per_block = getelementptr inbounds %struct.partition, ptr %part, i32 0, i32 3
  %5 = ptrtoint ptr %header_sectors_per_block to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %header_sectors_per_block, align 4
  %sub = sub i32 %div252, %6
  %blocks = getelementptr inbounds %struct.partition, ptr %part, i32 0, i32 14
  %7 = ptrtoint ptr %blocks to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %blocks, align 4
  %offset3 = getelementptr %struct.block, ptr %8, i32 %div, i32 4
  %9 = ptrtoint ptr %offset3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %offset3, align 4
  %add = add i32 %sub, 3
  %mul = shl i32 %add, 1
  %add4 = add i32 %mul, %10
  %mtd = getelementptr inbounds %struct.mtd_blktrans_dev, ptr %part, i32 0, i32 2
  %11 = ptrtoint ptr %mtd to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mtd, align 4
  %conv = zext i32 %add4 to i64
  %call = call i32 @mtd_write(ptr noundef %12, i64 noundef %conv, i32 noundef 2, ptr noundef nonnull %retlen, ptr noundef nonnull %del) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %13 = ptrtoint ptr %retlen to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %retlen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %14)
  %cmp.not = icmp eq i32 %14, 2
  br i1 %cmp.not, label %if.end11, label %land.lhs.true.do.end_crit_edge

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

do.end:                                           ; preds = %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %rc.0.ph = phi i32 [ -5, %land.lhs.true.do.end_crit_edge ], [ %call, %entry.do.end_crit_edge ]
  %15 = ptrtoint ptr %mtd to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mtd, align 4
  %name = getelementptr inbounds %struct.mtd_info, ptr %16, i32 0, i32 13
  %17 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %name, align 8
  %call10 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %18, i32 noundef %add4) #12
  br label %err

if.end11:                                         ; preds = %land.lhs.true
  %current_block = getelementptr inbounds %struct.partition, ptr %part, i32 0, i32 8
  %19 = ptrtoint ptr %current_block to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %current_block, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div, i32 %20)
  %cmp12 = icmp eq i32 %div, %20
  br i1 %cmp12, label %if.then14, label %if.end11.if.end17_crit_edge

if.end11.if.end17_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

if.then14:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  %21 = ptrtoint ptr %del to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %del, align 2
  %header_cache = getelementptr inbounds %struct.partition, ptr %part, i32 0, i32 9
  %23 = ptrtoint ptr %header_cache to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %header_cache, align 4
  %arrayidx16 = getelementptr i16, ptr %24, i32 %add
  %25 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %22, ptr %arrayidx16, align 2
  br label %if.end17

if.end17:                                         ; preds = %if.then14, %if.end11.if.end17_crit_edge
  %26 = ptrtoint ptr %blocks to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %blocks, align 4
  %used_sectors = getelementptr %struct.block, ptr %27, i32 %div, i32 2
  %28 = ptrtoint ptr %used_sectors to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %used_sectors, align 4
  %dec = add i32 %29, -1
  store i32 %dec, ptr %used_sectors, align 4
  %30 = load ptr, ptr %blocks, align 4
  %used_sectors22 = getelementptr %struct.block, ptr %30, i32 %div, i32 2
  %31 = ptrtoint ptr %used_sectors22 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %used_sectors22, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool23.not = icmp eq i32 %32, 0
  br i1 %tobool23.not, label %land.lhs.true24, label %if.end17.err_crit_edge

if.end17.err_crit_edge:                           ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %err

land.lhs.true24:                                  ; preds = %if.end17
  %free_sectors = getelementptr %struct.block, ptr %30, i32 %div, i32 1
  %33 = ptrtoint ptr %free_sectors to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %free_sectors, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool27.not = icmp eq i32 %34, 0
  br i1 %tobool27.not, label %if.then28, label %land.lhs.true24.err_crit_edge

land.lhs.true24.err_crit_edge:                    ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #11
  br label %err

if.then28:                                        ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #11
  %call29 = call fastcc i32 @erase_block(ptr noundef %part, i32 noundef %div)
  br label %err

err:                                              ; preds = %if.then28, %land.lhs.true24.err_crit_edge, %if.end17.err_crit_edge, %do.end
  %rc.1 = phi i32 [ %rc.0.ph, %do.end ], [ 0, %if.end17.err_crit_edge ], [ 0, %land.lhs.true24.err_crit_edge ], [ %call29, %if.then28 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %del) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retlen) #9
  ret i32 %rc.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_write(ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @reclaim_block(ptr noundef %part, ptr nocapture noundef %old_sector) unnamed_addr #2 align 64 {
entry:
  %retlen.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mtd = getelementptr inbounds %struct.mtd_blktrans_dev, ptr %part, i32 0, i32 2
  %0 = ptrtoint ptr %mtd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mtd, align 4
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %while.cond.i.i.while.cond.i.i_crit_edge, %entry
  %mtd.addr.0.i.i = phi ptr [ %1, %entry ], [ %3, %while.cond.i.i.while.cond.i.i_crit_edge ]
  %parent.i.i = getelementptr inbounds %struct.mtd_info, ptr %mtd.addr.0.i.i, i32 0, i32 62
  %2 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.i, label %mtd_get_master.exit.i, label %while.cond.i.i.while.cond.i.i_crit_edge

while.cond.i.i.while.cond.i.i_crit_edge:          ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.i.i

mtd_get_master.exit.i:                            ; preds = %while.cond.i.i
  %_sync.i = getelementptr inbounds %struct.mtd_info, ptr %mtd.addr.0.i.i, i32 0, i32 37
  %4 = ptrtoint ptr %_sync.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %_sync.i, align 8
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %mtd_get_master.exit.i.mtd_sync.exit_crit_edge, label %if.then.i

mtd_get_master.exit.i.mtd_sync.exit_crit_edge:    ; preds = %mtd_get_master.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mtd_sync.exit

if.then.i:                                        ; preds = %mtd_get_master.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %5(ptr noundef %mtd.addr.0.i.i) #9
  br label %mtd_sync.exit

mtd_sync.exit:                                    ; preds = %if.then.i, %mtd_get_master.exit.i.mtd_sync.exit_crit_edge
  %6 = ptrtoint ptr %old_sector to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %old_sector, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %7)
  %cmp.not = icmp eq i32 %7, -1
  br i1 %cmp.not, label %mtd_sync.exit.if.end_crit_edge, label %if.then

mtd_sync.exit.if.end_crit_edge:                   ; preds = %mtd_sync.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %mtd_sync.exit
  call void @__sanitizer_cov_trace_pc() #11
  %block_size = getelementptr inbounds %struct.partition, ptr %part, i32 0, i32 1
  %8 = ptrtoint ptr %block_size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %block_size, align 4
  %div = udiv i32 %7, %9
  br label %if.end

if.end:                                           ; preds = %if.then, %mtd_sync.exit.if.end_crit_edge
  %old_sector_block.0 = phi i32 [ %div, %if.then ], [ -1, %mtd_sync.exit.if.end_crit_edge ]
  %total_blocks = getelementptr inbounds %struct.partition, ptr %part, i32 0, i32 2
  %10 = ptrtoint ptr %total_blocks to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %total_blocks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp1114.not = icmp eq i32 %11, 0
  br i1 %cmp1114.not, label %if.end.cleanup48_crit_edge, label %for.body.lr.ph

if.end.cleanup48_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup48

for.body.lr.ph:                                   ; preds = %if.end
  %reserved_block = getelementptr inbounds %struct.partition, ptr %part, i32 0, i32 7
  %12 = ptrtoint ptr %reserved_block to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %reserved_block, align 4
  %blocks = getelementptr inbounds %struct.partition, ptr %part, i32 0, i32 14
  %data_sectors_per_block = getelementptr inbounds %struct.partition, ptr %part, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %block.0118 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %score.0117 = phi i32 [ 2147483647, %for.body.lr.ph ], [ %score.2.ph, %for.inc.for.body_crit_edge ]
  %best_block.0115 = phi i32 [ -1, %for.body.lr.ph ], [ %best_block.2.ph, %for.inc.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %block.0118, i32 %13)
  %cmp2 = icmp eq i32 %block.0118, %13
  br i1 %cmp2, label %for.body.for.inc_crit_edge, label %if.end4

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end4:                                          ; preds = %for.body
  %14 = ptrtoint ptr %blocks to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %blocks, align 4
  %free_sectors = getelementptr %struct.block, ptr %15, i32 %block.0118, i32 1
  %16 = ptrtoint ptr %free_sectors to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %free_sectors, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not = icmp eq i32 %17, 0
  br i1 %tobool.not, label %if.end6, label %if.end4.cleanup48_crit_edge

if.end4.cleanup48_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup48

if.end6:                                          ; preds = %if.end4
  %used_sectors = getelementptr %struct.block, ptr %15, i32 %block.0118, i32 2
  %18 = ptrtoint ptr %used_sectors to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %used_sectors, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %block.0118, i32 %old_sector_block.0)
  %cmp9 = icmp eq i32 %block.0118, %old_sector_block.0
  br i1 %cmp9, label %if.then10, label %if.else11

if.then10:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  %dec = add i32 %19, -1
  br label %if.end18

if.else11:                                        ; preds = %if.end6
  %20 = ptrtoint ptr %data_sectors_per_block to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %data_sectors_per_block, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %21)
  %cmp15 = icmp eq i32 %19, %21
  br i1 %cmp15, label %if.else11.for.inc_crit_edge, label %if.else11.if.end18_crit_edge

if.else11.if.end18_crit_edge:                     ; preds = %if.else11
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

if.else11.for.inc_crit_edge:                      ; preds = %if.else11
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end18:                                         ; preds = %if.else11.if.end18_crit_edge, %if.then10
  %this_score.0 = phi i32 [ %dec, %if.then10 ], [ %19, %if.else11.if.end18_crit_edge ]
  %erases = getelementptr %struct.block, ptr %15, i32 %block.0118, i32 3
  %22 = ptrtoint ptr %erases to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %erases, align 4
  %add = add i32 %23, %this_score.0
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %score.0117)
  %cmp21 = icmp slt i32 %add, %score.0117
  %spec.select = select i1 %cmp21, i32 %block.0118, i32 %best_block.0115
  %24 = tail call i32 @llvm.smin.i32(i32 %add, i32 %score.0117)
  br label %for.inc

for.inc:                                          ; preds = %if.end18, %if.else11.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %best_block.2.ph = phi i32 [ %best_block.0115, %if.else11.for.inc_crit_edge ], [ %best_block.0115, %for.body.for.inc_crit_edge ], [ %spec.select, %if.end18 ]
  %score.2.ph = phi i32 [ %score.0117, %if.else11.for.inc_crit_edge ], [ %score.0117, %for.body.for.inc_crit_edge ], [ %24, %if.end18 ]
  %inc = add nuw i32 %block.0118, 1
  %exitcond.not = icmp eq i32 %inc, %11
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %best_block.2.ph)
  %cmp24 = icmp eq i32 %best_block.2.ph, -1
  br i1 %cmp24, label %for.end.cleanup48_crit_edge, label %if.end26

for.end.cleanup48_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup48

if.end26:                                         ; preds = %for.end
  %current_block = getelementptr inbounds %struct.partition, ptr %part, i32 0, i32 8
  %25 = ptrtoint ptr %current_block to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 -1, ptr %current_block, align 4
  %26 = ptrtoint ptr %reserved_block to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %best_block.2.ph, ptr %reserved_block, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @reclaim_block.__UNIQUE_ID_ddebug187, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@reclaim_block, %if.then31)) #9
          to label %do.end [label %if.then31], !srcloc !117

if.then31:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  %27 = ptrtoint ptr %blocks to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %blocks, align 4
  %used_sectors34 = getelementptr %struct.block, ptr %28, i32 %best_block.2.ph, i32 2
  %29 = ptrtoint ptr %used_sectors34 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %used_sectors34, align 4
  %free_sectors37 = getelementptr %struct.block, ptr %28, i32 %best_block.2.ph, i32 1
  %31 = ptrtoint ptr %free_sectors37 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %free_sectors37, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @reclaim_block.__UNIQUE_ID_ddebug187, ptr noundef nonnull @.str.19, i32 noundef %best_block.2.ph, i32 noundef %30, i32 noundef %32) #9
  br label %do.end

do.end:                                           ; preds = %if.then31, %if.end26
  %33 = ptrtoint ptr %blocks to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %blocks, align 4
  %used_sectors41 = getelementptr %struct.block, ptr %34, i32 %best_block.2.ph, i32 2
  %35 = ptrtoint ptr %used_sectors41 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %used_sectors41, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool42.not = icmp eq i32 %36, 0
  br i1 %tobool42.not, label %if.else45, label %if.then43

if.then43:                                        ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retlen.i) #9
  %37 = ptrtoint ptr %retlen.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 -1, ptr %retlen.i, align 4, !annotation !116
  %is_reclaiming.i = getelementptr inbounds %struct.partition, ptr %part, i32 0, i32 10
  %38 = ptrtoint ptr %is_reclaiming.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 1, ptr %is_reclaiming.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %39 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %39, i32 noundef 3264, i32 noundef 512) #13
  %tobool.not.i90 = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i90, label %if.then43.move_block_contents.exit_crit_edge, label %if.end.i

if.then43.move_block_contents.exit_crit_edge:     ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #11
  br label %move_block_contents.exit

if.end.i:                                         ; preds = %if.then43
  %header_size.i = getelementptr inbounds %struct.partition, ptr %part, i32 0, i32 6
  %40 = ptrtoint ptr %header_size.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %header_size.i, align 4
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %41, i32 noundef 3264) #14
  %tobool2.not.i = icmp eq ptr %call9.i.i, null
  br i1 %tobool2.not.i, label %if.end.i.err2.i_crit_edge, label %if.end4.i

if.end.i.err2.i_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %err2.i

if.end4.i:                                        ; preds = %if.end.i
  %42 = ptrtoint ptr %mtd to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %mtd, align 4
  %44 = ptrtoint ptr %blocks to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %blocks, align 4
  %offset.i = getelementptr %struct.block, ptr %45, i32 %best_block.2.ph, i32 4
  %46 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %offset.i, align 4
  %conv.i = zext i32 %47 to i64
  %48 = ptrtoint ptr %header_size.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %header_size.i, align 4
  %call6.i = call i32 @mtd_read(ptr noundef %43, i64 noundef %conv.i, i32 noundef %49, ptr noundef nonnull %retlen.i, ptr noundef nonnull %call9.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %land.lhs.true.i, label %if.end4.i.do.end.i_crit_edge

if.end4.i.do.end.i_crit_edge:                     ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %if.end4.i
  %50 = ptrtoint ptr %retlen.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %retlen.i, align 4
  %52 = ptrtoint ptr %header_size.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %header_size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %51, i32 %53)
  %cmp.not.i = icmp eq i32 %51, %53
  br i1 %cmp.not.i, label %for.cond.i.preheader, label %land.lhs.true.i.do.end.i_crit_edge

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

for.cond.i.preheader:                             ; preds = %land.lhs.true.i
  %54 = ptrtoint ptr %data_sectors_per_block to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %data_sectors_per_block, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %cmp21.i120.not = icmp eq i32 %55, 0
  br i1 %cmp21.i120.not, label %for.cond.i.preheader.err.i_crit_edge, label %for.body.i.lr.ph

for.cond.i.preheader.err.i_crit_edge:             ; preds = %for.cond.i.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %err.i

for.body.i.lr.ph:                                 ; preds = %for.cond.i.preheader
  %sector_count.i = getelementptr inbounds %struct.partition, ptr %part, i32 0, i32 5
  %header_sectors_per_block.i = getelementptr inbounds %struct.partition, ptr %part, i32 0, i32 3
  br label %for.body.i

do.end.i:                                         ; preds = %land.lhs.true.i.do.end.i_crit_edge, %if.end4.i.do.end.i_crit_edge
  %rc.0.i.ph = phi i32 [ -5, %land.lhs.true.i.do.end.i_crit_edge ], [ %call6.i, %if.end4.i.do.end.i_crit_edge ]
  %56 = ptrtoint ptr %mtd to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %mtd, align 4
  %name.i = getelementptr inbounds %struct.mtd_info, ptr %57, i32 0, i32 13
  %58 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %name.i, align 8
  %60 = ptrtoint ptr %blocks to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %blocks, align 4
  %offset18.i = getelementptr %struct.block, ptr %61, i32 %best_block.2.ph, i32 4
  %62 = ptrtoint ptr %offset18.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %offset18.i, align 4
  %call19.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef %59, i32 noundef %63) #12
  br label %err.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.i.lr.ph
  %i.0.i121 = phi i32 [ 0, %for.body.i.lr.ph ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %add.i = add i32 %i.0.i121, 3
  %arrayidx24.i = getelementptr i16, ptr %call9.i.i, i32 %add.i
  %64 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %arrayidx24.i, align 2
  %66 = zext i16 %65 to i64
  call void @__sanitizer_cov_trace_switch(i64 %66, ptr @__sancov_gen_cov_switch_values.47)
  switch i16 %65, label %if.end32.i [
    i16 -1, label %for.body.i.for.inc.i_crit_edge
    i16 0, label %for.body.i.for.inc.i_crit_edge128
  ]

for.body.i.for.inc.i_crit_edge128:                ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.end32.i:                                       ; preds = %for.body.i
  %67 = call i16 @llvm.bswap.i16(i16 %65) #9
  call void @__sanitizer_cov_trace_const_cmp2(i16 -257, i16 %65)
  %cmp34.i = icmp eq i16 %65, -257
  %spec.store.select.i = select i1 %cmp34.i, i16 0, i16 %67
  %conv38.i = zext i16 %spec.store.select.i to i32
  %68 = ptrtoint ptr %sector_count.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %sector_count.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %69, i32 %conv38.i)
  %cmp39.not.i = icmp ugt i32 %69, %conv38.i
  br i1 %cmp39.not.i, label %if.end42.i, label %if.end32.i.for.inc.i_crit_edge

if.end32.i.for.inc.i_crit_edge:                   ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.end42.i:                                       ; preds = %if.end32.i
  %70 = ptrtoint ptr %blocks to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %blocks, align 4
  %offset45.i = getelementptr %struct.block, ptr %71, i32 %best_block.2.ph, i32 4
  %72 = ptrtoint ptr %offset45.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %offset45.i, align 4
  %74 = ptrtoint ptr %header_sectors_per_block.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %header_sectors_per_block.i, align 4
  %add46.i = add i32 %75, %i.0.i121
  %mul.i = shl i32 %add46.i, 9
  %add47.i = add i32 %mul.i, %73
  %76 = ptrtoint ptr %old_sector to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %old_sector, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %77, i32 %add47.i)
  %cmp48.i = icmp eq i32 %77, %add47.i
  br i1 %cmp48.i, label %if.then50.i, label %if.end57.i

if.then50.i:                                      ; preds = %if.end42.i
  %78 = ptrtoint ptr %old_sector to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 -1, ptr %old_sector, align 4
  %79 = ptrtoint ptr %blocks to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %blocks, align 4
  %used_sectors.i = getelementptr %struct.block, ptr %80, i32 %best_block.2.ph, i32 2
  %81 = ptrtoint ptr %used_sectors.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %used_sectors.i, align 4
  %dec.i = add i32 %82, -1
  store i32 %dec.i, ptr %used_sectors.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %tobool53.not.i = icmp eq i32 %82, 0
  br i1 %tobool53.not.i, label %if.then54.i, label %if.then50.i.for.inc.i_crit_edge

if.then50.i.for.inc.i_crit_edge:                  ; preds = %if.then50.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.then54.i:                                      ; preds = %if.then50.i
  call void @__sanitizer_cov_trace_pc() #11
  %call55.i = call fastcc i32 @erase_block(ptr noundef %part, i32 noundef %best_block.2.ph) #9
  br label %err.i

if.end57.i:                                       ; preds = %if.end42.i
  %83 = ptrtoint ptr %mtd to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %mtd, align 4
  %conv60.i = zext i32 %add47.i to i64
  %call61.i = call i32 @mtd_read(ptr noundef %84, i64 noundef %conv60.i, i32 noundef 512, ptr noundef nonnull %retlen.i, ptr noundef nonnull %call7.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61.i)
  %tobool62.not.i = icmp eq i32 %call61.i, 0
  br i1 %tobool62.not.i, label %land.lhs.true63.i, label %if.end57.i.do.end72.i_crit_edge

if.end57.i.do.end72.i_crit_edge:                  ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end72.i

land.lhs.true63.i:                                ; preds = %if.end57.i
  %85 = ptrtoint ptr %retlen.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %retlen.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %86)
  %cmp64.not.i = icmp eq i32 %86, 512
  br i1 %cmp64.not.i, label %if.end78.i, label %land.lhs.true63.i.do.end72.i_crit_edge

land.lhs.true63.i.do.end72.i_crit_edge:           ; preds = %land.lhs.true63.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end72.i

do.end72.i:                                       ; preds = %land.lhs.true63.i.do.end72.i_crit_edge, %if.end57.i.do.end72.i_crit_edge
  %rc.2.i.ph = phi i32 [ -5, %land.lhs.true63.i.do.end72.i_crit_edge ], [ %call61.i, %if.end57.i.do.end72.i_crit_edge ]
  %87 = ptrtoint ptr %mtd to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %mtd, align 4
  %name76.i = getelementptr inbounds %struct.mtd_info, ptr %88, i32 0, i32 13
  %89 = ptrtoint ptr %name76.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %name76.i, align 8
  %call77.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %90) #12
  br label %err.i

if.end78.i:                                       ; preds = %land.lhs.true63.i
  %call80.i = call i32 @rfd_ftl_writesect(ptr noundef %part, i32 noundef %conv38.i, ptr noundef nonnull %call7.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80.i)
  %tobool81.not.i = icmp eq i32 %call80.i, 0
  br i1 %tobool81.not.i, label %if.end78.i.for.inc.i_crit_edge, label %if.end78.i.err.i_crit_edge

if.end78.i.err.i_crit_edge:                       ; preds = %if.end78.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %err.i

if.end78.i.for.inc.i_crit_edge:                   ; preds = %if.end78.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end78.i.for.inc.i_crit_edge, %if.then50.i.for.inc.i_crit_edge, %if.end32.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge128
  %inc.i = add nuw i32 %i.0.i121, 1
  %91 = ptrtoint ptr %data_sectors_per_block to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %data_sectors_per_block, align 4
  %cmp21.i = icmp ult i32 %inc.i, %92
  br i1 %cmp21.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.err.i_crit_edge

for.inc.i.err.i_crit_edge:                        ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %err.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

err.i:                                            ; preds = %for.inc.i.err.i_crit_edge, %if.end78.i.err.i_crit_edge, %do.end72.i, %if.then54.i, %do.end.i, %for.cond.i.preheader.err.i_crit_edge
  %rc.4.i = phi i32 [ %rc.0.i.ph, %do.end.i ], [ %call55.i, %if.then54.i ], [ %rc.2.i.ph, %do.end72.i ], [ 0, %for.cond.i.preheader.err.i_crit_edge ], [ %call80.i, %if.end78.i.err.i_crit_edge ], [ 0, %for.inc.i.err.i_crit_edge ]
  call void @kfree(ptr noundef nonnull %call9.i.i) #9
  br label %err2.i

err2.i:                                           ; preds = %err.i, %if.end.i.err2.i_crit_edge
  %rc.5.i = phi i32 [ %rc.4.i, %err.i ], [ -12, %if.end.i.err2.i_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %move_block_contents.exit

move_block_contents.exit:                         ; preds = %err2.i, %if.then43.move_block_contents.exit_crit_edge
  %rc.6.i = phi i32 [ %rc.5.i, %err2.i ], [ -12, %if.then43.move_block_contents.exit_crit_edge ]
  %93 = ptrtoint ptr %is_reclaiming.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 0, ptr %is_reclaiming.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retlen.i) #9
  br label %cleanup48

if.else45:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %call46 = tail call fastcc i32 @erase_block(ptr noundef %part, i32 noundef %best_block.2.ph)
  br label %cleanup48

cleanup48:                                        ; preds = %if.else45, %move_block_contents.exit, %for.end.cleanup48_crit_edge, %if.end4.cleanup48_crit_edge, %if.end.cleanup48_crit_edge
  %retval.2 = phi i32 [ -28, %for.end.cleanup48_crit_edge ], [ %rc.6.i, %move_block_contents.exit ], [ %call46, %if.else45 ], [ -28, %if.end.cleanup48_crit_edge ], [ 0, %if.end4.cleanup48_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @erase_block(ptr nocapture noundef readonly %part, i32 noundef %block) unnamed_addr #2 align 64 {
entry:
  %magic = alloca i16, align 2
  %retlen = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 24) #13
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %blocks = getelementptr inbounds %struct.partition, ptr %part, i32 0, i32 14
  %1 = ptrtoint ptr %blocks to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %blocks, align 4
  %offset = getelementptr %struct.block, ptr %2, i32 %block, i32 4
  %3 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %offset, align 4
  %conv = zext i32 %4 to i64
  %5 = ptrtoint ptr %call7.i to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %conv, ptr %call7.i, align 8
  %block_size = getelementptr inbounds %struct.partition, ptr %part, i32 0, i32 1
  %6 = ptrtoint ptr %block_size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %block_size, align 4
  %conv1 = zext i32 %7 to i64
  %len = getelementptr inbounds %struct.erase_info, ptr %call7.i, i32 0, i32 1
  %8 = ptrtoint ptr %len to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %conv1, ptr %len, align 8
  %arrayidx3 = getelementptr %struct.block, ptr %2, i32 %block
  %9 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %arrayidx3, align 4
  %10 = load ptr, ptr %blocks, align 4
  %free_sectors = getelementptr %struct.block, ptr %10, i32 %block, i32 1
  %11 = ptrtoint ptr %free_sectors to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %free_sectors, align 4
  %mtd = getelementptr inbounds %struct.mtd_blktrans_dev, ptr %part, i32 0, i32 2
  %12 = ptrtoint ptr %mtd to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mtd, align 4
  %call6 = tail call i32 @mtd_erase(ptr noundef %13, ptr noundef nonnull %call7.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.else, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %call7.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %call7.i, align 8
  %16 = ptrtoint ptr %len to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %len, align 8
  %18 = ptrtoint ptr %mtd to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mtd, align 4
  %name = getelementptr inbounds %struct.mtd_info, ptr %19, i32 0, i32 13
  %20 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %name, align 8
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i64 noundef %15, i64 noundef %17, ptr noundef %21) #12
  %22 = ptrtoint ptr %blocks to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %blocks, align 4
  %arrayidx15 = getelementptr %struct.block, ptr %23, i32 %block
  %24 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 4, ptr %arrayidx15, align 4
  %25 = load ptr, ptr %blocks, align 4
  %free_sectors19 = getelementptr %struct.block, ptr %25, i32 %block, i32 1
  %26 = ptrtoint ptr %free_sectors19 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %free_sectors19, align 4
  %27 = load ptr, ptr %blocks, align 4
  %used_sectors = getelementptr %struct.block, ptr %27, i32 %block, i32 2
  %28 = ptrtoint ptr %used_sectors to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %used_sectors, align 4
  br label %if.end65

if.else:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %magic) #9
  %29 = ptrtoint ptr %magic to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 -27759, ptr %magic, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retlen) #9
  %30 = ptrtoint ptr %retlen to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 -1, ptr %retlen, align 4, !annotation !116
  %31 = ptrtoint ptr %blocks to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %blocks, align 4
  %arrayidx23 = getelementptr %struct.block, ptr %32, i32 %block
  %33 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 2, ptr %arrayidx23, align 4
  %data_sectors_per_block = getelementptr inbounds %struct.partition, ptr %part, i32 0, i32 4
  %34 = ptrtoint ptr %data_sectors_per_block to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %data_sectors_per_block, align 4
  %36 = load ptr, ptr %blocks, align 4
  %free_sectors27 = getelementptr %struct.block, ptr %36, i32 %block, i32 1
  %37 = ptrtoint ptr %free_sectors27 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %35, ptr %free_sectors27, align 4
  %38 = load ptr, ptr %blocks, align 4
  %used_sectors30 = getelementptr %struct.block, ptr %38, i32 %block, i32 2
  %39 = ptrtoint ptr %used_sectors30 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %used_sectors30, align 4
  %40 = load ptr, ptr %blocks, align 4
  %erases = getelementptr %struct.block, ptr %40, i32 %block, i32 3
  %41 = ptrtoint ptr %erases to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %erases, align 4
  %inc = add i32 %42, 1
  store i32 %inc, ptr %erases, align 4
  %43 = ptrtoint ptr %mtd to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %mtd, align 4
  %45 = load ptr, ptr %blocks, align 4
  %offset37 = getelementptr %struct.block, ptr %45, i32 %block, i32 4
  %46 = ptrtoint ptr %offset37 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %offset37, align 4
  %conv38 = zext i32 %47 to i64
  %call39 = call i32 @mtd_write(ptr noundef %44, i64 noundef %conv38, i32 noundef 2, ptr noundef nonnull %retlen, ptr noundef nonnull %magic) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %land.lhs.true, label %if.else.do.end48_crit_edge

if.else.do.end48_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end48

land.lhs.true:                                    ; preds = %if.else
  %48 = ptrtoint ptr %retlen to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %retlen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %49)
  %cmp.not = icmp eq i32 %49, 2
  br i1 %cmp.not, label %land.lhs.true.if.end64_crit_edge, label %land.lhs.true.do.end48_crit_edge

land.lhs.true.do.end48_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end48

land.lhs.true.if.end64_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end64

do.end48:                                         ; preds = %land.lhs.true.do.end48_crit_edge, %if.else.do.end48_crit_edge
  %rc.0.ph = phi i32 [ -5, %land.lhs.true.do.end48_crit_edge ], [ %call39, %if.else.do.end48_crit_edge ]
  %50 = ptrtoint ptr %mtd to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %mtd, align 4
  %name52 = getelementptr inbounds %struct.mtd_info, ptr %51, i32 0, i32 13
  %52 = ptrtoint ptr %name52 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %name52, align 8
  %54 = ptrtoint ptr %blocks to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %blocks, align 4
  %offset55 = getelementptr %struct.block, ptr %55, i32 %block, i32 4
  %56 = ptrtoint ptr %offset55 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %offset55, align 4
  %call56 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef %53, i32 noundef %57) #12
  br label %if.end64

if.end64:                                         ; preds = %do.end48, %land.lhs.true.if.end64_crit_edge
  %.sink = phi i32 [ 4, %do.end48 ], [ 0, %land.lhs.true.if.end64_crit_edge ]
  %rc.0110 = phi i32 [ %rc.0.ph, %do.end48 ], [ 0, %land.lhs.true.if.end64_crit_edge ]
  %58 = ptrtoint ptr %blocks to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %blocks, align 4
  %arrayidx62 = getelementptr %struct.block, ptr %59, i32 %block
  %60 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %.sink, ptr %arrayidx62, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retlen) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %magic) #9
  br label %if.end65

if.end65:                                         ; preds = %if.end64, %do.end
  %rc.1 = phi i32 [ %call6, %do.end ], [ %rc.0110, %if.end64 ]
  call void @kfree(ptr noundef nonnull %call7.i) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end65, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.1, %if.end65 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_erase(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @add_mtd_blktrans_dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vmalloc(i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_mtd_blktrans_dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 50)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 50)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !11, !13, !15, !16, !18, !20, !22, !24, !25, !26, !27, !28, !30, !31, !32, !33, !35, !36, !37, !38, !40, !41, !43, !44, !45, !46, !48, !49, !50, !51, !53, !54, !55, !57, !58, !59, !61, !62, !63, !64, !66, !67, !68, !70, !71, !72, !74, !75, !76, !77, !79, !80, !81, !83, !84, !85, !87, !88, !89, !90, !92, !93, !94, !96, !97, !98, !99, !101, !102, !103, !105, !106}
!llvm.module.flags = !{!107, !108, !109, !110, !111, !112, !113, !114}
!llvm.ident = !{!115}

!0 = !{ptr @__param_block_size, !1, !"__param_block_size", i1 false, i1 false}
!1 = !{!"../drivers/mtd/rfd_ftl.c", i32 27, i32 1}
!2 = !{ptr @__UNIQUE_ID_block_sizetype185, !1, !"__UNIQUE_ID_block_sizetype185", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_block_size186, !4, !"__UNIQUE_ID_block_size186", i1 false, i1 false}
!4 = !{!"../drivers/mtd/rfd_ftl.c", i32 28, i32 1}
!5 = !{ptr @__initcall__kmod_rfd_ftl__190_824_rfd_ftl_tr_init6, !6, !"__initcall__kmod_rfd_ftl__190_824_rfd_ftl_tr_init6", i1 false, i1 false}
!6 = !{!"../drivers/mtd/rfd_ftl.c", i32 824, i32 1}
!7 = !{ptr @__exitcall_rfd_ftl_tr_exit, !6, !"__exitcall_rfd_ftl_tr_exit", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_file191, !9, !"__UNIQUE_ID_file191", i1 false, i1 false}
!9 = !{!"../drivers/mtd/rfd_ftl.c", i32 826, i32 1}
!10 = !{ptr @__UNIQUE_ID_license192, !9, !"__UNIQUE_ID_license192", i1 false, i1 false}
!11 = !{ptr @__UNIQUE_ID_author193, !12, !"__UNIQUE_ID_author193", i1 false, i1 false}
!12 = !{!"../drivers/mtd/rfd_ftl.c", i32 827, i32 1}
!13 = !{ptr @__UNIQUE_ID_description194, !14, !"__UNIQUE_ID_description194", i1 false, i1 false}
!14 = !{!"../drivers/mtd/rfd_ftl.c", i32 828, i32 1}
!15 = !{ptr @__param_str_block_size, !1, !"__param_str_block_size", i1 false, i1 false}
!16 = !{ptr @block_size, !17, !"block_size", i1 false, i1 false}
!17 = !{!"../drivers/mtd/rfd_ftl.c", i32 26, i32 12}
!18 = !{ptr @.str, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/mtd/rfd_ftl.c", i32 810, i32 11}
!20 = !{ptr @rfd_ftl_tr, !21, !"rfd_ftl_tr", i1 false, i1 false}
!21 = !{!"../drivers/mtd/rfd_ftl.c", i32 809, i32 32}
!22 = !{ptr @.str.1, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/mtd/rfd_ftl.c", i32 258, i32 4}
!24 = !{ptr @.str.2, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.3, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @rfd_ftl_readsect._entry, !23, !"_entry", i1 false, i1 false}
!27 = !{ptr @rfd_ftl_readsect._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.4, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/mtd/rfd_ftl.c", i32 674, i32 2}
!30 = !{ptr @.str.5, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.6, !29, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @rfd_ftl_writesect.__UNIQUE_ID_ddebug188, !29, !"__UNIQUE_ID_ddebug188", i1 false, i1 false}
!33 = !{ptr @.str.7, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/mtd/rfd_ftl.c", i32 637, i32 3}
!35 = !{ptr @.str.8, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @do_writesect._entry, !34, !"_entry", i1 false, i1 false}
!37 = !{ptr @do_writesect._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @do_writesect._entry.9, !39, !"_entry", i1 false, i1 false}
!39 = !{!"../drivers/mtd/rfd_ftl.c", i32 656, i32 3}
!40 = !{ptr @do_writesect._entry_ptr.10, !39, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.11, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/mtd/rfd_ftl.c", i32 533, i32 3}
!43 = !{ptr @.str.12, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @find_writable_block._entry, !42, !"_entry", i1 false, i1 false}
!45 = !{ptr @find_writable_block._entry_ptr, !42, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.13, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/mtd/rfd_ftl.c", i32 285, i32 3}
!48 = !{ptr @.str.14, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @erase_block._entry, !47, !"_entry", i1 false, i1 false}
!50 = !{ptr @erase_block._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.16, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/mtd/rfd_ftl.c", i32 306, i32 4}
!53 = !{ptr @erase_block._entry.15, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @erase_block._entry_ptr.17, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.18, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/mtd/rfd_ftl.c", i32 461, i32 2}
!57 = !{ptr @.str.19, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @reclaim_block.__UNIQUE_ID_ddebug187, !56, !"__UNIQUE_ID_ddebug187", i1 false, i1 false}
!59 = !{ptr @.str.20, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/mtd/rfd_ftl.c", i32 343, i32 3}
!61 = !{ptr @.str.21, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @move_block_contents._entry, !60, !"_entry", i1 false, i1 false}
!63 = !{ptr @move_block_contents._entry_ptr, !60, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.23, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/mtd/rfd_ftl.c", i32 383, i32 4}
!66 = !{ptr @move_block_contents._entry.22, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @move_block_contents._entry_ptr.24, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.25, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/mtd/rfd_ftl.c", i32 565, i32 3}
!70 = !{ptr @mark_sector_deleted._entry, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @mark_sector_deleted._entry_ptr, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.26, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/mtd/rfd_ftl.c", i32 765, i32 4}
!74 = !{ptr @.str.27, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @rfd_ftl_add_mtd._entry, !73, !"_entry", i1 false, i1 false}
!76 = !{ptr @rfd_ftl_add_mtd._entry_ptr, !73, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.29, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/mtd/rfd_ftl.c", i32 778, i32 4}
!79 = !{ptr @rfd_ftl_add_mtd._entry.28, !78, !"_entry", i1 false, i1 false}
!80 = !{ptr @rfd_ftl_add_mtd._entry_ptr.30, !78, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.32, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/mtd/rfd_ftl.c", i32 783, i32 3}
!83 = !{ptr @rfd_ftl_add_mtd._entry.31, !82, !"_entry", i1 false, i1 false}
!84 = !{ptr @rfd_ftl_add_mtd._entry_ptr.33, !82, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.34, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/mtd/rfd_ftl.c", i32 217, i32 3}
!87 = !{ptr @.str.35, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @scan_header._entry, !86, !"_entry", i1 false, i1 false}
!89 = !{ptr @scan_header._entry_ptr, !86, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.37, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/mtd/rfd_ftl.c", i32 224, i32 3}
!92 = !{ptr @scan_header._entry.36, !91, !"_entry", i1 false, i1 false}
!93 = !{ptr @scan_header._entry_ptr.38, !91, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.39, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/mtd/rfd_ftl.c", i32 124, i32 4}
!96 = !{ptr @.str.40, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @build_block_map._entry, !95, !"_entry", i1 false, i1 false}
!98 = !{ptr @build_block_map._entry_ptr, !95, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.42, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/mtd/rfd_ftl.c", i32 132, i32 4}
!101 = !{ptr @build_block_map._entry.41, !100, !"_entry", i1 false, i1 false}
!102 = !{ptr @build_block_map._entry_ptr.43, !100, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.44, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/mtd/rfd_ftl.c", i32 799, i32 3}
!105 = !{ptr @.str.45, !104, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @rfd_ftl_remove_dev.__UNIQUE_ID_ddebug189, !104, !"__UNIQUE_ID_ddebug189", i1 false, i1 false}
!107 = !{i32 1, !"wchar_size", i32 2}
!108 = !{i32 1, !"min_enum_size", i32 4}
!109 = !{i32 8, !"branch-target-enforcement", i32 0}
!110 = !{i32 8, !"sign-return-address", i32 0}
!111 = !{i32 8, !"sign-return-address-all", i32 0}
!112 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!113 = !{i32 7, !"uwtable", i32 1}
!114 = !{i32 7, !"frame-pointer", i32 2}
!115 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!116 = !{!"auto-init"}
!117 = !{i64 2148207904, i64 2148207909, i64 2148207922, i64 2148207966, i64 2148208000, i64 2148208021}
!118 = !{!"branch_weights", i32 1, i32 2000}
