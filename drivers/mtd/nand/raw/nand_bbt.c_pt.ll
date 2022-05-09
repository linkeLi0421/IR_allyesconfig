; ModuleID = '/llk/IR_all_yes/drivers/mtd/nand/raw/nand_bbt.c_pt.bc'
source_filename = "../drivers/mtd/nand/raw/nand_bbt.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+nand_create_bbt\22, \22a\22\09"
module asm "\09.weak\09__crc_nand_create_bbt\09\09\09\09"
module asm "\09.long\09__crc_nand_create_bbt\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nand_create_bbt:\09\09\09\09\09"
module asm "\09.asciz \09\22nand_create_bbt\22\09\09\09\09\09"
module asm "__kstrtabns_nand_create_bbt:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.nand_bbt_descr = type { i32, [8 x i32], i32, i32, [8 x i8], i32, i32, i32, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.nand_chip = type { %struct.nand_device, %struct.nand_id, %struct.nand_parameters, %struct.nand_manufacturer, %struct.nand_chip_ops, %struct.nand_legacy, i32, ptr, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, ptr, ptr, %struct.anon.49, i32, %struct.mutex, i8, i32, i32, ptr, i8, ptr, %struct.nand_ecc_ctrl, ptr }
%struct.nand_device = type { %struct.mtd_info, %struct.nand_memory_organization, %struct.nand_ecc, %struct.nand_row_converter, %struct.nand_bbt, ptr }
%struct.mtd_info = type { i8, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, %struct.notifier_block, %struct.mtd_ecc_stats, i32, ptr, ptr, %struct.device, i32, %struct.mtd_debug_info, ptr, ptr, ptr, ptr, %struct.list_head, %union.anon.43 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.mtd_ecc_stats = type { i32, i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.mtd_debug_info = type { ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.43 = type { %struct.mtd_part, [160 x i8] }
%struct.mtd_part = type { %struct.list_head, i64, i64, i32 }
%struct.nand_memory_organization = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.nand_ecc = type { %struct.nand_ecc_props, %struct.nand_ecc_props, %struct.nand_ecc_props, %struct.nand_ecc_context, ptr, ptr }
%struct.nand_ecc_props = type { i32, i32, i32, i32, i32, i32 }
%struct.nand_ecc_context = type { %struct.nand_ecc_props, i32, i32, ptr }
%struct.nand_row_converter = type { i32, i32 }
%struct.nand_bbt = type { ptr }
%struct.nand_id = type { [8 x i8], i32 }
%struct.nand_parameters = type { ptr, i8, [8 x i32], [8 x i32], ptr }
%struct.nand_manufacturer = type { ptr, ptr }
%struct.nand_chip_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nand_legacy = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.nand_controller }
%struct.nand_controller = type { %struct.mutex, ptr }
%struct.anon.49 = type { i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.nand_ecc_ctrl = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mtd_oob_ops = type { i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.erase_info = type { i64, i64, i64 }

@bbt_main_no_oob_descr = internal global { %struct.nand_bbt_descr, [60 x i8] } { %struct.nand_bbt_descr { i32 271250, [8 x i32] zeroinitializer, i32 0, i32 4, [8 x i8] zeroinitializer, i32 4, i32 4, i32 0, ptr @bbt_pattern }, [60 x i8] zeroinitializer }, align 32
@bbt_mirror_no_oob_descr = internal global { %struct.nand_bbt_descr, [60 x i8] } { %struct.nand_bbt_descr { i32 271250, [8 x i32] zeroinitializer, i32 0, i32 4, [8 x i8] zeroinitializer, i32 4, i32 4, i32 0, ptr @mirror_pattern }, [60 x i8] zeroinitializer }, align 32
@bbt_main_descr = internal global { %struct.nand_bbt_descr, [60 x i8] } { %struct.nand_bbt_descr { i32 9106, [8 x i32] zeroinitializer, i32 8, i32 12, [8 x i8] zeroinitializer, i32 4, i32 4, i32 0, ptr @bbt_pattern }, [60 x i8] zeroinitializer }, align 32
@bbt_mirror_descr = internal global { %struct.nand_bbt_descr, [60 x i8] } { %struct.nand_bbt_descr { i32 9106, [8 x i32] zeroinitializer, i32 8, i32 12, [8 x i8] zeroinitializer, i32 4, i32 4, i32 0, ptr @mirror_pattern }, [60 x i8] zeroinitializer }, align 32
@__kstrtab_nand_create_bbt = external dso_local constant [0 x i8], align 1
@__kstrtabns_nand_create_bbt = external dso_local constant [0 x i8], align 1
@__ksymtab_nand_create_bbt = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nand_create_bbt to i32), ptr @__kstrtab_nand_create_bbt, ptr @__kstrtabns_nand_create_bbt }, section "___ksymtab+nand_create_bbt", align 4
@nand_isbad_bbt.__UNIQUE_ID_ddebug204 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 1, i8 108, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"nand\00", [27 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"nand_isbad_bbt\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/mtd/nand/raw/nand_bbt.c\00", [32 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"nand_isbad_bbt(): bbt info for offs 0x%08x: (block %d) 0x%02x\0A\00", [33 x i8] zeroinitializer }, align 32
@nand_isbad_bbt.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@mtd_expert_analysis_mode = external dso_local local_unnamed_addr global i8, align 1
@mtd_expert_analysis_warning = external dso_local local_unnamed_addr global ptr, align 4
@bbt_pattern = internal global { [4 x i8], [28 x i8] } { [4 x i8] c"Bbt0", [28 x i8] zeroinitializer }, align 32
@mirror_pattern = internal global { [4 x i8], [28 x i8] } { [4 x i8] c"1tbB", [28 x i8] zeroinitializer }, align 32
@nand_create_badblock_pattern._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.2, i32 1376, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\014Bad block pattern already allocated; not replacing\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"nand_create_badblock_pattern\00", [35 x i8] zeroinitializer }, align 32
@nand_create_badblock_pattern._entry_ptr = internal global ptr @nand_create_badblock_pattern._entry, section ".printk_index", align 4
@scan_ff_pattern = internal global { [2 x i8], [30 x i8] } { [2 x i8] c"\FF\FF", [30 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@nand_scan_bbt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.2, i32 1267, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\013nand_bbt: can't scan flash and build the RAM-based BBT\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"nand_scan_bbt\00", [18 x i8] zeroinitializer }, align 32
@nand_scan_bbt._entry_ptr = internal global ptr @nand_scan_bbt._entry, section ".printk_index", align 4
@create_bbt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.2, i32 498, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\016Scanning device for bad blocks\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"create_bbt\00", [21 x i8] zeroinitializer }, align 32
@create_bbt._entry_ptr = internal global ptr @create_bbt._entry, section ".printk_index", align 4
@create_bbt._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.9, ptr @.str.2, i32 507, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\014create_bbt(): chipnr (%d) > available chips (%d)\0A\00", [44 x i8] zeroinitializer }, align 32
@create_bbt._entry_ptr.12 = internal global ptr @create_bbt._entry.10, section ".printk_index", align 4
@create_bbt._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.9, ptr @.str.2, i32 528, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\014Bad eraseblock %d at 0x%012llx\0A\00", [62 x i8] zeroinitializer }, align 32
@create_bbt._entry_ptr.15 = internal global ptr @create_bbt._entry.13, section ".printk_index", align 4
@read_abs_bbts._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.2, i32 400, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\016Bad block table at page %d, version 0x%02X\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"read_abs_bbts\00", [18 x i8] zeroinitializer }, align 32
@read_abs_bbts._entry_ptr = internal global ptr @read_abs_bbts._entry, section ".printk_index", align 4
@read_abs_bbts._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.2, i32 409, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@read_abs_bbts._entry_ptr.19 = internal global ptr @read_abs_bbts._entry.18, section ".printk_index", align 4
@search_bbt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.2, i32 612, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\014Bad block table not found for chip %d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"search_bbt\00", [21 x i8] zeroinitializer }, align 32
@search_bbt._entry_ptr = internal global ptr @search_bbt._entry, section ".printk_index", align 4
@search_bbt._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.21, ptr @.str.2, i32 615, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\016Bad block table found at page %d, version 0x%02X\0A\00", [44 x i8] zeroinitializer }, align 32
@search_bbt._entry_ptr.24 = internal global ptr @search_bbt._entry.22, section ".printk_index", align 4
@read_bbt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.2, i32 197, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016nand_bbt: ECC error in BBT at 0x%012llx\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"read_bbt\00", [23 x i8] zeroinitializer }, align 32
@read_bbt._entry_ptr = internal global ptr @read_bbt._entry, section ".printk_index", align 4
@read_bbt._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.26, ptr @.str.2, i32 201, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\016nand_bbt: corrected error in BBT at 0x%012llx\0A\00", [47 x i8] zeroinitializer }, align 32
@read_bbt._entry_ptr.29 = internal global ptr @read_bbt._entry.27, section ".printk_index", align 4
@read_bbt._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.26, ptr @.str.2, i32 204, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\016nand_bbt: error reading BBT\0A\00", [33 x i8] zeroinitializer }, align 32
@read_bbt._entry_ptr.32 = internal global ptr @read_bbt._entry.30, section ".printk_index", align 4
@read_bbt._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.26, ptr @.str.2, i32 219, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\016nand_read_bbt: reserved block at 0x%012llx\0A\00", [50 x i8] zeroinitializer }, align 32
@read_bbt._entry_ptr.35 = internal global ptr @read_bbt._entry.33, section ".printk_index", align 4
@read_bbt._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.26, ptr @.str.2, i32 231, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\016nand_read_bbt: bad block at 0x%012llx\0A\00", [55 x i8] zeroinitializer }, align 32
@read_bbt._entry_ptr.38 = internal global ptr @read_bbt._entry.36, section ".printk_index", align 4
@write_bbt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.2, i32 789, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013No space left to write bad block table\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"write_bbt\00", [22 x i8] zeroinitializer }, align 32
@write_bbt._entry_ptr = internal global ptr @write_bbt._entry, section ".printk_index", align 4
@write_bbt._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.40, ptr @.str.2, i32 829, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\016nand_bbt: error reading block for writing the bad block table\0A\00", [63 x i8] zeroinitializer }, align 32
@write_bbt._entry_ptr.43 = internal global ptr @write_bbt._entry.41, section ".printk_index", align 4
@write_bbt._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.40, ptr @.str.2, i32 832, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"\014nand_bbt: ECC error while reading block for writing bad block table\0A\00", [57 x i8] zeroinitializer }, align 32
@write_bbt._entry_ptr.46 = internal global ptr @write_bbt._entry.44, section ".printk_index", align 4
@write_bbt._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.40, ptr @.str.2, i32 895, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\014nand_bbt: error while erasing BBT block %d\0A\00", [50 x i8] zeroinitializer }, align 32
@write_bbt._entry_ptr.49 = internal global ptr @write_bbt._entry.47, section ".printk_index", align 4
@write_bbt._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.40, ptr @.str.2, i32 905, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\014nand_bbt: error while writing BBT block %d\0A\00", [50 x i8] zeroinitializer }, align 32
@write_bbt._entry_ptr.52 = internal global ptr @write_bbt._entry.50, section ".printk_index", align 4
@write_bbt._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.40, ptr @.str.2, i32 911, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\016Bad block table written to 0x%012llx, version 0x%02X\0A\00", [40 x i8] zeroinitializer }, align 32
@write_bbt._entry_ptr.55 = internal global ptr @write_bbt._entry.53, section ".printk_index", align 4
@write_bbt._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.40, ptr @.str.2, i32 919, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\014nand_bbt: error while writing bad block table %d\0A\00", [44 x i8] zeroinitializer }, align 32
@write_bbt._entry_ptr.58 = internal global ptr @write_bbt._entry.56, section ".printk_index", align 4
@mark_bbt_block_bad._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.60, ptr @.str.2, i32 730, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\014nand_bbt: error %d while marking block %d bad\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mark_bbt_block_bad\00", [45 x i8] zeroinitializer }, align 32
@mark_bbt_block_bad._entry_ptr = internal global ptr @mark_bbt_block_bad._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 2, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.61 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967179, i64 4294967222]
@__sancov_gen_cov_switch_values.62 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967179, i64 4294967222]
@__sancov_gen_cov_switch_values.63 = internal global [4 x i64] [i64 2, i64 2, i64 1, i64 3]
@__sancov_gen_cov_switch_values.64 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 4, i64 8]
@__sancov_gen_cov_switch_values.65 = internal global [4 x i64] [i64 2, i64 32, i64 4294967179, i64 4294967222]
@___asan_gen_.66 = private unnamed_addr constant [22 x i8] c"bbt_main_no_oob_descr\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 1342, i32 30 }
@___asan_gen_.69 = private unnamed_addr constant [24 x i8] c"bbt_mirror_no_oob_descr\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 1352, i32 30 }
@___asan_gen_.72 = private unnamed_addr constant [15 x i8] c"bbt_main_descr\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 1322, i32 30 }
@___asan_gen_.75 = private unnamed_addr constant [17 x i8] c"bbt_mirror_descr\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 1332, i32 30 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 1455, i32 2 }
@___asan_gen_.90 = private unnamed_addr constant [12 x i8] c"bbt_pattern\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 1319, i32 16 }
@___asan_gen_.93 = private unnamed_addr constant [15 x i8] c"mirror_pattern\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 1320, i32 16 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 1376, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant [16 x i8] c"scan_ff_pattern\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 1316, i32 16 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 1267, i32 4 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 498, i32 2 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 506, i32 4 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 527, i32 4 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 399, i32 3 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 408, i32 3 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 612, i32 4 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 614, i32 4 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 196, i32 5 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 200, i32 5 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 204, i32 5 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 217, i32 6 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 229, i32 5 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 789, i32 4 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 829, i32 6 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 832, i32 5 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 894, i32 4 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 904, i32 4 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 910, i32 3 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 919, i32 2 }
@___asan_gen_.243 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.249 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.250 = private constant [35 x i8] c"../drivers/mtd/nand/raw/nand_bbt.c\00", align 1
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 729, i32 3 }
@llvm.compiler.used = appending global [85 x ptr] [ptr @__ksymtab_nand_create_bbt, ptr @create_bbt._entry, ptr @create_bbt._entry.10, ptr @create_bbt._entry.13, ptr @create_bbt._entry_ptr, ptr @create_bbt._entry_ptr.12, ptr @create_bbt._entry_ptr.15, ptr @mark_bbt_block_bad._entry, ptr @mark_bbt_block_bad._entry_ptr, ptr @nand_create_badblock_pattern._entry, ptr @nand_create_badblock_pattern._entry_ptr, ptr @nand_scan_bbt._entry, ptr @nand_scan_bbt._entry_ptr, ptr @read_abs_bbts._entry, ptr @read_abs_bbts._entry.18, ptr @read_abs_bbts._entry_ptr, ptr @read_abs_bbts._entry_ptr.19, ptr @read_bbt._entry, ptr @read_bbt._entry.27, ptr @read_bbt._entry.30, ptr @read_bbt._entry.33, ptr @read_bbt._entry.36, ptr @read_bbt._entry_ptr, ptr @read_bbt._entry_ptr.29, ptr @read_bbt._entry_ptr.32, ptr @read_bbt._entry_ptr.35, ptr @read_bbt._entry_ptr.38, ptr @search_bbt._entry, ptr @search_bbt._entry.22, ptr @search_bbt._entry_ptr, ptr @search_bbt._entry_ptr.24, ptr @write_bbt._entry, ptr @write_bbt._entry.41, ptr @write_bbt._entry.44, ptr @write_bbt._entry.47, ptr @write_bbt._entry.50, ptr @write_bbt._entry.53, ptr @write_bbt._entry.56, ptr @write_bbt._entry_ptr, ptr @write_bbt._entry_ptr.43, ptr @write_bbt._entry_ptr.46, ptr @write_bbt._entry_ptr.49, ptr @write_bbt._entry_ptr.52, ptr @write_bbt._entry_ptr.55, ptr @write_bbt._entry_ptr.58, ptr @bbt_main_no_oob_descr, ptr @bbt_mirror_no_oob_descr, ptr @bbt_main_descr, ptr @bbt_mirror_descr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @bbt_pattern, ptr @mirror_pattern, ptr @.str.4, ptr @.str.5, ptr @scan_ff_pattern, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.14, ptr @.str.16, ptr @.str.17, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @.str.25, ptr @.str.26, ptr @.str.28, ptr @.str.31, ptr @.str.34, ptr @.str.37, ptr @.str.39, ptr @.str.40, ptr @.str.42, ptr @.str.45, ptr @.str.48, ptr @.str.51, ptr @.str.54, ptr @.str.57, ptr @.str.59, ptr @.str.60], section "llvm.metadata"
@0 = internal global [62 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bbt_main_no_oob_descr to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bbt_mirror_no_oob_descr to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bbt_main_descr to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bbt_mirror_descr to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bbt_pattern to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mirror_pattern to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nand_create_badblock_pattern._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scan_ff_pattern to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nand_scan_bbt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @create_bbt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @create_bbt._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @create_bbt._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @read_abs_bbts._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @read_abs_bbts._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @search_bbt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @search_bbt._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @read_bbt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @read_bbt._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @read_bbt._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @read_bbt._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @read_bbt._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @write_bbt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @write_bbt._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @write_bbt._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @write_bbt._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @write_bbt._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @write_bbt._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @write_bbt._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mark_bbt_block_bad._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nand_create_bbt(ptr noundef %this) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %bbt_options = getelementptr inbounds %struct.nand_chip, ptr %this, i32 0, i32 10
  %0 = ptrtoint ptr %bbt_options to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bbt_options, align 8
  %and = and i32 %1, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %bbt_td12 = getelementptr inbounds %struct.nand_chip, ptr %this, i32 0, i32 13
  br i1 %tobool.not, label %entry.if.end14.sink.split_crit_edge, label %if.then

entry.if.end14.sink.split_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14.sink.split

if.then:                                          ; preds = %entry
  %2 = ptrtoint ptr %bbt_td12 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bbt_td12, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %if.then2, label %if.then.if.end14_crit_edge

if.then.if.end14_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %and4 = and i32 %1, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  %bbt_main_descr.bbt_main_no_oob_descr = select i1 %tobool5.not, ptr @bbt_main_descr, ptr @bbt_main_no_oob_descr
  %bbt_mirror_descr.bbt_mirror_no_oob_descr = select i1 %tobool5.not, ptr @bbt_mirror_descr, ptr @bbt_mirror_no_oob_descr
  br label %if.end14.sink.split

if.end14.sink.split:                              ; preds = %if.then2, %entry.if.end14.sink.split_crit_edge
  %bbt_main_descr.sink = phi ptr [ %bbt_main_descr.bbt_main_no_oob_descr, %if.then2 ], [ null, %entry.if.end14.sink.split_crit_edge ]
  %bbt_mirror_descr.sink = phi ptr [ %bbt_mirror_descr.bbt_mirror_no_oob_descr, %if.then2 ], [ null, %entry.if.end14.sink.split_crit_edge ]
  %4 = ptrtoint ptr %bbt_td12 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %bbt_main_descr.sink, ptr %bbt_td12, align 4
  %bbt_md9 = getelementptr inbounds %struct.nand_chip, ptr %this, i32 0, i32 14
  %5 = ptrtoint ptr %bbt_md9 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %bbt_mirror_descr.sink, ptr %bbt_md9, align 8
  br label %if.end14

if.end14:                                         ; preds = %if.end14.sink.split, %if.then.if.end14_crit_edge
  %badblock_pattern = getelementptr inbounds %struct.nand_chip, ptr %this, i32 0, i32 15
  %6 = ptrtoint ptr %badblock_pattern to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %badblock_pattern, align 4
  %tobool15.not = icmp eq ptr %7, null
  br i1 %tobool15.not, label %if.end.i, label %if.end14.if.end20_crit_edge

if.end14.if.end20_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20

if.end.i:                                         ; preds = %if.end14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %8 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3520, i32 noundef 68) #12
  %tobool2.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool2.not.i, label %if.end.i.cleanup_crit_edge, label %nand_create_badblock_pattern.exit.thread

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

nand_create_badblock_pattern.exit.thread:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %bbt_options to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %bbt_options, align 8
  %and.i = and i32 %10, 2147221503
  %badblockpos.i = getelementptr inbounds %struct.nand_chip, ptr %this, i32 0, i32 11
  %11 = ptrtoint ptr %badblockpos.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %badblockpos.i, align 4
  %offs.i = getelementptr inbounds %struct.nand_bbt_descr, ptr %call7.i.i.i, i32 0, i32 2
  %13 = ptrtoint ptr %offs.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %offs.i, align 4
  %options5.i = getelementptr inbounds %struct.nand_chip, ptr %this, i32 0, i32 6
  %14 = ptrtoint ptr %options5.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %options5.i, align 8
  %and6.i = and i32 %15, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i)
  %tobool7.not.i = icmp eq i32 %and6.i, 0
  %cond.i = select i1 %tobool7.not.i, i32 1, i32 2
  %len.i = getelementptr inbounds %struct.nand_bbt_descr, ptr %call7.i.i.i, i32 0, i32 5
  %16 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %cond.i, ptr %len.i, align 4
  %pattern.i = getelementptr inbounds %struct.nand_bbt_descr, ptr %call7.i.i.i, i32 0, i32 8
  %17 = ptrtoint ptr %pattern.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @scan_ff_pattern, ptr %pattern.i, align 8
  %or.i = or i32 %and.i, -2147483648
  %18 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %or.i, ptr %call7.i.i.i, align 8
  %19 = ptrtoint ptr %badblock_pattern to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call7.i.i.i, ptr %badblock_pattern, align 4
  br label %if.end20

if.end20:                                         ; preds = %nand_create_badblock_pattern.exit.thread, %if.end14.if.end20_crit_edge
  %20 = ptrtoint ptr %badblock_pattern to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %badblock_pattern, align 4
  %bbt_td.i = getelementptr inbounds %struct.nand_chip, ptr %this, i32 0, i32 13
  %22 = ptrtoint ptr %bbt_td.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %bbt_td.i, align 4
  %bbt_md.i = getelementptr inbounds %struct.nand_chip, ptr %this, i32 0, i32 14
  %24 = ptrtoint ptr %bbt_md.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %bbt_md.i, align 8
  %bbt_erase_shift.i = getelementptr inbounds %struct.nand_chip, ptr %this, i32 0, i32 9
  %size.i = getelementptr inbounds %struct.mtd_info, ptr %this, i32 0, i32 2
  %26 = ptrtoint ptr %size.i to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %size.i, align 8
  %28 = ptrtoint ptr %bbt_erase_shift.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %bbt_erase_shift.i, align 4
  %add.i = add i32 %29, 2
  %sh_prom.i = zext i32 %add.i to i64
  %shr.i = lshr i64 %27, %sh_prom.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shr.i)
  %tobool.not.i36 = icmp eq i64 %shr.i, 0
  %30 = trunc i64 %shr.i to i32
  %conv.i = select i1 %tobool.not.i36, i32 1, i32 %30
  %call9.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %conv.i, i32 noundef 3520) #13
  %bbt.i = getelementptr inbounds %struct.nand_chip, ptr %this, i32 0, i32 16
  %31 = ptrtoint ptr %bbt.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call9.i.i.i, ptr %bbt.i, align 8
  %tobool3.not.i = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool3.not.i, label %if.end20.cleanup_crit_edge, label %if.end.i38

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i38:                                       ; preds = %if.end20
  %tobool4.not.i = icmp eq ptr %23, null
  br i1 %tobool4.not.i, label %if.then5.i, label %if.end11.i

if.then5.i:                                       ; preds = %if.end.i38
  %page.i.i.i = getelementptr inbounds %struct.nand_chip, ptr %this, i32 0, i32 24, i32 1
  %32 = ptrtoint ptr %page.i.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 -1, ptr %page.i.i.i, align 4
  %data_buf.i.i.i = getelementptr inbounds %struct.nand_chip, ptr %this, i32 0, i32 22
  %33 = ptrtoint ptr %data_buf.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %data_buf.i.i.i, align 8
  %call1.i.i = tail call fastcc i32 @create_bbt(ptr noundef %this, ptr noundef %34, ptr noundef %21, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool7.not.i39 = icmp eq i32 %call1.i.i, 0
  br i1 %tobool7.not.i39, label %if.then5.i.cleanup_crit_edge, label %do.end.i40

if.then5.i.cleanup_crit_edge:                     ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end.i40:                                       ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #11
  %call9.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #14
  br label %err_free_bbt.i

if.end11.i:                                       ; preds = %if.end.i38
  tail call fastcc void @verify_bbt_descr(ptr noundef %this, ptr noundef nonnull %23) #9
  tail call fastcc void @verify_bbt_descr(ptr noundef %this, ptr noundef %25) #9
  %35 = ptrtoint ptr %bbt_erase_shift.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %bbt_erase_shift.i, align 4
  %shl.i = shl nuw i32 1, %36
  %page_shift.i = getelementptr inbounds %struct.nand_chip, ptr %this, i32 0, i32 17
  %37 = ptrtoint ptr %page_shift.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %page_shift.i, align 4
  %shr13.i = ashr i32 %shl.i, %38
  %oobsize.i = getelementptr inbounds %struct.mtd_info, ptr %this, i32 0, i32 6
  %39 = ptrtoint ptr %oobsize.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %oobsize.i, align 4
  %mul.i = mul i32 %shr13.i, %40
  %add14.i = add i32 %mul.i, %shl.i
  %call15.i = tail call noalias ptr @vmalloc(i32 noundef %add14.i) #13
  %tobool16.not.i = icmp eq ptr %call15.i, null
  br i1 %tobool16.not.i, label %if.end11.i.err_free_bbt.i_crit_edge, label %if.end18.i

if.end11.i.err_free_bbt.i_crit_edge:              ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_free_bbt.i

if.end18.i:                                       ; preds = %if.end11.i
  %41 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %23, align 4
  %and.i41 = and i32 %42, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i41)
  %tobool19.not.i = icmp eq i32 %and.i41, 0
  br i1 %tobool19.not.i, label %if.else.i, label %if.then20.i

if.then20.i:                                      ; preds = %if.end18.i
  %and.i.i = and i32 %42, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.then20.i.if.end.i.i_crit_edge, label %if.then.i.i

if.then20.i.if.end.i.i_crit_edge:                 ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %if.then20.i
  %pages.i.i = getelementptr inbounds %struct.nand_bbt_descr, ptr %23, i32 0, i32 1
  %43 = ptrtoint ptr %pages.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %pages.i.i, align 4
  %conv.i.i = sext i32 %44 to i64
  %45 = ptrtoint ptr %page_shift.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %page_shift.i, align 4
  %sh_prom.i.i = zext i32 %46 to i64
  %shl.i.i = shl i64 %conv.i.i, %sh_prom.i.i
  %writesize.i.i = getelementptr inbounds %struct.mtd_info, ptr %this, i32 0, i32 4
  %47 = ptrtoint ptr %writesize.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %writesize.i.i, align 4
  tail call fastcc void @scan_read(ptr noundef %this, ptr noundef nonnull %call15.i, i64 noundef %shl.i.i, i32 noundef %48, ptr noundef nonnull %23) #9
  %veroffs.i.i.i = getelementptr inbounds %struct.nand_bbt_descr, ptr %23, i32 0, i32 3
  %49 = ptrtoint ptr %veroffs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %veroffs.i.i.i, align 4
  %51 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %23, align 4
  %and.i.i.i = and i32 %52, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.then.i.i74.i, label %if.then.i.i.bbt_get_ver_offs.exit.i.i_crit_edge

if.then.i.i.bbt_get_ver_offs.exit.i.i_crit_edge:  ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %bbt_get_ver_offs.exit.i.i

if.then.i.i74.i:                                  ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %53 = ptrtoint ptr %writesize.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %writesize.i.i, align 4
  %add.i.i.i = add i32 %54, %50
  br label %bbt_get_ver_offs.exit.i.i

bbt_get_ver_offs.exit.i.i:                        ; preds = %if.then.i.i74.i, %if.then.i.i.bbt_get_ver_offs.exit.i.i_crit_edge
  %ver_offs.0.i.i.i = phi i32 [ %50, %if.then.i.i.bbt_get_ver_offs.exit.i.i_crit_edge ], [ %add.i.i.i, %if.then.i.i74.i ]
  %arrayidx3.i.i = getelementptr i8, ptr %call15.i, i32 %ver_offs.0.i.i.i
  %55 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %arrayidx3.i.i, align 1
  %version.i.i = getelementptr inbounds %struct.nand_bbt_descr, ptr %23, i32 0, i32 4
  %57 = ptrtoint ptr %version.i.i to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %56, ptr %version.i.i, align 4
  %58 = ptrtoint ptr %pages.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %pages.i.i, align 4
  %conv9.i.i = zext i8 %56 to i32
  %call10.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef %59, i32 noundef %conv9.i.i) #14
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %bbt_get_ver_offs.exit.i.i, %if.then20.i.if.end.i.i_crit_edge
  %tobool11.not.i.i = icmp eq ptr %25, null
  br i1 %tobool11.not.i.i, label %if.end.i.i.if.end21.i_crit_edge, label %land.lhs.true.i.i

if.end.i.i.if.end21.i_crit_edge:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21.i

land.lhs.true.i.i:                                ; preds = %if.end.i.i
  %60 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %25, align 4
  %and13.i.i = and i32 %61, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.i.i)
  %tobool14.not.i.i = icmp eq i32 %and13.i.i, 0
  br i1 %tobool14.not.i.i, label %land.lhs.true.i.i.if.end21.i_crit_edge, label %if.then15.i.i

land.lhs.true.i.i.if.end21.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21.i

if.then15.i.i:                                    ; preds = %land.lhs.true.i.i
  %pages16.i.i = getelementptr inbounds %struct.nand_bbt_descr, ptr %25, i32 0, i32 1
  %62 = ptrtoint ptr %pages16.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %pages16.i.i, align 4
  %conv18.i.i = sext i32 %63 to i64
  %64 = ptrtoint ptr %page_shift.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %page_shift.i, align 4
  %sh_prom20.i.i = zext i32 %65 to i64
  %shl21.i.i = shl i64 %conv18.i.i, %sh_prom20.i.i
  %writesize22.i.i = getelementptr inbounds %struct.mtd_info, ptr %this, i32 0, i32 4
  %66 = ptrtoint ptr %writesize22.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %writesize22.i.i, align 4
  tail call fastcc void @scan_read(ptr noundef %this, ptr noundef nonnull %call15.i, i64 noundef %shl21.i.i, i32 noundef %67, ptr noundef nonnull %25) #9
  %veroffs.i62.i.i = getelementptr inbounds %struct.nand_bbt_descr, ptr %25, i32 0, i32 3
  %68 = ptrtoint ptr %veroffs.i62.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %veroffs.i62.i.i, align 4
  %70 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %25, align 4
  %and.i63.i.i = and i32 %71, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i63.i.i)
  %tobool.not.i64.i.i = icmp eq i32 %and.i63.i.i, 0
  br i1 %tobool.not.i64.i.i, label %if.then.i67.i.i, label %if.then15.i.i.bbt_get_ver_offs.exit69.i.i_crit_edge

if.then15.i.i.bbt_get_ver_offs.exit69.i.i_crit_edge: ; preds = %if.then15.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %bbt_get_ver_offs.exit69.i.i

if.then.i67.i.i:                                  ; preds = %if.then15.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %72 = ptrtoint ptr %writesize22.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %writesize22.i.i, align 4
  %add.i66.i.i = add i32 %73, %69
  br label %bbt_get_ver_offs.exit69.i.i

bbt_get_ver_offs.exit69.i.i:                      ; preds = %if.then.i67.i.i, %if.then15.i.i.bbt_get_ver_offs.exit69.i.i_crit_edge
  %ver_offs.0.i68.i.i = phi i32 [ %69, %if.then15.i.i.bbt_get_ver_offs.exit69.i.i_crit_edge ], [ %add.i66.i.i, %if.then.i67.i.i ]
  %arrayidx25.i.i = getelementptr i8, ptr %call15.i, i32 %ver_offs.0.i68.i.i
  %74 = ptrtoint ptr %arrayidx25.i.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %arrayidx25.i.i, align 1
  %version26.i.i = getelementptr inbounds %struct.nand_bbt_descr, ptr %25, i32 0, i32 4
  %76 = ptrtoint ptr %version26.i.i to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 %75, ptr %version26.i.i, align 4
  %77 = ptrtoint ptr %pages16.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %pages16.i.i, align 4
  %conv36.i.i = zext i8 %75 to i32
  %call37.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef %78, i32 noundef %conv36.i.i) #14
  br label %if.end21.i

if.else.i:                                        ; preds = %if.end18.i
  tail call fastcc void @search_bbt(ptr noundef %this, ptr noundef nonnull %call15.i, ptr noundef nonnull %23) #9
  %tobool.not.i75.i = icmp eq ptr %25, null
  br i1 %tobool.not.i75.i, label %if.else.i.if.end21.i_crit_edge, label %if.then.i76.i

if.else.i.if.end21.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21.i

if.then.i76.i:                                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @search_bbt(ptr noundef %this, ptr noundef nonnull %call15.i, ptr noundef nonnull %25) #9
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.then.i76.i, %if.else.i.if.end21.i_crit_edge, %bbt_get_ver_offs.exit69.i.i, %land.lhs.true.i.i.if.end21.i_crit_edge, %if.end.i.i.if.end21.i_crit_edge
  %79 = ptrtoint ptr %bbt_td.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %bbt_td.i, align 4
  %81 = ptrtoint ptr %bbt_md.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %bbt_md.i, align 8
  %83 = ptrtoint ptr %80 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %80, align 4
  %and.i78.i = and i32 %84, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i78.i)
  %tobool.not.i79.i = icmp eq i32 %and.i78.i, 0
  br i1 %tobool.not.i79.i, label %if.end21.i.for.body.lr.ph.i.i_crit_edge, label %if.end.i80.i

if.end21.i.for.body.lr.ph.i.i_crit_edge:          ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.lr.ph.i.i

if.end.i80.i:                                     ; preds = %if.end21.i
  %ntargets.i.i.i = getelementptr inbounds %struct.nand_device, ptr %this, i32 0, i32 1, i32 8
  %85 = ptrtoint ptr %ntargets.i.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %ntargets.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %86)
  %cmp300.i.i = icmp sgt i32 %86, 0
  br i1 %cmp300.i.i, label %if.end.i80.i.for.body.lr.ph.i.i_crit_edge, label %if.end.i80.i.if.end25.i_crit_edge

if.end.i80.i.if.end25.i_crit_edge:                ; preds = %if.end.i80.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25.i

if.end.i80.i.for.body.lr.ph.i.i_crit_edge:        ; preds = %if.end.i80.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.lr.ph.i.i

for.body.lr.ph.i.i:                               ; preds = %if.end.i80.i.for.body.lr.ph.i.i_crit_edge, %if.end21.i.for.body.lr.ph.i.i_crit_edge
  %chips.0309.i.i = phi i32 [ %86, %if.end.i80.i.for.body.lr.ph.i.i_crit_edge ], [ 1, %if.end21.i.for.body.lr.ph.i.i_crit_edge ]
  %tobool4.not.i.i = icmp eq ptr %82, null
  %tobool81.not.i.i = icmp eq ptr %80, null
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.0301.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %87 = ptrtoint ptr %80 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %80, align 4
  %and2.i.i = and i32 %88, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i)
  %tobool3.not.i.i = icmp eq i32 %and2.i.i, 0
  %spec.select.i.i = select i1 %tobool3.not.i.i, i32 -1, i32 %i.0301.i.i
  %arrayidx54.i.i = getelementptr %struct.nand_bbt_descr, ptr %80, i32 0, i32 1, i32 %i.0301.i.i
  %89 = ptrtoint ptr %arrayidx54.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %arrayidx54.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %90)
  %cmp55.i.i = icmp eq i32 %90, -1
  br i1 %tobool4.not.i.i, label %if.end60.i.i, label %if.then5.i.i

if.then5.i.i:                                     ; preds = %for.body.i.i
  %arrayidx8.i.i = getelementptr %struct.nand_bbt_descr, ptr %82, i32 0, i32 1, i32 %i.0301.i.i
  %91 = ptrtoint ptr %arrayidx8.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %arrayidx8.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %92)
  %cmp9.i.i = icmp eq i32 %92, -1
  br i1 %cmp55.i.i, label %land.lhs.true.i81.i, label %if.else16.i.i

land.lhs.true.i81.i:                              ; preds = %if.then5.i.i
  br i1 %cmp9.i.i, label %land.lhs.true.i81.i.if.then62.i.i_crit_edge, label %land.lhs.true.i81.i.if.then82.i.i_crit_edge

land.lhs.true.i81.i.if.then82.i.i_crit_edge:      ; preds = %land.lhs.true.i81.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then82.i.i

land.lhs.true.i81.i.if.then62.i.i_crit_edge:      ; preds = %land.lhs.true.i81.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then62.i.i

if.else16.i.i:                                    ; preds = %if.then5.i.i
  br i1 %cmp9.i.i, label %if.else16.i.i.if.end80.i.i_crit_edge, label %if.else21.i.i

if.else16.i.i.if.end80.i.i_crit_edge:             ; preds = %if.else16.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end80.i.i

if.else21.i.i:                                    ; preds = %if.else16.i.i
  %arrayidx22.i.i = getelementptr %struct.nand_bbt_descr, ptr %80, i32 0, i32 4, i32 %i.0301.i.i
  %93 = ptrtoint ptr %arrayidx22.i.i to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %arrayidx22.i.i, align 1
  %arrayidx24.i.i = getelementptr %struct.nand_bbt_descr, ptr %82, i32 0, i32 4, i32 %i.0301.i.i
  %95 = ptrtoint ptr %arrayidx24.i.i to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %arrayidx24.i.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %94, i8 %96)
  %cmp26.i.i = icmp eq i8 %94, %96
  br i1 %cmp26.i.i, label %if.then28.i.i, label %if.else34.i.i

if.then28.i.i:                                    ; preds = %if.else21.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %and30.i.i = and i32 %88, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30.i.i)
  %tobool31.not.i.i = icmp eq i32 %and30.i.i, 0
  %spec.select264.i.i = select i1 %tobool31.not.i.i, ptr %82, ptr null
  br label %if.end80.i.i

if.else34.i.i:                                    ; preds = %if.else21.i.i
  %sub.i.i = sub i8 %94, %96
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %sub.i.i)
  %cmp43.i.i = icmp sgt i8 %sub.i.i, 0
  br i1 %cmp43.i.i, label %if.else34.i.i.if.end80.i.i_crit_edge, label %if.else34.i.i.if.then82.i.i_crit_edge

if.else34.i.i.if.then82.i.i_crit_edge:            ; preds = %if.else34.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then82.i.i

if.else34.i.i.if.end80.i.i_crit_edge:             ; preds = %if.else34.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end80.i.i

if.end60.i.i:                                     ; preds = %for.body.i.i
  br i1 %cmp55.i.i, label %if.end60.i.i.if.then62.i.i_crit_edge, label %if.end60.i.i.if.end80.i.i_crit_edge

if.end60.i.i.if.end80.i.i_crit_edge:              ; preds = %if.end60.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end80.i.i

if.end60.i.i.if.then62.i.i_crit_edge:             ; preds = %if.end60.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then62.i.i

if.then62.i.i:                                    ; preds = %if.end60.i.i.if.then62.i.i_crit_edge, %land.lhs.true.i81.i.if.then62.i.i_crit_edge
  %writeops.0288.i.i = phi i32 [ 1, %if.end60.i.i.if.then62.i.i_crit_edge ], [ 3, %land.lhs.true.i81.i.if.then62.i.i_crit_edge ]
  %and64.i.i = and i32 %88, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and64.i.i)
  %tobool65.not.i.i = icmp eq i32 %and64.i.i, 0
  br i1 %tobool65.not.i.i, label %if.then62.i.i.for.inc.i.i_crit_edge, label %if.end67.i.i

if.then62.i.i.for.inc.i.i_crit_edge:              ; preds = %if.then62.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i

if.end67.i.i:                                     ; preds = %if.then62.i.i
  %97 = ptrtoint ptr %bbt_options to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %bbt_options, align 8
  %and68.i.i = and i32 %98, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and68.i.i)
  %tobool69.not.i.i = icmp eq i32 %and68.i.i, 0
  br i1 %tobool69.not.i.i, label %if.then70.i.i, label %if.end67.i.i.if.end72.i.i_crit_edge

if.end67.i.i.if.end72.i.i_crit_edge:              ; preds = %if.end67.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end72.i.i

if.then70.i.i:                                    ; preds = %if.end67.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call71.i.i = tail call fastcc i32 @create_bbt(ptr noundef %this, ptr noundef nonnull %call15.i, ptr noundef %21, i32 noundef %spec.select.i.i) #9
  br label %if.end72.i.i

if.end72.i.i:                                     ; preds = %if.then70.i.i, %if.end67.i.i.if.end72.i.i_crit_edge
  %arrayidx74.i.i = getelementptr %struct.nand_bbt_descr, ptr %80, i32 0, i32 4, i32 %i.0301.i.i
  %99 = ptrtoint ptr %arrayidx74.i.i to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 1, ptr %arrayidx74.i.i, align 1
  br i1 %tobool4.not.i.i, label %if.end72.i.i.if.end135.i.i_crit_edge, label %if.end105.i.thread106.i

if.end72.i.i.if.end135.i.i_crit_edge:             ; preds = %if.end72.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end135.i.i

if.end105.i.thread106.i:                          ; preds = %if.end72.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx78.i.i = getelementptr %struct.nand_bbt_descr, ptr %82, i32 0, i32 4, i32 %i.0301.i.i
  %100 = ptrtoint ptr %arrayidx78.i.i to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 1, ptr %arrayidx78.i.i, align 1
  br label %if.then113.i.i

if.end80.i.i:                                     ; preds = %if.end60.i.i.if.end80.i.i_crit_edge, %if.else34.i.i.if.end80.i.i_crit_edge, %if.then28.i.i, %if.else16.i.i.if.end80.i.i_crit_edge
  %rd2.0282.i.i = phi ptr [ null, %if.end60.i.i.if.end80.i.i_crit_edge ], [ %spec.select264.i.i, %if.then28.i.i ], [ null, %if.else16.i.i.if.end80.i.i_crit_edge ], [ null, %if.else34.i.i.if.end80.i.i_crit_edge ]
  %writeops.0280.i.i = phi i32 [ 0, %if.end60.i.i.if.end80.i.i_crit_edge ], [ 0, %if.then28.i.i ], [ 2, %if.else16.i.i.if.end80.i.i_crit_edge ], [ 2, %if.else34.i.i.if.end80.i.i_crit_edge ]
  br i1 %tobool81.not.i.i, label %if.end80.i.i.if.end92.i.i_crit_edge, label %if.end80.i.i.if.then82.i.i_crit_edge

if.end80.i.i.if.then82.i.i_crit_edge:             ; preds = %if.end80.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then82.i.i

if.end80.i.i.if.end92.i.i_crit_edge:              ; preds = %if.end80.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end92.i.i

if.then82.i.i:                                    ; preds = %if.end80.i.i.if.then82.i.i_crit_edge, %if.else34.i.i.if.then82.i.i_crit_edge, %land.lhs.true.i81.i.if.then82.i.i_crit_edge
  %writeops.0280298.i.i = phi i32 [ %writeops.0280.i.i, %if.end80.i.i.if.then82.i.i_crit_edge ], [ 1, %land.lhs.true.i81.i.if.then82.i.i_crit_edge ], [ 1, %if.else34.i.i.if.then82.i.i_crit_edge ]
  %rd.0281297.i.i = phi ptr [ %80, %if.end80.i.i.if.then82.i.i_crit_edge ], [ %82, %land.lhs.true.i81.i.if.then82.i.i_crit_edge ], [ %82, %if.else34.i.i.if.then82.i.i_crit_edge ]
  %rd2.0282295.i.i = phi ptr [ %rd2.0282.i.i, %if.end80.i.i.if.then82.i.i_crit_edge ], [ null, %land.lhs.true.i81.i.if.then82.i.i_crit_edge ], [ null, %if.else34.i.i.if.then82.i.i_crit_edge ]
  %call83.i.i = tail call fastcc i32 @read_abs_bbt(ptr noundef %this, ptr noundef nonnull %call15.i, ptr noundef nonnull %rd.0281297.i.i, i32 noundef %spec.select.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -74, i32 %call83.i.i)
  %cmp.i.not.i.i = icmp eq i32 %call83.i.i, -74
  br i1 %cmp.i.not.i.i, label %if.then82.i.i.for.inc.sink.split.i.i_crit_edge, label %if.then82.i.i.if.end92.i.i_crit_edge

if.then82.i.i.if.end92.i.i_crit_edge:             ; preds = %if.then82.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end92.i.i

if.then82.i.i.for.inc.sink.split.i.i_crit_edge:   ; preds = %if.then82.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.sink.split.i.i

if.end92.i.i:                                     ; preds = %if.then82.i.i.if.end92.i.i_crit_edge, %if.end80.i.i.if.end92.i.i_crit_edge
  %writeops.0280299.i.i = phi i32 [ %writeops.0280298.i.i, %if.then82.i.i.if.end92.i.i_crit_edge ], [ %writeops.0280.i.i, %if.end80.i.i.if.end92.i.i_crit_edge ]
  %rd2.0282296.i.i = phi ptr [ %rd2.0282295.i.i, %if.then82.i.i.if.end92.i.i_crit_edge ], [ %rd2.0282.i.i, %if.end80.i.i.if.end92.i.i_crit_edge ]
  %res.0.i.i = phi i32 [ %call83.i.i, %if.then82.i.i.if.end92.i.i_crit_edge ], [ 0, %if.end80.i.i.if.end92.i.i_crit_edge ]
  %tobool93.not.i.i = icmp eq ptr %rd2.0282296.i.i, null
  br i1 %tobool93.not.i.i, label %if.end92.i.i.if.end105.i.i_crit_edge, label %if.then94.i.i

if.end92.i.i.if.end105.i.i_crit_edge:             ; preds = %if.end92.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end105.i.i

if.then94.i.i:                                    ; preds = %if.end92.i.i
  %call95.i.i = tail call fastcc i32 @read_abs_bbt(ptr noundef %this, ptr noundef nonnull %call15.i, ptr noundef nonnull %rd2.0282296.i.i, i32 noundef %spec.select.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -74, i32 %call95.i.i)
  %cmp.i270.not.i.i = icmp eq i32 %call95.i.i, -74
  br i1 %cmp.i270.not.i.i, label %if.then94.i.i.for.inc.sink.split.i.i_crit_edge, label %if.then94.i.i.if.end105.i.i_crit_edge

if.then94.i.i.if.end105.i.i_crit_edge:            ; preds = %if.then94.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end105.i.i

if.then94.i.i.for.inc.sink.split.i.i_crit_edge:   ; preds = %if.then94.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.sink.split.i.i

if.end105.i.i:                                    ; preds = %if.then94.i.i.if.end105.i.i_crit_edge, %if.end92.i.i.if.end105.i.i_crit_edge
  %res2.0.i.i = phi i32 [ %call95.i.i, %if.then94.i.i.if.end105.i.i_crit_edge ], [ 0, %if.end92.i.i.if.end105.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -117, i32 %res.0.i.i)
  %cmp.i272.not.i.i = icmp eq i32 %res.0.i.i, -117
  call void @__sanitizer_cov_trace_const_cmp4(i32 -117, i32 %res2.0.i.i)
  %cmp.i274.not.i.i = icmp eq i32 %res2.0.i.i, -117
  %or.cond.i.i = select i1 %cmp.i272.not.i.i, i1 true, i1 %cmp.i274.not.i.i
  %writeops.1.i.i = select i1 %or.cond.i.i, i32 3, i32 %writeops.0280299.i.i
  br i1 %tobool4.not.i.i, label %if.end105.i.i.if.end135.i.i_crit_edge, label %if.end105.i.i.if.then113.i.i_crit_edge

if.end105.i.i.if.then113.i.i_crit_edge:           ; preds = %if.end105.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then113.i.i

if.end105.i.i.if.end135.i.i_crit_edge:            ; preds = %if.end105.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end135.i.i

if.then113.i.i:                                   ; preds = %if.end105.i.i.if.then113.i.i_crit_edge, %if.end105.i.thread106.i
  %writeops.1.i114.i = phi i32 [ %writeops.0288.i.i, %if.end105.i.thread106.i ], [ %writeops.1.i.i, %if.end105.i.i.if.then113.i.i_crit_edge ]
  %arrayidx115.i.i = getelementptr %struct.nand_bbt_descr, ptr %80, i32 0, i32 4, i32 %i.0301.i.i
  %101 = ptrtoint ptr %arrayidx115.i.i to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %arrayidx115.i.i, align 1
  %arrayidx117.i.i = getelementptr %struct.nand_bbt_descr, ptr %82, i32 0, i32 4, i32 %i.0301.i.i
  %103 = ptrtoint ptr %arrayidx117.i.i to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %arrayidx117.i.i, align 1
  %105 = tail call i8 @llvm.umax.i8(i8 %102, i8 %104) #9
  %106 = ptrtoint ptr %arrayidx115.i.i to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 %105, ptr %arrayidx115.i.i, align 1
  %107 = ptrtoint ptr %arrayidx117.i.i to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 %105, ptr %arrayidx117.i.i, align 1
  br label %if.end135.i.i

if.end135.i.i:                                    ; preds = %if.then113.i.i, %if.end105.i.i.if.end135.i.i_crit_edge, %if.end72.i.i.if.end135.i.i_crit_edge
  %writeops.1.i105.i = phi i32 [ %writeops.1.i114.i, %if.then113.i.i ], [ %writeops.1.i.i, %if.end105.i.i.if.end135.i.i_crit_edge ], [ %writeops.0288.i.i, %if.end72.i.i.if.end135.i.i_crit_edge ]
  %and136.i.i = and i32 %writeops.1.i105.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and136.i.i)
  %tobool137.not.i.i = icmp eq i32 %and136.i.i, 0
  br i1 %tobool137.not.i.i, label %if.end135.i.i.if.end148.i.i_crit_edge, label %land.lhs.true138.i.i

if.end135.i.i.if.end148.i.i_crit_edge:            ; preds = %if.end135.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end148.i.i

land.lhs.true138.i.i:                             ; preds = %if.end135.i.i
  %108 = ptrtoint ptr %80 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %80, align 4
  %and140.i.i = and i32 %109, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and140.i.i)
  %tobool141.not.i.i = icmp eq i32 %and140.i.i, 0
  br i1 %tobool141.not.i.i, label %land.lhs.true138.i.i.if.end148.i.i_crit_edge, label %if.then142.i.i

land.lhs.true138.i.i.if.end148.i.i_crit_edge:     ; preds = %land.lhs.true138.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end148.i.i

if.then142.i.i:                                   ; preds = %land.lhs.true138.i.i
  %call143.i.i = tail call fastcc i32 @write_bbt(ptr noundef %this, ptr noundef nonnull %call15.i, ptr noundef %80, ptr noundef %82, i32 noundef %spec.select.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call143.i.i)
  %cmp144.i.i = icmp slt i32 %call143.i.i, 0
  br i1 %cmp144.i.i, label %if.then142.i.i.err_free_buf.i_crit_edge, label %if.then142.i.i.if.end148.i.i_crit_edge

if.then142.i.i.if.end148.i.i_crit_edge:           ; preds = %if.then142.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end148.i.i

if.then142.i.i.err_free_buf.i_crit_edge:          ; preds = %if.then142.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_free_buf.i

if.end148.i.i:                                    ; preds = %if.then142.i.i.if.end148.i.i_crit_edge, %land.lhs.true138.i.i.if.end148.i.i_crit_edge, %if.end135.i.i.if.end148.i.i_crit_edge
  %and149.i.i = and i32 %writeops.1.i105.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and149.i.i)
  %tobool150.not.i.i = icmp eq i32 %and149.i.i, 0
  %brmerge.i.i = select i1 %tobool150.not.i.i, i1 true, i1 %tobool4.not.i.i
  br i1 %brmerge.i.i, label %if.end148.i.i.for.inc.i.i_crit_edge, label %land.lhs.true153.i.i

if.end148.i.i.for.inc.i.i_crit_edge:              ; preds = %if.end148.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i

land.lhs.true153.i.i:                             ; preds = %if.end148.i.i
  %110 = ptrtoint ptr %82 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %82, align 4
  %and155.i.i = and i32 %111, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and155.i.i)
  %tobool156.not.i.i = icmp eq i32 %and155.i.i, 0
  br i1 %tobool156.not.i.i, label %land.lhs.true153.i.i.for.inc.i.i_crit_edge, label %if.then157.i.i

land.lhs.true153.i.i.for.inc.i.i_crit_edge:       ; preds = %land.lhs.true153.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i

if.then157.i.i:                                   ; preds = %land.lhs.true153.i.i
  %call158.i.i = tail call fastcc i32 @write_bbt(ptr noundef %this, ptr noundef nonnull %call15.i, ptr noundef nonnull %82, ptr noundef %80, i32 noundef %spec.select.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call158.i.i)
  %cmp159.i.i = icmp slt i32 %call158.i.i, 0
  br i1 %cmp159.i.i, label %if.then157.i.i.err_free_buf.i_crit_edge, label %if.then157.i.i.for.inc.i.i_crit_edge

if.then157.i.i.for.inc.i.i_crit_edge:             ; preds = %if.then157.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i

if.then157.i.i.err_free_buf.i_crit_edge:          ; preds = %if.then157.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_free_buf.i

for.inc.sink.split.i.i:                           ; preds = %if.then94.i.i.for.inc.sink.split.i.i_crit_edge, %if.then82.i.i.for.inc.sink.split.i.i_crit_edge
  %rd2.0282296.sink310.i.i = phi ptr [ %rd.0281297.i.i, %if.then82.i.i.for.inc.sink.split.i.i_crit_edge ], [ %rd2.0282296.i.i, %if.then94.i.i.for.inc.sink.split.i.i_crit_edge ]
  %arrayidx100.i.i = getelementptr %struct.nand_bbt_descr, ptr %rd2.0282296.sink310.i.i, i32 0, i32 1, i32 %i.0301.i.i
  %112 = ptrtoint ptr %arrayidx100.i.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 -1, ptr %arrayidx100.i.i, align 4
  %arrayidx102.i.i = getelementptr %struct.nand_bbt_descr, ptr %rd2.0282296.sink310.i.i, i32 0, i32 4, i32 %i.0301.i.i
  %113 = ptrtoint ptr %arrayidx102.i.i to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 0, ptr %arrayidx102.i.i, align 1
  %dec103.i.i = add i32 %i.0301.i.i, -1
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %for.inc.sink.split.i.i, %if.then157.i.i.for.inc.i.i_crit_edge, %land.lhs.true153.i.i.for.inc.i.i_crit_edge, %if.end148.i.i.for.inc.i.i_crit_edge, %if.then62.i.i.for.inc.i.i_crit_edge
  %i.1.i.i = phi i32 [ %i.0301.i.i, %if.then157.i.i.for.inc.i.i_crit_edge ], [ %i.0301.i.i, %land.lhs.true153.i.i.for.inc.i.i_crit_edge ], [ %i.0301.i.i, %if.end148.i.i.for.inc.i.i_crit_edge ], [ %i.0301.i.i, %if.then62.i.i.for.inc.i.i_crit_edge ], [ %dec103.i.i, %for.inc.sink.split.i.i ]
  %inc.i.i = add i32 %i.1.i.i, 1
  %cmp.i.i = icmp slt i32 %inc.i.i, %chips.0309.i.i
  br i1 %cmp.i.i, label %for.inc.i.i.for.body.i.i_crit_edge, label %for.inc.i.i.if.end25.i_crit_edge

for.inc.i.i.if.end25.i_crit_edge:                 ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25.i

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

if.end25.i:                                       ; preds = %for.inc.i.i.if.end25.i_crit_edge, %if.end.i80.i.if.end25.i_crit_edge
  tail call fastcc void @mark_bbt_region(ptr noundef %this, ptr noundef nonnull %23) #9
  %tobool26.not.i = icmp eq ptr %25, null
  br i1 %tobool26.not.i, label %if.end25.i.if.end28.i_crit_edge, label %if.then27.i

if.end25.i.if.end28.i_crit_edge:                  ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28.i

if.then27.i:                                      ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @mark_bbt_region(ptr noundef %this, ptr noundef nonnull %25) #9
  br label %if.end28.i

if.end28.i:                                       ; preds = %if.then27.i, %if.end25.i.if.end28.i_crit_edge
  tail call void @vfree(ptr noundef nonnull %call15.i) #9
  br label %cleanup

err_free_buf.i:                                   ; preds = %if.then157.i.i.err_free_buf.i_crit_edge, %if.then142.i.i.err_free_buf.i_crit_edge
  %retval.0.i.i = phi i32 [ %call158.i.i, %if.then157.i.i.err_free_buf.i_crit_edge ], [ %call143.i.i, %if.then142.i.i.err_free_buf.i_crit_edge ]
  tail call void @vfree(ptr noundef nonnull %call15.i) #9
  br label %err_free_bbt.i

err_free_bbt.i:                                   ; preds = %err_free_buf.i, %if.end11.i.err_free_bbt.i_crit_edge, %do.end.i40
  %res.0.i = phi i32 [ %retval.0.i.i, %err_free_buf.i ], [ %call1.i.i, %do.end.i40 ], [ -12, %if.end11.i.err_free_bbt.i_crit_edge ]
  %114 = ptrtoint ptr %bbt.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %bbt.i, align 8
  tail call void @kfree(ptr noundef %115) #9
  %116 = ptrtoint ptr %bbt.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr null, ptr %bbt.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %err_free_bbt.i, %if.end28.i, %if.then5.i.cleanup_crit_edge, %if.end20.cleanup_crit_edge, %if.end.i.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.end.i.cleanup_crit_edge ], [ %res.0.i, %err_free_bbt.i ], [ 0, %if.end28.i ], [ -12, %if.end20.cleanup_crit_edge ], [ 0, %if.then5.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @nand_isreserved_bbt(ptr nocapture noundef readonly %this, i64 noundef %offs) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %bbt_erase_shift = getelementptr inbounds %struct.nand_chip, ptr %this, i32 0, i32 9
  %0 = ptrtoint ptr %bbt_erase_shift to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bbt_erase_shift, align 4
  %sh_prom = zext i32 %1 to i64
  %shr = ashr i64 %offs, %sh_prom
  %conv = trunc i64 %shr to i32
  %bbt.i = getelementptr inbounds %struct.nand_chip, ptr %this, i32 0, i32 16
  %2 = ptrtoint ptr %bbt.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bbt.i, align 8
  %shr.i = ashr i32 %conv, 2
  %arrayidx.i = getelementptr i8, ptr %3, i32 %shr.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx.i, align 1
  %and.i = shl i32 %conv, 1
  %mul.i = and i32 %and.i, 6
  %conv.i = zext i8 %5 to i32
  %shr2.i = lshr i32 %conv.i, %mul.i
  %conv6.i4 = and i32 %shr2.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %conv6.i4)
  %cmp = icmp eq i32 %conv6.i4, 2
  %conv2 = zext i1 %cmp to i32
  ret i32 %conv2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nand_isbad_bbt(ptr nocapture noundef readonly %this, i64 noundef %offs, i32 noundef %allowbbt) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %bbt_erase_shift = getelementptr inbounds %struct.nand_chip, ptr %this, i32 0, i32 9
  %0 = ptrtoint ptr %bbt_erase_shift to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bbt_erase_shift, align 4
  %sh_prom = zext i32 %1 to i64
  %shr = ashr i64 %offs, %sh_prom
  %conv = trunc i64 %shr to i32
  %bbt.i = getelementptr inbounds %struct.nand_chip, ptr %this, i32 0, i32 16
  %2 = ptrtoint ptr %bbt.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bbt.i, align 8
  %shr.i = ashr i32 %conv, 2
  %arrayidx.i = getelementptr i8, ptr %3, i32 %shr.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx.i, align 1
  %and.i = shl i32 %conv, 1
  %mul.i = and i32 %and.i, 6
  %conv.i = zext i8 %5 to i32
  %shr2.i = lshr i32 %conv.i, %mul.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nand_isbad_bbt.__UNIQUE_ID_ddebug204, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nand_isbad_bbt, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !128

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %conv6.i = and i32 %shr2.i, 3
  %conv5 = trunc i64 %offs to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nand_isbad_bbt.__UNIQUE_ID_ddebug204, ptr noundef nonnull @.str.3, i32 noundef %conv5, i32 noundef %conv, i32 noundef %conv6.i) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @mtd_expert_analysis_mode to i32))
  %6 = load i8, ptr @mtd_expert_analysis_mode, align 1, !range !129
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool6.not = icmp eq i8 %6, 0
  br i1 %tobool6.not, label %if.end59, label %land.rhs

land.rhs:                                         ; preds = %do.end
  %.b70 = load i1, ptr @nand_isbad_bbt.__already_done, align 1
  br i1 %.b70, label %land.rhs.cleanup_crit_edge, label %if.then23, !prof !130

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then23:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @nand_isbad_bbt.__already_done, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mtd_expert_analysis_warning to i32))
  %7 = load ptr, ptr @mtd_expert_analysis_warning, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1458, i32 noundef 9, ptr noundef %7) #9
  br label %cleanup

if.end59:                                         ; preds = %do.end
  %trunc = trunc i32 %shr2.i to i2
  %8 = zext i2 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i2 %trunc, label %sw.epilog [
    i2 0, label %if.end59.cleanup_crit_edge
    i2 1, label %sw.bb60
    i2 -2, label %sw.bb61
  ]

if.end59.cleanup_crit_edge:                       ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb60:                                          ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb61:                                          ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %allowbbt)
  %tobool62.not = icmp eq i32 %allowbbt, 0
  %cond = zext i1 %tobool62.not to i32
  br label %cleanup

sw.epilog:                                        ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.bb61, %sw.bb60, %if.end59.cleanup_crit_edge, %if.then23, %land.rhs.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %sw.epilog ], [ %cond, %sw.bb61 ], [ 1, %sw.bb60 ], [ 0, %if.then23 ], [ 0, %if.end59.cleanup_crit_edge ], [ 0, %land.rhs.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nand_markbad_bbt(ptr noundef %this, i64 noundef %offs) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %bbt_erase_shift = getelementptr inbounds %struct.nand_chip, ptr %this, i32 0, i32 9
  %0 = ptrtoint ptr %bbt_erase_shift to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bbt_erase_shift, align 4
  %sh_prom = zext i32 %1 to i64
  %shr = ashr i64 %offs, %sh_prom
  %conv = trunc i64 %shr to i32
  %and1.i = shl i32 %conv, 1
  %mul.i = and i32 %and1.i, 6
  %shl.i = shl nuw nsw i32 1, %mul.i
  %bbt.i = getelementptr inbounds %struct.nand_chip, ptr %this, i32 0, i32 16
  %2 = ptrtoint ptr %bbt.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bbt.i, align 8
  %shr.i = ashr i32 %conv, 2
  %arrayidx.i = getelementptr i8, ptr %3, i32 %shr.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx.i, align 1
  %6 = trunc i32 %shl.i to i8
  %conv5.i = or i8 %5, %6
  store i8 %conv5.i, ptr %arrayidx.i, align 1
  %bbt_options = getelementptr inbounds %struct.nand_chip, ptr %this, i32 0, i32 10
  %7 = ptrtoint ptr %bbt_options to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %bbt_options, align 8
  %and = and i32 %8, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call fastcc i32 @nand_update_bbt(ptr noundef %this, i64 noundef %offs)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ %call, %if.then ], [ 0, %entry.if.end_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nand_update_bbt(ptr noundef %this, i64 noundef %offs) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %bbt_td = getelementptr inbounds %struct.nand_chip, ptr %this, i32 0, i32 13
  %0 = ptrtoint ptr %bbt_td to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bbt_td, align 4
  %bbt_md = getelementptr inbounds %struct.nand_chip, ptr %this, i32 0, i32 14
  %2 = ptrtoint ptr %bbt_md to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bbt_md, align 8
  %bbt = getelementptr inbounds %struct.nand_chip, ptr %this, i32 0, i32 16
  %4 = ptrtoint ptr %bbt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bbt, align 8
  %tobool.not = icmp eq ptr %5, null
  %tobool1.not = icmp eq ptr %1, null
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool1.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end8.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end8.i:                                        ; preds = %entry
  %bbt_erase_shift = getelementptr inbounds %struct.nand_chip, ptr %this, i32 0, i32 9
  %6 = ptrtoint ptr %bbt_erase_shift to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bbt_erase_shift, align 4
  %shl = shl nuw i32 1, %7
  %page_shift = getelementptr inbounds %struct.nand_chip, ptr %this, i32 0, i32 17
  %8 = ptrtoint ptr %page_shift to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %page_shift, align 4
  %shr = ashr i32 %shl, %9
  %oobsize = getelementptr inbounds %struct.mtd_info, ptr %this, i32 0, i32 6
  %10 = ptrtoint ptr %oobsize to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %oobsize, align 4
  %mul = mul i32 %shr, %11
  %add = add i32 %mul, %shl
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3264) #13
  %tobool3.not = icmp eq ptr %call9.i, null
  br i1 %tobool3.not, label %if.end8.i.cleanup_crit_edge, label %if.end5

if.end8.i.cleanup_crit_edge:                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %if.end8.i
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %1, align 4
  %and = and i32 %13, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp eq i32 %and, 0
  br i1 %tobool6.not, label %if.end5.if.end9_crit_edge, label %if.then7

if.end5.if.end9_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.then7:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  %chip_shift = getelementptr inbounds %struct.nand_chip, ptr %this, i32 0, i32 19
  %14 = ptrtoint ptr %chip_shift to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %chip_shift, align 4
  %sh_prom = zext i32 %15 to i64
  %shr8 = ashr i64 %offs, %sh_prom
  %conv = trunc i64 %shr8 to i32
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %if.end5.if.end9_crit_edge
  %chip.0 = phi i32 [ %conv, %if.then7 ], [ 0, %if.end5.if.end9_crit_edge ]
  %chipsel.0 = phi i32 [ %conv, %if.then7 ], [ -1, %if.end5.if.end9_crit_edge ]
  %arrayidx = getelementptr %struct.nand_bbt_descr, ptr %1, i32 0, i32 4, i32 %chip.0
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx, align 1
  %inc = add i8 %17, 1
  store i8 %inc, ptr %arrayidx, align 1
  %tobool10.not = icmp eq ptr %3, null
  br i1 %tobool10.not, label %if.end9.if.end15_crit_edge, label %if.then11

if.end9.if.end15_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

if.then11:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx13 = getelementptr %struct.nand_bbt_descr, ptr %3, i32 0, i32 4, i32 %chip.0
  %18 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx13, align 1
  %inc14 = add i8 %19, 1
  store i8 %inc14, ptr %arrayidx13, align 1
  br label %if.end15

if.end15:                                         ; preds = %if.then11, %if.end9.if.end15_crit_edge
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %1, align 4
  %and17 = and i32 %21, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %if.end15.if.end24_crit_edge, label %if.then19

if.end15.if.end24_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

if.then19:                                        ; preds = %if.end15
  %call20 = tail call fastcc i32 @write_bbt(ptr noundef %this, ptr noundef nonnull %call9.i, ptr noundef nonnull %1, ptr noundef %3, i32 noundef %chipsel.0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %cmp = icmp slt i32 %call20, 0
  br i1 %cmp, label %if.then19.out_crit_edge, label %if.then19.if.end24_crit_edge

if.then19.if.end24_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

if.then19.out_crit_edge:                          ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end24:                                         ; preds = %if.then19.if.end24_crit_edge, %if.end15.if.end24_crit_edge
  %res.0 = phi i32 [ %call20, %if.then19.if.end24_crit_edge ], [ 0, %if.end15.if.end24_crit_edge ]
  br i1 %tobool10.not, label %if.end24.out_crit_edge, label %land.lhs.true

if.end24.out_crit_edge:                           ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

land.lhs.true:                                    ; preds = %if.end24
  %22 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %3, align 4
  %and27 = and i32 %23, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  br i1 %tobool28.not, label %land.lhs.true.out_crit_edge, label %if.then29

land.lhs.true.out_crit_edge:                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.then29:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %call30 = tail call fastcc i32 @write_bbt(ptr noundef %this, ptr noundef nonnull %call9.i, ptr noundef nonnull %3, ptr noundef nonnull %1, i32 noundef %chipsel.0)
  br label %out

out:                                              ; preds = %if.then29, %land.lhs.true.out_crit_edge, %if.end24.out_crit_edge, %if.then19.out_crit_edge
  %res.1 = phi i32 [ %call20, %if.then19.out_crit_edge ], [ %call30, %if.then29 ], [ %res.0, %land.lhs.true.out_crit_edge ], [ %res.0, %if.end24.out_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call9.i) #9
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end8.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %res.1, %out ], [ -22, %entry.cleanup_crit_edge ], [ -12, %if.end8.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @verify_bbt_descr(ptr nocapture noundef readonly %this, ptr noundef readonly %bd) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %luns_per_target.i = getelementptr inbounds %struct.nand_device, ptr %this, i32 0, i32 1, i32 7
  %0 = ptrtoint ptr %luns_per_target.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %luns_per_target.i, align 4
  %conv.i = zext i32 %1 to i64
  %eraseblocks_per_lun.i = getelementptr inbounds %struct.nand_device, ptr %this, i32 0, i32 1, i32 4
  %2 = ptrtoint ptr %eraseblocks_per_lun.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %eraseblocks_per_lun.i, align 8
  %conv2.i = zext i32 %3 to i64
  %mul.i = mul nuw i64 %conv2.i, %conv.i
  %pages_per_eraseblock.i = getelementptr inbounds %struct.nand_device, ptr %this, i32 0, i32 1, i32 3
  %4 = ptrtoint ptr %pages_per_eraseblock.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pages_per_eraseblock.i, align 4
  %conv4.i = zext i32 %5 to i64
  %mul5.i = mul i64 %mul.i, %conv4.i
  %pagesize.i = getelementptr inbounds %struct.nand_device, ptr %this, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %pagesize.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pagesize.i, align 4
  %conv7.i = zext i32 %7 to i64
  %mul8.i = mul i64 %mul5.i, %conv7.i
  %tobool.not = icmp eq ptr %bd, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %len = getelementptr inbounds %struct.nand_bbt_descr, ptr %bd, i32 0, i32 5
  %8 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %len, align 4
  %10 = ptrtoint ptr %bd to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %bd, align 4
  %and = and i32 %11, 15
  %bbt_options = getelementptr inbounds %struct.nand_chip, ptr %this, i32 0, i32 10
  %12 = ptrtoint ptr %bbt_options to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %bbt_options, align 8
  %and2 = and i32 %13, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  %and5 = and i32 %13, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  %not.tobool3.not = xor i1 %tobool3.not, true
  %14 = select i1 %not.tobool3.not, i1 %tobool6.not, i1 false
  br i1 %14, label %do.body11, label %do.body18, !prof !131

do.body11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/mtd/nand/raw/nand_bbt.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1206, 0\0A.popsection", ""() #9, !srcloc !132
  unreachable

do.body18:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool19.not = icmp eq i32 %and, 0
  br i1 %tobool19.not, label %do.body29, label %do.end37, !prof !131

do.body29:                                        ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/mtd/nand/raw/nand_bbt.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1207, 0\0A.popsection", ""() #9, !srcloc !133
  unreachable

do.end37:                                         ; preds = %do.body18
  %and39 = and i32 %11, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39)
  %tobool40.not = icmp eq i32 %and39, 0
  %not.tobool40.not = xor i1 %tobool40.not, true
  %inc = zext i1 %not.tobool40.not to i32
  %spec.select = add i32 %9, %inc
  %and44 = and i32 %11, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44)
  %tobool45.not = icmp eq i32 %and44, 0
  br i1 %tobool45.not, label %do.end37.if.end152_crit_edge, label %do.body47

do.end37.if.end152_crit_edge:                     ; preds = %do.end37
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end152

do.body47:                                        ; preds = %do.end37
  br i1 %tobool6.not, label %do.body60, label %do.body69, !prof !131

do.body60:                                        ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/mtd/nand/raw/nand_bbt.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1213, 0\0A.popsection", ""() #9, !srcloc !134
  unreachable

do.body69:                                        ; preds = %do.body47
  br i1 %tobool3.not, label %do.body82, label %do.body91, !prof !131

do.body82:                                        ; preds = %do.body69
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/mtd/nand/raw/nand_bbt.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1214, 0\0A.popsection", ""() #9, !srcloc !135
  unreachable

do.body91:                                        ; preds = %do.body69
  %offs = getelementptr inbounds %struct.nand_bbt_descr, ptr %bd, i32 0, i32 2
  %15 = ptrtoint ptr %offs to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %offs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool92.not = icmp eq i32 %16, 0
  br i1 %tobool92.not, label %do.end108, label %do.body100, !prof !130

do.body100:                                       ; preds = %do.body91
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/mtd/nand/raw/nand_bbt.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1215, 0\0A.popsection", ""() #9, !srcloc !136
  unreachable

do.end108:                                        ; preds = %do.body91
  br i1 %tobool40.not, label %do.end108.do.body132_crit_edge, label %do.body113

do.end108.do.body132_crit_edge:                   ; preds = %do.end108
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body132

do.body113:                                       ; preds = %do.end108
  %veroffs = getelementptr inbounds %struct.nand_bbt_descr, ptr %bd, i32 0, i32 3
  %17 = ptrtoint ptr %veroffs to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %veroffs, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %9)
  %cmp.not = icmp eq i32 %18, %9
  br i1 %cmp.not, label %do.body113.do.body132_crit_edge, label %do.body122, !prof !130

do.body113.do.body132_crit_edge:                  ; preds = %do.body113
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body132

do.body122:                                       ; preds = %do.body113
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/mtd/nand/raw/nand_bbt.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1217, 0\0A.popsection", ""() #9, !srcloc !137
  unreachable

do.body132:                                       ; preds = %do.body113.do.body132_crit_edge, %do.end108.do.body132_crit_edge
  %and134 = and i32 %11, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and134)
  %tobool135.not = icmp eq i32 %and134, 0
  br i1 %tobool135.not, label %do.body132.if.end152_crit_edge, label %do.body143, !prof !130

do.body132.if.end152_crit_edge:                   ; preds = %do.body132
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end152

do.body143:                                       ; preds = %do.body132
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/mtd/nand/raw/nand_bbt.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1218, 0\0A.popsection", ""() #9, !srcloc !138
  unreachable

if.end152:                                        ; preds = %do.body132.if.end152_crit_edge, %do.end37.if.end152_crit_edge
  %and154 = and i32 %11, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and154)
  %tobool155.not = icmp eq i32 %and154, 0
  br i1 %tobool155.not, label %if.else, label %if.end152.if.end161_crit_edge

if.end152.if.end161_crit_edge:                    ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end161

if.else:                                          ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #11
  %size = getelementptr inbounds %struct.mtd_info, ptr %this, i32 0, i32 2
  %19 = ptrtoint ptr %size to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %size, align 8
  br label %if.end161

if.end161:                                        ; preds = %if.else, %if.end152.if.end161_crit_edge
  %.sink = phi i64 [ %20, %if.else ], [ %mul8.i, %if.end152.if.end161_crit_edge ]
  %bbt_erase_shift157 = getelementptr inbounds %struct.nand_chip, ptr %this, i32 0, i32 9
  %21 = ptrtoint ptr %bbt_erase_shift157 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %bbt_erase_shift157, align 4
  %sh_prom158 = zext i32 %22 to i64
  %shr159 = lshr i64 %.sink, %sh_prom158
  %conv160 = trunc i64 %shr159 to i32
  %shr162 = lshr i32 %conv160, 3
  %mul = mul i32 %shr162, %and
  %add = select i1 %tobool45.not, i32 0, i32 %spec.select
  %spec.select216 = add i32 %mul, %add
  %bbt_erase_shift169 = getelementptr inbounds %struct.nand_chip, ptr %this, i32 0, i32 9
  %23 = ptrtoint ptr %bbt_erase_shift169 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %bbt_erase_shift169, align 4
  %shl = shl nuw i32 1, %24
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select216, i32 %shl)
  %cmp170 = icmp ugt i32 %spec.select216, %shl
  br i1 %cmp170, label %do.body179, label %if.end161.cleanup_crit_edge, !prof !131

if.end161.cleanup_crit_edge:                      ; preds = %if.end161
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body179:                                       ; preds = %if.end161
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/mtd/nand/raw/nand_bbt.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1229, 0\0A.popsection", ""() #9, !srcloc !139
  unreachable

cleanup:                                          ; preds = %if.end161.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vmalloc(i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mark_bbt_region(ptr noundef %this, ptr nocapture noundef readonly %td) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %td to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %td, align 4
  %and = and i32 %1, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.thread, label %if.end

if.end.thread:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %size = getelementptr inbounds %struct.mtd_info, ptr %this, i32 0, i32 2
  %2 = ptrtoint ptr %size to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %size, align 8
  %bbt_erase_shift4 = getelementptr inbounds %struct.nand_chip, ptr %this, i32 0, i32 9
  %4 = ptrtoint ptr %bbt_erase_shift4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bbt_erase_shift4, align 4
  %sh_prom5 = zext i32 %5 to i64
  %shr6 = lshr i64 %3, %sh_prom5
  %conv7 = trunc i64 %shr6 to i32
  br label %for.body.lr.ph

if.end:                                           ; preds = %entry
  %eraseblocks_per_lun.i = getelementptr inbounds %struct.nand_device, ptr %this, i32 0, i32 1, i32 4
  %6 = ptrtoint ptr %eraseblocks_per_lun.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %eraseblocks_per_lun.i, align 8
  %conv2.i = zext i32 %7 to i64
  %luns_per_target.i = getelementptr inbounds %struct.nand_device, ptr %this, i32 0, i32 1, i32 7
  %8 = ptrtoint ptr %luns_per_target.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %luns_per_target.i, align 4
  %conv.i = zext i32 %9 to i64
  %mul.i = mul nuw i64 %conv.i, %conv2.i
  %pages_per_eraseblock.i = getelementptr inbounds %struct.nand_device, ptr %this, i32 0, i32 1, i32 3
  %10 = ptrtoint ptr %pages_per_eraseblock.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pages_per_eraseblock.i, align 4
  %conv4.i = zext i32 %11 to i64
  %mul5.i = mul i64 %mul.i, %conv4.i
  %pagesize.i = getelementptr inbounds %struct.nand_device, ptr %this, i32 0, i32 1, i32 1
  %12 = ptrtoint ptr %pagesize.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pagesize.i, align 4
  %conv7.i = zext i32 %13 to i64
  %mul8.i = mul i64 %mul5.i, %conv7.i
  %ntargets.i = getelementptr inbounds %struct.nand_device, ptr %this, i32 0, i32 1, i32 8
  %14 = ptrtoint ptr %ntargets.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ntargets.i, align 8
  %bbt_erase_shift = getelementptr inbounds %struct.nand_chip, ptr %this, i32 0, i32 9
  %16 = ptrtoint ptr %bbt_erase_shift to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %bbt_erase_shift, align 4
  %sh_prom = zext i32 %17 to i64
  %shr = lshr i64 %mul8.i, %sh_prom
  %conv = trunc i64 %shr to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp136 = icmp sgt i32 %15, 0
  br i1 %cmp136, label %if.end.for.body.lr.ph_crit_edge, label %if.end.for.end70_crit_edge

if.end.for.end70_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end70

if.end.for.body.lr.ph_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.end.for.body.lr.ph_crit_edge, %if.end.thread
  %nrblocks.0143 = phi i32 [ %conv7, %if.end.thread ], [ %conv, %if.end.for.body.lr.ph_crit_edge ]
  %chips.0142 = phi i32 [ 1, %if.end.thread ], [ %15, %if.end.for.body.lr.ph_crit_edge ]
  %bbt_erase_shift22 = getelementptr inbounds %struct.nand_chip, ptr %this, i32 0, i32 9
  %page_shift = getelementptr inbounds %struct.nand_chip, ptr %this, i32 0, i32 17
  %bbt.i = getelementptr inbounds %struct.nand_chip, ptr %this, i32 0, i32 16
  %reserved_block_code = getelementptr inbounds %struct.nand_bbt_descr, ptr %td, i32 0, i32 7
  %maxblocks = getelementptr inbounds %struct.nand_bbt_descr, ptr %td, i32 0, i32 6
  br label %for.body

for.body:                                         ; preds = %for.inc68.for.body_crit_edge, %for.body.lr.ph
  %i.0137 = phi i32 [ 0, %for.body.lr.ph ], [ %inc69, %for.inc68.for.body_crit_edge ]
  %18 = ptrtoint ptr %td to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %td, align 4
  %20 = and i32 %19, 8224
  call void @__sanitizer_cov_trace_const_cmp4(i32 8192, i32 %20)
  %.not = icmp eq i32 %20, 8192
  br i1 %.not, label %if.end35, label %if.then15

if.then15:                                        ; preds = %for.body
  %arrayidx = getelementptr %struct.nand_bbt_descr, ptr %td, i32 0, i32 1, i32 %i.0137
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %22)
  %cmp16 = icmp eq i32 %22, -1
  br i1 %cmp16, label %if.then15.for.inc68_crit_edge, label %if.end19

if.then15.for.inc68_crit_edge:                    ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc68

if.end19:                                         ; preds = %if.then15
  %23 = ptrtoint ptr %bbt_erase_shift22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %bbt_erase_shift22, align 4
  %25 = ptrtoint ptr %page_shift to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %page_shift, align 4
  %sub = sub i32 %24, %26
  %shr23 = ashr i32 %22, %sub
  %27 = ptrtoint ptr %bbt.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %bbt.i, align 8
  %shr.i = ashr i32 %shr23, 2
  %arrayidx.i = getelementptr i8, ptr %28, i32 %shr.i
  %29 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx.i, align 1
  %and.i = shl i32 %shr23, 1
  %mul.i108 = and i32 %and.i, 6
  %conv.i109 = zext i8 %30 to i32
  %shr2.i = lshr i32 %conv.i109, %mul.i108
  %shl.i = shl nuw nsw i32 2, %mul.i108
  %31 = trunc i32 %shl.i to i8
  %conv5.i = or i8 %30, %31
  store i8 %conv5.i, ptr %arrayidx.i, align 1
  %conv6.i130 = and i32 %shr2.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %conv6.i130)
  %cmp26.not = icmp eq i32 %conv6.i130, 2
  br i1 %cmp26.not, label %if.end19.for.inc68_crit_edge, label %land.lhs.true

if.end19.for.inc68_crit_edge:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc68

land.lhs.true:                                    ; preds = %if.end19
  %32 = ptrtoint ptr %reserved_block_code to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %reserved_block_code, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool28.not = icmp eq i32 %33, 0
  br i1 %tobool28.not, label %land.lhs.true.for.inc68_crit_edge, label %land.lhs.true.for.inc68.sink.split_crit_edge

land.lhs.true.for.inc68.sink.split_crit_edge:     ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc68.sink.split

land.lhs.true.for.inc68_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc68

if.end35:                                         ; preds = %for.body
  %and37 = and i32 %19, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %tobool38.not = icmp eq i32 %and37, 0
  br i1 %tobool38.not, label %if.else41, label %if.then39

if.then39:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #11
  %add = add nuw nsw i32 %i.0137, 1
  %mul = mul i32 %add, %nrblocks.0143
  %34 = ptrtoint ptr %maxblocks to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %maxblocks, align 4
  %sub40 = sub i32 %mul, %35
  br label %if.end43

if.else41:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #11
  %mul42 = mul i32 %i.0137, %nrblocks.0143
  %36 = ptrtoint ptr %maxblocks to i32
  call void @__asan_load4_noabort(i32 %36)
  %.pr = load i32, ptr %maxblocks, align 4
  br label %if.end43

if.end43:                                         ; preds = %if.else41, %if.then39
  %37 = phi i32 [ %.pr, %if.else41 ], [ %35, %if.then39 ]
  %block.0 = phi i32 [ %mul42, %if.else41 ], [ %sub40, %if.then39 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp46131 = icmp sgt i32 %37, 0
  br i1 %cmp46131, label %if.end43.for.body48_crit_edge, label %if.end43.for.inc68_crit_edge

if.end43.for.inc68_crit_edge:                     ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc68

if.end43.for.body48_crit_edge:                    ; preds = %if.end43
  br label %for.body48

for.body48:                                       ; preds = %for.body48.for.body48_crit_edge, %if.end43.for.body48_crit_edge
  %update.0134 = phi i32 [ %spec.select, %for.body48.for.body48_crit_edge ], [ 0, %if.end43.for.body48_crit_edge ]
  %block.1133 = phi i32 [ %inc, %for.body48.for.body48_crit_edge ], [ %block.0, %if.end43.for.body48_crit_edge ]
  %j.0132 = phi i32 [ %inc55, %for.body48.for.body48_crit_edge ], [ 0, %if.end43.for.body48_crit_edge ]
  %38 = ptrtoint ptr %bbt.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %bbt.i, align 8
  %shr.i115 = ashr i32 %block.1133, 2
  %arrayidx.i116 = getelementptr i8, ptr %39, i32 %shr.i115
  %40 = ptrtoint ptr %arrayidx.i116 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx.i116, align 1
  %and.i117 = shl i32 %block.1133, 1
  %mul.i118 = and i32 %and.i117, 6
  %conv.i119 = zext i8 %41 to i32
  %shr2.i120 = lshr i32 %conv.i119, %mul.i118
  %shl.i124 = shl nuw nsw i32 2, %mul.i118
  %42 = trunc i32 %shl.i124 to i8
  %conv5.i128 = or i8 %41, %42
  store i8 %conv5.i128, ptr %arrayidx.i116, align 1
  %conv6.i121129 = and i32 %shr2.i120, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %conv6.i121129)
  %cmp51.not = icmp eq i32 %conv6.i121129, 2
  %spec.select = select i1 %cmp51.not, i32 %update.0134, i32 1
  %inc = add i32 %block.1133, 1
  %inc55 = add nuw nsw i32 %j.0132, 1
  %43 = ptrtoint ptr %maxblocks to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %maxblocks, align 4
  %cmp46 = icmp slt i32 %inc55, %44
  br i1 %cmp46, label %for.body48.for.body48_crit_edge, label %for.end

for.body48.for.body48_crit_edge:                  ; preds = %for.body48
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body48

for.end:                                          ; preds = %for.body48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select)
  %tobool56.not = icmp eq i32 %spec.select, 0
  br i1 %tobool56.not, label %for.end.for.inc68_crit_edge, label %land.lhs.true57

for.end.for.inc68_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc68

land.lhs.true57:                                  ; preds = %for.end
  %45 = ptrtoint ptr %reserved_block_code to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %reserved_block_code, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool59.not = icmp eq i32 %46, 0
  br i1 %tobool59.not, label %land.lhs.true57.for.inc68_crit_edge, label %land.lhs.true57.for.inc68.sink.split_crit_edge

land.lhs.true57.for.inc68.sink.split_crit_edge:   ; preds = %land.lhs.true57
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc68.sink.split

land.lhs.true57.for.inc68_crit_edge:              ; preds = %land.lhs.true57
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc68

for.inc68.sink.split:                             ; preds = %land.lhs.true57.for.inc68.sink.split_crit_edge, %land.lhs.true.for.inc68.sink.split_crit_edge
  %sub61.sink = phi i32 [ %shr23, %land.lhs.true.for.inc68.sink.split_crit_edge ], [ %block.1133, %land.lhs.true57.for.inc68.sink.split_crit_edge ]
  %conv62 = sext i32 %sub61.sink to i64
  %47 = ptrtoint ptr %bbt_erase_shift22 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %bbt_erase_shift22, align 4
  %sh_prom64 = zext i32 %48 to i64
  %shl65 = shl i64 %conv62, %sh_prom64
  %call66 = tail call fastcc i32 @nand_update_bbt(ptr noundef %this, i64 noundef %shl65)
  br label %for.inc68

for.inc68:                                        ; preds = %for.inc68.sink.split, %land.lhs.true57.for.inc68_crit_edge, %for.end.for.inc68_crit_edge, %if.end43.for.inc68_crit_edge, %land.lhs.true.for.inc68_crit_edge, %if.end19.for.inc68_crit_edge, %if.then15.for.inc68_crit_edge
  %inc69 = add nuw nsw i32 %i.0137, 1
  %exitcond.not = icmp eq i32 %inc69, %chips.0142
  br i1 %exitcond.not, label %for.inc68.for.end70_crit_edge, label %for.inc68.for.body_crit_edge

for.inc68.for.body_crit_edge:                     ; preds = %for.inc68
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc68.for.end70_crit_edge:                    ; preds = %for.inc68
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end70

for.end70:                                        ; preds = %for.inc68.for.end70_crit_edge, %if.end.for.end70_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @create_bbt(ptr noundef %this, ptr noundef %buf, ptr nocapture noundef readonly %bd, i32 noundef %chip) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %luns_per_target.i = getelementptr inbounds %struct.nand_device, ptr %this, i32 0, i32 1, i32 7
  %0 = ptrtoint ptr %luns_per_target.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %luns_per_target.i, align 4
  %conv.i = zext i32 %1 to i64
  %eraseblocks_per_lun.i = getelementptr inbounds %struct.nand_device, ptr %this, i32 0, i32 1, i32 4
  %2 = ptrtoint ptr %eraseblocks_per_lun.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %eraseblocks_per_lun.i, align 8
  %conv2.i = zext i32 %3 to i64
  %mul.i = mul nuw i64 %conv2.i, %conv.i
  %pages_per_eraseblock.i = getelementptr inbounds %struct.nand_device, ptr %this, i32 0, i32 1, i32 3
  %4 = ptrtoint ptr %pages_per_eraseblock.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pages_per_eraseblock.i, align 4
  %conv4.i = zext i32 %5 to i64
  %mul5.i = mul i64 %mul.i, %conv4.i
  %pagesize.i = getelementptr inbounds %struct.nand_device, ptr %this, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %pagesize.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pagesize.i, align 4
  %conv7.i = zext i32 %7 to i64
  %mul8.i = mul i64 %mul5.i, %conv7.i
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %chip)
  %cmp = icmp eq i32 %chip, -1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %size = getelementptr inbounds %struct.mtd_info, ptr %this, i32 0, i32 2
  %8 = ptrtoint ptr %size to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %size, align 8
  %bbt_erase_shift = getelementptr inbounds %struct.nand_chip, ptr %this, i32 0, i32 9
  %10 = ptrtoint ptr %bbt_erase_shift to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %bbt_erase_shift, align 4
  %sh_prom = zext i32 %11 to i64
  %shr = lshr i64 %9, %sh_prom
  %conv = trunc i64 %shr to i32
  br label %if.end23

if.else:                                          ; preds = %entry
  %ntargets.i = getelementptr inbounds %struct.nand_device, ptr %this, i32 0, i32 1, i32 8
  %12 = ptrtoint ptr %ntargets.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ntargets.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %chip)
  %cmp5.not = icmp ugt i32 %13, %chip
  br i1 %cmp5.not, label %if.end, label %do.end10

do.end10:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %add = add nuw i32 %chip, 1
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef %add, i32 noundef %13) #14
  br label %cleanup57

if.end:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %bbt_erase_shift15 = getelementptr inbounds %struct.nand_chip, ptr %this, i32 0, i32 9
  %14 = ptrtoint ptr %bbt_erase_shift15 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %bbt_erase_shift15, align 4
  %sh_prom16 = zext i32 %15 to i64
  %shr17 = lshr i64 %mul8.i, %sh_prom16
  %conv18 = trunc i64 %shr17 to i32
  %mul = mul i32 %conv18, %chip
  %add19 = add i32 %mul, %conv18
  %conv20 = sext i32 %mul to i64
  %shl = shl i64 %conv20, %sh_prom16
  br label %if.end23

if.end23:                                         ; preds = %if.end, %if.then
  %numblocks.0 = phi i32 [ %conv, %if.then ], [ %add19, %if.end ]
  %startblock.0 = phi i32 [ 0, %if.then ], [ %mul, %if.end ]
  %from.0 = phi i64 [ 0, %if.then ], [ %shl, %if.end ]
  call void @__sanitizer_cov_trace_cmp4(i32 %startblock.0, i32 %numblocks.0)
  %cmp2492 = icmp slt i32 %startblock.0, %numblocks.0
  br i1 %cmp2492, label %for.body.lr.ph, label %if.end23.cleanup57_crit_edge

if.end23.cleanup57_crit_edge:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup57

for.body.lr.ph:                                   ; preds = %if.end23
  %bbt.i = getelementptr inbounds %struct.nand_chip, ptr %this, i32 0, i32 16
  %badblocks = getelementptr inbounds %struct.mtd_info, ptr %this, i32 0, i32 52, i32 2
  %bbt_erase_shift52 = getelementptr inbounds %struct.nand_chip, ptr %this, i32 0, i32 9
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %from.195 = phi i64 [ %from.0, %for.body.lr.ph ], [ %add55, %for.inc.for.body_crit_edge ]
  %i.093 = phi i32 [ %startblock.0, %for.body.lr.ph ], [ %inc56, %for.inc.for.body_crit_edge ]
  %16 = ptrtoint ptr %bd to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %bd, align 4
  %and = and i32 %17, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.end38, label %do.body30, !prof !130

do.body30:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/mtd/nand/raw/nand_bbt.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 519, 0\0A.popsection", ""() #9, !srcloc !140
  unreachable

do.end38:                                         ; preds = %for.body
  %call39 = tail call fastcc i32 @scan_block_fast(ptr noundef %this, ptr noundef %bd, i64 noundef %from.195, ptr noundef %buf)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %cmp40 = icmp slt i32 %call39, 0
  br i1 %cmp40, label %do.end38.cleanup57_crit_edge, label %if.end43

do.end38.cleanup57_crit_edge:                     ; preds = %do.end38
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup57

if.end43:                                         ; preds = %do.end38
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool44.not = icmp eq i32 %call39, 0
  br i1 %tobool44.not, label %if.end43.for.inc_crit_edge, label %if.then45

if.end43.for.inc_crit_edge:                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then45:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #11
  %and1.i = shl i32 %i.093, 1
  %mul.i89 = and i32 %and1.i, 6
  %shl.i = shl nuw nsw i32 3, %mul.i89
  %18 = ptrtoint ptr %bbt.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %bbt.i, align 8
  %shr.i = ashr i32 %i.093, 2
  %arrayidx.i = getelementptr i8, ptr %19, i32 %shr.i
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx.i, align 1
  %22 = trunc i32 %shl.i to i8
  %conv5.i = or i8 %21, %22
  store i8 %conv5.i, ptr %arrayidx.i, align 1
  %call50 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, i32 noundef %i.093, i64 noundef %from.195) #14
  %23 = ptrtoint ptr %badblocks to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %badblocks, align 4
  %inc = add i32 %24, 1
  store i32 %inc, ptr %badblocks, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then45, %if.end43.for.inc_crit_edge
  %25 = ptrtoint ptr %bbt_erase_shift52 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %bbt_erase_shift52, align 4
  %shl53 = shl nuw i32 1, %26
  %conv54 = sext i32 %shl53 to i64
  %add55 = add i64 %from.195, %conv54
  %inc56 = add i32 %i.093, 1
  %exitcond.not = icmp eq i32 %inc56, %numblocks.0
  br i1 %exitcond.not, label %for.inc.cleanup57_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.cleanup57_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup57

cleanup57:                                        ; preds = %for.inc.cleanup57_crit_edge, %do.end38.cleanup57_crit_edge, %if.end23.cleanup57_crit_edge, %do.end10
  %retval.2 = phi i32 [ -22, %do.end10 ], [ 0, %if.end23.cleanup57_crit_edge ], [ 0, %for.inc.cleanup57_crit_edge ], [ %call39, %do.end38.cleanup57_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @scan_block_fast(ptr noundef %this, ptr nocapture noundef readonly %bd, i64 noundef %offs, ptr noundef %buf) unnamed_addr #0 align 64 {
entry:
  %ops = alloca %struct.mtd_oob_ops, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %ops) #9
  %0 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops, i32 0, i32 3
  %1 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops, i32 0, i32 5
  %2 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops, i32 0, i32 6
  %3 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops, i32 0, i32 7
  %oobsize = getelementptr inbounds %struct.mtd_info, ptr %this, i32 0, i32 6
  %4 = getelementptr inbounds i8, ptr %ops, i32 4
  %5 = call ptr @memset(ptr %4, i32 255, i32 16)
  %6 = ptrtoint ptr %oobsize to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %oobsize, align 4
  %8 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %0, align 4
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %buf, ptr %3, align 4
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %1, align 4
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %2, align 4
  %12 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %ops, align 4
  %call1 = tail call i32 @nand_bbm_get_next_page(ptr noundef %this, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call1)
  %cmp23 = icmp sgt i32 %call1, -1
  br i1 %cmp23, label %while.body.lr.ph, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

while.body.lr.ph:                                 ; preds = %entry
  %writesize = getelementptr inbounds %struct.mtd_info, ptr %this, i32 0, i32 4
  %offs.i = getelementptr inbounds %struct.nand_bbt_descr, ptr %bd, i32 0, i32 2
  %pattern.i = getelementptr inbounds %struct.nand_bbt_descr, ptr %bd, i32 0, i32 8
  %len.i = getelementptr inbounds %struct.nand_bbt_descr, ptr %bd, i32 0, i32 5
  br label %while.body

while.body:                                       ; preds = %if.end8.while.body_crit_edge, %while.body.lr.ph
  %page_offset.024 = phi i32 [ %call1, %while.body.lr.ph ], [ %call10, %if.end8.while.body_crit_edge ]
  %13 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %writesize, align 4
  %mul = mul i32 %14, %page_offset.024
  %conv = zext i32 %mul to i64
  %add = add i64 %conv, %offs
  %call2 = call i32 @mtd_read_oob(ptr noundef %this, i64 noundef %add, ptr noundef nonnull %ops) #9
  %15 = zext i32 %call2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.61)
  switch i32 %call2, label %while.body.cleanup_crit_edge [
    i32 0, label %while.body.if.end_crit_edge
    i32 -74, label %while.body.if.end_crit_edge27
    i32 -117, label %while.body.if.end_crit_edge28
  ]

while.body.if.end_crit_edge28:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

while.body.if.end_crit_edge27:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

while.body.if.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %while.body.if.end_crit_edge, %while.body.if.end_crit_edge27, %while.body.if.end_crit_edge28
  %16 = ptrtoint ptr %offs.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %offs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %buf, i32 %17
  %18 = ptrtoint ptr %pattern.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pattern.i, align 4
  %20 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %len.i, align 4
  %bcmp.i = call i32 @bcmp(ptr %add.ptr.i, ptr %19, i32 %21) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool.not.i.not = icmp eq i32 %bcmp.i, 0
  br i1 %tobool.not.i.not, label %if.end8, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %add9 = add nuw i32 %page_offset.024, 1
  %call10 = call i32 @nand_bbm_get_next_page(ptr noundef %this, i32 noundef %add9) #9
  %cmp = icmp sgt i32 %call10, -1
  br i1 %cmp, label %if.end8.while.body_crit_edge, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end8.while.body_crit_edge:                     ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

cleanup:                                          ; preds = %if.end8.cleanup_crit_edge, %if.end.cleanup_crit_edge, %while.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %call2, %while.body.cleanup_crit_edge ], [ 0, %if.end8.cleanup_crit_edge ], [ 1, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %ops) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_bbm_get_next_page(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_read_oob(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @scan_read(ptr noundef %this, ptr noundef %buf, i64 noundef %offs, i32 noundef %len, ptr nocapture noundef readonly %td) unnamed_addr #0 align 64 {
entry:
  %ops.i = alloca %struct.mtd_oob_ops, align 4
  %retlen.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %td to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %td, align 4
  %and = and i32 %1, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retlen.i) #9
  %2 = ptrtoint ptr %retlen.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %retlen.i, align 4, !annotation !141
  %len1.i = getelementptr inbounds %struct.nand_bbt_descr, ptr %td, i32 0, i32 5
  %3 = ptrtoint ptr %len1.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %len1.i, align 4
  %and.i = lshr i32 %1, 8
  %and.lobit.i = and i32 %and.i, 1
  %spec.select.i = add i32 %4, %and.lobit.i
  %call2.i = call i32 @mtd_read(ptr noundef %this, i64 noundef %offs, i32 noundef %spec.select.i, ptr noundef nonnull %retlen.i, ptr noundef %buf) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retlen.i) #9
  br label %return

if.else:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %ops.i) #9
  %5 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops.i, i32 0, i32 1
  %6 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops.i, i32 0, i32 3
  %7 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops.i, i32 0, i32 5
  %8 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops.i, i32 0, i32 6
  %9 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops.i, i32 0, i32 7
  %10 = getelementptr inbounds i8, ptr %ops.i, i32 8
  %11 = call ptr @memset(ptr %10, i32 255, i32 12)
  %12 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %ops.i, align 4
  %13 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %7, align 4
  %oobsize.i = getelementptr inbounds %struct.mtd_info, ptr %this, i32 0, i32 6
  %14 = ptrtoint ptr %oobsize.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %oobsize.i, align 4
  %16 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp.not41.i = icmp eq i32 %len, 0
  br i1 %cmp.not41.i, label %if.else.scan_read_oob.exit_crit_edge, label %while.body.lr.ph.i

if.else.scan_read_oob.exit_crit_edge:             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %scan_read_oob.exit

while.body.lr.ph.i:                               ; preds = %if.else
  %writesize.i = getelementptr inbounds %struct.mtd_info, ptr %this, i32 0, i32 4
  br label %while.body.i

while.body.i:                                     ; preds = %if.end13.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %len.addr.044.i = phi i32 [ %len, %while.body.lr.ph.i ], [ %sub.i, %if.end13.i.while.body.i_crit_edge ]
  %offs.addr.043.i = phi i64 [ %offs, %while.body.lr.ph.i ], [ %add19.i, %if.end13.i.while.body.i_crit_edge ]
  %buf.addr.042.i = phi ptr [ %buf, %while.body.lr.ph.i ], [ %add.ptr16.i, %if.end13.i.while.body.i_crit_edge ]
  %17 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %buf.addr.042.i, ptr %8, align 4
  %18 = ptrtoint ptr %writesize.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %writesize.i, align 4
  %20 = call i32 @llvm.umin.i32(i32 %len.addr.044.i, i32 %19) #9
  %21 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %5, align 4
  %add.ptr.i = getelementptr i8, ptr %buf.addr.042.i, i32 %20
  %22 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %add.ptr.i, ptr %9, align 4
  %call4.i = call i32 @mtd_read_oob(ptr noundef %this, i64 noundef %offs.addr.043.i, ptr noundef nonnull %ops.i) #9
  %23 = zext i32 %call4.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.62)
  switch i32 %call4.i, label %while.body.i.scan_read_oob.exit_crit_edge [
    i32 0, label %while.body.i.if.end13.i_crit_edge
    i32 -74, label %while.body.i.if.end13.i_crit_edge2
    i32 -117, label %while.body.i.if.end13.i_crit_edge3
  ]

while.body.i.if.end13.i_crit_edge3:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13.i

while.body.i.if.end13.i_crit_edge2:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13.i

while.body.i.if.end13.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13.i

while.body.i.scan_read_oob.exit_crit_edge:        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %scan_read_oob.exit

if.end13.i:                                       ; preds = %while.body.i.if.end13.i_crit_edge, %while.body.i.if.end13.i_crit_edge2, %while.body.i.if.end13.i_crit_edge3
  %24 = ptrtoint ptr %oobsize.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %oobsize.i, align 4
  %26 = ptrtoint ptr %writesize.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %writesize.i, align 4
  %add.i = add i32 %27, %25
  %add.ptr16.i = getelementptr i8, ptr %buf.addr.042.i, i32 %add.i
  %sub.i = sub i32 %len.addr.044.i, %27
  %conv.i = zext i32 %27 to i64
  %add19.i = add i64 %offs.addr.043.i, %conv.i
  %cmp.not.i = icmp eq i32 %sub.i, 0
  br i1 %cmp.not.i, label %if.end13.i.scan_read_oob.exit_crit_edge, label %if.end13.i.while.body.i_crit_edge

if.end13.i.while.body.i_crit_edge:                ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

if.end13.i.scan_read_oob.exit_crit_edge:          ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %scan_read_oob.exit

scan_read_oob.exit:                               ; preds = %if.end13.i.scan_read_oob.exit_crit_edge, %while.body.i.scan_read_oob.exit_crit_edge, %if.else.scan_read_oob.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %ops.i) #9
  br label %return

return:                                           ; preds = %scan_read_oob.exit, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_read(ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @search_bbt(ptr noundef %this, ptr noundef %buf, ptr nocapture noundef %td) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %luns_per_target.i = getelementptr inbounds %struct.nand_device, ptr %this, i32 0, i32 1, i32 7
  %0 = ptrtoint ptr %luns_per_target.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %luns_per_target.i, align 4
  %conv.i = zext i32 %1 to i64
  %eraseblocks_per_lun.i = getelementptr inbounds %struct.nand_device, ptr %this, i32 0, i32 1, i32 4
  %2 = ptrtoint ptr %eraseblocks_per_lun.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %eraseblocks_per_lun.i, align 8
  %conv2.i = zext i32 %3 to i64
  %mul.i = mul nuw i64 %conv2.i, %conv.i
  %pages_per_eraseblock.i = getelementptr inbounds %struct.nand_device, ptr %this, i32 0, i32 1, i32 3
  %4 = ptrtoint ptr %pages_per_eraseblock.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pages_per_eraseblock.i, align 4
  %conv4.i = zext i32 %5 to i64
  %mul5.i = mul i64 %mul.i, %conv4.i
  %pagesize.i = getelementptr inbounds %struct.nand_device, ptr %this, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %pagesize.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pagesize.i, align 4
  %conv7.i = zext i32 %7 to i64
  %mul8.i = mul i64 %mul5.i, %conv7.i
  %writesize = getelementptr inbounds %struct.mtd_info, ptr %this, i32 0, i32 4
  %bbt_erase_shift = getelementptr inbounds %struct.nand_chip, ptr %this, i32 0, i32 9
  %8 = ptrtoint ptr %bbt_erase_shift to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %bbt_erase_shift, align 4
  %page_shift = getelementptr inbounds %struct.nand_chip, ptr %this, i32 0, i32 17
  %10 = ptrtoint ptr %page_shift to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %page_shift, align 4
  %sub = sub i32 %9, %11
  %12 = ptrtoint ptr %td to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %td, align 4
  %and = and i32 %13, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %size = getelementptr inbounds %struct.mtd_info, ptr %this, i32 0, i32 2
  %14 = ptrtoint ptr %size to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %size, align 8
  %sh_prom = zext i32 %9 to i64
  %shr = lshr i64 %15, %sh_prom
  %16 = trunc i64 %shr to i32
  %conv = add i32 %16, -1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %startblock.0 = phi i32 [ %conv, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %dir.0 = phi i32 [ -1, %if.then ], [ 1, %entry.if.end_crit_edge ]
  %and5 = and i32 %13, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %if.end.for.body.lr.ph_crit_edge, label %if.end22

if.end.for.body.lr.ph_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.lr.ph

if.end22:                                         ; preds = %if.end
  %ntargets.i = getelementptr inbounds %struct.nand_device, ptr %this, i32 0, i32 1, i32 8
  %17 = ptrtoint ptr %ntargets.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %ntargets.i, align 8
  %sh_prom11 = zext i32 %9 to i64
  %shr12 = lshr i64 %mul8.i, %sh_prom11
  %conv13 = trunc i64 %shr12 to i32
  %sub14 = add i32 %conv13, -1
  %and15 = and i32 %startblock.0, %sub14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp18 = icmp sgt i32 %18, 0
  br i1 %cmp18, label %if.end22.for.body.lr.ph_crit_edge, label %if.end22.for.end91_crit_edge

if.end22.for.end91_crit_edge:                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end91

if.end22.for.body.lr.ph_crit_edge:                ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.end22.for.body.lr.ph_crit_edge, %if.end.for.body.lr.ph_crit_edge
  %startblock.131 = phi i32 [ %and15, %if.end22.for.body.lr.ph_crit_edge ], [ %startblock.0, %if.end.for.body.lr.ph_crit_edge ]
  %chips.029 = phi i32 [ %18, %if.end22.for.body.lr.ph_crit_edge ], [ 1, %if.end.for.body.lr.ph_crit_edge ]
  %maxblocks = getelementptr inbounds %struct.nand_bbt_descr, ptr %td, i32 0, i32 6
  %badblock_pattern.i = getelementptr inbounds %struct.nand_chip, ptr %this, i32 0, i32 15
  %offs1.i = getelementptr inbounds %struct.nand_bbt_descr, ptr %td, i32 0, i32 2
  %bbt_options.i = getelementptr inbounds %struct.nand_chip, ptr %this, i32 0, i32 10
  %options9.i = getelementptr inbounds %struct.nand_chip, ptr %this, i32 0, i32 6
  %pattern.i.i = getelementptr inbounds %struct.nand_bbt_descr, ptr %td, i32 0, i32 8
  %len.i.i = getelementptr inbounds %struct.nand_bbt_descr, ptr %td, i32 0, i32 5
  %veroffs.i = getelementptr inbounds %struct.nand_bbt_descr, ptr %td, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.end.for.body_crit_edge, %for.body.lr.ph
  %startblock.220 = phi i32 [ %startblock.131, %for.body.lr.ph ], [ %conv63, %for.end.for.body_crit_edge ]
  %i.019 = phi i32 [ 0, %for.body.lr.ph ], [ %inc65, %for.end.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.nand_bbt_descr, ptr %td, i32 0, i32 4, i32 %i.019
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %arrayidx, align 1
  %arrayidx24 = getelementptr %struct.nand_bbt_descr, ptr %td, i32 0, i32 1, i32 %i.019
  %20 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 -1, ptr %arrayidx24, align 4
  %21 = ptrtoint ptr %maxblocks to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %maxblocks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp2616 = icmp sgt i32 %22, 0
  br i1 %cmp2616, label %for.body.for.body28_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.for.body28_crit_edge:                    ; preds = %for.body
  br label %for.body28

for.body28:                                       ; preds = %for.inc.for.body28_crit_edge, %for.body.for.body28_crit_edge
  %block.017 = phi i32 [ %inc, %for.inc.for.body28_crit_edge ], [ 0, %for.body.for.body28_crit_edge ]
  %mul = mul nsw i32 %block.017, %dir.0
  %add29 = add i32 %mul, %startblock.220
  %conv30 = sext i32 %add29 to i64
  %23 = ptrtoint ptr %bbt_erase_shift to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %bbt_erase_shift, align 4
  %sh_prom32 = zext i32 %24 to i64
  %shl = shl i64 %conv30, %sh_prom32
  %25 = ptrtoint ptr %badblock_pattern.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %badblock_pattern.i, align 4
  %27 = ptrtoint ptr %td to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %td, align 4
  %and.i = and i32 %28, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %for.body28.if.end.i_crit_edge

for.body28.if.end.i_crit_edge:                    ; preds = %for.body28
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %for.body28
  %29 = ptrtoint ptr %offs1.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %offs1.i, align 4
  %offs2.i = getelementptr inbounds %struct.nand_bbt_descr, ptr %26, i32 0, i32 2
  %31 = ptrtoint ptr %offs2.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %offs2.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %32)
  %cmp.not.i = icmp slt i32 %30, %32
  br i1 %cmp.not.i, label %land.lhs.true.i.if.end.i_crit_edge, label %land.lhs.true3.i

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i
  %len.i = getelementptr inbounds %struct.nand_bbt_descr, ptr %26, i32 0, i32 5
  %33 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %len.i, align 4
  %add.i = add i32 %34, %32
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %add.i)
  %cmp6.i = icmp slt i32 %30, %add.i
  br i1 %cmp6.i, label %land.lhs.true3.i.if.end36_crit_edge, label %land.lhs.true3.i.if.end.i_crit_edge

land.lhs.true3.i.if.end.i_crit_edge:              ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

land.lhs.true3.i.if.end36_crit_edge:              ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36

if.end.i:                                         ; preds = %land.lhs.true3.i.if.end.i_crit_edge, %land.lhs.true.i.if.end.i_crit_edge, %for.body28.if.end.i_crit_edge
  %35 = ptrtoint ptr %bbt_options.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %bbt_options.i, align 8
  %and7.i = and i32 %36, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i)
  %tobool8.not.i = icmp eq i32 %and7.i, 0
  br i1 %tobool8.not.i, label %lor.lhs.false.i, label %if.end.i.if.end36_crit_edge

if.end.i.if.end36_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36

lor.lhs.false.i:                                  ; preds = %if.end.i
  %37 = ptrtoint ptr %options9.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %options9.i, align 8
  %and10.i = and i32 %38, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i)
  %tobool11.not.i = icmp eq i32 %and10.i, 0
  br i1 %tobool11.not.i, label %bbt_block_checkbad.exit, label %lor.lhs.false.i.if.end36_crit_edge

lor.lhs.false.i.if.end36_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36

bbt_block_checkbad.exit:                          ; preds = %lor.lhs.false.i
  %call.i = tail call fastcc i32 @scan_block_fast(ptr noundef %this, ptr noundef %26, i64 noundef %shl, ptr noundef %buf) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp14.i = icmp slt i32 %call.i, 1
  br i1 %cmp14.i, label %bbt_block_checkbad.exit.if.end36_crit_edge, label %bbt_block_checkbad.exit.for.inc_crit_edge

bbt_block_checkbad.exit.for.inc_crit_edge:        ; preds = %bbt_block_checkbad.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

bbt_block_checkbad.exit.if.end36_crit_edge:       ; preds = %bbt_block_checkbad.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36

if.end36:                                         ; preds = %bbt_block_checkbad.exit.if.end36_crit_edge, %lor.lhs.false.i.if.end36_crit_edge, %if.end.i.if.end36_crit_edge, %land.lhs.true3.i.if.end36_crit_edge
  %39 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %writesize, align 4
  tail call fastcc void @scan_read(ptr noundef %this, ptr noundef %buf, i64 noundef %shl, i32 noundef %40, ptr noundef %td)
  %41 = ptrtoint ptr %td to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %td, align 4
  %and.i2 = and i32 %42, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i2)
  %tobool.not.i3 = icmp eq i32 %and.i2, 0
  br i1 %tobool.not.i3, label %if.end.i4, label %if.end36.check_pattern.exit_crit_edge

if.end36.check_pattern.exit_crit_edge:            ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  br label %check_pattern.exit

if.end.i4:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  %43 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %writesize, align 4
  %add.ptr.i = getelementptr i8, ptr %buf, i32 %44
  %45 = ptrtoint ptr %offs1.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %offs1.i, align 4
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i, i32 %46
  br label %check_pattern.exit

check_pattern.exit:                               ; preds = %if.end.i4, %if.end36.check_pattern.exit_crit_edge
  %buf.sink = phi ptr [ %add.ptr1.i, %if.end.i4 ], [ %buf, %if.end36.check_pattern.exit_crit_edge ]
  %47 = ptrtoint ptr %pattern.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %pattern.i.i, align 4
  %49 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %len.i.i, align 4
  %bcmp.i.i = tail call i32 @bcmp(ptr %buf.sink, ptr %48, i32 %50) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i)
  %retval.0.in.i.not = icmp eq i32 %bcmp.i.i, 0
  br i1 %retval.0.in.i.not, label %if.then42, label %check_pattern.exit.for.inc_crit_edge

check_pattern.exit.for.inc_crit_edge:             ; preds = %check_pattern.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then42:                                        ; preds = %check_pattern.exit
  %shl43 = shl i32 %add29, %sub
  %51 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %shl43, ptr %arrayidx24, align 4
  %52 = ptrtoint ptr %td to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %td, align 4
  %and47 = and i32 %53, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and47)
  %tobool48.not = icmp eq i32 %and47, 0
  br i1 %tobool48.not, label %if.then42.for.end_crit_edge, label %if.then49

if.then42.for.end_crit_edge:                      ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.then49:                                        ; preds = %if.then42
  %54 = ptrtoint ptr %veroffs.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %veroffs.i, align 4
  %and.i6 = and i32 %53, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i6)
  %tobool.not.i7 = icmp eq i32 %and.i6, 0
  br i1 %tobool.not.i7, label %if.then.i9, label %if.then49.bbt_get_ver_offs.exit_crit_edge

if.then49.bbt_get_ver_offs.exit_crit_edge:        ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #11
  br label %bbt_get_ver_offs.exit

if.then.i9:                                       ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #11
  %56 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %writesize, align 4
  %add.i8 = add i32 %57, %55
  br label %bbt_get_ver_offs.exit

bbt_get_ver_offs.exit:                            ; preds = %if.then.i9, %if.then49.bbt_get_ver_offs.exit_crit_edge
  %ver_offs.0.i = phi i32 [ %55, %if.then49.bbt_get_ver_offs.exit_crit_edge ], [ %add.i8, %if.then.i9 ]
  %arrayidx52 = getelementptr i8, ptr %buf, i32 %ver_offs.0.i
  %58 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %arrayidx52, align 1
  %60 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %59, ptr %arrayidx, align 1
  br label %for.end

for.inc:                                          ; preds = %check_pattern.exit.for.inc_crit_edge, %bbt_block_checkbad.exit.for.inc_crit_edge
  %inc = add nuw nsw i32 %block.017, 1
  %61 = ptrtoint ptr %maxblocks to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %maxblocks, align 4
  %cmp26 = icmp slt i32 %inc, %62
  br i1 %cmp26, label %for.inc.for.body28_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.inc.for.body28_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body28

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %bbt_get_ver_offs.exit, %if.then42.for.end_crit_edge, %for.body.for.end_crit_edge
  %63 = ptrtoint ptr %bbt_erase_shift to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %bbt_erase_shift, align 4
  %sh_prom59 = zext i32 %64 to i64
  %shr60 = lshr i64 %mul8.i, %sh_prom59
  %65 = trunc i64 %shr60 to i32
  %conv63 = add i32 %startblock.220, %65
  %inc65 = add nuw nsw i32 %i.019, 1
  %exitcond.not = icmp eq i32 %inc65, %chips.029
  br i1 %exitcond.not, label %for.end.for.body70_crit_edge, label %for.end.for.body_crit_edge

for.end.for.body_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end.for.body70_crit_edge:                     ; preds = %for.end
  br label %for.body70

for.body70:                                       ; preds = %for.inc89.for.body70_crit_edge, %for.end.for.body70_crit_edge
  %i.122 = phi i32 [ %inc90, %for.inc89.for.body70_crit_edge ], [ 0, %for.end.for.body70_crit_edge ]
  %arrayidx72 = getelementptr %struct.nand_bbt_descr, ptr %td, i32 0, i32 1, i32 %i.122
  %66 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %arrayidx72, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %67)
  %cmp73 = icmp eq i32 %67, -1
  br i1 %cmp73, label %do.end, label %do.end80

do.end:                                           ; preds = %for.body70
  call void @__sanitizer_cov_trace_pc() #11
  %call76 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, i32 noundef %i.122) #14
  br label %for.inc89

do.end80:                                         ; preds = %for.body70
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx85 = getelementptr %struct.nand_bbt_descr, ptr %td, i32 0, i32 4, i32 %i.122
  %68 = ptrtoint ptr %arrayidx85 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %arrayidx85, align 1
  %conv86 = zext i8 %69 to i32
  %call87 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, i32 noundef %67, i32 noundef %conv86) #14
  br label %for.inc89

for.inc89:                                        ; preds = %do.end80, %do.end
  %inc90 = add nuw nsw i32 %i.122, 1
  %exitcond25.not = icmp eq i32 %inc90, %chips.029
  br i1 %exitcond25.not, label %for.inc89.for.end91_crit_edge, label %for.inc89.for.body70_crit_edge

for.inc89.for.body70_crit_edge:                   ; preds = %for.inc89
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body70

for.inc89.for.end91_crit_edge:                    ; preds = %for.inc89
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end91

for.end91:                                        ; preds = %for.inc89.for.end91_crit_edge, %if.end22.for.end91_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @read_abs_bbt(ptr noundef %this, ptr noundef %buf, ptr nocapture noundef readonly %td, i32 noundef %chip) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %luns_per_target.i = getelementptr inbounds %struct.nand_device, ptr %this, i32 0, i32 1, i32 7
  %0 = ptrtoint ptr %luns_per_target.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %luns_per_target.i, align 4
  %conv.i = zext i32 %1 to i64
  %eraseblocks_per_lun.i = getelementptr inbounds %struct.nand_device, ptr %this, i32 0, i32 1, i32 4
  %2 = ptrtoint ptr %eraseblocks_per_lun.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %eraseblocks_per_lun.i, align 8
  %conv2.i = zext i32 %3 to i64
  %mul.i = mul nuw i64 %conv2.i, %conv.i
  %pages_per_eraseblock.i = getelementptr inbounds %struct.nand_device, ptr %this, i32 0, i32 1, i32 3
  %4 = ptrtoint ptr %pages_per_eraseblock.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pages_per_eraseblock.i, align 4
  %conv4.i = zext i32 %5 to i64
  %mul5.i = mul i64 %mul.i, %conv4.i
  %pagesize.i = getelementptr inbounds %struct.nand_device, ptr %this, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %pagesize.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pagesize.i, align 4
  %conv7.i = zext i32 %7 to i64
  %mul8.i = mul i64 %mul5.i, %conv7.i
  %8 = ptrtoint ptr %td to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %td, align 4
  %and = and i32 %9, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %ntargets.i = getelementptr inbounds %struct.nand_device, ptr %this, i32 0, i32 1, i32 8
  %10 = ptrtoint ptr %ntargets.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ntargets.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp56.not = icmp eq i32 %11, 0
  br i1 %cmp56.not, label %for.cond.preheader.if.end26_crit_edge, label %for.body.lr.ph

for.cond.preheader.if.end26_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %chip)
  %cmp4 = icmp eq i32 %chip, -1
  %bbt_erase_shift = getelementptr inbounds %struct.nand_chip, ptr %this, i32 0, i32 9
  br label %for.body

for.body:                                         ; preds = %if.end10.for.body_crit_edge, %for.body.lr.ph
  %offs.059 = phi i32 [ 0, %for.body.lr.ph ], [ %conv15, %if.end10.for.body_crit_edge ]
  %i.057 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end10.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.057, i32 %chip)
  %cmp5 = icmp eq i32 %i.057, %chip
  %or.cond = select i1 %cmp4, i1 true, i1 %cmp5
  br i1 %or.cond, label %if.end, label %for.body.if.end10_crit_edge

for.body.if.end10_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

if.end:                                           ; preds = %for.body
  %arrayidx = getelementptr %struct.nand_bbt_descr, ptr %td, i32 0, i32 1, i32 %i.057
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx, align 4
  %14 = ptrtoint ptr %bbt_erase_shift to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %bbt_erase_shift, align 4
  %sh_prom = zext i32 %15 to i64
  %shr = lshr i64 %mul8.i, %sh_prom
  %conv = trunc i64 %shr to i32
  %call7 = tail call fastcc i32 @read_bbt(ptr noundef %this, ptr noundef %buf, i32 noundef %13, i32 noundef %conv, ptr noundef %td, i32 noundef %offs.059)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end.if.end10_crit_edge, label %if.end.cleanup27_crit_edge

if.end.cleanup27_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup27

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

if.end10:                                         ; preds = %if.end.if.end10_crit_edge, %for.body.if.end10_crit_edge
  %16 = ptrtoint ptr %bbt_erase_shift to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %bbt_erase_shift, align 4
  %sh_prom12 = zext i32 %17 to i64
  %shr13 = lshr i64 %mul8.i, %sh_prom12
  %18 = trunc i64 %shr13 to i32
  %conv15 = add i32 %offs.059, %18
  %inc = add nuw i32 %i.057, 1
  %19 = ptrtoint ptr %ntargets.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %ntargets.i, align 8
  %cmp = icmp ult i32 %inc, %20
  br i1 %cmp, label %if.end10.for.body_crit_edge, label %if.end10.if.end26_crit_edge

if.end10.if.end26_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26

if.end10.for.body_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

if.else:                                          ; preds = %entry
  %pages16 = getelementptr inbounds %struct.nand_bbt_descr, ptr %td, i32 0, i32 1
  %21 = ptrtoint ptr %pages16 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %pages16, align 4
  %size = getelementptr inbounds %struct.mtd_info, ptr %this, i32 0, i32 2
  %23 = ptrtoint ptr %size to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %size, align 8
  %bbt_erase_shift18 = getelementptr inbounds %struct.nand_chip, ptr %this, i32 0, i32 9
  %25 = ptrtoint ptr %bbt_erase_shift18 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %bbt_erase_shift18, align 4
  %sh_prom19 = zext i32 %26 to i64
  %shr20 = lshr i64 %24, %sh_prom19
  %conv21 = trunc i64 %shr20 to i32
  %call22 = tail call fastcc i32 @read_bbt(ptr noundef %this, ptr noundef %buf, i32 noundef %22, i32 noundef %conv21, ptr noundef %td, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.else.if.end26_crit_edge, label %if.else.cleanup27_crit_edge

if.else.cleanup27_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup27

if.else.if.end26_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26

if.end26:                                         ; preds = %if.else.if.end26_crit_edge, %if.end10.if.end26_crit_edge, %for.cond.preheader.if.end26_crit_edge
  br label %cleanup27

cleanup27:                                        ; preds = %if.end26, %if.else.cleanup27_crit_edge, %if.end.cleanup27_crit_edge
  %retval.1 = phi i32 [ 0, %if.end26 ], [ %call22, %if.else.cleanup27_crit_edge ], [ %call7, %if.end.cleanup27_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @write_bbt(ptr noundef %this, ptr noundef %buf, ptr nocapture noundef %td, ptr noundef readonly %md, i32 noundef %chipsel) unnamed_addr #0 align 64 {
entry:
  %ops.i = alloca %struct.mtd_oob_ops, align 4
  %einfo = alloca %struct.erase_info, align 8
  %msk = alloca [4 x i8], align 4
  %retlen = alloca i32, align 4
  %ops = alloca %struct.mtd_oob_ops, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %luns_per_target.i = getelementptr inbounds %struct.nand_device, ptr %this, i32 0, i32 1, i32 7
  %0 = ptrtoint ptr %luns_per_target.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %luns_per_target.i, align 4
  %eraseblocks_per_lun.i = getelementptr inbounds %struct.nand_device, ptr %this, i32 0, i32 1, i32 4
  %2 = ptrtoint ptr %eraseblocks_per_lun.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %eraseblocks_per_lun.i, align 8
  %pages_per_eraseblock.i = getelementptr inbounds %struct.nand_device, ptr %this, i32 0, i32 1, i32 3
  %4 = ptrtoint ptr %pages_per_eraseblock.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pages_per_eraseblock.i, align 4
  %pagesize.i = getelementptr inbounds %struct.nand_device, ptr %this, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %pagesize.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pagesize.i, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %einfo) #9
  %8 = getelementptr inbounds %struct.erase_info, ptr %einfo, i32 0, i32 1
  %9 = call ptr @memset(ptr %einfo, i32 255, i32 24)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %msk) #9
  %10 = getelementptr inbounds [4 x i8], ptr %msk, i32 0, i32 1
  %11 = getelementptr inbounds [4 x i8], ptr %msk, i32 0, i32 2
  %12 = getelementptr inbounds [4 x i8], ptr %msk, i32 0, i32 3
  %reserved_block_code = getelementptr inbounds %struct.nand_bbt_descr, ptr %td, i32 0, i32 7
  %13 = ptrtoint ptr %msk to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %msk, align 4
  %14 = ptrtoint ptr %reserved_block_code to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %reserved_block_code, align 4
  %conv = trunc i32 %15 to i8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retlen) #9
  %16 = ptrtoint ptr %retlen to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -1, ptr %retlen, align 4, !annotation !141
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %ops) #9
  %17 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops, i32 0, i32 3
  %18 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops, i32 0, i32 4
  %19 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops, i32 0, i32 5
  %20 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops, i32 0, i32 6
  %21 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops, i32 0, i32 7
  %oobsize = getelementptr inbounds %struct.mtd_info, ptr %this, i32 0, i32 6
  %22 = getelementptr inbounds i8, ptr %ops, i32 4
  %23 = call ptr @memset(ptr %22, i32 255, i32 28)
  %24 = ptrtoint ptr %oobsize to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %oobsize, align 4
  %26 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %17, align 4
  %27 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %19, align 4
  %28 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %20, align 4
  %29 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %ops, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv)
  %tobool.not = icmp eq i8 %conv, 0
  %30 = ptrtoint ptr %td to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %td, align 4
  %and = and i32 %31, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %if.end16.thread, label %if.then4

if.then4:                                         ; preds = %entry
  %conv2.i = zext i32 %3 to i64
  %conv.i = zext i32 %1 to i64
  %mul.i = mul nuw i64 %conv2.i, %conv.i
  %conv4.i = zext i32 %5 to i64
  %mul5.i = mul i64 %mul.i, %conv4.i
  %conv7.i = zext i32 %7 to i64
  %mul8.i = mul i64 %mul5.i, %conv7.i
  %bbt_erase_shift = getelementptr inbounds %struct.nand_chip, ptr %this, i32 0, i32 9
  %32 = ptrtoint ptr %bbt_erase_shift to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %bbt_erase_shift, align 4
  %sh_prom = zext i32 %33 to i64
  %shr = lshr i64 %mul8.i, %sh_prom
  %conv5 = trunc i64 %shr to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %chipsel)
  %cmp = icmp eq i32 %chipsel, -1
  br i1 %cmp, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  %ntargets.i = getelementptr inbounds %struct.nand_device, ptr %this, i32 0, i32 1, i32 8
  %34 = ptrtoint ptr %ntargets.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %ntargets.i, align 8
  br label %if.end16

if.else:                                          ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  %add = add nuw i32 %chipsel, 1
  br label %if.end16

if.end16.thread:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %size = getelementptr inbounds %struct.mtd_info, ptr %this, i32 0, i32 2
  %36 = ptrtoint ptr %size to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %size, align 8
  %bbt_erase_shift12 = getelementptr inbounds %struct.nand_chip, ptr %this, i32 0, i32 9
  %38 = ptrtoint ptr %bbt_erase_shift12 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %bbt_erase_shift12, align 4
  %sh_prom13 = zext i32 %39 to i64
  %shr14 = lshr i64 %37, %sh_prom13
  %conv15 = trunc i64 %shr14 to i32
  br label %while.body.lr.ph

if.end16:                                         ; preds = %if.else, %if.then7
  %nrchips.0 = phi i32 [ %35, %if.then7 ], [ %add, %if.else ]
  %chip.0 = phi i32 [ 0, %if.then7 ], [ %chipsel, %if.else ]
  call void @__sanitizer_cov_trace_cmp4(i32 %chip.0, i32 %nrchips.0)
  %cmp17418 = icmp slt i32 %chip.0, %nrchips.0
  br i1 %cmp17418, label %if.end16.while.body.lr.ph_crit_edge, label %if.end16.cleanup219_crit_edge

if.end16.cleanup219_crit_edge:                    ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup219

if.end16.while.body.lr.ph_crit_edge:              ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %if.end16.while.body.lr.ph_crit_edge, %if.end16.thread
  %chip.0430 = phi i32 [ 0, %if.end16.thread ], [ %chip.0, %if.end16.while.body.lr.ph_crit_edge ]
  %nrchips.0429 = phi i32 [ 1, %if.end16.thread ], [ %nrchips.0, %if.end16.while.body.lr.ph_crit_edge ]
  %numblocks.0428 = phi i32 [ %conv15, %if.end16.thread ], [ %conv5, %if.end16.while.body.lr.ph_crit_edge ]
  %bbt_erase_shift.i = getelementptr inbounds %struct.nand_chip, ptr %this, i32 0, i32 9
  %page_shift.i = getelementptr inbounds %struct.nand_chip, ptr %this, i32 0, i32 17
  %ntargets.i.i = getelementptr inbounds %struct.nand_device, ptr %this, i32 0, i32 1, i32 8
  %maxblocks.i = getelementptr inbounds %struct.nand_bbt_descr, ptr %td, i32 0, i32 6
  %bbt.i.i = getelementptr inbounds %struct.nand_chip, ptr %this, i32 0, i32 16
  %tobool26.not.i = icmp eq ptr %md, null
  %40 = xor i8 %conv, -1
  %conv29 = select i1 %tobool.not, i8 0, i8 %40
  %writesize = getelementptr inbounds %struct.mtd_info, ptr %this, i32 0, i32 4
  %len112 = getelementptr inbounds %struct.nand_bbt_descr, ptr %td, i32 0, i32 5
  %pattern = getelementptr inbounds %struct.nand_bbt_descr, ptr %td, i32 0, i32 8
  %offs142 = getelementptr inbounds %struct.nand_bbt_descr, ptr %td, i32 0, i32 2
  %veroffs = getelementptr inbounds %struct.nand_bbt_descr, ptr %td, i32 0, i32 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %numblocks.0428)
  %cmp157416 = icmp sgt i32 %numblocks.0428, 0
  %41 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops.i, i32 0, i32 1
  %42 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops.i, i32 0, i32 3
  %43 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops.i, i32 0, i32 5
  %44 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops.i, i32 0, i32 6
  %45 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops.i, i32 0, i32 7
  %46 = getelementptr inbounds i8, ptr %ops.i, i32 8
  %47 = getelementptr inbounds i8, ptr %einfo, i32 16
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %chip.1419 = phi i32 [ %chip.0430, %while.body.lr.ph ], [ %chip.2, %cleanup.while.body_crit_edge ]
  %arrayidx.i = getelementptr %struct.nand_bbt_descr, ptr %td, i32 0, i32 1, i32 %chip.1419
  %48 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %49)
  %cmp.not.i = icmp eq i32 %49, -1
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  %50 = ptrtoint ptr %bbt_erase_shift.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %bbt_erase_shift.i, align 4
  %52 = ptrtoint ptr %page_shift.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %page_shift.i, align 4
  %sub.i = sub i32 %51, %53
  %shr.i = ashr i32 %49, %sub.i
  br label %get_bbt_block.exit

if.end.i:                                         ; preds = %while.body
  %54 = ptrtoint ptr %eraseblocks_per_lun.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %eraseblocks_per_lun.i, align 8
  %conv2.i.i = zext i32 %55 to i64
  %56 = ptrtoint ptr %luns_per_target.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %luns_per_target.i, align 4
  %conv.i.i = zext i32 %57 to i64
  %mul.i.i = mul nuw i64 %conv.i.i, %conv2.i.i
  %58 = ptrtoint ptr %pages_per_eraseblock.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %pages_per_eraseblock.i, align 4
  %conv4.i.i = zext i32 %59 to i64
  %mul5.i.i = mul i64 %mul.i.i, %conv4.i.i
  %60 = ptrtoint ptr %pagesize.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %pagesize.i, align 4
  %conv7.i.i = zext i32 %61 to i64
  %mul8.i.i = mul i64 %mul5.i.i, %conv7.i.i
  %62 = ptrtoint ptr %bbt_erase_shift.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %bbt_erase_shift.i, align 4
  %sh_prom.i = zext i32 %63 to i64
  %shr4.i = lshr i64 %mul8.i.i, %sh_prom.i
  %conv.i362 = trunc i64 %shr4.i to i32
  %64 = ptrtoint ptr %td to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %td, align 4
  %and.i = and i32 %65, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then5.i, label %if.end.i.if.end8.i_crit_edge

if.end.i.if.end8.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.i

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %66 = ptrtoint ptr %ntargets.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %ntargets.i.i, align 8
  %mul.i363 = mul i32 %67, %conv.i362
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.then5.i, %if.end.i.if.end8.i_crit_edge
  %numblocks.0.i = phi i32 [ %conv.i362, %if.end.i.if.end8.i_crit_edge ], [ %mul.i363, %if.then5.i ]
  %and10.i = and i32 %65, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i)
  %tobool11.not.i = icmp eq i32 %and10.i, 0
  %add.i = add nsw i32 %chip.1419, 1
  %mul13.i = mul i32 %numblocks.0.i, %add.i
  %sub14.i = add i32 %mul13.i, -1
  %mul15.i = mul i32 %numblocks.0.i, %chip.1419
  %startblock.0.i = select i1 %tobool11.not.i, i32 %mul15.i, i32 %sub14.i
  %68 = ptrtoint ptr %maxblocks.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %maxblocks.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %cmp1772.i = icmp sgt i32 %69, 0
  br i1 %cmp1772.i, label %for.body.lr.ph.i, label %if.end8.i.do.end_crit_edge

if.end8.i.do.end_crit_edge:                       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

for.body.lr.ph.i:                                 ; preds = %if.end8.i
  %70 = ptrtoint ptr %bbt.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %bbt.i.i, align 8
  %arrayidx28.i = getelementptr %struct.nand_bbt_descr, ptr %md, i32 0, i32 1, i32 %chip.1419
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.073.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %72 = sub nsw i32 0, %i.073.i
  %73 = select i1 %tobool11.not.i, i32 %i.073.i, i32 %72
  %add20.i = add i32 %73, %startblock.0.i
  %shr.i.i = ashr i32 %add20.i, 2
  %arrayidx.i.i = getelementptr i8, ptr %71, i32 %shr.i.i
  %74 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %arrayidx.i.i, align 1
  %and.i.i = shl i32 %add20.i, 1
  %mul.i62.i = and i32 %and.i.i, 6
  %conv.i63.i = zext i8 %75 to i32
  %shr2.i.i = lshr i32 %conv.i63.i, %mul.i62.i
  %76 = trunc i32 %shr2.i.i to i2
  %77 = zext i2 %76 to i64
  call void @__sanitizer_cov_trace_switch(i64 %77, ptr @__sancov_gen_cov_switch_values.63)
  switch i2 %76, label %sw.epilog.i [
    i2 1, label %for.body.i.for.inc.i_crit_edge
    i2 -1, label %for.body.i.for.inc.i_crit_edge443
  ]

for.body.i.for.inc.i_crit_edge443:                ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

sw.epilog.i:                                      ; preds = %for.body.i
  br i1 %tobool26.not.i, label %sw.epilog.i.get_bbt_block.exit_crit_edge, label %lor.lhs.false.i

sw.epilog.i.get_bbt_block.exit_crit_edge:         ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_bbt_block.exit

lor.lhs.false.i:                                  ; preds = %sw.epilog.i
  %78 = ptrtoint ptr %page_shift.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %page_shift.i, align 4
  %sub25.i = sub i32 %63, %79
  %shl.i = shl i32 %add20.i, %sub25.i
  %80 = ptrtoint ptr %arrayidx28.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %arrayidx28.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %81, i32 %shl.i)
  %cmp29.not.i = icmp eq i32 %81, %shl.i
  br i1 %cmp29.not.i, label %lor.lhs.false.i.for.inc.i_crit_edge, label %lor.lhs.false.i.get_bbt_block.exit_crit_edge

lor.lhs.false.i.get_bbt_block.exit_crit_edge:     ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_bbt_block.exit

lor.lhs.false.i.for.inc.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

for.inc.i:                                        ; preds = %lor.lhs.false.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge443
  %inc.i = add nuw nsw i32 %i.073.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %69
  br i1 %exitcond.not.i, label %for.inc.i.do.end_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.inc.i.do.end_crit_edge:                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

get_bbt_block.exit:                               ; preds = %lor.lhs.false.i.get_bbt_block.exit_crit_edge, %sw.epilog.i.get_bbt_block.exit_crit_edge, %if.then.i
  %retval.2.i = phi i32 [ %shr.i, %if.then.i ], [ %add20.i, %lor.lhs.false.i.get_bbt_block.exit_crit_edge ], [ %add20.i, %sw.epilog.i.get_bbt_block.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.2.i)
  %cmp20 = icmp slt i32 %retval.2.i, 0
  br i1 %cmp20, label %get_bbt_block.exit.do.end_crit_edge, label %if.end24

get_bbt_block.exit.do.end_crit_edge:              ; preds = %get_bbt_block.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

do.end:                                           ; preds = %get_bbt_block.exit.do.end_crit_edge, %for.inc.i.do.end_crit_edge, %if.end8.i.do.end_crit_edge
  %retval.2.i400 = phi i32 [ -28, %for.inc.i.do.end_crit_edge ], [ -28, %if.end8.i.do.end_crit_edge ], [ %retval.2.i, %get_bbt_block.exit.do.end_crit_edge ]
  %call23 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39) #14
  br label %do.end216

if.end24:                                         ; preds = %get_bbt_block.exit
  %82 = ptrtoint ptr %bbt_erase_shift.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %bbt_erase_shift.i, align 4
  %84 = ptrtoint ptr %page_shift.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %page_shift.i, align 4
  %sub = sub i32 %83, %85
  %shl = shl i32 %retval.2.i, %sub
  %86 = ptrtoint ptr %td to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %td, align 4
  %and27 = and i32 %87, 15
  %88 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 %conv29, ptr %11, align 2
  %89 = zext i32 %and27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %89, ptr @__sancov_gen_cov_switch_values.64)
  switch i32 %and27, label %if.end24.cleanup219_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb33
    i32 4, label %sw.bb37
    i32 8, label %sw.bb41
  ]

if.end24.cleanup219_crit_edge:                    ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup219

sw.bb:                                            ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  %90 = ptrtoint ptr %msk to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 0, ptr %msk, align 4
  br label %sw.epilog

sw.bb33:                                          ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  %91 = ptrtoint ptr %msk to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 0, ptr %msk, align 4
  br label %sw.epilog

sw.bb37:                                          ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  %92 = ptrtoint ptr %msk to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 0, ptr %msk, align 4
  br label %sw.epilog

sw.bb41:                                          ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  %93 = ptrtoint ptr %msk to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 0, ptr %msk, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb41, %sw.bb37, %sw.bb33, %sw.bb
  %.sink434 = phi i8 [ 15, %sw.bb41 ], [ 12, %sw.bb37 ], [ 1, %sw.bb33 ], [ 1, %sw.bb ]
  %.sink = phi i8 [ -1, %sw.bb41 ], [ 15, %sw.bb37 ], [ 3, %sw.bb33 ], [ 1, %sw.bb ]
  %sft.0 = phi i32 [ 0, %sw.bb41 ], [ 1, %sw.bb37 ], [ 2, %sw.bb33 ], [ 3, %sw.bb ]
  %sftmsk.0 = phi i32 [ 0, %sw.bb41 ], [ 4, %sw.bb37 ], [ 6, %sw.bb33 ], [ 7, %sw.bb ]
  %94 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 %.sink434, ptr %10, align 1
  %95 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 %.sink, ptr %12, align 1
  %conv45 = sext i32 %shl to i64
  %sh_prom47 = zext i32 %85 to i64
  %shl48 = shl i64 %conv45, %sh_prom47
  %and50 = and i32 %87, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and50)
  %tobool51.not = icmp eq i32 %and50, 0
  br i1 %tobool51.not, label %if.else107, label %if.then52

if.then52:                                        ; preds = %sw.epilog
  %sh_prom54 = zext i32 %83 to i64
  %notmask = shl nsw i64 -1, %sh_prom54
  %and58 = and i64 %shl48, %notmask
  %shl60 = shl nuw i32 1, %83
  %call61 = call i32 @mtd_read(ptr noundef %this, i64 noundef %and58, i32 noundef %shl60, ptr noundef nonnull %retlen, ptr noundef %buf) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %cmp62 = icmp slt i32 %call61, 0
  br i1 %cmp62, label %if.then64, label %if.then52.if.end79_crit_edge

if.then52.if.end79_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end79

if.then64:                                        ; preds = %if.then52
  %96 = ptrtoint ptr %retlen to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %retlen, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %97, i32 %shl60)
  %cmp65.not = icmp eq i32 %97, %shl60
  br i1 %cmp65.not, label %do.end76, label %do.end70

do.end70:                                         ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #11
  %call72 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42) #14
  br label %cleanup219

do.end76:                                         ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #11
  %call78 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45) #14
  br label %if.end79

if.end79:                                         ; preds = %do.end76, %if.then52.if.end79_crit_edge
  %98 = ptrtoint ptr %page_shift.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %page_shift.i, align 4
  %shr81 = lshr i32 %shl60, %99
  %100 = ptrtoint ptr %oobsize to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %oobsize, align 4
  %mul = mul i32 %shr81, %101
  %102 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %mul, ptr %17, align 4
  %arrayidx84 = getelementptr i8, ptr %buf, i32 %shl60
  %103 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %arrayidx84, ptr %21, align 4
  %104 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %writesize, align 4
  %conv85 = zext i32 %105 to i64
  %add86 = add i64 %and58, %conv85
  %call87 = call i32 @mtd_read_oob(ptr noundef %this, i64 noundef %add86, ptr noundef nonnull %ops) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call87)
  %cmp88 = icmp slt i32 %call87, 0
  br i1 %cmp88, label %if.end79.do.end216_crit_edge, label %lor.lhs.false

if.end79.do.end216_crit_edge:                     ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end216

lor.lhs.false:                                    ; preds = %if.end79
  %106 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %18, align 4
  %108 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %17, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %107, i32 %109)
  %cmp91.not = icmp eq i32 %107, %109
  br i1 %cmp91.not, label %if.end94, label %lor.lhs.false.do.end216_crit_edge

lor.lhs.false.do.end216_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end216

if.end94:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  %110 = ptrtoint ptr %page_shift.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %page_shift.i, align 4
  %sh_prom96 = zext i32 %111 to i64
  %shr97 = ashr i64 %and58, %sh_prom96
  %conv98 = trunc i64 %shr97 to i32
  %sub99 = sub i32 %shl, %conv98
  %shl101 = shl i32 %sub99, %111
  %arrayidx102 = getelementptr i8, ptr %buf, i32 %shl101
  %shr103 = ashr i32 %numblocks.0428, %sft.0
  %112 = call ptr @memset(ptr %arrayidx102, i32 255, i32 %shr103)
  %113 = ptrtoint ptr %oobsize to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %oobsize, align 4
  %mul105 = mul i32 %sub99, %114
  %add106 = add i32 %mul105, %shl60
  br label %if.end148

if.else107:                                       ; preds = %sw.epilog
  %and109 = and i32 %87, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and109)
  %tobool110.not = icmp eq i32 %and109, 0
  br i1 %tobool110.not, label %if.else128, label %if.then111

if.then111:                                       ; preds = %if.else107
  call void @__sanitizer_cov_trace_pc() #11
  %115 = ptrtoint ptr %len112 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %len112, align 4
  %and114 = lshr i32 %87, 8
  %and114.lobit = and i32 %and114, 1
  %spec.select = add i32 %116, %and114.lobit
  %shr118 = ashr i32 %numblocks.0428, %sft.0
  %117 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %writesize, align 4
  %sub121 = add i32 %shr118, -1
  %add119 = add i32 %sub121, %spec.select
  %add122 = add i32 %add119, %118
  %neg125 = sub i32 0, %118
  %and126 = and i32 %add122, %neg125
  %119 = call ptr @memset(ptr %buf, i32 255, i32 %and126)
  %120 = ptrtoint ptr %pattern to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %pattern, align 4
  %122 = load i32, ptr %len112, align 4
  %123 = call ptr @memcpy(ptr %buf, ptr %121, i32 %122)
  br label %if.end148

if.else128:                                       ; preds = %if.else107
  call void @__sanitizer_cov_trace_pc() #11
  %shr129 = ashr i32 %numblocks.0428, %sft.0
  %124 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %writesize, align 4
  %sub131 = add i32 %shr129, -1
  %add132 = add i32 %sub131, %125
  %neg135 = sub i32 0, %125
  %and136 = and i32 %add132, %neg135
  %shr138 = lshr i32 %and136, %85
  %126 = ptrtoint ptr %oobsize to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %oobsize, align 4
  %mul140 = mul i32 %shr138, %127
  %add141 = add i32 %mul140, %and136
  %128 = call ptr @memset(ptr %buf, i32 255, i32 %add141)
  %129 = ptrtoint ptr %offs142 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %offs142, align 4
  %add143 = add i32 %and136, %130
  %arrayidx144 = getelementptr i8, ptr %buf, i32 %add143
  %131 = ptrtoint ptr %pattern to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %pattern, align 4
  %133 = ptrtoint ptr %len112 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %len112, align 4
  %135 = call ptr @memcpy(ptr %arrayidx144, ptr %132, i32 %134)
  br label %if.end148

if.end148:                                        ; preds = %if.else128, %if.then111, %if.end94
  %ooboffs.0 = phi i32 [ %add106, %if.end94 ], [ 0, %if.then111 ], [ %and136, %if.else128 ]
  %len.0 = phi i32 [ %shl60, %if.end94 ], [ %and126, %if.then111 ], [ %and136, %if.else128 ]
  %to.0 = phi i64 [ %and58, %if.end94 ], [ %shl48, %if.then111 ], [ %shl48, %if.else128 ]
  %offs.1 = phi i32 [ %shl101, %if.end94 ], [ %spec.select, %if.then111 ], [ 0, %if.else128 ]
  %136 = ptrtoint ptr %td to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %td, align 4
  %and150 = and i32 %137, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and150)
  %tobool151.not = icmp eq i32 %and150, 0
  br i1 %tobool151.not, label %if.end148.if.end156_crit_edge, label %if.then152

if.end148.if.end156_crit_edge:                    ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end156

if.then152:                                       ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx153 = getelementptr %struct.nand_bbt_descr, ptr %td, i32 0, i32 4, i32 %chip.1419
  %138 = ptrtoint ptr %arrayidx153 to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %arrayidx153, align 1
  %140 = ptrtoint ptr %veroffs to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %veroffs, align 4
  %add154 = add i32 %141, %ooboffs.0
  %arrayidx155 = getelementptr i8, ptr %buf, i32 %add154
  %142 = ptrtoint ptr %arrayidx155 to i32
  call void @__asan_store1_noabort(i32 %142)
  store i8 %139, ptr %arrayidx155, align 1
  br label %if.end156

if.end156:                                        ; preds = %if.then152, %if.end148.if.end156_crit_edge
  br i1 %cmp157416, label %for.body.lr.ph, label %if.end156.for.end_crit_edge

if.end156.for.end_crit_edge:                      ; preds = %if.end156
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end156
  %sub159 = xor i32 %sft.0, 3
  %mul162 = mul i32 %chip.1419, %numblocks.0428
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.0417 = phi i32 [ 0, %for.body.lr.ph ], [ %inc175, %for.body.for.body_crit_edge ]
  %shl160 = shl i32 %i.0417, %sub159
  %and161 = and i32 %shl160, %sftmsk.0
  %add163 = add i32 %i.0417, %mul162
  %143 = ptrtoint ptr %bbt.i.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %bbt.i.i, align 8
  %shr.i364 = ashr i32 %add163, 2
  %arrayidx.i365 = getelementptr i8, ptr %144, i32 %shr.i364
  %145 = ptrtoint ptr %arrayidx.i365 to i32
  call void @__asan_load1_noabort(i32 %145)
  %146 = load i8, ptr %arrayidx.i365, align 1
  %and.i366 = shl i32 %add163, 1
  %mul.i367 = and i32 %and.i366, 6
  %conv.i368 = zext i8 %146 to i32
  %shr2.i = lshr i32 %conv.i368, %mul.i367
  %conv6.i = and i32 %shr2.i, 3
  %arrayidx165 = getelementptr [4 x i8], ptr %msk, i32 0, i32 %conv6.i
  %147 = ptrtoint ptr %arrayidx165 to i32
  call void @__asan_load1_noabort(i32 %147)
  %148 = load i8, ptr %arrayidx165, align 1
  %conv166 = zext i8 %148 to i32
  %shl167 = shl i32 %conv166, %and161
  %shr169 = lshr i32 %i.0417, %sft.0
  %add170 = add i32 %shr169, %offs.1
  %arrayidx171 = getelementptr i8, ptr %buf, i32 %add170
  %149 = ptrtoint ptr %arrayidx171 to i32
  call void @__asan_load1_noabort(i32 %149)
  %150 = load i8, ptr %arrayidx171, align 1
  %151 = trunc i32 %shl167 to i8
  %152 = xor i8 %151, -1
  %conv174 = and i8 %150, %152
  store i8 %conv174, ptr %arrayidx171, align 1
  %inc175 = add nuw nsw i32 %i.0417, 1
  %exitcond.not = icmp eq i32 %inc175, %numblocks.0428
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end156.for.end_crit_edge
  %153 = ptrtoint ptr %47 to i32
  call void @__asan_store8_noabort(i32 %153)
  store i64 0, ptr %47, align 8
  %154 = ptrtoint ptr %einfo to i32
  call void @__asan_store8_noabort(i32 %154)
  store i64 %to.0, ptr %einfo, align 8
  %155 = ptrtoint ptr %bbt_erase_shift.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %bbt_erase_shift.i, align 4
  %shl177 = shl nuw i32 1, %156
  %conv178 = sext i32 %shl177 to i64
  %157 = ptrtoint ptr %8 to i32
  call void @__asan_store8_noabort(i32 %157)
  store i64 %conv178, ptr %8, align 8
  %call180 = call i32 @nand_erase_nand(ptr noundef %this, ptr noundef nonnull %einfo, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call180)
  %cmp181 = icmp slt i32 %call180, 0
  br i1 %cmp181, label %do.end186, label %if.end189

do.end186:                                        ; preds = %for.end
  %call188 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, i32 noundef %call180) #14
  %and1.i.i = shl i32 %retval.2.i, 1
  %mul.i.i369 = and i32 %and1.i.i, 6
  %shl.i.i = shl nuw nsw i32 1, %mul.i.i369
  %158 = ptrtoint ptr %bbt.i.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %bbt.i.i, align 8
  %shr.i.i371 = ashr i32 %retval.2.i, 2
  %arrayidx.i.i372 = getelementptr i8, ptr %159, i32 %shr.i.i371
  %160 = ptrtoint ptr %arrayidx.i.i372 to i32
  call void @__asan_load1_noabort(i32 %160)
  %161 = load i8, ptr %arrayidx.i.i372, align 1
  %162 = trunc i32 %shl.i.i to i8
  %conv5.i.i = or i8 %161, %162
  store i8 %conv5.i.i, ptr %arrayidx.i.i372, align 1
  %conv.i373 = sext i32 %retval.2.i to i64
  %163 = ptrtoint ptr %bbt_erase_shift.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %bbt_erase_shift.i, align 4
  %sh_prom.i375 = zext i32 %164 to i64
  %shl.i376 = shl i64 %conv.i373, %sh_prom.i375
  %call.i = call i32 @nand_markbad_bbm(ptr noundef %this, i64 noundef %shl.i376) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i377 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i377, label %do.end186.cleanup_crit_edge, label %do.end.i

do.end186.cleanup_crit_edge:                      ; preds = %do.end186
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end.i:                                         ; preds = %do.end186
  call void @__sanitizer_cov_trace_pc() #11
  %call1.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59, i32 noundef %call.i, i32 noundef %retval.2.i) #14
  br label %cleanup

if.end189:                                        ; preds = %for.end
  %165 = ptrtoint ptr %td to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %td, align 4
  %and191 = and i32 %166, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and191)
  %tobool192.not = icmp eq i32 %and191, 0
  %arrayidx193 = getelementptr i8, ptr %buf, i32 %len.0
  %spec.select361 = select i1 %tobool192.not, ptr %arrayidx193, ptr null
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %ops.i) #9
  %167 = call ptr @memset(ptr %46, i32 255, i32 12)
  %168 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %168)
  store i32 0, ptr %ops.i, align 4
  %169 = ptrtoint ptr %43 to i32
  call void @__asan_store4_noabort(i32 %169)
  store i32 0, ptr %43, align 4
  %170 = ptrtoint ptr %oobsize to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %oobsize, align 4
  %172 = ptrtoint ptr %42 to i32
  call void @__asan_store4_noabort(i32 %172)
  store i32 %171, ptr %42, align 4
  %173 = ptrtoint ptr %44 to i32
  call void @__asan_store4_noabort(i32 %173)
  store ptr %buf, ptr %44, align 4
  %174 = ptrtoint ptr %45 to i32
  call void @__asan_store4_noabort(i32 %174)
  store ptr %spec.select361, ptr %45, align 4
  %175 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %175)
  store i32 %len.0, ptr %41, align 4
  %call2.i = call i32 @mtd_write_oob(ptr noundef %this, i64 noundef %to.0, ptr noundef nonnull %ops.i) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %ops.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp195 = icmp slt i32 %call2.i, 0
  br i1 %cmp195, label %do.end200, label %do.end206

do.end200:                                        ; preds = %if.end189
  %call202 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, i32 noundef %call2.i) #14
  %and1.i.i380 = shl i32 %retval.2.i, 1
  %mul.i.i381 = and i32 %and1.i.i380, 6
  %shl.i.i382 = shl nuw nsw i32 1, %mul.i.i381
  %176 = ptrtoint ptr %bbt.i.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %bbt.i.i, align 8
  %shr.i.i384 = ashr i32 %retval.2.i, 2
  %arrayidx.i.i385 = getelementptr i8, ptr %177, i32 %shr.i.i384
  %178 = ptrtoint ptr %arrayidx.i.i385 to i32
  call void @__asan_load1_noabort(i32 %178)
  %179 = load i8, ptr %arrayidx.i.i385, align 1
  %180 = trunc i32 %shl.i.i382 to i8
  %conv5.i.i386 = or i8 %179, %180
  store i8 %conv5.i.i386, ptr %arrayidx.i.i385, align 1
  %conv.i387 = sext i32 %retval.2.i to i64
  %181 = ptrtoint ptr %bbt_erase_shift.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %bbt_erase_shift.i, align 4
  %sh_prom.i389 = zext i32 %182 to i64
  %shl.i390 = shl i64 %conv.i387, %sh_prom.i389
  %call.i391 = call i32 @nand_markbad_bbm(ptr noundef %this, i64 noundef %shl.i390) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i391)
  %tobool.not.i392 = icmp eq i32 %call.i391, 0
  br i1 %tobool.not.i392, label %do.end200.cleanup_crit_edge, label %do.end.i394

do.end200.cleanup_crit_edge:                      ; preds = %do.end200
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end.i394:                                      ; preds = %do.end200
  call void @__sanitizer_cov_trace_pc() #11
  %call1.i393 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59, i32 noundef %call.i391, i32 noundef %retval.2.i) #14
  br label %cleanup

do.end206:                                        ; preds = %if.end189
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx209 = getelementptr %struct.nand_bbt_descr, ptr %td, i32 0, i32 4, i32 %chip.1419
  %183 = ptrtoint ptr %arrayidx209 to i32
  call void @__asan_load1_noabort(i32 %183)
  %184 = load i8, ptr %arrayidx209, align 1
  %conv210 = zext i8 %184 to i32
  %call211 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54, i64 noundef %to.0, i32 noundef %conv210) #14
  %inc212 = add i32 %chip.1419, 1
  br label %cleanup

cleanup:                                          ; preds = %do.end206, %do.end.i394, %do.end200.cleanup_crit_edge, %do.end.i, %do.end186.cleanup_crit_edge
  %shl.sink = phi i32 [ %shl, %do.end206 ], [ -1, %do.end186.cleanup_crit_edge ], [ -1, %do.end.i ], [ -1, %do.end200.cleanup_crit_edge ], [ -1, %do.end.i394 ]
  %chip.2 = phi i32 [ %inc212, %do.end206 ], [ %chip.1419, %do.end186.cleanup_crit_edge ], [ %chip.1419, %do.end.i ], [ %chip.1419, %do.end200.cleanup_crit_edge ], [ %chip.1419, %do.end.i394 ]
  %185 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %185)
  store i32 %shl.sink, ptr %arrayidx.i, align 4
  %cmp17 = icmp slt i32 %chip.2, %nrchips.0429
  br i1 %cmp17, label %cleanup.while.body_crit_edge, label %cleanup.cleanup219_crit_edge

cleanup.cleanup219_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup219

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

do.end216:                                        ; preds = %lor.lhs.false.do.end216_crit_edge, %if.end79.do.end216_crit_edge, %do.end
  %res.1.ph = phi i32 [ %retval.2.i400, %do.end ], [ %call87, %if.end79.do.end216_crit_edge ], [ %call87, %lor.lhs.false.do.end216_crit_edge ]
  %call218 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57, i32 noundef %res.1.ph) #14
  br label %cleanup219

cleanup219:                                       ; preds = %do.end216, %cleanup.cleanup219_crit_edge, %do.end70, %if.end24.cleanup219_crit_edge, %if.end16.cleanup219_crit_edge
  %retval.2 = phi i32 [ %res.1.ph, %do.end216 ], [ %call61, %do.end70 ], [ 0, %if.end16.cleanup219_crit_edge ], [ 0, %cleanup.cleanup219_crit_edge ], [ -22, %if.end24.cleanup219_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %ops) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retlen) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %msk) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %einfo) #9
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @read_bbt(ptr noundef %this, ptr noundef %buf, i32 noundef %page, i32 noundef %num, ptr nocapture noundef readonly %td, i32 noundef %offs) unnamed_addr #0 align 64 {
entry:
  %retlen = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retlen) #9
  %0 = ptrtoint ptr %retlen to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %retlen, align 4, !annotation !141
  %1 = ptrtoint ptr %td to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %td, align 4
  %and = and i32 %2, 15
  %notmask = shl nsw i32 -1, %and
  %reserved_block_code1 = getelementptr inbounds %struct.nand_bbt_descr, ptr %td, i32 0, i32 7
  %3 = ptrtoint ptr %reserved_block_code1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %reserved_block_code1, align 4
  %mul = mul i32 %and, %num
  %shr = ashr i32 %mul, 3
  %and.i = and i32 %2, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.add_marker_len.exit_crit_edge, label %if.end.i

entry.add_marker_len.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %add_marker_len.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %len1.i = getelementptr inbounds %struct.nand_bbt_descr, ptr %td, i32 0, i32 5
  %5 = ptrtoint ptr %len1.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %len1.i, align 4
  %and3.i = lshr i32 %2, 8
  %and3.lobit.i = and i32 %and3.i, 1
  %spec.select.i = add i32 %6, %and3.lobit.i
  br label %add_marker_len.exit

add_marker_len.exit:                              ; preds = %if.end.i, %entry.add_marker_len.exit_crit_edge
  %retval.0.i = phi i32 [ %spec.select.i, %if.end.i ], [ 0, %entry.add_marker_len.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %mul)
  %tobool.not197 = icmp ult i32 %mul, 8
  br i1 %tobool.not197, label %add_marker_len.exit.cleanup105_crit_edge, label %while.body.lr.ph

add_marker_len.exit.cleanup105_crit_edge:         ; preds = %add_marker_len.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup105

while.body.lr.ph:                                 ; preds = %add_marker_len.exit
  %conv3 = sext i32 %page to i64
  %page_shift = getelementptr inbounds %struct.nand_chip, ptr %this, i32 0, i32 17
  %7 = ptrtoint ptr %page_shift to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %page_shift, align 4
  %sh_prom = zext i32 %8 to i64
  %shl4 = shl i64 %conv3, %sh_prom
  %bbt_erase_shift = getelementptr inbounds %struct.nand_chip, ptr %this, i32 0, i32 9
  %writesize28 = getelementptr inbounds %struct.mtd_info, ptr %this, i32 0, i32 4
  %conv = and i32 %notmask, 255
  %conv51 = xor i32 %conv, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool60.not = icmp ne i32 %4, 0
  %bbt.i183 = getelementptr inbounds %struct.nand_chip, ptr %this, i32 0, i32 16
  %badblocks = getelementptr inbounds %struct.mtd_info, ptr %this, i32 0, i32 52, i32 2
  %bbtblocks = getelementptr inbounds %struct.mtd_info, ptr %this, i32 0, i32 52, i32 3
  br label %while.body

while.body:                                       ; preds = %for.end101.while.body_crit_edge, %while.body.lr.ph
  %ret.0202 = phi i32 [ 0, %while.body.lr.ph ], [ %ret.1, %for.end101.while.body_crit_edge ]
  %marker_len.0201 = phi i32 [ %retval.0.i, %while.body.lr.ph ], [ 0, %for.end101.while.body_crit_edge ]
  %from.0200 = phi i64 [ %shl4, %while.body.lr.ph ], [ %add104, %for.end101.while.body_crit_edge ]
  %totlen.0199 = phi i32 [ %shr, %while.body.lr.ph ], [ %sub102, %for.end101.while.body_crit_edge ]
  %act.0198 = phi i32 [ 0, %while.body.lr.ph ], [ %act.1.lcssa, %for.end101.while.body_crit_edge ]
  %9 = ptrtoint ptr %bbt_erase_shift to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %bbt_erase_shift, align 4
  %shl5 = shl nuw i32 1, %10
  %11 = call i32 @llvm.umin.i32(i32 %totlen.0199, i32 %shl5)
  %sub8 = sub i32 %11, %marker_len.0201
  %conv9 = zext i32 %marker_len.0201 to i64
  %from.1 = add i64 %from.0200, %conv9
  %call10 = call i32 @mtd_read(ptr noundef %this, i64 noundef %from.1, i32 noundef %sub8, ptr noundef nonnull %retlen, ptr noundef %buf) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %if.then13, label %while.body.if.end41_crit_edge

while.body.if.end41_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end41

if.then13:                                        ; preds = %while.body
  %12 = zext i32 %call10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.65)
  switch i32 %call10, label %do.end36 [
    i32 -74, label %do.end
    i32 -117, label %do.end26
  ]

do.end:                                           ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #11
  %13 = ptrtoint ptr %writesize28 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %writesize28, align 4
  %neg = xor i32 %14, -1
  %conv18 = zext i32 %neg to i64
  %and19 = and i64 %from.1, %conv18
  %call20 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, i64 noundef %and19) #14
  br label %cleanup105

do.end26:                                         ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #11
  %15 = ptrtoint ptr %writesize28 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %writesize28, align 4
  %neg29 = xor i32 %16, -1
  %conv30 = zext i32 %neg29 to i64
  %and31 = and i64 %from.1, %conv30
  %call32 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, i64 noundef %and31) #14
  br label %if.end41

do.end36:                                         ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #11
  %call38 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31) #14
  br label %cleanup105

if.end41:                                         ; preds = %do.end26, %while.body.if.end41_crit_edge
  %ret.1 = phi i32 [ -117, %do.end26 ], [ %ret.0202, %while.body.if.end41_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %marker_len.0201)
  %cmp42194.not = icmp eq i32 %11, %marker_len.0201
  br i1 %cmp42194.not, label %if.end41.for.end101_crit_edge, label %if.end41.for.body_crit_edge

if.end41.for.body_crit_edge:                      ; preds = %if.end41
  br label %for.body

if.end41.for.end101_crit_edge:                    ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end101

for.body:                                         ; preds = %for.end.for.body_crit_edge, %if.end41.for.body_crit_edge
  %i.0196 = phi i32 [ %inc100, %for.end.for.body_crit_edge ], [ 0, %if.end41.for.body_crit_edge ]
  %act.1195 = phi i32 [ %inc98, %for.end.for.body_crit_edge ], [ %act.0198, %if.end41.for.body_crit_edge ]
  %arrayidx = getelementptr i8, ptr %buf, i32 %i.0196
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx, align 1
  %conv49 = zext i8 %18 to i32
  br label %for.body47

for.body47:                                       ; preds = %cleanup.for.body47_crit_edge, %for.body
  %j.0193 = phi i32 [ 0, %for.body ], [ %add97, %cleanup.for.body47_crit_edge ]
  %act.2191 = phi i32 [ %act.1195, %for.body ], [ %inc98, %cleanup.for.body47_crit_edge ]
  %shr50 = lshr i32 %conv49, %j.0193
  %and52 = and i32 %shr50, %conv51
  call void @__sanitizer_cov_trace_cmp4(i32 %and52, i32 %conv51)
  %cmp56 = icmp eq i32 %and52, %conv51
  br i1 %cmp56, label %for.body47.cleanup_crit_edge, label %if.end59

for.body47.cleanup_crit_edge:                     ; preds = %for.body47
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end59:                                         ; preds = %for.body47
  call void @__sanitizer_cov_trace_cmp4(i32 %and52, i32 %4)
  %cmp62 = icmp eq i32 %and52, %4
  %or.cond = select i1 %tobool60.not, i1 %cmp62, i1 false
  %add69 = add i32 %act.2191, %offs
  %conv70 = sext i32 %add69 to i64
  %19 = ptrtoint ptr %bbt_erase_shift to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %bbt_erase_shift, align 4
  %sh_prom72 = zext i32 %20 to i64
  %shl73 = shl i64 %conv70, %sh_prom72
  br i1 %or.cond, label %do.end67, label %do.end79

do.end67:                                         ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #11
  %call74 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, i64 noundef %shl73) #14
  %and1.i = shl i32 %add69, 1
  %mul.i = and i32 %and1.i, 6
  %shl.i = shl nuw nsw i32 2, %mul.i
  br label %cleanup.sink.split

do.end79:                                         ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #11
  %call86 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, i64 noundef %shl73) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52)
  %cmp88 = icmp eq i32 %and52, 0
  %and1.i173 = shl i32 %add69, 1
  %mul.i174 = and i32 %and1.i173, 6
  %. = select i1 %cmp88, i32 3, i32 1
  %shl.i182 = shl nuw nsw i32 %., %mul.i174
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %do.end79, %do.end67
  %shl.i182.sink.sink = phi i32 [ %shl.i182, %do.end79 ], [ %shl.i, %do.end67 ]
  %badblocks.sink214 = phi ptr [ %badblocks, %do.end79 ], [ %bbtblocks, %do.end67 ]
  %21 = ptrtoint ptr %bbt.i183 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %bbt.i183, align 8
  %shr.i = ashr i32 %add69, 2
  %arrayidx.i = getelementptr i8, ptr %22, i32 %shr.i
  %23 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx.i, align 1
  %25 = trunc i32 %shl.i182.sink.sink to i8
  %conv5.i186 = or i8 %24, %25
  store i8 %conv5.i186, ptr %arrayidx.i, align 1
  %26 = ptrtoint ptr %badblocks.sink214 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %badblocks.sink214, align 4
  %inc96 = add i32 %27, 1
  store i32 %inc96, ptr %badblocks.sink214, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %for.body47.cleanup_crit_edge
  %add97 = add i32 %j.0193, %and
  %inc98 = add i32 %act.2191, 1
  %cmp45 = icmp slt i32 %add97, 8
  br i1 %cmp45, label %cleanup.for.body47_crit_edge, label %for.end

cleanup.for.body47_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body47

for.end:                                          ; preds = %cleanup
  %inc100 = add nuw i32 %i.0196, 1
  %exitcond.not = icmp eq i32 %inc100, %sub8
  br i1 %exitcond.not, label %for.end.for.end101_crit_edge, label %for.end.for.body_crit_edge

for.end.for.body_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end.for.end101_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end101

for.end101:                                       ; preds = %for.end.for.end101_crit_edge, %if.end41.for.end101_crit_edge
  %act.1.lcssa = phi i32 [ %act.0198, %if.end41.for.end101_crit_edge ], [ %inc98, %for.end.for.end101_crit_edge ]
  %sub102 = sub i32 %totlen.0199, %sub8
  %conv103 = zext i32 %sub8 to i64
  %add104 = add i64 %from.1, %conv103
  %tobool.not = icmp eq i32 %sub102, 0
  br i1 %tobool.not, label %for.end101.cleanup105_crit_edge, label %for.end101.while.body_crit_edge

for.end101.while.body_crit_edge:                  ; preds = %for.end101
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

for.end101.cleanup105_crit_edge:                  ; preds = %for.end101
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup105

cleanup105:                                       ; preds = %for.end101.cleanup105_crit_edge, %do.end36, %do.end, %add_marker_len.exit.cleanup105_crit_edge
  %retval.0 = phi i32 [ -74, %do.end ], [ %call10, %do.end36 ], [ 0, %add_marker_len.exit.cleanup105_crit_edge ], [ %ret.1, %for.end101.cleanup105_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retlen) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_erase_nand(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_markbad_bbm(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_write_oob(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umax.i8(i8, i8) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 62)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 62)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly nofree nounwind readonly willreturn }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { nounwind allocsize(0) }
attributes #14 = { cold nounwind }
attributes #15 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !12, !14, !16, !18, !20, !22, !24, !25, !26, !27, !29, !31, !32, !33, !34, !36, !37, !38, !39, !41, !42, !43, !45, !46, !47, !49, !50, !51, !52, !54, !55, !57, !58, !59, !60, !62, !63, !64, !66, !67, !68, !69, !71, !72, !73, !75, !76, !77, !79, !80, !81, !83, !84, !85, !87, !88, !89, !90, !92, !93, !94, !96, !97, !98, !100, !101, !102, !104, !105, !106, !108, !109, !110, !112, !113, !114, !116, !117, !118}
!llvm.module.flags = !{!119, !120, !121, !122, !123, !124, !125, !126}
!llvm.ident = !{!127}

!0 = !{ptr @__ksymtab_nand_create_bbt, !1, !"__ksymtab_nand_create_bbt", i1 false, i1 false}
!1 = !{!"../drivers/mtd/nand/raw/nand_bbt.c", i32 1427, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/mtd/nand/raw/nand_bbt.c", i32 1455, i32 2}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @nand_isbad_bbt.__UNIQUE_ID_ddebug204, !3, !"__UNIQUE_ID_ddebug204", i1 false, i1 false}
!8 = distinct !{null, !9, !"__already_done", i1 false, i1 false}
!9 = !{!"../drivers/mtd/nand/raw/nand_bbt.c", i32 1458, i32 6}
!10 = !{ptr @bbt_main_no_oob_descr, !11, !"bbt_main_no_oob_descr", i1 false, i1 false}
!11 = !{!"../drivers/mtd/nand/raw/nand_bbt.c", i32 1342, i32 30}
!12 = !{ptr @bbt_pattern, !13, !"bbt_pattern", i1 false, i1 false}
!13 = !{!"../drivers/mtd/nand/raw/nand_bbt.c", i32 1319, i32 16}
!14 = !{ptr @bbt_mirror_no_oob_descr, !15, !"bbt_mirror_no_oob_descr", i1 false, i1 false}
!15 = !{!"../drivers/mtd/nand/raw/nand_bbt.c", i32 1352, i32 30}
!16 = !{ptr @mirror_pattern, !17, !"mirror_pattern", i1 false, i1 false}
!17 = !{!"../drivers/mtd/nand/raw/nand_bbt.c", i32 1320, i32 16}
!18 = !{ptr @bbt_main_descr, !19, !"bbt_main_descr", i1 false, i1 false}
!19 = !{!"../drivers/mtd/nand/raw/nand_bbt.c", i32 1322, i32 30}
!20 = !{ptr @bbt_mirror_descr, !21, !"bbt_mirror_descr", i1 false, i1 false}
!21 = !{!"../drivers/mtd/nand/raw/nand_bbt.c", i32 1332, i32 30}
!22 = !{ptr @.str.4, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/mtd/nand/raw/nand_bbt.c", i32 1376, i32 3}
!24 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @nand_create_badblock_pattern._entry, !23, !"_entry", i1 false, i1 false}
!26 = !{ptr @nand_create_badblock_pattern._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @scan_ff_pattern, !28, !"scan_ff_pattern", i1 false, i1 false}
!28 = !{!"../drivers/mtd/nand/raw/nand_bbt.c", i32 1316, i32 16}
!29 = !{ptr @.str.6, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/mtd/nand/raw/nand_bbt.c", i32 1267, i32 4}
!31 = !{ptr @.str.7, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @nand_scan_bbt._entry, !30, !"_entry", i1 false, i1 false}
!33 = !{ptr @nand_scan_bbt._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.8, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/mtd/nand/raw/nand_bbt.c", i32 498, i32 2}
!36 = !{ptr @.str.9, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @create_bbt._entry, !35, !"_entry", i1 false, i1 false}
!38 = !{ptr @create_bbt._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.11, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/mtd/nand/raw/nand_bbt.c", i32 506, i32 4}
!41 = !{ptr @create_bbt._entry.10, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @create_bbt._entry_ptr.12, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.14, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/mtd/nand/raw/nand_bbt.c", i32 527, i32 4}
!45 = !{ptr @create_bbt._entry.13, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @create_bbt._entry_ptr.15, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.16, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/mtd/nand/raw/nand_bbt.c", i32 399, i32 3}
!49 = !{ptr @.str.17, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @read_abs_bbts._entry, !48, !"_entry", i1 false, i1 false}
!51 = !{ptr @read_abs_bbts._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @read_abs_bbts._entry.18, !53, !"_entry", i1 false, i1 false}
!53 = !{!"../drivers/mtd/nand/raw/nand_bbt.c", i32 408, i32 3}
!54 = !{ptr @read_abs_bbts._entry_ptr.19, !53, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.20, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/mtd/nand/raw/nand_bbt.c", i32 612, i32 4}
!57 = !{ptr @.str.21, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @search_bbt._entry, !56, !"_entry", i1 false, i1 false}
!59 = !{ptr @search_bbt._entry_ptr, !56, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.23, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/mtd/nand/raw/nand_bbt.c", i32 614, i32 4}
!62 = !{ptr @search_bbt._entry.22, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @search_bbt._entry_ptr.24, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.25, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/mtd/nand/raw/nand_bbt.c", i32 196, i32 5}
!66 = !{ptr @.str.26, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @read_bbt._entry, !65, !"_entry", i1 false, i1 false}
!68 = !{ptr @read_bbt._entry_ptr, !65, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.28, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/mtd/nand/raw/nand_bbt.c", i32 200, i32 5}
!71 = !{ptr @read_bbt._entry.27, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @read_bbt._entry_ptr.29, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.31, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/mtd/nand/raw/nand_bbt.c", i32 204, i32 5}
!75 = !{ptr @read_bbt._entry.30, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @read_bbt._entry_ptr.32, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.34, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/mtd/nand/raw/nand_bbt.c", i32 217, i32 6}
!79 = !{ptr @read_bbt._entry.33, !78, !"_entry", i1 false, i1 false}
!80 = !{ptr @read_bbt._entry_ptr.35, !78, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.37, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/mtd/nand/raw/nand_bbt.c", i32 229, i32 5}
!83 = !{ptr @read_bbt._entry.36, !82, !"_entry", i1 false, i1 false}
!84 = !{ptr @read_bbt._entry_ptr.38, !82, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.39, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/mtd/nand/raw/nand_bbt.c", i32 789, i32 4}
!87 = !{ptr @.str.40, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @write_bbt._entry, !86, !"_entry", i1 false, i1 false}
!89 = !{ptr @write_bbt._entry_ptr, !86, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.42, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/mtd/nand/raw/nand_bbt.c", i32 829, i32 6}
!92 = !{ptr @write_bbt._entry.41, !91, !"_entry", i1 false, i1 false}
!93 = !{ptr @write_bbt._entry_ptr.43, !91, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.45, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/mtd/nand/raw/nand_bbt.c", i32 832, i32 5}
!96 = !{ptr @write_bbt._entry.44, !95, !"_entry", i1 false, i1 false}
!97 = !{ptr @write_bbt._entry_ptr.46, !95, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.48, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/mtd/nand/raw/nand_bbt.c", i32 894, i32 4}
!100 = !{ptr @write_bbt._entry.47, !99, !"_entry", i1 false, i1 false}
!101 = !{ptr @write_bbt._entry_ptr.49, !99, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.51, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/mtd/nand/raw/nand_bbt.c", i32 904, i32 4}
!104 = !{ptr @write_bbt._entry.50, !103, !"_entry", i1 false, i1 false}
!105 = !{ptr @write_bbt._entry_ptr.52, !103, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.54, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/mtd/nand/raw/nand_bbt.c", i32 910, i32 3}
!108 = !{ptr @write_bbt._entry.53, !107, !"_entry", i1 false, i1 false}
!109 = !{ptr @write_bbt._entry_ptr.55, !107, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.57, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/mtd/nand/raw/nand_bbt.c", i32 919, i32 2}
!112 = !{ptr @write_bbt._entry.56, !111, !"_entry", i1 false, i1 false}
!113 = !{ptr @write_bbt._entry_ptr.58, !111, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.59, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/mtd/nand/raw/nand_bbt.c", i32 729, i32 3}
!116 = !{ptr @.str.60, !115, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @mark_bbt_block_bad._entry, !115, !"_entry", i1 false, i1 false}
!118 = !{ptr @mark_bbt_block_bad._entry_ptr, !115, !"_entry_ptr", i1 false, i1 false}
!119 = !{i32 1, !"wchar_size", i32 2}
!120 = !{i32 1, !"min_enum_size", i32 4}
!121 = !{i32 8, !"branch-target-enforcement", i32 0}
!122 = !{i32 8, !"sign-return-address", i32 0}
!123 = !{i32 8, !"sign-return-address-all", i32 0}
!124 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!125 = !{i32 7, !"uwtable", i32 1}
!126 = !{i32 7, !"frame-pointer", i32 2}
!127 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!128 = !{i64 2148241049, i64 2148241054, i64 2148241067, i64 2148241111, i64 2148241145, i64 2148241166}
!129 = !{i8 0, i8 2}
!130 = !{!"branch_weights", i32 2000, i32 1}
!131 = !{!"branch_weights", i32 1, i32 2000}
!132 = !{i64 2153153906, i64 2153154403, i64 2153153943, i64 2153153999, i64 2153154033, i64 2153154057, i64 2153154098, i64 2153154119, i64 2153154147, i64 2153154181}
!133 = !{i64 2153155511, i64 2153156008, i64 2153155548, i64 2153155604, i64 2153155638, i64 2153155662, i64 2153155703, i64 2153155724, i64 2153155752, i64 2153155786}
!134 = !{i64 2153161268, i64 2153161765, i64 2153161305, i64 2153161361, i64 2153161395, i64 2153161419, i64 2153161460, i64 2153161481, i64 2153161509, i64 2153161543}
!135 = !{i64 2153162942, i64 2153163439, i64 2153162979, i64 2153163035, i64 2153163069, i64 2153163093, i64 2153163134, i64 2153163155, i64 2153163183, i64 2153163217}
!136 = !{i64 2153164553, i64 2153165050, i64 2153164590, i64 2153164646, i64 2153164680, i64 2153164704, i64 2153164745, i64 2153164766, i64 2153164794, i64 2153164828}
!137 = !{i64 2153166203, i64 2153166700, i64 2153166240, i64 2153166296, i64 2153166330, i64 2153166354, i64 2153166395, i64 2153166416, i64 2153166444, i64 2153166478}
!138 = !{i64 2153167857, i64 2153168354, i64 2153167894, i64 2153167950, i64 2153167984, i64 2153168008, i64 2153168049, i64 2153168070, i64 2153168098, i64 2153168132}
!139 = !{i64 2153169556, i64 2153170053, i64 2153169593, i64 2153169649, i64 2153169683, i64 2153169707, i64 2153169748, i64 2153169769, i64 2153169797, i64 2153169831}
!140 = !{i64 2153130112, i64 2153130608, i64 2153130149, i64 2153130205, i64 2153130239, i64 2153130263, i64 2153130304, i64 2153130325, i64 2153130353, i64 2153130387}
!141 = !{!"auto-init"}
